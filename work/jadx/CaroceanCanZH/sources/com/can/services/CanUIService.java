package com.can.services;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.can.assist.CanContant;
import com.can.assist.CanMessage;
import com.can.assist.CanProxy;
import com.can.assist.CanXml;
import com.can.parser.DDef;
import com.can.parser.Parser;
import com.carocean.navicar.McuServiceManager;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import com.carocean.navicar.util.ZHTDOEMManager;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class CanUIService extends Service implements CanContant {
    private CarMediaAudio mCarMediaAudio;
    protected final String TAG = "CanUIService";
    protected boolean mIsCarInfoShowing = false;
    public CanProxy mObjCanProxy = null;
    private ArrayList<UIUserInfo> mArrayMessengers = new ArrayList<>();
    private int mCarMediaMode = -1;
    private int mMenuStatus = 0;
    McuServiceManager.DataListener dataListener = new McuServiceManager.DataListener() { // from class: com.can.services.CanUIService.1
        @Override // com.carocean.navicar.McuServiceManager.DataListener
        public void onReceive(int i, byte[] bArr) {
            if (i == 30) {
                if (bArr.length < 6 || CanUIService.this.mCarMediaMode == bArr[0]) {
                    return;
                }
                CanUIService.this.mCarMediaMode = bArr[0] & 255;
                if (17 == CanUIService.this.mCarMediaMode) {
                    CanUIService.this.mObjUserHandler.removeMessages(8);
                    CanUIService.this.mObjUserHandler.removeMessages(9);
                    CanUIService.this.mObjUserHandler.sendEmptyMessage(10);
                    return;
                }
                CanUIService.this.mObjUserHandler.sendEmptyMessage(9);
                return;
            }
            if (i == 31 && bArr.length >= 13 && CanUIService.this.mMenuStatus != bArr[0]) {
                CanUIService.this.mMenuStatus = bArr[0] & 255;
                if (1 == CanUIService.this.mMenuStatus) {
                    CanUIService.this.mObjUserHandler.sendEmptyMessage(9);
                }
            }
        }
    };
    public Handler mObjHandler = new Handler() { // from class: com.can.services.CanUIService.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CanUIService.this.doMessage(message);
            CanUIService.this.send2UIUser(message);
        }
    };
    public Handler mObjUserHandler = new Handler() { // from class: com.can.services.CanUIService.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    CanUIService.this.send(message);
                    break;
                case 2:
                case 5:
                default:
                    super.handleMessage(message);
                    break;
                case 3:
                    CanUIService.this.registerUser(message);
                    break;
                case 4:
                    CanUIService.this.unregisterUser(message);
                    break;
                case 6:
                    CanUIService.this.getdata(message);
                    break;
                case 7:
                    CanUIService.this.mIsCarInfoShowing = message.arg1 != 0;
                    CanUIService.this.mObjHandler.sendMessage(CanUIService.this.mObjHandler.obtainMessage(3, Parser.mBaseInfo));
                    break;
                case 8:
                    CanUIService.this.mCarMediaAudio.requestAudioFocus();
                    break;
                case 9:
                    try {
                        if (NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, CanUIService.this.getContentResolver(), Navi.Status.SYS_BT_CALL_STATUS) == 0) {
                            if (CanUIService.this.mCarMediaMode != 17) {
                                CanUIService.this.mCarMediaAudio.requestAudioFocus();
                            }
                            CanUIService.this.mCarMediaAudio.showUi(CanUIService.this.mCarMediaMode);
                        }
                    } catch (NaviStatus.StatusNotFoundException e) {
                        e.printStackTrace();
                        return;
                    }
                    break;
                case 10:
                    CanUIService.this.mCarMediaAudio.releaseAudioFocus();
                    break;
            }
        }
    };
    Messenger mCanUiService = new Messenger(this.mObjUserHandler);

    public abstract void doMessage(Message message);

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mObjCanProxy = CanXml.getInstance(getApplicationContext()).create(this.mObjHandler, getApplicationContext(), "CanUIService", DDef.E_CMD_TYPE.eCmd_Type_PopWind);
        this.mCarMediaAudio = new CarMediaAudio(this);
        initMcu();
        Log.i("CanUIService", "CanUIService is Active!");
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mCarMediaAudio.releaseAudioFocus();
        this.mObjCanProxy.deInit();
        McuServiceManager.getInstance().unregCallback(this.dataListener);
        super.onDestroy();
    }

    private void initMcu() {
        McuServiceManager.getInstance().initialize(this, null);
        McuServiceManager.getInstance().regCallback(new int[]{30, 31}, this.dataListener);
        McuServiceManager.getInstance().isServiceConnected();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.i("CanUIService", "onStartCommand");
        if (intent != null) {
            String stringExtra = intent.getStringExtra("mode");
            if (stringExtra != null) {
                if (stringExtra.equals("open_touch_screen")) {
                    Handler handler = this.mObjHandler;
                    handler.sendMessage(handler.obtainMessage(64, 1, 0));
                } else if (stringExtra.equals("close_touch_screen")) {
                    Handler handler2 = this.mObjHandler;
                    handler2.sendMessage(handler2.obtainMessage(64, 0, 0));
                }
            } else {
                byte[] byteArrayExtra = intent.getByteArrayExtra("air");
                if (byteArrayExtra != null) {
                    if (ZHTDOEMManager.isLexus()) {
                        Handler handler3 = this.mObjHandler;
                        handler3.sendMessage(handler3.obtainMessage(65, byteArrayExtra));
                    }
                } else {
                    int intExtra = intent.getIntExtra("videomode", -1);
                    Log.i("CanUIService", "onStartCommand, videomode: " + intExtra);
                    if (intExtra >= 0) {
                        Handler handler4 = this.mObjHandler;
                        handler4.sendMessage(handler4.obtainMessage(64, intExtra, intent.getIntExtra("sourceresumed", 0)));
                    }
                }
            }
        }
        return super.onStartCommand(intent, 1, i2);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mCanUiService.getBinder();
    }

    public class UIUserInfo {
        public String mName = null;
        public Messenger mMessenger = null;

        public UIUserInfo() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerUser(Message message) {
        Log.i("CanUIService", "++registerUser++");
        if (message.replyTo == null) {
            Log.e("CanUIService", "--registerUser:  " + String.valueOf(message.getData().getString("Msg_Can_Reg_User")) + " error!");
            return;
        }
        UIUserInfo uIUserInfo = new UIUserInfo();
        uIUserInfo.mMessenger = message.replyTo;
        uIUserInfo.mName = String.valueOf(message.getData().getString("Msg_Can_Reg_User"));
        char c = 0;
        for (UIUserInfo uIUserInfo2 : this.mArrayMessengers) {
            if (uIUserInfo2.mMessenger != null && uIUserInfo2.mMessenger.equals(uIUserInfo.mMessenger)) {
                c = 1;
                break;
            }
        }
        if (c <= 0) {
            this.mArrayMessengers.add(uIUserInfo);
            Log.i("CanUIService", "--registerUser:  " + uIUserInfo.mName + " registered successfully");
        } else {
            Log.i("CanUIService", "--registerUser:  " + uIUserInfo.mName + " had been registered");
        }
        Log.i("CanUIService", "--registerUser--");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterUser(Message message) {
        String strValueOf = String.valueOf(message.getData().getString("Msg_Can_Reg_User"));
        Log.i("CanUIService", "++deregisterUser:  " + strValueOf);
        Iterator<UIUserInfo> it = this.mArrayMessengers.iterator();
        int i = 0;
        while (it.hasNext()) {
            UIUserInfo next = it.next();
            if (next.mMessenger.equals(message.replyTo) && next.mName.equals(strValueOf)) {
                it.remove();
                Log.i("CanUIService", "deregisterUser: " + next.mName);
                i++;
            }
        }
        if (i <= 0) {
            Log.w("CanUIService", "--deregisterUser: failed, no user");
        } else {
            Log.i("CanUIService", "--deregisterUser: OK");
        }
    }

    public void send2UIUser(Message message) {
        for (UIUserInfo uIUserInfo : this.mArrayMessengers) {
            try {
                if (uIUserInfo.mMessenger != null) {
                    uIUserInfo.mMessenger.send(Message.obtain(message));
                }
            } catch (Exception e) {
                this.mArrayMessengers.remove(uIUserInfo);
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void send(Message message) {
        CanProxy canProxy = this.mObjCanProxy;
        if (canProxy != null) {
            canProxy.sendMsg2Can(CanMessage.getTxMessage(message));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getdata(Message message) {
        if (message.replyTo == null || this.mObjCanProxy == null) {
            return;
        }
        try {
            message.replyTo.send(CanMessage.getdataMessage(message.arg1, this.mObjCanProxy.getData(message.arg1, message.arg2)));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
