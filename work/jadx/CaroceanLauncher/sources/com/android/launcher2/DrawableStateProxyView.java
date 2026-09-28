package com.android.launcher2;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class DrawableStateProxyView extends LinearLayout {
    private View mView;
    private int mViewId;

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return false;
    }

    public DrawableStateProxyView(Context context) {
        this(context, null);
    }

    public DrawableStateProxyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawableStateProxyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DrawableStateProxyView, i, 0);
        this.mViewId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mView == null) {
            this.mView = ((View) getParent()).findViewById(this.mViewId);
        }
        this.mView.setPressed(isPressed());
        this.mView.setHovered(isHovered());
    }
}
