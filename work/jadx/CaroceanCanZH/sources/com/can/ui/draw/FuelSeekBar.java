package com.can.ui.draw;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public class FuelSeekBar extends SeekBar {
    private boolean mCanMove;

    public FuelSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCanMove = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FuelSeekBar);
        this.mCanMove = typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    public FuelSeekBar(Context context) {
        super(context);
        this.mCanMove = true;
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mCanMove) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }
}
