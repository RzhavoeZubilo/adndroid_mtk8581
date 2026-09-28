package com.android.launcher2;

import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAppWidgetHostView extends AppWidgetHostView {
    private static final String TAG = "LauncherAppWidgetHostView";
    private Context mContext;
    private LayoutInflater mInflater;
    private CheckLongPressHelper mLongPressHelper;
    private int mPreviousOrientation;

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        return 393216;
    }

    public LauncherAppWidgetHostView(Context context) {
        super(context);
        this.mContext = context;
        this.mLongPressHelper = new CheckLongPressHelper(this);
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.appwidget.AppWidgetHostView
    protected View getErrorView() {
        return this.mInflater.inflate(R.layout.appwidget_error, (ViewGroup) this, false);
    }

    @Override // android.appwidget.AppWidgetHostView
    public void updateAppWidget(RemoteViews remoteViews) {
        this.mPreviousOrientation = this.mContext.getResources().getConfiguration().orientation;
        super.updateAppWidget(remoteViews);
    }

    public boolean orientationChangedSincedInflation() {
        return this.mPreviousOrientation != this.mContext.getResources().getConfiguration().orientation;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (L.DEBUG_MOTION) {
            L.d(TAG, "onTouchEvent: ev = " + motionEvent);
        }
        if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
            this.mLongPressHelper.cancelLongPress();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (L.DEBUG_MOTION) {
            L.d(TAG, "onInterceptTouchEvent: ev = " + motionEvent);
        }
        if (this.mLongPressHelper.hasPerformedLongPress()) {
            this.mLongPressHelper.cancelLongPress();
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mLongPressHelper.postCheckForLongPress();
            return false;
        }
        if (action != 1 && action != 3) {
            return false;
        }
        this.mLongPressHelper.cancelLongPress();
        return false;
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }
}
