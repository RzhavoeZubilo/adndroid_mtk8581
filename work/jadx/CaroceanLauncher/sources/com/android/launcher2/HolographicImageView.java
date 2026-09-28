package com.android.launcher2;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class HolographicImageView extends ImageView {
    private final HolographicViewHelper mHolographicHelper;

    public HolographicImageView(Context context) {
        this(context, null);
    }

    public HolographicImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HolographicImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHolographicHelper = new HolographicViewHelper(context);
    }

    void invalidatePressedFocusedStates() {
        this.mHolographicHelper.invalidatePressedFocusedStates(this);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mHolographicHelper.generatePressedFocusedStates(this);
    }
}
