package com.carocean.mcuserver;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IMcuServerAidlInterface extends IInterface {
    void shakeHand() throws RemoteException;

    public static class Default implements IMcuServerAidlInterface {
        @Override // com.carocean.mcuserver.IMcuServerAidlInterface
        public void shakeHand() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IMcuServerAidlInterface {
        private static final String DESCRIPTOR = "com.carocean.mcuserver.IMcuServerAidlInterface";
        static final int TRANSACTION_shakeHand = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMcuServerAidlInterface asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IMcuServerAidlInterface)) {
                return (IMcuServerAidlInterface) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code != 1) {
                if (code == 1598968902) {
                    reply.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(code, data, reply, flags);
            }
            data.enforceInterface(DESCRIPTOR);
            shakeHand();
            reply.writeNoException();
            return true;
        }

        private static class Proxy implements IMcuServerAidlInterface {
            public static IMcuServerAidlInterface sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.carocean.mcuserver.IMcuServerAidlInterface
            public void shakeHand() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().shakeHand();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IMcuServerAidlInterface impl) {
            if (Proxy.sDefaultImpl == null && impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IMcuServerAidlInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
