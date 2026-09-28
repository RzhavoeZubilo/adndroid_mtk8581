package com.can.ui.draw;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public class DspBalance extends View {
    private float mObjHeightParent;
    private Bitmap mObjPoint;
    private OnTouchListener mObjTouchListener;
    private float mObjWidthParent;
    private float mfBal;
    private float mfFad;
    private int miDefBal;
    private int miDefFad;
    private int w_ajust;
    private int y_ajust;

    public interface OnTouchListener {
        void onBalance(float f, float f2);
    }

    public DspBalance(Context context) {
        super(context);
        this.mObjTouchListener = null;
    }

    public DspBalance(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mObjTouchListener = null;
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.toyota_dsp_seekbar_point);
        this.mObjPoint = bitmapDecodeResource;
        this.w_ajust = bitmapDecodeResource.getWidth() / 2;
        this.y_ajust = this.mObjPoint.getHeight() / 2;
    }

    public void setDefMaxVal(int i) {
        this.miDefFad = i;
        this.miDefBal = i;
    }

    public void setBalanceVal(int i, int i2) {
        move((getWidth() * i) / this.miDefFad, (getHeight() * i2) / this.miDefBal);
        invalidate();
        OnTouchListener onTouchListener = this.mObjTouchListener;
        if (onTouchListener != null) {
            onTouchListener.onBalance(i, i2);
        }
    }

    public void setBalenceListener(OnTouchListener onTouchListener) {
        this.mObjTouchListener = onTouchListener;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.mObjPoint;
        canvas.drawBitmap(bitmap, this.mfFad - (bitmap.getWidth() / 2), this.mfBal - (this.mObjPoint.getHeight() / 2), (Paint) null);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int defaultSize = getDefaultSize(getSuggestedMinimumHeight(), i2);
        this.mObjWidthParent = getDefaultSize(getSuggestedMinimumWidth(), i) - (this.w_ajust * 2);
        this.mObjHeightParent = defaultSize - (this.y_ajust * 2);
        float width = getWidth() / 2;
        int i3 = this.miDefFad;
        this.mfFad = width + ((i3 * this.mObjWidthParent) / (i3 * 2));
        float height = getHeight() / 2;
        int i4 = this.miDefBal;
        this.mfBal = height - ((i4 * this.mObjHeightParent) / (i4 * 2));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action != 0 && action != 2) {
            return true;
        }
        move(x, y);
        invalidate();
        OnTouchListener onTouchListener = this.mObjTouchListener;
        if (onTouchListener == null) {
            return true;
        }
        onTouchListener.onBalance((this.mfFad * this.miDefFad) / (getWidth() - (this.w_ajust * 2)), (this.mfBal * this.miDefBal) / (getHeight() - (this.w_ajust * 2)));
        return true;
    }

    private void move(float f, float f2) {
        this.mfFad = f;
        this.mfBal = f2;
        int i = this.w_ajust;
        if (f < i) {
            this.mfFad = i;
        } else if (f > getWidth() - this.w_ajust) {
            this.mfFad = getWidth() - this.w_ajust;
        }
        int i2 = this.y_ajust;
        if (f2 < i2) {
            this.mfBal = i2;
        } else if (f2 > getHeight() - this.y_ajust) {
            this.mfBal = getHeight() - this.y_ajust;
        }
    }
}
