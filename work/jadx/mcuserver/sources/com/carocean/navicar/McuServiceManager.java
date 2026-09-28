package com.carocean.navicar;

import android.content.ComponentName;
import android.content.ContentResolver;
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
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.text.format.Time;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes3.dex */
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
    static final String TAG = McuServiceManager.class.getSimpleName();
    static McuServiceManager mInstance;
    private boolean mBounded;
    private Context mContext;
    private Messenger mMessenger;
    private Messenger mServiceMessenger;
    private Handler myHandler;
    private boolean mIsMcuUpgrading = false;
    private ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.carocean.navicar.McuServiceManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            Log.v(McuServiceManager.TAG, "mcu service connected. thread id = " + Thread.currentThread().getId());
            McuServiceManager.this.mServiceMessenger = new Messenger(service);
            McuServiceManager.this.mBounded = true;
            synchronized (McuServiceManager.this) {
                if (McuServiceManager.this.mDataCallbacks.size() > 0) {
                    int[] cmdcode = new int[McuServiceManager.this.mDataCallbacks.size()];
                    HashSet<DataListener> callbacks = new HashSet<>();
                    for (int i = 0; i < McuServiceManager.this.mDataCallbacks.size(); i++) {
                        cmdcode[i] = McuServiceManager.this.mDataCallbacks.keyAt(i);
                        callbacks.addAll((Collection) McuServiceManager.this.mDataCallbacks.valueAt(i));
                    }
                    McuServiceManager.this.regCmdCodesToMcuService(cmdcode, true);
                    for (DataListener cb : callbacks) {
                        cb.onReceive(255, null);
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
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
        public void handleMessage(@Nonnull Message msg) {
            if (msg.what == 258) {
                Log.v(McuServiceManager.TAG, msg.toString() + msg.getData().toString());
                Bundle data = msg.getData();
                int cmdcode = data.getInt(McuServiceManager.BUNDLE_KEY_CMDCODE);
                Log.v(McuServiceManager.TAG, "cmdcode = " + data.getInt(McuServiceManager.BUNDLE_KEY_CMDCODE));
                if (data.getByteArray("data") != null) {
                    Log.v(McuServiceManager.TAG, "data = " + data.getByteArray("data").toString());
                }
                synchronized (McuServiceManager.this) {
                    HashSet<DataListener> callbacks = (HashSet) McuServiceManager.this.mDataCallbacks.get(cmdcode);
                    if (callbacks != null) {
                        for (DataListener cb : callbacks) {
                            cb.onReceive(cmdcode, data.getByteArray("data"));
                        }
                    }
                }
            }
            super.handleMessage(msg);
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
        intent.setPackage("com.carocean.mcuserver");
        this.mContext.bindService(intent, this.mServiceConnection, 1);
        this.mIsMcuUpgrading = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, this.mContext.getContentResolver(), Navi.Status.SYS_MCU_UPGRADING, -1) == 1;
        ContentResolver cr = this.mContext.getContentResolver();
        Uri uri = Uri.parse("content://com.carocean.status.provider/sys/SYS_MCU_UPGRADING");
        cr.registerContentObserver(uri, true, new ContentObserver(null) { // from class: com.carocean.navicar.McuServiceManager.1
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange, Uri uri2) {
                super.onChange(selfChange, uri2);
                String name = uri2.getLastPathSegment();
                if (Navi.Status.SYS_MCU_UPGRADING.equals(name)) {
                    int val = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, McuServiceManager.this.mContext.getContentResolver(), name, -1);
                    McuServiceManager.this.mIsMcuUpgrading = val == 1;
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

    public synchronized void regCallback(int[] cmdcode, DataListener callback) {
        if (cmdcode != null) {
            if (cmdcode.length > 0) {
                List<Integer> unreg_cmdcode = new ArrayList<>();
                for (int key : cmdcode) {
                    HashSet<DataListener> cb = this.mDataCallbacks.get(key);
                    if (cb == null) {
                        cb = new HashSet<>();
                        unreg_cmdcode.add(Integer.valueOf(key));
                    }
                    cb.add(callback);
                    this.mDataCallbacks.put(key, cb);
                }
                if (unreg_cmdcode.size() > 0 && isServiceConnected()) {
                    regCmdCodesToMcuService(NaviUtil.toIntArray(unreg_cmdcode), true);
                }
                return;
            }
        }
        Log.e(TAG, "cmdcode[] could not be null, not implemented yet.");
    }

    public synchronized void unregCallback(@Nonnull DataListener callback) {
        List<Integer> reg_cmdcode = new ArrayList<>();
        for (int i = this.mDataCallbacks.size() - 1; i >= 0; i--) {
            HashSet<DataListener> cb = this.mDataCallbacks.valueAt(i);
            if (cb.contains(callback)) {
                cb.remove(callback);
                if (cb.size() <= 0) {
                    reg_cmdcode.add(Integer.valueOf(this.mDataCallbacks.keyAt(i)));
                    this.mDataCallbacks.removeAt(i);
                }
            }
        }
        int i2 = reg_cmdcode.size();
        if (i2 > 0) {
            regCmdCodesToMcuService(NaviUtil.toIntArray(reg_cmdcode), false);
        }
    }

    public synchronized void unregAllCallbacks() {
        List<Integer> reg_cmdcode = new ArrayList<>();
        for (int i = 0; i < this.mDataCallbacks.size(); i++) {
            reg_cmdcode.add(Integer.valueOf(this.mDataCallbacks.keyAt(i)));
        }
        this.mDataCallbacks.clear();
        if (reg_cmdcode.size() > 0) {
            regCmdCodesToMcuService(NaviUtil.toIntArray(reg_cmdcode), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void regCmdCodesToMcuService(int[] cmdcodes, boolean register) {
        Message msg = Message.obtain((Handler) null, register ? 256 : 257);
        Bundle data = new Bundle();
        data.putIntArray(BUNDLE_KEY_CMDCODE, cmdcodes);
        msg.setData(data);
        msg.replyTo = this.mMessenger;
        sendMessage(msg);
    }

    public void initMcuComPort(String device, int baudrate) {
        Message msg = Message.obtain((Handler) null, 255);
        msg.arg1 = baudrate;
        Bundle data = new Bundle();
        data.putString(BUNDLE_COM_PORT, device);
        msg.setData(data);
        sendMessage(msg);
    }

    public void closeMcuComPort() {
        Message msg = Message.obtain((Handler) null, MSG_CLOSE_COM_PORT);
        sendMessage(msg);
    }

    private void sendMessage(@Nonnull Message msg) {
        try {
            if (this.mBounded && this.mServiceMessenger != null) {
                if (this.mIsMcuUpgrading && (msg.what != 99 || (msg.arg1 != 196 && msg.arg1 != 198))) {
                    Log.v(TAG, "mcu is upgrading, ignore msg: id = " + msg.what + " arg1 = " + msg.arg1);
                    return;
                } else {
                    this.mServiceMessenger.send(msg);
                    return;
                }
            }
            Log.e(TAG, "Mcu service not connected. call RPCXXX() after connecting service successfully.msg = " + msg.what);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void RPCSetSourceID(int frontSourceID, int rearSourceID) {
        Message msg = Message.obtain((Handler) null, 4);
        msg.arg1 = frontSourceID;
        msg.arg2 = rearSourceID;
        sendMessage(msg);
    }

    public void RPCKeyCommand(int keyValue, int parameter) {
        Message msg = Message.obtain((Handler) null, 10);
        msg.arg1 = keyValue;
        msg.arg2 = parameter;
        sendMessage(msg);
    }

    public void RPCGetMcuStatus() {
        Message msg = Message.obtain((Handler) null, 3);
        sendMessage(msg);
    }

    public void RPCGetMcuVolumeTable() {
        Message msg = Message.obtain((Handler) null, 5);
        sendMessage(msg);
    }

    public void RPCSetMcuVolumeTable(int i, boolean z) {
        Message messageObtain = Message.obtain((Handler) null, 6);
        messageObtain.arg1 = i;
        messageObtain.arg2 = z ? 1 : 0;
        sendMessage(messageObtain);
    }

    public void RPCSetSWCTable(byte[] table) {
        Message msg = Message.obtain((Handler) null, 11);
        Bundle data = new Bundle();
        data.putByteArray(BUNDLE_KEY_TABLE, table);
        msg.setData(data);
        sendMessage(msg);
    }

    public void RPCSetSWCStudyOP(int operation) {
        Message msg = Message.obtain((Handler) null, 12);
        msg.arg1 = operation;
        sendMessage(msg);
    }

    public void RPCSetEQData(byte[] eq_data) {
        Message msg = Message.obtain((Handler) null, 20);
        Bundle data = new Bundle();
        data.putByteArray(BUNDLE_EQ_DATA, eq_data);
        sendMessage(msg);
    }

    public void RPCSetGPSGuidancePlay(boolean z) {
        Message messageObtain = Message.obtain((Handler) null, 16);
        messageObtain.arg1 = z ? 1 : 0;
        sendMessage(messageObtain);
    }

    public void RPCSetGPSGuidanceMixing(int mixing) {
        Message msg = Message.obtain((Handler) null, 17);
        msg.arg1 = mixing;
        sendMessage(msg);
    }

    public void RPCSetRadio2Freq(int band, int freq) {
        Message msg = Message.obtain((Handler) null, 20);
        msg.arg1 = band;
        msg.arg2 = freq;
        sendMessage(msg);
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

    public void RPCGeneralRpcCall(int cmd_code, byte[] data) {
        if (data != null && data.length > 255) {
            Log.w(TAG, "RPCGeneralRpcCall could not send data which's length over 255 byes. This call may be fail");
        }
        Message msg = Message.obtain((Handler) null, 99);
        Bundle bundle = new Bundle();
        if (data != null) {
            bundle.putByteArray(BUNDLE_GENERAL_RPC_CALL_DATA, data);
        }
        msg.arg1 = cmd_code;
        msg.setData(bundle);
        sendMessage(msg);
    }

    public void RPCSetTime2MCU() {
        Time t = new Time();
        t.setToNow();
        byte[] data = new byte[10];
        data[0] = 2;
        NaviUtil.DateTimeUtils.Int2BCD(t.year, data, 1);
        NaviUtil.DateTimeUtils.Int2BCD(t.month + 1, data, 3);
        NaviUtil.DateTimeUtils.Int2BCD(t.monthDay, data, 4);
        NaviUtil.DateTimeUtils.Int2BCD(t.hour, data, 5);
        NaviUtil.DateTimeUtils.Int2BCD(t.minute, data, 6);
        NaviUtil.DateTimeUtils.Int2BCD(t.second, data, 7);
        data[8] = 0;
        data[9] = 0;
        RPCGeneralRpcCall(Navi.KeyCode.T_SYS_RESTART, data);
    }

    public void RPCSetMapGPIOStatus(int bt_call_status, int cp_call_status, int guidance_stats, int ttsguidance_stats) {
        Message msg = Message.obtain((Handler) null, 31);
        msg.arg1 = (bt_call_status & 255) + ((cp_call_status << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + ((guidance_stats << 16) & 16711680) + ((ttsguidance_stats << 24) & ViewCompat.MEASURED_STATE_MASK);
        sendMessage(msg);
    }

    public void RPCSetDDRFlag() {
        Message msg = Message.obtain((Handler) null, 33);
        sendMessage(msg);
    }
}
