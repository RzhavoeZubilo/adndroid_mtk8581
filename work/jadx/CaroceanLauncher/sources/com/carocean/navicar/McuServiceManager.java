package com.carocean.navicar;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.text.format.Time;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class McuServiceManager {
    static final String ACTION_MCU_SERVER = "com.carocean.mcuservice";
    public static final String BUNDLE_COM_PORT = "com_port";
    public static final String BUNDLE_EQ_DATA = "eq_data";
    public static final String BUNDLE_GENERAL_RPC_CALL_DATA = "g_rpc_call_data";
    public static final String BUNDLE_KEY_CMDCODE = "cmdcode";
    public static final String BUNDLE_KEY_DATA = "data";
    public static final String BUNDLE_KEY_TABLE = "table";
    public static final int CMD_CODE_SERVICE_CONNECTED = 255;
    private static final String ERR_SERVICE_NOT_CONNECTED = "Mcu service not connected. call RPCXXX() after connecting service successfully.";
    public static final int MCU_RPC_MAX_MSGID = 100;
    public static final int MSG_CLOSE_COM_PORT = 259;
    public static final int MSG_GENERAL_RPC_CALL = 99;
    public static final int MSG_GET_MCU_STATUS = 3;
    public static final int MSG_GET_MCU_VOLUME_TABLE = 5;
    public static final int MSG_INIT_COM_PORT = 255;
    public static final int MSG_KEY_COMMAND = 10;
    public static final int MSG_REG_CALLBACK = 256;
    public static final int MSG_REPLY_TO_CALLBACK = 258;
    public static final int MSG_SET_DDR_FLAG = 33;
    public static final int MSG_SET_EQ_DATA = 15;
    public static final int MSG_SET_GPS_GUIDANCE_MIXING = 17;
    public static final int MSG_SET_GPS_GUIDANCE_PLAY = 16;
    public static final int MSG_SET_MAP_GPIO_STATUS = 31;
    public static final int MSG_SET_MCU_VOLUME = 32;
    public static final int MSG_SET_MCU_VOLUME_TABLE = 6;
    public static final int MSG_SET_MCU_VOLUME_TABLE_DSP = 30;
    public static final int MSG_SET_RADIO2_FREQ = 20;
    public static final int MSG_SET_SOURCE_ID = 4;
    public static final int MSG_SET_SWC_STUDY_OP = 12;
    public static final int MSG_SET_SWC_TABLE = 11;
    public static final int MSG_UNREG_CALLBACK = 257;
    static final String TAG = "McuServiceManager";
    static McuServiceManager mInstance;
    private boolean mBounded;
    private Context mContext;
    private Messenger mMessenger;
    private Messenger mServiceMessenger;
    private Handler myHandler;
    private boolean mIsMcuUpgrading = false;
    private ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.carocean.navicar.McuServiceManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.v(McuServiceManager.TAG, "mcu service connected. thread id = " + Thread.currentThread().getId());
            McuServiceManager.this.mServiceMessenger = new Messenger(iBinder);
            McuServiceManager.this.mBounded = true;
            synchronized (McuServiceManager.this) {
                if (McuServiceManager.this.mDataCallbacks.size() > 0) {
                    int[] iArr = new int[McuServiceManager.this.mDataCallbacks.size()];
                    HashSet hashSet = new HashSet();
                    for (int i = 0; i < McuServiceManager.this.mDataCallbacks.size(); i++) {
                        iArr[i] = McuServiceManager.this.mDataCallbacks.keyAt(i);
                        hashSet.addAll((Collection) McuServiceManager.this.mDataCallbacks.valueAt(i));
                    }
                    McuServiceManager.this.regCmdCodesToMcuService(iArr, true);
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        ((DataListener) it.next()).onReceive(255, null);
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.v(McuServiceManager.TAG, "mcu service disconnected.");
            McuServiceManager.this.mContext.unbindService(McuServiceManager.this.mServiceConnection);
            McuServiceManager.this.mServiceMessenger = null;
            McuServiceManager.this.mBounded = false;
            McuServiceManager.this.mContext = null;
        }
    };
    private SparseArray<HashSet<DataListener>> mDataCallbacks = new SparseArray<>();

    public interface DataListener {
        void onReceive(int i, byte[] bArr);
    }

    class MsgHandler extends Handler {
        MsgHandler() {
        }

        MsgHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@Nonnull Message message) {
            if (message.what == 258) {
                Log.v(McuServiceManager.TAG, message.toString() + message.getData().toString());
                Bundle data = message.getData();
                int i = data.getInt(McuServiceManager.BUNDLE_KEY_CMDCODE);
                Log.v(McuServiceManager.TAG, "cmdcode = " + data.getInt(McuServiceManager.BUNDLE_KEY_CMDCODE));
                if (data.getByteArray("data") != null) {
                    Log.v(McuServiceManager.TAG, "data = " + data.getByteArray("data").toString());
                }
                synchronized (McuServiceManager.this) {
                    HashSet hashSet = (HashSet) McuServiceManager.this.mDataCallbacks.get(i);
                    if (hashSet != null) {
                        Iterator it = hashSet.iterator();
                        while (it.hasNext()) {
                            ((DataListener) it.next()).onReceive(i, data.getByteArray("data"));
                        }
                    }
                }
            }
            super.handleMessage(message);
        }
    }

    private McuServiceManager() {
    }

    public static McuServiceManager getInstance() {
        if (mInstance == null) {
            synchronized (McuServiceManager.class) {
                mInstance = new McuServiceManager();
            }
        }
        return mInstance;
    }

    public void initialize(@Nonnull Context context, Looper looper) {
        if (this.mContext == context) {
            Log.e(TAG, "Don't call initialize multiple times.");
            return;
        }
        if (looper == null) {
            this.myHandler = new MsgHandler();
        } else {
            this.myHandler = new MsgHandler(looper);
        }
        this.mMessenger = new Messenger(this.myHandler);
        this.mContext = context;
        Intent intent = new Intent(ACTION_MCU_SERVER);
        intent.setPackage(Navi.PackageName.MCU_SERVER);
        this.mContext.bindService(intent, this.mServiceConnection, 1);
        this.mIsMcuUpgrading = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, this.mContext.getContentResolver(), Navi.Status.SYS_MCU_UPGRADING, -1) == 1;
        this.mContext.getContentResolver().registerContentObserver(Uri.parse("content://com.carocean.status.provider/sys/SYS_MCU_UPGRADING"), true, new ContentObserver(null) { // from class: com.carocean.navicar.McuServiceManager.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                super.onChange(z, uri);
                String lastPathSegment = uri.getLastPathSegment();
                if (Navi.Status.SYS_MCU_UPGRADING.equals(lastPathSegment)) {
                    int i = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, McuServiceManager.this.mContext.getContentResolver(), lastPathSegment, -1);
                    McuServiceManager.this.mIsMcuUpgrading = i == 1;
                }
            }
        });
    }

    public boolean isServiceConnected() {
        return this.mBounded;
    }

    public void release() {
        Context context;
        if (this.mDataCallbacks.size() > 0) {
            unregAllCallbacks();
            Log.w(TAG, "pls unregister all callbacks before release call.");
        }
        if (this.mBounded && (context = this.mContext) != null) {
            context.unbindService(this.mServiceConnection);
        }
        this.mBounded = false;
        this.mContext = null;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.mBounded) {
            release();
            Log.e(TAG, "Please call release() to unbind service before exit.");
        }
    }

    public synchronized void regCallback(int[] iArr, DataListener dataListener) {
        if (iArr != null) {
            if (iArr.length > 0) {
                ArrayList arrayList = new ArrayList();
                for (int i : iArr) {
                    HashSet<DataListener> hashSet = this.mDataCallbacks.get(i);
                    if (hashSet == null) {
                        hashSet = new HashSet<>();
                        arrayList.add(Integer.valueOf(i));
                    }
                    hashSet.add(dataListener);
                    this.mDataCallbacks.put(i, hashSet);
                }
                if (arrayList.size() > 0 && isServiceConnected()) {
                    regCmdCodesToMcuService(NaviUtil.toIntArray(arrayList), true);
                }
                return;
            }
        }
        Log.e(TAG, "cmdcode[] could not be null, not implemented yet.");
    }

    public synchronized void unregCallback(@Nonnull DataListener dataListener) {
        ArrayList arrayList = new ArrayList();
        for (int size = this.mDataCallbacks.size() - 1; size >= 0; size--) {
            HashSet<DataListener> hashSetValueAt = this.mDataCallbacks.valueAt(size);
            if (hashSetValueAt.contains(dataListener)) {
                hashSetValueAt.remove(dataListener);
                if (hashSetValueAt.size() <= 0) {
                    arrayList.add(Integer.valueOf(this.mDataCallbacks.keyAt(size)));
                    this.mDataCallbacks.removeAt(size);
                }
            }
        }
        if (arrayList.size() > 0) {
            regCmdCodesToMcuService(NaviUtil.toIntArray(arrayList), false);
        }
    }

    public synchronized void unregAllCallbacks() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mDataCallbacks.size(); i++) {
            arrayList.add(Integer.valueOf(this.mDataCallbacks.keyAt(i)));
        }
        this.mDataCallbacks.clear();
        if (arrayList.size() > 0) {
            regCmdCodesToMcuService(NaviUtil.toIntArray(arrayList), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void regCmdCodesToMcuService(int[] iArr, boolean z) {
        Message messageObtain = Message.obtain((Handler) null, z ? 256 : 257);
        Bundle bundle = new Bundle();
        bundle.putIntArray(BUNDLE_KEY_CMDCODE, iArr);
        messageObtain.setData(bundle);
        messageObtain.replyTo = this.mMessenger;
        sendMessage(messageObtain);
    }

    public void initMcuComPort(String str, int i) {
        Message messageObtain = Message.obtain((Handler) null, 255);
        messageObtain.arg1 = i;
        Bundle bundle = new Bundle();
        bundle.putString(BUNDLE_COM_PORT, str);
        messageObtain.setData(bundle);
        sendMessage(messageObtain);
    }

    public void closeMcuComPort() {
        sendMessage(Message.obtain((Handler) null, MSG_CLOSE_COM_PORT));
    }

    private void sendMessage(@Nonnull Message message) {
        try {
            if (this.mBounded && this.mServiceMessenger != null) {
                if (this.mIsMcuUpgrading && (message.what != 99 || (message.arg1 != 196 && message.arg1 != 198))) {
                    Log.v(TAG, "mcu is upgrading, ignore msg: id = " + message.what + " arg1 = " + message.arg1);
                    return;
                } else {
                    this.mServiceMessenger.send(message);
                    return;
                }
            }
            Log.e(TAG, "Mcu service not connected. call RPCXXX() after connecting service successfully.msg = " + message.what);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void RPCSetSourceID(int i, int i2) {
        Message messageObtain = Message.obtain((Handler) null, 4);
        messageObtain.arg1 = i;
        messageObtain.arg2 = i2;
        sendMessage(messageObtain);
    }

    public void RPCKeyCommand(int i, int i2) {
        Message messageObtain = Message.obtain((Handler) null, 10);
        messageObtain.arg1 = i;
        messageObtain.arg2 = i2;
        sendMessage(messageObtain);
    }

    public void RPCGetMcuStatus() {
        sendMessage(Message.obtain((Handler) null, 3));
    }

    public void RPCGetMcuVolumeTable() {
        sendMessage(Message.obtain((Handler) null, 5));
    }

    public void RPCSetMcuVolumeTable(int i, boolean z) {
        Message messageObtain = Message.obtain((Handler) null, 6);
        messageObtain.arg1 = i;
        messageObtain.arg2 = z ? 1 : 0;
        sendMessage(messageObtain);
    }

    public void RPCSetSWCTable(byte[] bArr) {
        Message messageObtain = Message.obtain((Handler) null, 11);
        Bundle bundle = new Bundle();
        bundle.putByteArray(BUNDLE_KEY_TABLE, bArr);
        messageObtain.setData(bundle);
        sendMessage(messageObtain);
    }

    public void RPCSetSWCStudyOP(int i) {
        Message messageObtain = Message.obtain((Handler) null, 12);
        messageObtain.arg1 = i;
        sendMessage(messageObtain);
    }

    public void RPCSetEQData(byte[] bArr) {
        Message messageObtain = Message.obtain((Handler) null, 20);
        new Bundle().putByteArray(BUNDLE_EQ_DATA, bArr);
        sendMessage(messageObtain);
    }

    public void RPCSetGPSGuidancePlay(boolean z) {
        Message messageObtain = Message.obtain((Handler) null, 16);
        messageObtain.arg1 = z ? 1 : 0;
        sendMessage(messageObtain);
    }

    public void RPCSetGPSGuidanceMixing(int i) {
        Message messageObtain = Message.obtain((Handler) null, 17);
        messageObtain.arg1 = i;
        sendMessage(messageObtain);
    }

    public void RPCSetRadio2Freq(int i, int i2) {
        Message messageObtain = Message.obtain((Handler) null, 20);
        messageObtain.arg1 = i;
        messageObtain.arg2 = i2;
        sendMessage(messageObtain);
    }

    public void RPCSetMCUVolumeTable(int i, int i2, int i3, boolean z, int i4) {
        Message messageObtain = Message.obtain((Handler) null, 30);
        messageObtain.arg1 = (i & 255) + ((i2 << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + ((i3 << 16) & 16711680) + (((z ? 1 : 0) << 24) & ViewCompat.MEASURED_STATE_MASK);
        messageObtain.arg2 = i4;
        sendMessage(messageObtain);
    }

    public void RPCSetMCUVolume(boolean z, int i, int i2, int i3) {
        Message messageObtain = Message.obtain((Handler) null, 32);
        messageObtain.arg1 = (i & 255) + ((i2 << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + ((i3 << 16) & 16711680) + (((z ? 1 : 0) << 24) & ViewCompat.MEASURED_STATE_MASK);
        sendMessage(messageObtain);
    }

    public void RPCGeneralRpcCall(int i, byte[] bArr) {
        if (bArr != null && bArr.length > 255) {
            Log.w(TAG, "RPCGeneralRpcCall could not send data which's length over 255 byes. This call may be fail");
        }
        Message messageObtain = Message.obtain((Handler) null, 99);
        Bundle bundle = new Bundle();
        if (bArr != null) {
            bundle.putByteArray(BUNDLE_GENERAL_RPC_CALL_DATA, bArr);
        }
        messageObtain.arg1 = i;
        messageObtain.setData(bundle);
        sendMessage(messageObtain);
    }

    public void RPCSetTime2MCU() {
        Time time = new Time();
        time.setToNow();
        byte[] bArr = new byte[10];
        bArr[0] = 2;
        NaviUtil.DateTimeUtils.Int2BCD(time.year, bArr, 1);
        NaviUtil.DateTimeUtils.Int2BCD(time.month + 1, bArr, 3);
        NaviUtil.DateTimeUtils.Int2BCD(time.monthDay, bArr, 4);
        NaviUtil.DateTimeUtils.Int2BCD(time.hour, bArr, 5);
        NaviUtil.DateTimeUtils.Int2BCD(time.minute, bArr, 6);
        NaviUtil.DateTimeUtils.Int2BCD(time.second, bArr, 7);
        bArr[8] = 0;
        bArr[9] = 0;
        RPCGeneralRpcCall(Navi.KeyCode.T_SYS_RESTART, bArr);
    }

    public void RPCSetMapGPIOStatus(int i, int i2, int i3) {
        Message messageObtain = Message.obtain((Handler) null, 31);
        messageObtain.arg1 = (i & 255) + ((i2 << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + ((i3 << 16) & 16711680);
        sendMessage(messageObtain);
    }

    public void RPCSetDDRFlag() {
        sendMessage(Message.obtain((Handler) null, 33));
    }
}
