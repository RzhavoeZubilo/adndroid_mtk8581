package com.can.assist;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.can.parser.DDef;

/* JADX INFO: loaded from: classes.dex */
public abstract class AProxy extends Handler {
    public abstract void Finish();

    public abstract void Init(DDef.E_CMD_TYPE e_cmd_type);

    public abstract void RegisterProxy(int i, int i2);

    public abstract void deInit();

    public abstract boolean deregisterProxy(int i, int i2);

    public abstract Object getData(int i, int i2);

    public abstract boolean registerProxy(int i, int i2);

    public abstract boolean sendMsg2Can(Message message);

    public abstract void sendMsg2Proxy(Object obj, int i);

    public abstract void sendMsg2Proxy(Object obj, int i, int i2);

    public abstract void setProtocol();

    public abstract void start(Handler handler, Context context, String str);
}
