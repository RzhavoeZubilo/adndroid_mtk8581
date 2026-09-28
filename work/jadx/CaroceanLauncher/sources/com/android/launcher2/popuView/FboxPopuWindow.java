package com.android.launcher2.popuView;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class FboxPopuWindow extends PopupWindow {
    private Context mContext;
    OnPopuWindowListen mListen;
    MenuGridView menuGrid;
    public SetGridView settingGrid;

    public interface OnPopuWindowListen {
        void getIsDismiss();

        void showPopuWindow();
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        this.mListen.getIsDismiss();
    }

    public FboxPopuWindow(Context context) {
        this.mContext = context;
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setWidth(context.getResources().getInteger(R.integer.fbox_popuwindow_width));
        setBackgroundDrawable(new BitmapDrawable());
        setAnimationStyle(R.style.PopupAnimation);
        setHeight(-2);
    }

    public void setContentView(int i) {
        setContentView(LayoutInflater.from(this.mContext).inflate(i, (ViewGroup) null, true));
        initView();
    }

    private void initView() {
        View contentView = getContentView();
        this.settingGrid = (SetGridView) contentView.findViewById(R.id.gridview_icon_top);
        this.menuGrid = (MenuGridView) contentView.findViewById(R.id.gridview_icon_bottom);
    }

    public void showPopu(View view) {
        showAtLocation(view, 85, this.mContext.getResources().getDimensionPixelSize(R.dimen.hotseat_popu_icon_x), this.mContext.getResources().getDimensionPixelSize(R.dimen.hotseat_popu_icon_y));
        update();
        this.mListen.showPopuWindow();
    }

    public void setListen(OnPopuWindowListen onPopuWindowListen) {
        this.mListen = onPopuWindowListen;
    }
}
