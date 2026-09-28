package com.android.launcher2;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class StrokedTextView extends TextView {
    private Bitmap mCache;
    private final Canvas mCanvas;
    private final Paint mPaint;
    private int mStrokeColor;
    private float mStrokeWidth;
    private int mTextColor;
    private boolean mUpdateCachedBitmap;

    public StrokedTextView(Context context) {
        super(context);
        this.mCanvas = new Canvas();
        this.mPaint = new Paint();
        init(context, null, 0);
    }

    public StrokedTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCanvas = new Canvas();
        this.mPaint = new Paint();
        init(context, attributeSet, 0);
    }

    public StrokedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCanvas = new Canvas();
        this.mPaint = new Paint();
        init(context, attributeSet, i);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.StrokedTextView, i, 0);
        this.mStrokeColor = typedArrayObtainStyledAttributes.getColor(0, ViewCompat.MEASURED_STATE_MASK);
        this.mStrokeWidth = typedArrayObtainStyledAttributes.getFloat(2, 0.0f);
        this.mTextColor = typedArrayObtainStyledAttributes.getColor(1, -1);
        typedArrayObtainStyledAttributes.recycle();
        this.mUpdateCachedBitmap = true;
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        this.mUpdateCachedBitmap = true;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i > 0 && i2 > 0) {
            this.mUpdateCachedBitmap = true;
            this.mCache = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        } else {
            this.mCache = null;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mCache != null) {
            if (this.mUpdateCachedBitmap) {
                int measuredWidth = getMeasuredWidth();
                int measuredHeight = getMeasuredHeight();
                String string = getText().toString();
                Rect rect = new Rect();
                TextPaint paint = getPaint();
                int iMeasureText = (int) paint.measureText(string);
                paint.getTextBounds("x", 0, 1, rect);
                this.mCanvas.setBitmap(this.mCache);
                this.mCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                Drawable[] compoundDrawables = getCompoundDrawables();
                for (int i = 0; i < compoundDrawables.length; i++) {
                    if (compoundDrawables[i] != null) {
                        compoundDrawables[i].setBounds(paddingLeft, paddingTop, compoundDrawables[i].getIntrinsicWidth() + paddingLeft, compoundDrawables[i].getIntrinsicHeight() + paddingTop);
                        compoundDrawables[i].draw(this.mCanvas);
                    }
                }
                int paddingRight = (measuredWidth - getPaddingRight()) - iMeasureText;
                int iHeight = (measuredHeight + rect.height()) / 2;
                this.mPaint.setStrokeWidth(this.mStrokeWidth);
                this.mPaint.setColor(this.mStrokeColor);
                this.mPaint.setTextSize(getTextSize());
                float f = paddingRight;
                float f2 = iHeight;
                this.mCanvas.drawText(string, f, f2, this.mPaint);
                this.mPaint.setStrokeWidth(0.0f);
                this.mPaint.setColor(this.mTextColor);
                this.mCanvas.drawText(string, f, f2, this.mPaint);
                this.mUpdateCachedBitmap = false;
            }
            canvas.drawBitmap(this.mCache, 0.0f, 0.0f, this.mPaint);
            return;
        }
        super.onDraw(canvas);
    }
}
