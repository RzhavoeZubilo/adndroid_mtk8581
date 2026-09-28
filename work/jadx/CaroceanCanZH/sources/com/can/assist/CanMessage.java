package com.can.assist;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public class CanMessage implements CanContant {
    public static Message getdataMessage(int i, Messenger messenger) {
        Message messageObtain = Message.obtain((Handler) null, 6);
        messageObtain.arg1 = i;
        messageObtain.replyTo = messenger;
        return messageObtain;
    }

    public static Message getdataMessage(int i, int i2, Messenger messenger) {
        Message messageObtain = Message.obtain((Handler) null, 6);
        messageObtain.arg1 = i;
        messageObtain.arg2 = i2;
        messageObtain.replyTo = messenger;
        return messageObtain;
    }

    public static Message getdataMessage(int i, Object obj) {
        Message messageObtain = Message.obtain((Handler) null, i);
        messageObtain.obj = obj;
        return messageObtain;
    }

    public static void getMessage(Handler handler, Object obj, int i, int i2) throws RemoteException {
        handler.sendMessage(handler.obtainMessage(i, i2, 0, obj));
    }

    public static Message getRegisterMessage(int i, int i2, String str, Messenger messenger) {
        Message messageObtain = Message.obtain(null, 3, i, i2);
        messageObtain.replyTo = messenger;
        Bundle bundle = new Bundle();
        bundle.putString("Msg_Can_Reg_User", str);
        messageObtain.setData(bundle);
        return messageObtain;
    }

    public static Message getRegisterMessage(String str, Messenger messenger) {
        Message messageObtain = Message.obtain(null, 3, 0, 0);
        messageObtain.replyTo = messenger;
        Bundle bundle = new Bundle();
        bundle.putString("Msg_Can_Reg_User", str);
        messageObtain.setData(bundle);
        return messageObtain;
    }

    public static Message getDeregisterMessage(int i, int i2, String str, Messenger messenger) {
        Message messageObtain = Message.obtain(null, 4, i, i2);
        messageObtain.replyTo = messenger;
        Bundle bundle = new Bundle();
        bundle.putString("Msg_Can_Reg_User", str);
        messageObtain.setData(bundle);
        return messageObtain;
    }

    public static Message getDeregisterMessage(String str, Messenger messenger) {
        Message messageObtain = Message.obtain(null, 4, 0, 0);
        messageObtain.replyTo = messenger;
        Bundle bundle = new Bundle();
        bundle.putString("Msg_Can_Reg_User", str);
        messageObtain.setData(bundle);
        return messageObtain;
    }

    public static byte[] getRxPacket(Message message) {
        return message.getData().getByteArray(CanContant.BUND_CAN_RX);
    }

    public static Message getRxMessage(byte[] bArr, int i, int i2) {
        Bundle bundle = new Bundle();
        bundle.putByteArray(CanContant.BUND_CAN_RX, bArr);
        Message messageObtain = Message.obtain(null, 2, i, i2);
        messageObtain.setData(bundle);
        return messageObtain;
    }

    public static Message getTxMessage(int i, byte[] bArr) {
        Bundle bundle = new Bundle();
        if (bArr == null) {
            return null;
        }
        bundle.putByteArray(CanContant.BUND_CAN_TX, bArr);
        bundle.putInt(CanContant.BUND_CAN_TX_CMD, i);
        Message messageObtain = Message.obtain(null, 1, 0, 0);
        messageObtain.setData(bundle);
        return messageObtain;
    }

    public static Message getTxMessage(Message message) {
        Message messageObtain = Message.obtain((Handler) null, 1);
        messageObtain.setData(message.getData());
        return messageObtain;
    }

    public static byte[] getTxPacket(Message message) {
        return message.getData().getByteArray(CanContant.BUND_CAN_TX);
    }
}
