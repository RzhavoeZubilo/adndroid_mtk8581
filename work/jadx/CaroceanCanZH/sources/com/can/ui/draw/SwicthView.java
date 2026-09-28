package com.can.ui.draw;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public class SwicthView implements View.OnClickListener {
    private Context mContext;
    private RelativeLayout mSVLayout;
    private PopWind mSVPopWind;
    private boolean mbReverse = false;
    private final int BACKCAR_STATE = 6;
    private OnSVlistener mSVlistener = null;
    private Button[] mButtons = new Button[3];
    private int[] miBtnId = {R.id.btn_view_wideangle, R.id.btn_view_standardview, R.id.btn_view_depresangle};
    private Handler mHandler = new Handler() { // from class: com.can.ui.draw.SwicthView.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 6) {
                SwicthView.this.doReverse(message.arg1 == 1);
            } else {
                super.handleMessage(message);
            }
        }
    };

    public interface OnSVlistener {
        void Sview(int i);

        int SviewType();
    }

    public SwicthView(LayoutInflater layoutInflater, Context context) {
        this.mContext = null;
        this.mSVPopWind = null;
        this.mSVLayout = null;
        this.mContext = context;
        this.mSVPopWind = new PopWind(0, 0);
        RelativeLayout relativeLayout = (RelativeLayout) layoutInflater.inflate(R.layout.swicthview, (ViewGroup) null);
        this.mSVLayout = relativeLayout;
        LinearLayout linearLayout = (LinearLayout) relativeLayout.findViewById(R.id.layout_swicthview_1);
        for (int i = 0; i < this.miBtnId.length; i++) {
            this.mButtons[i] = (Button) linearLayout.findViewById(R.id.layout_swicthview_1).findViewById(this.miBtnId[i]);
            this.mButtons[i].setOnClickListener(this);
        }
    }

    public void setSwicthView(boolean z) {
        if (this.mbReverse != z) {
            this.mbReverse = z;
            Message messageObtainMessage = this.mHandler.obtainMessage();
            messageObtainMessage.what = 6;
            messageObtainMessage.arg1 = z ? 1 : 0;
            if (z) {
                this.mHandler.sendMessageDelayed(messageObtainMessage, 100L);
                return;
            }
            if (this.mHandler.hasMessages(messageObtainMessage.what)) {
                this.mHandler.removeMessages(messageObtainMessage.what);
            }
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doReverse(boolean z) {
        if (z) {
            show();
            OnSVlistener onSVlistener = this.mSVlistener;
            if (onSVlistener != null) {
                setViewType(onSVlistener.SviewType());
                return;
            }
            return;
        }
        hide();
    }

    public void show() {
        PopWind popWind = this.mSVPopWind;
        if (popWind != null) {
            popWind.showEx(this.mContext, this.mSVLayout);
        }
    }

    public boolean IsShow() {
        return this.mSVPopWind.IsVisable();
    }

    public void hide() {
        PopWind popWind = this.mSVPopWind;
        if (popWind != null) {
            popWind.hide(this.mSVLayout);
        }
    }

    private void setViewType(int i) {
        if (i > 2) {
            return;
        }
        int i2 = 0;
        while (true) {
            Button[] buttonArr = this.mButtons;
            if (i2 >= buttonArr.length) {
                return;
            }
            if (i == i2) {
                buttonArr[i2].setSelected(false);
            } else {
                buttonArr[i2].setSelected(true);
            }
            i2++;
        }
    }

    public void setOnSVlistener(OnSVlistener onSVlistener) {
        this.mSVlistener = onSVlistener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = 0;
        switch (view.getId()) {
            case R.id.btn_view_depresangle /* 2131231143 */:
                i = 2;
                break;
            case R.id.btn_view_standardview /* 2131231144 */:
                i = 1;
                break;
        }
        setViewType(i);
        OnSVlistener onSVlistener = this.mSVlistener;
        if (onSVlistener != null) {
            onSVlistener.Sview(i);
        }
    }
}
