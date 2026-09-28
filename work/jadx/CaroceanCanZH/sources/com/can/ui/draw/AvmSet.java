package com.can.ui.draw;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.can.activity.R;
import com.can.parser.DDef;

/* JADX INFO: loaded from: classes.dex */
public class AvmSet implements View.OnTouchListener, View.OnKeyListener, View.OnClickListener {
    Runnable AutoClose;
    private int[] mCheckBoxId;
    private CheckBox[] mCheckBoxs;
    private Context mContext;
    private Handler mHandler;
    private LinearLayout mLayout2;
    private PopWind mPopWind;
    private RelativeLayout mlayout;
    private long mlshowAboutTime = 0;
    private boolean mbAutoCloseFlag = false;
    private OnAvmlistener mAvmlistener = null;
    private DDef.AvmInfo mAvmInfo = null;

    public interface OnAvmlistener {
        void sendData(int i, int i2);
    }

    public AvmSet(LayoutInflater layoutInflater, Context context, Handler handler) {
        this.mContext = null;
        this.mPopWind = null;
        this.mHandler = null;
        this.mlayout = null;
        this.mLayout2 = null;
        int i = 0;
        int[] iArr = {R.id.avm_checkbox1, R.id.avm_checkbox2, R.id.avm_checkbox3, R.id.avm_checkbox4, R.id.avm_checkbox5, R.id.avm_checkbox6, R.id.avm_checkbox7};
        this.mCheckBoxId = iArr;
        this.mCheckBoxs = new CheckBox[iArr.length];
        this.AutoClose = new Runnable() { // from class: com.can.ui.draw.AvmSet.1
            @Override // java.lang.Runnable
            public void run() {
                if (System.currentTimeMillis() - AvmSet.this.mlshowAboutTime >= 3000) {
                    AvmSet.this.hide();
                    AvmSet.this.mbAutoCloseFlag = false;
                }
                if (AvmSet.this.mbAutoCloseFlag) {
                    AvmSet.this.mHandler.postDelayed(AvmSet.this.AutoClose, 500L);
                }
            }
        };
        this.mContext = context;
        this.mHandler = handler;
        this.mPopWind = new PopWind(0, 0);
        RelativeLayout relativeLayout = (RelativeLayout) layoutInflater.inflate(R.layout.avm_set, (ViewGroup) null);
        this.mlayout = relativeLayout;
        LinearLayout linearLayout = (LinearLayout) relativeLayout.findViewById(R.id.layout_avm);
        this.mLayout2 = linearLayout;
        if (linearLayout != null) {
            while (true) {
                int[] iArr2 = this.mCheckBoxId;
                if (i >= iArr2.length) {
                    break;
                }
                this.mCheckBoxs[i] = (CheckBox) this.mLayout2.findViewById(iArr2[i]);
                this.mCheckBoxs[i].setOnClickListener(this);
                i++;
            }
        }
        this.mlayout.setOnTouchListener(this);
        this.mlayout.setOnKeyListener(this);
    }

    public void show() {
        PopWind popWind = this.mPopWind;
        if (popWind != null) {
            this.mlshowAboutTime = popWind.showEx(this.mContext, this.mlayout);
            this.mbAutoCloseFlag = false;
        }
    }

    public void hide() {
        PopWind popWind = this.mPopWind;
        if (popWind != null) {
            popWind.hide(this.mlayout);
        }
    }

    public boolean IsShow() {
        return this.mPopWind.IsVisable();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        Rect rect = new Rect();
        this.mLayout2.getGlobalVisibleRect(rect);
        if (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        hide();
        return false;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i != 3 && i != 4) {
            return false;
        }
        hide();
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.avm_checkbox1 /* 2131230810 */:
                sendData(1, this.mCheckBoxs[0].isChecked() ? 1 : 0);
                break;
            case R.id.avm_checkbox2 /* 2131230811 */:
                sendData(3, this.mCheckBoxs[1].isChecked() ? 1 : 0);
                break;
            case R.id.avm_checkbox3 /* 2131230812 */:
                sendData(6, this.mCheckBoxs[2].isChecked() ? 1 : 0);
                break;
            case R.id.avm_checkbox4 /* 2131230813 */:
                sendData(8, this.mCheckBoxs[3].isChecked() ? 1 : 0);
                break;
            case R.id.avm_checkbox5 /* 2131230814 */:
                sendData(2, this.mCheckBoxs[4].isChecked() ? 1 : 0);
                break;
            case R.id.avm_checkbox6 /* 2131230815 */:
                sendData(5, this.mCheckBoxs[5].isChecked() ? 1 : 0);
                break;
            case R.id.avm_checkbox7 /* 2131230816 */:
                sendData(7, this.mCheckBoxs[6].isChecked() ? 1 : 0);
                break;
        }
    }

    private void sendData(int i, int i2) {
        OnAvmlistener onAvmlistener = this.mAvmlistener;
        if (onAvmlistener != null) {
            onAvmlistener.sendData(i, i2);
        }
    }

    public void setListener(OnAvmlistener onAvmlistener) {
        this.mAvmlistener = onAvmlistener;
    }

    public void setAvmInfo(DDef.AvmInfo avmInfo) {
        this.mAvmInfo = avmInfo;
        if (avmInfo == null || this.mLayout2 == null) {
            return;
        }
        this.mCheckBoxs[0].setChecked(avmInfo.mIntelligent == 1);
        this.mCheckBoxs[1].setChecked(this.mAvmInfo.mLogo == 1);
        this.mCheckBoxs[2].setChecked(this.mAvmInfo.mRightTrigger == 1);
        this.mCheckBoxs[3].setChecked(this.mAvmInfo.mFoward == 1);
        this.mCheckBoxs[4].setChecked(this.mAvmInfo.mFirstStart == 1);
        this.mCheckBoxs[5].setChecked(this.mAvmInfo.mLeftTrigger == 1);
        this.mCheckBoxs[6].setChecked(this.mAvmInfo.mWheelTrigger == 1);
    }
}
