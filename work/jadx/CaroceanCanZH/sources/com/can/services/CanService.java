package com.can.services;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.can.assist.CanContant;
import com.can.assist.CanMessage;
import com.can.assist.CanXml;
import com.can.assist.Platforms;
import com.can.parser.Parser;
import com.can.tool.CanInfo;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class CanService extends Service implements CanContant {
    private Platforms.Can mCanRxTx = null;
    private final String TAG = "CanService";
    private ArrayList<UserInfo> mArrayUserInfos = new ArrayList<>();
    public Handler mHandler = new Handler() { // from class: com.can.services.CanService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                CanService.this.send2Prot(message);
                return;
            }
            if (i == 2) {
                CanService.this.send2User(message);
                return;
            }
            if (i == 3) {
                CanService.this.registerUser(message);
                return;
            }
            if (i == 4) {
                CanService.this.deregisterUser(message);
            } else if (i == 5) {
                CanService.this.setProtocol(message);
            } else {
                Log.e("CanService", "donot know msg what?");
            }
        }
    };
    public Messenger mServiceMessenger = new Messenger(this.mHandler);

    public static class UserInfo {
        public int iCmdId = 0;
        public int iSubId = 0;
        public String mName = null;
        public Messenger mMessenger = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProtocol(Message message) {
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.i("CanService", "CanService is active!");
        Platforms.Can canRxTx = CanXml.getInstance(getApplicationContext()).getPlatforms().getCanRxTx();
        this.mCanRxTx = canRxTx;
        try {
            canRxTx.Init(getApplicationContext());
            this.mCanRxTx.setRxDataLister(new RxData());
            this.mCanRxTx.setEnvironment(CanXml.getInstance(getApplicationContext()).getBand());
            this.mCanRxTx.setRxReady();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        try {
            this.mCanRxTx.DeInit();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, 1, i2);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mServiceMessenger.getBinder();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }

    protected void registerUser(Message message) {
        Log.i("CanService", "++registerUser++");
        if (message.replyTo == null) {
            Log.e("CanService", "--registerUser: iCmdId: " + message.arg1 + " iSubId: " + message.arg2 + " " + String.valueOf(message.getData().getString("Msg_Can_Reg_User")) + " error!");
            return;
        }
        UserInfo userInfo = new UserInfo();
        userInfo.iCmdId = message.arg1;
        userInfo.iSubId = message.arg2;
        userInfo.mMessenger = message.replyTo;
        userInfo.mName = String.valueOf(message.getData().getString("Msg_Can_Reg_User"));
        char c = 0;
        for (UserInfo userInfo2 : this.mArrayUserInfos) {
            if (userInfo2.iCmdId == userInfo.iCmdId && userInfo2.iSubId == userInfo.iSubId && userInfo2.mMessenger != null && userInfo2.mMessenger.equals(userInfo.mMessenger)) {
                c = 1;
                break;
            }
        }
        if (c <= 0) {
            this.mArrayUserInfos.add(userInfo);
            Log.i("CanService", "--registerUser: iCmdId: " + userInfo.iCmdId + " iSubId: " + userInfo.iSubId + " " + userInfo.mName + " registered successfully");
        } else {
            Log.i("CanService", "--registerUser: iCmdId: " + userInfo.iCmdId + " iSubId: " + userInfo.iSubId + " " + userInfo.mName + " had been registered");
        }
        Log.i("CanService", "--registerUser--");
    }

    protected void deregisterUser(Message message) {
        String strValueOf = String.valueOf(message.getData().getString("Msg_Can_Reg_User"));
        Log.i("CanService", "++deregisterUser: " + message.arg1 + " " + message.arg2 + " " + strValueOf);
        Iterator<UserInfo> it = this.mArrayUserInfos.iterator();
        int i = 0;
        while (it.hasNext()) {
            UserInfo next = it.next();
            if (next.iCmdId == message.arg1 && next.iSubId == message.arg2 && next.mMessenger.equals(message.replyTo) && next.mName.equals(strValueOf)) {
                it.remove();
                Log.i("CanService", "deregisterUser: " + next.iCmdId + " " + next.iSubId + " " + next.mName);
                i++;
            }
        }
        if (i <= 0) {
            Log.w("CanService", "--deregisterUser: failed, no user");
        } else {
            Log.i("CanService", "--deregisterUser: OK");
        }
    }

    protected boolean send2User(Message message) {
        for (UserInfo userInfo : this.mArrayUserInfos) {
            try {
                if (userInfo.iSubId == 0) {
                    if (userInfo.iCmdId == message.arg1 && userInfo.mMessenger != null) {
                        userInfo.mMessenger.send(Message.obtain(message));
                    }
                } else if (userInfo.iCmdId == message.arg1 && userInfo.iSubId <= message.arg2 && userInfo.mMessenger != null) {
                    userInfo.mMessenger.send(Message.obtain(message));
                } else if (userInfo.iCmdId == message.arg1) {
                    int i = userInfo.iSubId;
                    int i2 = message.arg2;
                }
            } catch (Exception e) {
                this.mArrayUserInfos.remove(userInfo);
                e.printStackTrace();
            }
        }
        return true;
    }

    protected boolean send2Prot(Message message) {
        Bundle data = message.getData();
        byte[] byteArray = data.getByteArray(CanContant.BUND_CAN_TX);
        int i = data.getInt(CanContant.BUND_CAN_TX_CMD, -1);
        if (i == -1) {
            return false;
        }
        CanInfo.Tx(byteArray);
        try {
            this.mCanRxTx.sendData(i, byteArray, byteArray.length);
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    private class RxData implements Platforms.Can.OnRxDataLister {
        private final int miMaxLength = 4096;
        private byte[] mBuffer = new byte[4096];
        private int miAvailable = 0;
        private int[] mpRemainingLength = {0};
        private int[] mpMinPacketLength = {5};
        private int[] mpCursor = {0};

        public RxData() {
        }

        @Override // com.can.assist.Platforms.Can.OnRxDataLister
        public void OnCanRxData(int i, byte[] bArr, int i2) {
            Log.i("CanService", "OnCanRxData");
        }

        @Override // com.can.assist.Platforms.Can.OnRxDataLister
        public void OnDevicesStatusChanged(int i, byte[] bArr) {
            if (bArr == null || bArr.length < 4) {
                return;
            }
            byte b = bArr[3];
            Log.i("CanService", "OnDevicesStatusChanged, door: " + Integer.toHexString(b));
            if (b != Parser.mDoorInfo) {
                Parser.DoorData[0] = 3;
                Parser.DoorData[1] = b;
                CanService.this.mHandler.sendMessage(CanMessage.getRxMessage(Parser.DoorData, 3, 0));
            }
        }
    }
}
