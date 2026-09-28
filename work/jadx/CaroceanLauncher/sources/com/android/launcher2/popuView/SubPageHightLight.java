package com.android.launcher2.popuView;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class SubPageHightLight extends View {
    private int mIndex;
    private Bitmap mLeftBmp;
    private Bitmap mMidBmp;
    private Bitmap mRightBmp;
    private int mX;
    private int mY;

    public SubPageHightLight(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mRightBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointtoleft);
        this.mLeftBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointtoright);
        this.mMidBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointto);
    }

    public SubPageHightLight(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRightBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointtoleft);
        this.mLeftBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointtoright);
        this.mMidBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointto);
    }

    public SubPageHightLight(Context context) {
        super(context);
        this.mRightBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointtoleft);
        this.mLeftBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointtoright);
        this.mMidBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointto);
    }

    public SubPageHightLight(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mRightBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointtoleft);
        this.mLeftBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointtoright);
        this.mMidBmp = BitmapFactory.decodeResource(getResources(), R.drawable.desk_pointto);
    }

    public void setPosition(int i, int i2, int i3) {
        this.mX = i2;
        this.mY = i3;
        this.mIndex = i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap;
        super.onDraw(canvas);
        int i = this.mIndex;
        if (i == 0) {
            bitmap = this.mLeftBmp;
        } else if (i == 1) {
            bitmap = this.mMidBmp;
        } else {
            bitmap = i == 2 ? this.mRightBmp : null;
        }
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, this.mX, this.mY, (Paint) null);
        }
    }
}
