package com.android.launcher2;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class HolographicViewHelper {
    private int mHighlightColor;
    private boolean mStatesUpdated;
    private final Canvas mTempCanvas = new Canvas();

    public HolographicViewHelper(Context context) {
        this.mHighlightColor = Launcher.getThemeColor(context.getResources(), R.color.holo_blue_light);
    }

    void generatePressedFocusedStates(ImageView imageView) {
        if (this.mStatesUpdated || imageView == null) {
            return;
        }
        this.mStatesUpdated = true;
        this.mHighlightColor = Launcher.getThemeColor(imageView.getContext().getResources(), R.color.holo_blue_light);
        Bitmap bitmapCreateOriginalImage = createOriginalImage(imageView, this.mTempCanvas);
        Bitmap bitmapCreatePressImage = createPressImage(imageView, this.mTempCanvas);
        FastBitmapDrawable fastBitmapDrawable = new FastBitmapDrawable(bitmapCreateOriginalImage);
        FastBitmapDrawable fastBitmapDrawable2 = new FastBitmapDrawable(bitmapCreatePressImage);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, fastBitmapDrawable2);
        stateListDrawable.addState(new int[]{R.attr.state_focused}, fastBitmapDrawable2);
        stateListDrawable.addState(new int[0], fastBitmapDrawable);
        imageView.setImageDrawable(stateListDrawable);
    }

    void invalidatePressedFocusedStates(ImageView imageView) {
        this.mStatesUpdated = false;
        if (imageView != null) {
            imageView.invalidate();
        }
    }

    private Bitmap createOriginalImage(ImageView imageView, Canvas canvas) {
        Drawable drawable = imageView.getDrawable();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        canvas.save();
        drawable.draw(canvas);
        canvas.restore();
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    private Bitmap createPressImage(ImageView imageView, Canvas canvas) {
        Drawable drawable = imageView.getDrawable();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        canvas.save();
        drawable.draw(canvas);
        canvas.restore();
        canvas.drawColor(this.mHighlightColor, PorterDuff.Mode.SRC_IN);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }
}
