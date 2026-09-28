package com.can.ui.draw;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public class Windlv extends View {
    private static final int DEFAULT_SPACING = 5;
    private static final int MAX_WIND_LEVEL = 7;
    private Bitmap mBmpNormal;
    private Bitmap mBmpSelect;
    private int mCurLevel;
    private Matrix mMatrix;
    private int mMaxLevel;
    private int mSpacing;

    public Windlv(Context context) {
        this(context, null);
    }

    public Windlv(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.graphics.Matrix] */
    public Windlv(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSpacing = 5;
        this.mMaxLevel = 7;
        this.mCurLevel = 4;
        this.mBmpSelect = null;
        this.mBmpNormal = null;
        this.mMatrix = null;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WindLevel, i, 0);
        try {
            try {
                this.mBmpNormal = BitmapFactory.decodeResource(getResources(), typedArrayObtainStyledAttributes.getResourceId(0, 0));
                this.mBmpSelect = BitmapFactory.decodeResource(getResources(), typedArrayObtainStyledAttributes.getResourceId(1, 0));
                this.mMaxLevel = typedArrayObtainStyledAttributes.getInteger(2, 7);
                this.mSpacing = typedArrayObtainStyledAttributes.getInteger(3, 5);
            } catch (Exception e) {
                e.printStackTrace();
            }
            typedArrayObtainStyledAttributes.recycle();
            typedArrayObtainStyledAttributes = new Matrix();
            this.mMatrix = typedArrayObtainStyledAttributes;
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public int getMaxLevel() {
        return this.mMaxLevel;
    }

    public void setMaxLevel(int i) {
        if (i <= 0) {
            i = 7;
        }
        this.mMaxLevel = i;
    }

    public int getCurLevel() {
        return this.mCurLevel;
    }

    public void setCurLevel(int i) {
        this.mCurLevel = i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mBmpSelect != null && this.mBmpNormal != null && this.mMaxLevel > 0) {
            float width = getWidth() - (this.mSpacing * this.mMaxLevel);
            int width2 = this.mBmpNormal.getWidth();
            int height = this.mBmpNormal.getHeight();
            int i = this.mMaxLevel;
            float f = ((float) (width2 * i)) > width ? (width / i) / width2 : 1.0f;
            float height2 = (getHeight() - (height * f)) / 2.0f;
            for (int i2 = 0; i2 < this.mMaxLevel; i2++) {
                this.mMatrix.setScale(f, f);
                this.mMatrix.postTranslate(((width2 * f) + this.mSpacing) * i2, height2);
                canvas.drawBitmap(this.mBmpNormal, this.mMatrix, null);
            }
            for (int i3 = 0; i3 < this.mCurLevel; i3++) {
                this.mMatrix.setScale(f, f);
                this.mMatrix.postTranslate(((width2 * f) + this.mSpacing) * i3, height2);
                canvas.drawBitmap(this.mBmpSelect, this.mMatrix, null);
            }
            return;
        }
        super.onDraw(canvas);
    }
}
