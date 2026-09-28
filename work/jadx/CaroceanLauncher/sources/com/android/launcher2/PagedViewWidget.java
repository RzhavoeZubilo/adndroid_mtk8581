package com.android.launcher2;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class PagedViewWidget extends LinearLayout {
    private static final String TAG = "PagedViewWidgetLayout";
    private static boolean sDeletePreviewsWhenDetachedFromWindow = true;
    static PagedViewWidget sShortpressTarget;
    private String mDimensionsFormatString;
    boolean mIsAppWidget;
    private final Rect mOriginalImagePadding;
    CheckForShortPress mPendingCheckForShortPress;
    ShortPressListener mShortPressListener;
    boolean mShortPressTriggered;

    interface ShortPressListener {
        void cleanUpShortPress(View view);

        void onShortPress(View view);
    }

    public PagedViewWidget(Context context) {
        this(context, null);
    }

    public PagedViewWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PagedViewWidget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPendingCheckForShortPress = null;
        this.mShortPressListener = null;
        this.mShortPressTriggered = false;
        this.mOriginalImagePadding = new Rect();
        this.mDimensionsFormatString = context.getResources().getString(R.string.widget_dims_format);
        setWillNotDraw(false);
        setClipToPadding(false);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ImageView imageView = (ImageView) findViewById(R.id.widget_preview);
        this.mOriginalImagePadding.left = imageView.getPaddingLeft();
        this.mOriginalImagePadding.top = imageView.getPaddingTop();
        this.mOriginalImagePadding.right = imageView.getPaddingRight();
        this.mOriginalImagePadding.bottom = imageView.getPaddingBottom();
    }

    public static void setDeletePreviewsWhenDetachedFromWindow(boolean z) {
        sDeletePreviewsWhenDetachedFromWindow = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ImageView imageView;
        super.onDetachedFromWindow();
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "onDetachedFromWindow: this = " + this);
        }
        if (!sDeletePreviewsWhenDetachedFromWindow || (imageView = (ImageView) findViewById(R.id.widget_preview)) == null) {
            return;
        }
        FastBitmapDrawable fastBitmapDrawable = (FastBitmapDrawable) imageView.getDrawable();
        if (fastBitmapDrawable != null && fastBitmapDrawable.getBitmap() != null) {
            fastBitmapDrawable.getBitmap().recycle();
        }
        imageView.setImageDrawable(null);
    }

    public void applyFromAppWidgetProviderInfo(AppWidgetProviderInfo appWidgetProviderInfo, int i, int[] iArr) {
        if (L.DEBUG) {
            L.d(TAG, "applyFromAppWidgetProviderInfo: info = " + appWidgetProviderInfo + ", label = " + appWidgetProviderInfo.label);
        }
        this.mIsAppWidget = true;
        ImageView imageView = (ImageView) findViewById(R.id.widget_preview);
        if (i > -1) {
            imageView.setMaxWidth(i);
        }
        imageView.setContentDescription(appWidgetProviderInfo.label);
        ((TextView) findViewById(R.id.widget_name)).setText(appWidgetProviderInfo.label);
        TextView textView = (TextView) findViewById(R.id.widget_dims);
        if (textView != null) {
            textView.setText(String.format(this.mDimensionsFormatString, Integer.valueOf(Math.min(iArr[0], LauncherModel.getCellCountX())), Integer.valueOf(Math.min(iArr[1], LauncherModel.getCellCountY()))));
        }
    }

    public void applyFromResolveInfo(PackageManager packageManager, ResolveInfo resolveInfo) {
        this.mIsAppWidget = false;
        CharSequence charSequenceLoadLabel = resolveInfo.loadLabel(packageManager);
        if (L.DEBUG) {
            L.d(TAG, "applyFromResolveInfo: info = " + resolveInfo + ", label = " + ((Object) charSequenceLoadLabel));
        }
        ((ImageView) findViewById(R.id.widget_preview)).setContentDescription(charSequenceLoadLabel);
        ((TextView) findViewById(R.id.widget_name)).setText(charSequenceLoadLabel);
        TextView textView = (TextView) findViewById(R.id.widget_dims);
        if (textView != null) {
            textView.setText(String.format(this.mDimensionsFormatString, 1, 1));
        }
    }

    public int[] getPreviewSize() {
        ImageView imageView = (ImageView) findViewById(R.id.widget_preview);
        int[] iArr = {(imageView.getWidth() - this.mOriginalImagePadding.left) - this.mOriginalImagePadding.right, imageView.getHeight() - this.mOriginalImagePadding.top};
        if (L.DEBUG && (iArr[0] <= 0 || iArr[1] <= 0)) {
            L.d(TAG, "getPreviewSize: maxSize[0] = " + iArr[0] + ", maxSize[1] = " + iArr[1] + ", i.getWidth() = " + imageView.getWidth() + ", i.getHeight() = " + imageView.getHeight() + ", mOriginalImagePadding = " + this.mOriginalImagePadding);
        }
        return iArr;
    }

    void applyPreview(FastBitmapDrawable fastBitmapDrawable, int i) {
        PagedViewWidgetImageView pagedViewWidgetImageView = (PagedViewWidgetImageView) findViewById(R.id.widget_preview);
        if (fastBitmapDrawable != null) {
            pagedViewWidgetImageView.mAllowRequestLayout = false;
            pagedViewWidgetImageView.setImageDrawable(fastBitmapDrawable);
            if (this.mIsAppWidget) {
                pagedViewWidgetImageView.setPadding(this.mOriginalImagePadding.left + ((getPreviewSize()[0] - fastBitmapDrawable.getIntrinsicWidth()) / 2), this.mOriginalImagePadding.top, this.mOriginalImagePadding.right, this.mOriginalImagePadding.bottom);
            }
            pagedViewWidgetImageView.setAlpha(1.0f);
            pagedViewWidgetImageView.mAllowRequestLayout = true;
        }
    }

    void setShortPressListener(ShortPressListener shortPressListener) {
        this.mShortPressListener = shortPressListener;
    }

    class CheckForShortPress implements Runnable {
        CheckForShortPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PagedViewWidget.sShortpressTarget != null) {
                return;
            }
            if (PagedViewWidget.this.mShortPressListener != null) {
                PagedViewWidget.this.mShortPressListener.onShortPress(PagedViewWidget.this);
                PagedViewWidget.sShortpressTarget = PagedViewWidget.this;
            }
            PagedViewWidget.this.mShortPressTriggered = true;
        }
    }

    private void checkForShortPress() {
        if (sShortpressTarget != null) {
            return;
        }
        if (this.mPendingCheckForShortPress == null) {
            this.mPendingCheckForShortPress = new CheckForShortPress();
        }
        postDelayed(this.mPendingCheckForShortPress, 120L);
    }

    private void removeShortPressCallback() {
        CheckForShortPress checkForShortPress = this.mPendingCheckForShortPress;
        if (checkForShortPress != null) {
            removeCallbacks(checkForShortPress);
        }
    }

    private void cleanUpShortPress() {
        removeShortPressCallback();
        if (this.mShortPressTriggered) {
            ShortPressListener shortPressListener = this.mShortPressListener;
            if (shortPressListener != null) {
                shortPressListener.cleanUpShortPress(this);
            }
            this.mShortPressTriggered = false;
        }
    }

    static void resetShortPressTarget() {
        sShortpressTarget = null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            checkForShortPress();
        } else if (action == 1 || action == 3) {
            cleanUpShortPress();
        }
        return true;
    }
}
