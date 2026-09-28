package com.can.assist;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.can.platforms.AppConfigParser;
import com.can.services.CanService;
import com.can.tool.CanInfo;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class CanProxy extends AProxy {
    public String mStrUserName = AppConfigParser.ITEM_TIP;
    public Context mProxyContext = null;
    public Messenger mProxyMessenger = null;
    public Messenger mServiceMessenger = null;
    protected final String TAG = getClass().getName();
    public ArrayList<RegProxy_Info> mArrayRegProxyInfo = new ArrayList<>();
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.can.assist.CanProxy.1
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            for (RegProxy_Info regProxy_Info : CanProxy.this.mArrayRegProxyInfo) {
                CanProxy.this.deregisterProxy(regProxy_Info.iCmdId, regProxy_Info.ilen);
            }
            CanProxy.this.mServiceMessenger = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            CanProxy.this.mServiceMessenger = new Messenger(iBinder);
            CanProxy.this.setProtocol();
            for (RegProxy_Info regProxy_Info : CanProxy.this.mArrayRegProxyInfo) {
                CanProxy.this.registerProxy(regProxy_Info.iCmdId, regProxy_Info.ilen);
            }
            CanProxy.this.Finish();
        }
    };

    @Override // com.can.assist.AProxy
    public void setProtocol() {
    }

    @Override // com.can.assist.AProxy
    public void start(Handler handler, Context context, String str) {
        this.mStrUserName = str;
        this.mProxyContext = context;
        this.mProxyMessenger = new Messenger(this);
        doBindService();
    }

    @Override // com.can.assist.AProxy
    public boolean registerProxy(int i, int i2) {
        try {
            if (this.mServiceMessenger == null) {
                return false;
            }
            this.mServiceMessenger.send(CanMessage.getRegisterMessage(i, i2, this.mStrUserName, this.mProxyMessenger));
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.can.assist.AProxy
    public boolean deregisterProxy(int i, int i2) {
        try {
            if (this.mServiceMessenger == null) {
                return false;
            }
            this.mServiceMessenger.send(CanMessage.getDeregisterMessage(i, i2, this.mStrUserName, this.mProxyMessenger));
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.can.assist.AProxy
    public void RegisterProxy(int i, int i2) {
        RegProxy_Info regProxy_Info = new RegProxy_Info();
        regProxy_Info.iCmdId = i & 255;
        regProxy_Info.ilen = i2;
        this.mArrayRegProxyInfo.add(regProxy_Info);
    }

    @Override // com.can.assist.AProxy
    public void deInit() {
        unBindService();
    }

    @Override // com.can.assist.AProxy
    public boolean sendMsg2Can(Message message) {
        if (this.mServiceMessenger == null) {
            CanInfo.e(this.TAG, "sendMsg2Can:mServiceMessenger is null");
        } else if (message == null) {
            CanInfo.i(this.TAG, "sendMsg2Can:msg is fiter!");
        } else {
            try {
                message.replyTo = this.mProxyMessenger;
                this.mServiceMessenger.send(message);
                return true;
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    private void doBindService() {
        Log.i(this.TAG, "++doBindService:" + getClass().getName());
        this.mProxyContext.bindService(new Intent(this.mProxyContext, (Class<?>) CanService.class), this.mConnection, 1);
        Log.i(this.TAG, "--doBindService");
    }

    private void unBindService() {
        this.mProxyContext.unbindService(this.mConnection);
    }

    public class RegProxy_Info {
        int iCmdId = 0;
        int ilen = 0;

        public RegProxy_Info() {
        }
    }
}
