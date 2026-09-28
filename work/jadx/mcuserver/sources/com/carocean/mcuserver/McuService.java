package com.carocean.mcuserver;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import android.util.SparseArray;
import com.carocean.navicar.McuServiceManager;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class McuService extends Service {
    static final String TAG = McuService.class.getSimpleName();
    private static McuService mInstance = null;
    private SparseArray<HashSet<Messenger>> mDataCallbacks = new SparseArray<>();
    McuDataHandler.McuDataReceived mMcuDataReceived = new McuDataHandler.McuDataReceived() { // from class: com.carocean.mcuserver.McuService.1
        @Override // com.carocean.mcuserver.McuDataHandler.McuDataReceived
        public void onReceived(int cmdcode, byte[] data) {
            HashSet<Messenger> cb = (HashSet) McuService.this.mDataCallbacks.get(cmdcode);
            if (cb != null) {
                Iterator<Messenger> iterator = cb.iterator();
                while (iterator.hasNext()) {
                    Messenger m = iterator.next();
                    Message msg = Message.obtain((Handler) null, McuServiceManager.MSG_REPLY_TO_CALLBACK);
                    Bundle bundle = new Bundle();
                    bundle.putInt(McuServiceManager.BUNDLE_KEY_CMDCODE, cmdcode);
                    bundle.putByteArray("data", data);
                    msg.setData(bundle);
                    try {
                        m.send(msg);
                    } catch (Exception e) {
                        Log.e(McuService.TAG, "Remote callback is dead. Pls unregister callback before exit.");
                        iterator.remove();
                    }
                }
                if (cb.size() == 0) {
                    McuService.this.mDataCallbacks.remove(cmdcode);
                }
            }
        }
    };
    Handler mServiceHandler = new Handler() { // from class: com.carocean.mcuserver.McuService.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Log.v(McuService.TAG, message.toString());
            if (!McuRpc.getInstance().is_open() && message.what < 100) {
                Log.e(McuService.TAG, "Sorry, MCU serial port not opened, client could not call RPC_xxx.message ID = " + message.what);
                return;
            }
            int i = message.what;
            if (i == 3) {
                McuRpc.getInstance().getMcuStatus();
            } else if (i == 4) {
                McuRpc.getInstance().setSourceID(message.arg1, message.arg2);
            } else if (i == 5) {
                McuRpc.getInstance().getVolumeTable();
            } else if (i == 6) {
                McuRpc.getInstance().setVolumeTable(message.arg1, message.arg2 == 1);
            } else if (i == 20) {
                McuRpc.getInstance().setRadio2Freq(message.arg1, message.arg2);
            } else if (i == 99) {
                byte[] byteArray = null;
                if (message.getData() != null) {
                    byteArray = message.getData().getByteArray(McuServiceManager.BUNDLE_GENERAL_RPC_CALL_DATA);
                }
                McuRpc.getInstance().generalRpcCall(message.arg1, byteArray);
            } else if (i != 259) {
                switch (i) {
                    case 10:
                        McuRpc.getInstance().keyCommand(message.arg1, message.arg2);
                        break;
                    case 11:
                        if (message.getData() != null) {
                            McuRpc.getInstance().setSWCTable(message.getData().getByteArray(McuServiceManager.BUNDLE_KEY_TABLE));
                        }
                        break;
                    case 12:
                        McuRpc.getInstance().setSWCStudyOP(message.arg1);
                        break;
                    default:
                        switch (i) {
                            case 15:
                                if (message.getData() != null) {
                                    McuRpc.getInstance().setEQData(message.getData().getByteArray(McuServiceManager.BUNDLE_EQ_DATA));
                                }
                                break;
                            case 16:
                                McuRpc.getInstance().setNaviGuidancePlay(message.arg1 == 1);
                                break;
                            case 17:
                                McuRpc.getInstance().setNaviGuidanceMixing(message.arg1);
                                break;
                            default:
                                switch (i) {
                                    case 30:
                                        McuRpc.getInstance().RPCSetMCUVolumeTableDSP(message.arg1, message.arg2);
                                        break;
                                    case 31:
                                        McuDataHandler.getInstance().mSysBTCallStaus = message.arg1 & 255;
                                        McuDataHandler.getInstance().mSysCPCallStaus = (message.arg1 >> 8) & 255;
                                        McuDataHandler.getInstance().mSysGPSGuidance = (message.arg1 >> 16) & 255;
                                        McuDataHandler.getInstance().mSysTTSGuiding = (message.arg1 >> 24) & 255;
                                        McuDataHandler.getInstance().setMapGpio(McuDataHandler.getInstance().isMapPlay() ? 1 : 0, false);
                                        McuRpc.getInstance().RPCSetBTCallStatus(McuDataHandler.getInstance().isBtCall() ? 1 : 0);
                                        break;
                                    case 32:
                                        McuRpc.getInstance().RPCSetMCUVolume(message.arg1, message.arg2);
                                        break;
                                    case 33:
                                        McuDataHandler.getInstance().setDDRFlag();
                                        break;
                                    default:
                                        switch (i) {
                                            case 255:
                                                if (message.getData() != null) {
                                                    McuService.this.initMcuRpc(message.getData().getString(McuServiceManager.BUNDLE_COM_PORT), message.arg1);
                                                }
                                                break;
                                            case 256:
                                                if (message.getData() != null) {
                                                    McuService.this.regCallback(message.getData().getIntArray(McuServiceManager.BUNDLE_KEY_CMDCODE), message.replyTo);
                                                }
                                                break;
                                            case 257:
                                                if (message.getData() != null) {
                                                    McuService.this.unregCallback(message.getData().getIntArray(McuServiceManager.BUNDLE_KEY_CMDCODE), message.replyTo);
                                                }
                                                break;
                                            default:
                                                Log.e(McuService.TAG, "warning: message " + message.what + " not handled.");
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                McuRpc.getInstance().close();
            }
            super.handleMessage(message);
        }
    };
    final Messenger mMessenger = new Messenger(this.mServiceHandler);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mMessenger.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.e(TAG, "service onCreate. TID = " + Thread.currentThread().getId() + " instance = " + toString());
        McuDataHandler.getInstance().regCallback(this.mMcuDataReceived);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initMcuRpc(String dev, int baudrate) {
        if (McuRpc.getInstance().is_open()) {
            Log.e(TAG, "McuRpc is already open.");
            return;
        }
        Log.e(TAG, "open serial port. " + dev + ",baud rate:" + baudrate);
        McuRpc.getInstance().open(dev, baudrate);
        McuRpc.getInstance().shakeHand();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Log.e(TAG, "service onDestroy. TID = " + Thread.currentThread().getId());
        McuDataHandler.getInstance().unregCallback(this.mMcuDataReceived);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void regCallback(int[] cmdcode, Messenger callback) {
        if (cmdcode == null || cmdcode.length <= 0) {
            Log.e(TAG, "cmdcode[] could not be null, not implemented yet.");
            return;
        }
        if (callback == null) {
            Log.e(TAG, "regCallback() call : invalid parameters, messenger could not be null.");
        }
        for (int key : cmdcode) {
            HashSet<Messenger> cb = this.mDataCallbacks.get(key);
            if (cb == null) {
                cb = new HashSet<>();
            }
            cb.add(callback);
            this.mDataCallbacks.put(key, cb);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregCallback(int[] cmdcode, Messenger callback) {
        if (cmdcode == null || cmdcode.length <= 0) {
            Log.e(TAG, "cmdcode[] could not be null, not implemented yet.");
            return;
        }
        if (callback == null) {
            Log.e(TAG, "unregCallback() call : invalid parameters, messenger could not be null.");
        }
        for (int key : cmdcode) {
            HashSet<Messenger> cb = this.mDataCallbacks.get(key);
            if (cb.contains(callback)) {
                cb.remove(callback);
                if (cb.size() <= 0) {
                    this.mDataCallbacks.remove(key);
                }
            }
        }
    }
}
