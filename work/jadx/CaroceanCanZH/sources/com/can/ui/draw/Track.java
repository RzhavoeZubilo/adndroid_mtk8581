package com.can.ui.draw;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.can.activity.R;
import com.can.tool.DyncTrack;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Track extends View {
    private DyncTrack mDyncTrack;
    private Paint mObjPaint;
    private int miAngle;

    public Track(Context context) {
        super(context);
        this.miAngle = 0;
        this.mObjPaint = null;
        this.mDyncTrack = null;
    }

    public Track(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.miAngle = 0;
        this.mObjPaint = null;
        this.mDyncTrack = null;
        setBackgroundResource(R.drawable.track_bg);
        Paint paint = new Paint();
        this.mObjPaint = paint;
        paint.setAntiAlias(true);
        this.mObjPaint.setDither(true);
        this.mObjPaint.setAlpha(50);
        this.mObjPaint.setColor(-16711936);
        this.mObjPaint.setStrokeWidth(4.0f);
        this.mObjPaint.setStyle(Paint.Style.STROKE);
        this.mObjPaint.setStrokeJoin(Paint.Join.ROUND);
        this.mObjPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mDyncTrack = DyncTrack.getInstance();
        Point metrics = getMetrics(context);
        ArrayList<Float> arrayList = new ArrayList<>();
        Float fValueOf = Float.valueOf(0.0f);
        arrayList.add(fValueOf);
        arrayList.add(Float.valueOf(88.0f));
        arrayList.add(Float.valueOf(55.0f));
        arrayList.add(Float.valueOf(2.76f));
        arrayList.add(Float.valueOf(2.1f));
        arrayList.add(Float.valueOf(1.2f));
        arrayList.add(Float.valueOf(1.68f));
        arrayList.add(fValueOf);
        arrayList.add(Float.valueOf(668.0f));
        arrayList.add(Float.valueOf(600.0f));
        arrayList.add(Float.valueOf(metrics.x));
        arrayList.add(Float.valueOf(metrics.y));
        arrayList.add(fValueOf);
        if (this.mDyncTrack.setParam(arrayList)) {
            this.mDyncTrack.CreatePoint();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), i), getDefaultSize(getSuggestedMinimumHeight(), i2));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(((Bundle) parcelable).getParcelable("PARENT"));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("PARENT", parcelableOnSaveInstanceState);
        return bundle;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawColor(0);
        DyncTrack dyncTrack = this.mDyncTrack;
        if (dyncTrack != null) {
            dyncTrack.DrawTrack(canvas, this.mObjPaint, this.miAngle);
        }
    }

    public void DrawTrack(int i) {
        this.miAngle = i;
        invalidate();
    }

    public Point getMetrics(Context context) {
        Point point = new Point();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        point.x = displayMetrics.widthPixels;
        point.y = displayMetrics.heightPixels;
        return point;
    }
}
