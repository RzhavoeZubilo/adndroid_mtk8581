package com.android.launcher2;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class BubbleTextView extends TextView {
    static final float CORNER_RADIUS = 4.0f;
    static final float PADDING_H = 8.0f;
    static final float PADDING_V = 3.0f;
    static final int SHADOW_LARGE_COLOUR = -587202560;
    static final float SHADOW_LARGE_RADIUS = 4.0f;
    static final int SHADOW_SMALL_COLOUR = -872415232;
    static final float SHADOW_SMALL_RADIUS = 1.75f;
    static final float SHADOW_Y_OFFSET = 2.0f;
    private Drawable mBackground;
    private boolean mBackgroundSizeChanged;
    private boolean mDidInvalidateForPressedState;
    private int mFocusedGlowColor;
    private int mFocusedOutlineColor;
    private CheckLongPressHelper mLongPressHelper;
    private final HolographicOutlineHelper mOutlineHelper;
    private int mPressedGlowColor;
    private Bitmap mPressedOrFocusedBackground;
    private int mPressedOutlineColor;
    private int mPrevAlpha;
    private boolean mStayPressed;
    private final Canvas mTempCanvas;
    private final Rect mTempRect;

    public BubbleTextView(Context context) {
        super(context);
        this.mPrevAlpha = -1;
        this.mOutlineHelper = new HolographicOutlineHelper();
        this.mTempCanvas = new Canvas();
        this.mTempRect = new Rect();
        init();
    }

    public BubbleTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPrevAlpha = -1;
        this.mOutlineHelper = new HolographicOutlineHelper();
        this.mTempCanvas = new Canvas();
        this.mTempRect = new Rect();
        init();
    }

    public BubbleTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPrevAlpha = -1;
        this.mOutlineHelper = new HolographicOutlineHelper();
        this.mTempCanvas = new Canvas();
        this.mTempRect = new Rect();
        init();
    }

    private void init() {
        this.mLongPressHelper = new CheckLongPressHelper(this);
        this.mBackground = getBackground();
        int themeColor = Launcher.getThemeColor(getContext().getResources(), R.color.holo_blue_light);
        this.mPressedGlowColor = themeColor;
        this.mFocusedOutlineColor = themeColor;
        this.mFocusedGlowColor = themeColor;
        this.mPressedOutlineColor = themeColor;
        setShadowLayer(4.0f, 0.0f, SHADOW_Y_OFFSET, SHADOW_LARGE_COLOUR);
    }

    public void applyFromShortcutInfo(ShortcutInfo shortcutInfo, IconCache iconCache) {
        setCompoundDrawablesWithIntrinsicBounds((Drawable) null, new FastBitmapDrawable(shortcutInfo.getIcon(iconCache)), (Drawable) null, (Drawable) null);
        setText(shortcutInfo.title);
        setTag(shortcutInfo);
    }

    @Override // android.widget.TextView
    protected boolean setFrame(int i, int i2, int i3, int i4) {
        if (getLeft() != i || getRight() != i3 || getTop() != i2 || getBottom() != i4) {
            this.mBackgroundSizeChanged = true;
        }
        return super.setFrame(i, i2, i3, i4);
    }

    @Override // android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mBackground || super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        if (obj != null) {
            LauncherModel.checkItemInfo((ItemInfo) obj);
        }
        super.setTag(obj);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        if (isPressed()) {
            if (!this.mDidInvalidateForPressedState) {
                setCellLayoutPressedOrFocusedIcon();
            }
        } else {
            boolean z = this.mPressedOrFocusedBackground == null;
            if (!this.mStayPressed) {
                this.mPressedOrFocusedBackground = null;
            }
            if (isFocused()) {
                if (getLayout() == null) {
                    this.mPressedOrFocusedBackground = null;
                } else {
                    this.mPressedOrFocusedBackground = createGlowingOutline(this.mTempCanvas, this.mFocusedGlowColor, this.mFocusedOutlineColor);
                }
                this.mStayPressed = false;
                setCellLayoutPressedOrFocusedIcon();
            }
            boolean z2 = this.mPressedOrFocusedBackground == null;
            if (!z && z2) {
                setCellLayoutPressedOrFocusedIcon();
            }
        }
        Drawable drawable = this.mBackground;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
        super.drawableStateChanged();
    }

    private void drawWithPadding(Canvas canvas, int i) {
        Rect rect = this.mTempRect;
        getDrawingRect(rect);
        rect.bottom = (getExtendedPaddingTop() - 3) + getLayout().getLineTop(0);
        canvas.save();
        canvas.scale(getScaleX(), getScaleY(), (getWidth() + i) / 2, (getHeight() + i) / 2);
        int i2 = i / 2;
        canvas.translate((-getScrollX()) + i2, (-getScrollY()) + i2);
        canvas.clipRect(rect, Region.Op.REPLACE);
        draw(canvas);
        canvas.restore();
    }

    private Bitmap createGlowingOutline(Canvas canvas, int i, int i2) {
        int i3 = HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth() + i3, getHeight() + i3, Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        drawWithPadding(canvas, i3);
        this.mOutlineHelper.applyExtraThickExpensiveOutlineWithBlur(bitmapCreateBitmap, canvas, i2, i);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            if (this.mPressedOrFocusedBackground == null) {
                this.mPressedOrFocusedBackground = createGlowingOutline(this.mTempCanvas, this.mPressedGlowColor, this.mPressedOutlineColor);
            }
            if (isPressed()) {
                this.mDidInvalidateForPressedState = true;
                setCellLayoutPressedOrFocusedIcon();
            } else {
                this.mDidInvalidateForPressedState = false;
            }
            this.mLongPressHelper.postCheckForLongPress();
        } else if (action == 1 || action == 3) {
            if (!isPressed()) {
                this.mPressedOrFocusedBackground = null;
            }
            this.mLongPressHelper.cancelLongPress();
        }
        return zOnTouchEvent;
    }

    void setStayPressed(boolean z) {
        this.mStayPressed = z;
        if (!z) {
            this.mPressedOrFocusedBackground = null;
        }
        setCellLayoutPressedOrFocusedIcon();
    }

    void setCellLayoutPressedOrFocusedIcon() {
        ShortcutAndWidgetContainer shortcutAndWidgetContainer;
        if (!(getParent() instanceof ShortcutAndWidgetContainer) || (shortcutAndWidgetContainer = (ShortcutAndWidgetContainer) getParent()) == null) {
            return;
        }
        CellLayout cellLayout = (CellLayout) shortcutAndWidgetContainer.getParent();
        if (this.mPressedOrFocusedBackground == null) {
            this = null;
        }
        cellLayout.setPressedOrFocusedIcon(this);
    }

    void clearPressedOrFocusedBackground() {
        this.mPressedOrFocusedBackground = null;
        setCellLayoutPressedOrFocusedIcon();
    }

    Bitmap getPressedOrFocusedBackground() {
        return this.mPressedOrFocusedBackground;
    }

    int getPressedOrFocusedBackgroundPadding() {
        return HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS / 2;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            if (this.mBackgroundSizeChanged) {
                drawable.setBounds(0, 0, getRight() - getLeft(), getBottom() - getTop());
                this.mBackgroundSizeChanged = false;
            }
            if ((scrollX | scrollY) == 0) {
                drawable.draw(canvas);
            } else {
                canvas.translate(scrollX, scrollY);
                drawable.draw(canvas);
                canvas.translate(-scrollX, -scrollY);
            }
        }
        if (getCurrentTextColor() == getResources().getColor(R.color.transparent)) {
            getPaint().clearShadowLayer();
            super.draw(canvas);
            MTKUnreadLoader.drawUnreadEventIfNeed(canvas, this);
            return;
        }
        getPaint().setShadowLayer(4.0f, 0.0f, SHADOW_Y_OFFSET, SHADOW_LARGE_COLOUR);
        super.draw(canvas);
        canvas.save();
        canvas.clipRect(getScrollX(), getScrollY() + getExtendedPaddingTop(), getScrollX() + getWidth(), getScrollY() + getHeight(), Region.Op.INTERSECT);
        getPaint().setShadowLayer(SHADOW_SMALL_RADIUS, 0.0f, 0.0f, SHADOW_SMALL_COLOUR);
        super.draw(canvas);
        canvas.restore();
        MTKUnreadLoader.drawUnreadEventIfNeed(canvas, this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    @Override // android.view.View
    protected boolean onSetAlpha(int i) {
        if (this.mPrevAlpha == i) {
            return true;
        }
        this.mPrevAlpha = i;
        super.onSetAlpha(i);
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }
}
