package com.can.assist;

import android.content.Context;
import android.os.RemoteException;
import com.can.parser.DDef;

/* JADX INFO: loaded from: classes.dex */
public abstract class Platforms implements CanContant {

    public interface Can {

        public interface OnRxDataLister {
            void OnCanRxData(int i, byte[] bArr, int i2);

            void OnDevicesStatusChanged(int i, byte[] bArr);
        }

        void DeInit() throws RemoteException;

        void Init(Context context) throws RemoteException;

        void sendData(int i, byte[] bArr, int i2) throws RemoteException;

        void setEnvironment(int i) throws RemoteException;

        void setRxDataLister(OnRxDataLister onRxDataLister);

        void setRxReady();
    }

    public interface MediaInfo {
        void PanoramicVideo(boolean z);

        void RightVideo(boolean z);

        int TranslateSource(int i);

        boolean checkVol();

        boolean getAccPowerStatus();

        boolean getAssistFun(String str);

        byte getBand();

        int getCurTrack();

        byte getFreqIndex();

        String getID3Album();

        String getID3Author();

        String getID3Title();

        int getMainFreq();

        boolean getMute(int i);

        int getPhoneConnects();

        String getPhoneNumber();

        int getPhonestate();

        int getPlayTime();

        int getSource();

        DDef.TimeInfo getTimeInfo();

        int getTotalTrack();

        int getVol();

        void setAccPowerStatus(boolean z);
    }

    public interface OnCanAudioListener {
        void AudioIoFoucsloss();
    }

    public interface OnGdDataListener {
        void onAbout();

        void onAcc(boolean z, boolean z2);

        void onBtInfo(int i, int i2);

        void onCycle2send();

        void onLang();

        void onReverse(boolean z);

        void onScreenSwitch(int i);

        void onTrackData(int i);

        void onTranslateKey(int i, int i2);

        void onVolInfo(int i);
    }

    public abstract void CloseAudio();

    public abstract void DeInit();

    public abstract void Init(Context context) throws RemoteException;

    public abstract void InitSend();

    public abstract void OpenAudio(String str);

    public abstract void ResetCanDescribe() throws RemoteException;

    public abstract int get(String str);

    public abstract CanContant.CAN_DESCRIBE getCanDescribe() throws RemoteException;

    public abstract Can getCanRxTx();

    public abstract int getCarType() throws RemoteException;

    public abstract MediaInfo getMediaInfo();

    public abstract void power() throws RemoteException;

    public abstract void put(String str, int i);

    public abstract boolean setCanDescribe(CanContant.CarType_Info carType_Info) throws RemoteException;

    public abstract void setCanIcon(CanContant.CarType_Info carType_Info) throws RemoteException;

    public abstract void setOnCanAudioListener(OnCanAudioListener onCanAudioListener);

    public abstract void setOnGdDataListener(OnGdDataListener onGdDataListener);

    public abstract void start(long j);
}
