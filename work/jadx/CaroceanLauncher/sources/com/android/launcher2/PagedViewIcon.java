package com.android.launcher2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class PagedViewIcon extends TextView {
    private static final float PRESS_ALPHA = 0.4f;
    private static final String TAG = "PagedViewIcon";
    private Bitmap mIcon;
    private boolean mLockDrawableState;
    private PressedCallback mPressedCallback;

    public interface PressedCallback {
        void iconPressed(PagedViewIcon pagedViewIcon);
    }

    public PagedViewIcon(Context context) {
        this(context, null);
    }

    public PagedViewIcon(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PagedViewIcon(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLockDrawableState = false;
    }

    public void applyFromApplicationInfo(ApplicationInfo applicationInfo, boolean z, PressedCallback pressedCallback) {
        this.mIcon = applicationInfo.iconBitmap;
        this.mPressedCallback = pressedCallback;
        setCompoundDrawablesWithIntrinsicBounds((Drawable) null, new FastBitmapDrawable(this.mIcon), (Drawable) null, (Drawable) null);
        setText(applicationInfo.title);
        setTag(applicationInfo);
    }

    public void lockDrawableState() {
        this.mLockDrawableState = true;
    }

    public void resetDrawableState() {
        this.mLockDrawableState = false;
        post(new Runnable() { // from class: com.android.launcher2.PagedViewIcon.1
            @Override // java.lang.Runnable
            public void run() {
                PagedViewIcon.this.refreshDrawableState();
            }
        });
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (isPressed()) {
            setAlpha(PRESS_ALPHA);
            PressedCallback pressedCallback = this.mPressedCallback;
            if (pressedCallback != null) {
                pressedCallback.iconPressed(this);
                return;
            }
            return;
        }
        if (this.mLockDrawableState) {
            return;
        }
        setAlpha(1.0f);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        MTKUnreadLoader.drawUnreadEventIfNeed(canvas, this);
    }
}
