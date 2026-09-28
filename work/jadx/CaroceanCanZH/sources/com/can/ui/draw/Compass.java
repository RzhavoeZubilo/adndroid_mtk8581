package com.can.ui.draw;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public class Compass extends View {
    private int mAngle;
    private Bitmap mClockBgBmp;
    private int mClockbgId;
    private int mLayoutHeight;
    private int mLayoutWidth;
    private Bitmap mPointBmp;
    private int mPointId;
    private int mPointX;
    private int mPointY;

    public Compass(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mClockBgBmp = null;
        this.mPointBmp = null;
        this.mLayoutWidth = 0;
        this.mLayoutHeight = 0;
        this.mPointX = 0;
        this.mPointY = 0;
        this.mClockbgId = 0;
        this.mPointId = 0;
        this.mAngle = 240;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Compass);
        this.mClockbgId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.mPointId = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.mClockbgId != 0) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), this.mClockbgId, options);
            this.mClockBgBmp = bitmapDecodeResource;
            this.mLayoutWidth = bitmapDecodeResource.getWidth();
            this.mLayoutHeight = this.mClockBgBmp.getHeight();
        }
        if (this.mPointId != 0) {
            this.mPointBmp = BitmapFactory.decodeResource(getResources(), this.mPointId, options);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.mClockBgBmp;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
        Bitmap bitmap2 = this.mPointBmp;
        if (bitmap2 != null) {
            this.mPointX = (this.mLayoutWidth - bitmap2.getWidth()) / 2;
            this.mPointY = (this.mLayoutHeight - bitmap2.getHeight()) / 2;
            canvas.save();
            canvas.translate(this.mPointX, this.mPointY);
            canvas.rotate(this.mAngle, bitmap2.getWidth() / 2, bitmap2.getHeight() / 2);
            canvas.drawBitmap(bitmap2, 0.0f, 0.0f, (Paint) null);
            canvas.restore();
        }
    }

    public void setAngle(int i) {
        if (this.mAngle != i) {
            this.mAngle = i;
            invalidate();
        }
    }
}
