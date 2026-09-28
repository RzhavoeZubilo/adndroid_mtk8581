package com.can.assist;

import android.app.Instrumentation;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.can.parser.DDef;
import com.can.platforms.AppConfigParser;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class CanKey implements CanContant {
    private OnCanKeyListener mCanKeyListener;
    private KeyAction mObjKeyAction = null;
    private final String TAG = getClass().getName();
    private HashMap<String, Integer> mkeyMap = new HashMap<>();
    Runnable runnable = new Runnable() { // from class: com.can.assist.CanKey.1
        @Override // java.lang.Runnable
        public void run() {
            CanKey.this.getKeyAction().KnobStep();
        }
    };
    Runnable runLongClick = new Runnable() { // from class: com.can.assist.CanKey.2
        @Override // java.lang.Runnable
        public void run() {
            CanKey.this.getKeyAction().longClick();
        }
    };
    private Handler mObjhHandler = new Handler() { // from class: com.can.assist.CanKey.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 801) {
                return;
            }
            CanKey.this.parser(message);
        }
    };
    private boolean mbSeekTick = true;

    public interface OnCanKeyListener {
        void onRadomRepeatKey(String str);

        void onSeekKey(String str);

        void ondo(String str, boolean z);

        void onlongOver();
    }

    public CanKey(Context context, Integer num) {
        XmlResourceParser xml = null;
        try {
            xml = context.getResources().getXml(num.intValue());
        } catch (Resources.NotFoundException unused) {
            Log.e(this.TAG, "key xml not found!");
        }
        if (xml != null) {
            parserkeyxml(xml);
        }
    }

    public void sendCankey(DDef.WheelKeyInfo wheelKeyInfo) {
        CANKEY_INFO cankey_info = new CANKEY_INFO();
        cankey_info.strLongKey = wheelKeyInfo.mstrLongKey;
        cankey_info.strKeyCode = wheelKeyInfo.mstrKeyCode;
        cankey_info.bExeOnceLongClick = wheelKeyInfo.mExeOnceLongClick;
        cankey_info.iKeyState = wheelKeyInfo.mKeyStatus;
        cankey_info.bInternal = wheelKeyInfo.bInternal;
        cankey_info.bCombination = wheelKeyInfo.bCombination;
        cankey_info.bLongClick = wheelKeyInfo.bLongClick;
        cankey_info.bLongInternal = wheelKeyInfo.bLongInternal;
        Log.i("LHB", "keyInfo.bInternal:" + wheelKeyInfo.bInternal + ",objCanInfo.bInternal:" + cankey_info.bInternal);
        if (wheelKeyInfo.mKeyStatus == 5) {
            cankey_info.iKnobStep = wheelKeyInfo.mKnobSteps;
        } else {
            cankey_info.iKnobStep = 0;
        }
        Message messageObtain = Message.obtain((Handler) null, CanContant.KEY_CAN);
        messageObtain.obj = cankey_info;
        this.mObjhHandler.sendMessage(messageObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public KeyAction getKeyAction() {
        if (this.mObjKeyAction == null) {
            this.mObjKeyAction = new KeyAction();
        }
        return this.mObjKeyAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parser(Message message) {
        OnCanKeyListener onCanKeyListener;
        CANKEY_INFO cankey_info = (CANKEY_INFO) message.obj;
        int i = AnonymousClass5.$SwitchMap$com$can$assist$CanContant$E_CANKEY_ACTION[getIsAction(cankey_info).ordinal()];
        if (i != 1) {
            if (i != 2) {
                return;
            }
            this.mObjhHandler.post(this.runnable);
        } else if (cankey_info.bInternal && (onCanKeyListener = this.mCanKeyListener) != null) {
            onCanKeyListener.ondo(cankey_info.strKeyCode, true);
        } else {
            sendKey(cankey_info.strKeyCode);
        }
    }

    /* JADX INFO: renamed from: com.can.assist.CanKey$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$can$assist$CanContant$E_CANKEY_ACTION;

        static {
            int[] iArr = new int[CanContant.E_CANKEY_ACTION.values().length];
            $SwitchMap$com$can$assist$CanContant$E_CANKEY_ACTION = iArr;
            try {
                iArr[CanContant.E_CANKEY_ACTION.eCanKey_Action_valid.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$can$assist$CanContant$E_CANKEY_ACTION[CanContant.E_CANKEY_ACTION.eCankey_Action_Knob.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private CanContant.E_CANKEY_ACTION getIsAction(CANKEY_INFO cankey_info) {
        CanContant.E_CANKEY_ACTION e_cankey_action = CanContant.E_CANKEY_ACTION.eCanKey_Action_Invalid;
        if (cankey_info.bCombination) {
            int i = cankey_info.iKeyState;
            if (i == 0) {
                return getKeyAction().up(cankey_info);
            }
            if (i != 1) {
                return i != 5 ? e_cankey_action : getKeyAction().knob(cankey_info);
            }
            getKeyAction().down(cankey_info);
            return e_cankey_action;
        }
        return getKeyAction().getNormalKeyAction(cankey_info);
    }

    private class CANKEY_INFO {
        public boolean bCombination;
        public boolean bExeOnceLongClick;
        public boolean bInternal;
        public boolean bLongClick;
        public boolean bLongInternal;
        public int iKeyState;
        public int iKnobStep;
        public String strKeyCode;
        public String strLongKey;

        private CANKEY_INFO() {
            this.bExeOnceLongClick = true;
            this.iKeyState = 0;
            this.iKnobStep = 0;
            this.bLongInternal = false;
            this.bInternal = false;
            this.bCombination = true;
            this.bLongClick = false;
        }
    }

    private class KeyAction {
        private long mDelayMillis;
        private long mIntervalTime;
        private CANKEY_INFO mObjCanKeyInfo;

        private KeyAction() {
            this.mIntervalTime = 0L;
            this.mDelayMillis = 100L;
            this.mObjCanKeyInfo = null;
        }

        public void down(CANKEY_INFO cankey_info) {
            this.mObjCanKeyInfo = cankey_info;
            Log.i(CanKey.this.TAG, "+++++++++++++++++++++++CanKey Down:" + cankey_info.strKeyCode);
            if (0 == this.mIntervalTime) {
                this.mIntervalTime = System.currentTimeMillis();
            }
            CANKEY_INFO cankey_info2 = this.mObjCanKeyInfo;
            if (cankey_info2 == null || !cankey_info2.bLongClick) {
                return;
            }
            CanKey.this.mObjhHandler.postDelayed(CanKey.this.runLongClick, 1000L);
        }

        public CanContant.E_CANKEY_ACTION up(CANKEY_INFO cankey_info) {
            CanContant.E_CANKEY_ACTION e_cankey_action = CanContant.E_CANKEY_ACTION.eCanKey_Action_Invalid;
            if (this.mObjCanKeyInfo == null) {
                Log.e(CanKey.this.TAG, "The last time no down press锛�");
            } else {
                this.mObjCanKeyInfo = null;
                e_cankey_action = CanContant.E_CANKEY_ACTION.eCanKey_Action_valid;
                Log.i(CanKey.this.TAG, "+++++++++++++++++++++++CanKey Up:" + cankey_info.strKeyCode);
            }
            CanKey.this.mbSeekTick = true;
            this.mIntervalTime = 0L;
            return e_cankey_action;
        }

        public CanContant.E_CANKEY_ACTION knob(CANKEY_INFO cankey_info) {
            CanContant.E_CANKEY_ACTION e_cankey_action = CanContant.E_CANKEY_ACTION.eCanKey_Action_Invalid;
            if (cankey_info.iKnobStep <= 0) {
                return e_cankey_action;
            }
            this.mObjCanKeyInfo = cankey_info;
            return CanContant.E_CANKEY_ACTION.eCankey_Action_Knob;
        }

        public void KnobStep() {
            CANKEY_INFO cankey_info = this.mObjCanKeyInfo;
            if (cankey_info != null && cankey_info.iKnobStep > 0) {
                this.mObjCanKeyInfo.iKnobStep--;
                CanKey.this.sendKey(this.mObjCanKeyInfo.strKeyCode);
            }
            CanKey.this.mObjhHandler.postDelayed(CanKey.this.runnable, this.mDelayMillis);
        }

        public void longClick() {
            CANKEY_INFO cankey_info;
            if (this.mIntervalTime == 0 || (cankey_info = this.mObjCanKeyInfo) == null || !cankey_info.bLongClick) {
                return;
            }
            String str = this.mObjCanKeyInfo.strKeyCode;
            if (this.mObjCanKeyInfo.strLongKey != null && !this.mObjCanKeyInfo.strLongKey.equals(AppConfigParser.ITEM_TIP)) {
                str = this.mObjCanKeyInfo.strLongKey;
            }
            if (this.mObjCanKeyInfo.bLongInternal) {
                if (CanKey.this.mCanKeyListener != null) {
                    CanKey.this.mCanKeyListener.ondo(str, false);
                }
            } else {
                CanKey.this.sendKey(str);
            }
            if (!this.mObjCanKeyInfo.bExeOnceLongClick) {
                CanKey.this.mObjhHandler.postDelayed(CanKey.this.runLongClick, this.mDelayMillis);
            } else {
                this.mObjCanKeyInfo = null;
            }
        }

        public CanContant.E_CANKEY_ACTION getNormalKeyAction(CANKEY_INFO cankey_info) {
            return cankey_info.iKeyState == 1 ? CanContant.E_CANKEY_ACTION.eCanKey_Action_valid : CanContant.E_CANKEY_ACTION.eCanKey_Action_Invalid;
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.can.assist.CanKey$4] */
    public void sendKey(final String str) {
        if (str != null) {
            if (str.equals(DDef.Seek_pre) || str.equals(DDef.Seek_next)) {
                OnCanKeyListener onCanKeyListener = this.mCanKeyListener;
                if (onCanKeyListener == null || !this.mbSeekTick) {
                    return;
                }
                this.mbSeekTick = false;
                onCanKeyListener.onSeekKey(str);
                return;
            }
            if (str.equals(DDef.Random) || str.equals(DDef.Repeat)) {
                this.mCanKeyListener.onRadomRepeatKey(str);
            } else {
                new Thread() { // from class: com.can.assist.CanKey.4
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Log.i(CanKey.this.TAG, "+++++++++++++++++++++++CanKey TransKey:" + str);
                            new Instrumentation().sendKeyDownUpSync(CanKey.this.TranslateKey(str));
                        } catch (Exception unused) {
                        }
                        super.run();
                    }
                }.start();
            }
        }
    }

    private boolean parserkeyxml(XmlResourceParser xmlResourceParser) {
        boolean z = false;
        Integer numValueOf = 0;
        try {
            try {
                int eventType = xmlResourceParser.getEventType();
                String attributeValue = AppConfigParser.ITEM_TIP;
                boolean z2 = false;
                while (eventType != 1) {
                    if (eventType != 2) {
                        if (eventType != 3) {
                            continue;
                        } else {
                            try {
                                if ("Item".equals(xmlResourceParser.getName())) {
                                    this.mkeyMap.put(attributeValue, numValueOf);
                                    z2 = true;
                                }
                            } catch (IOException e) {
                                e = e;
                                z = z2;
                                e.printStackTrace();
                                return z;
                            } catch (XmlPullParserException e2) {
                                e = e2;
                                z = z2;
                                e.printStackTrace();
                                return z;
                            }
                        }
                    } else if ("Item".equals(xmlResourceParser.getName())) {
                        attributeValue = xmlResourceParser.getAttributeValue(0);
                        numValueOf = Integer.valueOf(Integer.parseInt(xmlResourceParser.getAttributeValue(1)));
                    }
                    eventType = xmlResourceParser.next();
                }
                return z2;
            } finally {
                xmlResourceParser.close();
            }
        } catch (IOException e3) {
            e = e3;
        } catch (XmlPullParserException e4) {
            e = e4;
        }
    }

    public int TranslateKey(String str) {
        if ((str.equals(DDef.Media_pre) || str.equals(DDef.Media_next)) && CanXml.getInstance(null).getAssistFun(CanContant.PRV_NEXT_FAN)) {
            str = str.equals(DDef.Media_pre) ? DDef.Media_next : DDef.Media_pre;
        }
        return this.mkeyMap.get(str).intValue();
    }

    public void setOnCanKeyListener(OnCanKeyListener onCanKeyListener) {
        this.mCanKeyListener = onCanKeyListener;
    }
}
