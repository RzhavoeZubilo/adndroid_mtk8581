package com.can.ui.draw;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public class ScreenSwitchStatus {
    private Context mContext;
    private Handler mHandler;
    private ViewGroup mLayout;
    private PopWind mPopWind;
    private Handler uiHandler = new Handler() { // from class: com.can.ui.draw.ScreenSwitchStatus.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                if (message.arg1 > 0) {
                    if (ScreenSwitchStatus.this.mPopWind != null) {
                        ScreenSwitchStatus.this.mPopWind.show(ScreenSwitchStatus.this.mContext, ScreenSwitchStatus.this.mLayout);
                        ScreenSwitchStatus.this.uiHandler.removeCallbacks(ScreenSwitchStatus.this.AutoClose);
                        ScreenSwitchStatus.this.uiHandler.postDelayed(ScreenSwitchStatus.this.AutoClose, 5000L);
                        return;
                    }
                    return;
                }
                if (!ScreenSwitchStatus.this.IsShow() || ScreenSwitchStatus.this.mPopWind == null) {
                    return;
                }
                ScreenSwitchStatus.this.mPopWind.hide(ScreenSwitchStatus.this.mLayout);
            }
        }
    };
    Runnable AutoClose = new Runnable() { // from class: com.can.ui.draw.ScreenSwitchStatus.3
        @Override // java.lang.Runnable
        public void run() {
            ScreenSwitchStatus.this.Hide();
        }
    };

    public ScreenSwitchStatus(LayoutInflater layoutInflater, Context context, Handler handler) {
        this.mContext = null;
        this.mPopWind = null;
        this.mLayout = null;
        this.mContext = context;
        this.mHandler = handler;
        this.mPopWind = new PopWind((int) context.getResources().getDimension(R.dimen.screen_switch_width), (int) context.getResources().getDimension(R.dimen.screen_switch_height));
        ViewGroup viewGroup = (ViewGroup) layoutInflater.inflate(R.layout.screen_switch_status, (ViewGroup) null);
        this.mLayout = viewGroup;
        if (viewGroup.findViewById(R.id.tvOk) != null) {
            this.mLayout.setOnClickListener(new View.OnClickListener() { // from class: com.can.ui.draw.ScreenSwitchStatus.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ScreenSwitchStatus.this.Hide();
                }
            });
        }
    }

    public boolean IsShow() {
        return this.mPopWind.IsVisable();
    }

    public void show(boolean z) {
        Handler handler = this.uiHandler;
        handler.sendMessage(handler.obtainMessage(0, z ? 1 : 0, 0));
    }

    public void Hide() {
        Handler handler = this.uiHandler;
        handler.sendMessage(handler.obtainMessage(0, 0, 0));
    }
}
