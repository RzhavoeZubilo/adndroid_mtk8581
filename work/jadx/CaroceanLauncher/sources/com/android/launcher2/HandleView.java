package com.android.launcher2;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class HandleView extends ImageView {
    private static final int ORIENTATION_HORIZONTAL = 1;
    private Launcher mLauncher;
    private int mOrientation;

    public HandleView(Context context) {
        super(context);
        this.mOrientation = 1;
    }

    public HandleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HandleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mOrientation = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.HandleView, i, 0);
        this.mOrientation = typedArrayObtainStyledAttributes.getInt(0, 1);
        typedArrayObtainStyledAttributes.recycle();
        setContentDescription(context.getString(R.string.all_apps_button_label));
    }

    @Override // android.view.View
    public View focusSearch(int i) {
        View viewFocusSearch = super.focusSearch(i);
        if (viewFocusSearch != null || this.mLauncher.isAllAppsVisible()) {
            return viewFocusSearch;
        }
        Workspace workspace = this.mLauncher.getWorkspace();
        workspace.dispatchUnhandledMove(null, i);
        return (this.mOrientation == 1 && i == 130) ? this : workspace;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && this.mLauncher.isAllAppsVisible()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    void setLauncher(Launcher launcher) {
        this.mLauncher = launcher;
    }
}
