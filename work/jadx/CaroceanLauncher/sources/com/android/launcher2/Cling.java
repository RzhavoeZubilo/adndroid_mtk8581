package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class Cling extends FrameLayout {
    static final String ALLAPPS_CLING_DISMISSED_KEY = "cling.allapps.dismissed";
    private static String ALLAPPS_LANDSCAPE = "all_apps_landscape";
    private static String ALLAPPS_LARGE = "all_apps_large";
    private static String ALLAPPS_PORTRAIT = "all_apps_portrait";
    static final String FOLDER_CLING_DISMISSED_KEY = "cling.folder.dismissed";
    private static String FOLDER_LANDSCAPE = "folder_landscape";
    private static String FOLDER_LARGE = "folder_large";
    private static String FOLDER_PORTRAIT = "folder_portrait";
    static final String WORKSPACE_CLING_DISMISSED_KEY = "cling.workspace.dismissed";
    private static String WORKSPACE_CUSTOM = "workspace_custom";
    private static String WORKSPACE_LANDSCAPE = "workspace_landscape";
    private static String WORKSPACE_LARGE = "workspace_large";
    private static String WORKSPACE_PORTRAIT = "workspace_portrait";
    private int mAppIconSize;
    private Drawable mBackground;
    private int mButtonBarHeight;
    private String mDrawIdentifier;
    private Paint mErasePaint;
    private Drawable mHandTouchGraphic;
    private boolean mIsInitialized;
    private Launcher mLauncher;
    private int[] mPositionData;
    private Drawable mPunchThroughGraphic;
    private int mPunchThroughGraphicCenterRadius;
    private float mRevealRadius;

    public Cling(Context context) {
        this(context, null, 0);
    }

    public Cling(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Cling(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Cling, i, 0);
        this.mDrawIdentifier = typedArrayObtainStyledAttributes.getString(0);
        typedArrayObtainStyledAttributes.recycle();
        setClickable(true);
    }

    void init(Launcher launcher, int[] iArr) {
        if (this.mIsInitialized) {
            return;
        }
        this.mLauncher = launcher;
        this.mPositionData = iArr;
        Resources resources = getContext().getResources();
        this.mPunchThroughGraphic = resources.getDrawable(R.drawable.cling);
        this.mPunchThroughGraphicCenterRadius = resources.getDimensionPixelSize(R.dimen.clingPunchThroughGraphicCenterRadius);
        if (ZHTDOEMManager.ensureID8()) {
            this.mAppIconSize = resources.getDimensionPixelSize(R.dimen.app_icon_id8_size);
        } else if (ZHTDOEMManager.isMRWCustomer() || ZHTDOEMManager.isYZGCustomer() || ZHTDOEMManager.isLCCustomerTheme1()) {
            this.mAppIconSize = resources.getDimensionPixelSize(R.dimen.app_icon_mrw_size);
        } else {
            this.mAppIconSize = resources.getDimensionPixelSize(ZHTDOEMManager.isLCCustomer() ? R.dimen.app_icon_lc_size : R.dimen.app_icon_size);
        }
        this.mRevealRadius = resources.getDimensionPixelSize(R.dimen.reveal_radius) * 1.0f;
        this.mButtonBarHeight = resources.getDimensionPixelSize(R.dimen.button_bar_height);
        Paint paint = new Paint();
        this.mErasePaint = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
        this.mErasePaint.setColor(ViewCompat.MEASURED_SIZE_MASK);
        this.mErasePaint.setAlpha(0);
        this.mIsInitialized = true;
    }

    void cleanup() {
        this.mBackground = null;
        this.mPunchThroughGraphic = null;
        this.mHandTouchGraphic = null;
        this.mIsInitialized = false;
    }

    public String getDrawIdentifier() {
        return this.mDrawIdentifier;
    }

    private int[] getPunchThroughPositions() {
        if (this.mDrawIdentifier.equals(WORKSPACE_PORTRAIT)) {
            return new int[]{getMeasuredWidth() / 2, getMeasuredHeight() - (this.mButtonBarHeight / 2)};
        }
        if (this.mDrawIdentifier.equals(WORKSPACE_LANDSCAPE)) {
            return new int[]{getMeasuredWidth() / 2, getMeasuredHeight() - 30};
        }
        if (!this.mDrawIdentifier.equals(WORKSPACE_LARGE)) {
            return (this.mDrawIdentifier.equals(ALLAPPS_PORTRAIT) || this.mDrawIdentifier.equals(ALLAPPS_LANDSCAPE) || this.mDrawIdentifier.equals(ALLAPPS_LARGE)) ? this.mPositionData : new int[]{-1, -1};
        }
        float screenDensity = LauncherApplication.getScreenDensity();
        return new int[]{getMeasuredWidth() - ((int) (15.0f * screenDensity)), (int) (screenDensity * 10.0f)};
    }

    @Override // android.view.View
    public View focusSearch(int i) {
        return focusSearch(this, i);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        return FocusFinder.getInstance().findNextFocus(this, view, i);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return this.mDrawIdentifier.equals(WORKSPACE_PORTRAIT) || this.mDrawIdentifier.equals(WORKSPACE_LANDSCAPE) || this.mDrawIdentifier.equals(WORKSPACE_LARGE) || this.mDrawIdentifier.equals(ALLAPPS_PORTRAIT) || this.mDrawIdentifier.equals(ALLAPPS_LANDSCAPE) || this.mDrawIdentifier.equals(ALLAPPS_LARGE) || this.mDrawIdentifier.equals(WORKSPACE_CUSTOM);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Folder openFolder;
        if (this.mDrawIdentifier.equals(WORKSPACE_PORTRAIT) || this.mDrawIdentifier.equals(WORKSPACE_LANDSCAPE) || this.mDrawIdentifier.equals(WORKSPACE_LARGE) || this.mDrawIdentifier.equals(ALLAPPS_PORTRAIT) || this.mDrawIdentifier.equals(ALLAPPS_LANDSCAPE) || this.mDrawIdentifier.equals(ALLAPPS_LARGE)) {
            int[] punchThroughPositions = getPunchThroughPositions();
            for (int i = 0; i < punchThroughPositions.length; i += 2) {
                if (Math.sqrt(Math.pow(motionEvent.getX() - punchThroughPositions[i], 2.0d) + Math.pow(motionEvent.getY() - punchThroughPositions[i + 1], 2.0d)) < this.mRevealRadius) {
                    return false;
                }
            }
            return true;
        }
        if ((!this.mDrawIdentifier.equals(FOLDER_PORTRAIT) && !this.mDrawIdentifier.equals(FOLDER_LANDSCAPE) && !this.mDrawIdentifier.equals(FOLDER_LARGE)) || (openFolder = this.mLauncher.getWorkspace().getOpenFolder()) == null) {
            return true;
        }
        Rect rect = new Rect();
        openFolder.getHitRect(rect);
        return !rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.mIsInitialized) {
            this.mLauncher.getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            if (this.mBackground == null) {
                if (this.mDrawIdentifier.equals(WORKSPACE_PORTRAIT) || this.mDrawIdentifier.equals(WORKSPACE_LANDSCAPE) || this.mDrawIdentifier.equals(WORKSPACE_LARGE)) {
                    this.mBackground = getResources().getDrawable(R.drawable.bg_cling1);
                } else if (this.mDrawIdentifier.equals(ALLAPPS_PORTRAIT) || this.mDrawIdentifier.equals(ALLAPPS_LANDSCAPE) || this.mDrawIdentifier.equals(ALLAPPS_LARGE)) {
                    this.mBackground = getResources().getDrawable(R.drawable.bg_cling2);
                } else if (this.mDrawIdentifier.equals(FOLDER_PORTRAIT) || this.mDrawIdentifier.equals(FOLDER_LANDSCAPE)) {
                    this.mBackground = getResources().getDrawable(R.drawable.bg_cling3);
                } else if (this.mDrawIdentifier.equals(FOLDER_LARGE)) {
                    this.mBackground = getResources().getDrawable(R.drawable.bg_cling4);
                } else if (this.mDrawIdentifier.equals(WORKSPACE_CUSTOM)) {
                    this.mBackground = getResources().getDrawable(R.drawable.bg_cling5);
                }
            }
            Drawable drawable = this.mBackground;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                this.mBackground.draw(canvas2);
            } else {
                canvas2.drawColor(-1728053248);
            }
            float f = this.mRevealRadius / this.mPunchThroughGraphicCenterRadius;
            int intrinsicWidth = (int) (this.mPunchThroughGraphic.getIntrinsicWidth() * f);
            int intrinsicHeight = (int) (f * this.mPunchThroughGraphic.getIntrinsicHeight());
            int[] punchThroughPositions = getPunchThroughPositions();
            int i = -1;
            int i2 = -1;
            for (int i3 = 0; i3 < punchThroughPositions.length; i3 += 2) {
                i = punchThroughPositions[i3];
                i2 = punchThroughPositions[i3 + 1];
                if (i > -1 && i2 > -1) {
                    canvas2.drawCircle(i, i2, this.mRevealRadius, this.mErasePaint);
                    int i4 = intrinsicWidth / 2;
                    int i5 = intrinsicHeight / 2;
                    this.mPunchThroughGraphic.setBounds(i - i4, i2 - i5, i4 + i, i5 + i2);
                    this.mPunchThroughGraphic.draw(canvas2);
                }
            }
            if (this.mDrawIdentifier.equals(ALLAPPS_PORTRAIT) || this.mDrawIdentifier.equals(ALLAPPS_LANDSCAPE) || this.mDrawIdentifier.equals(ALLAPPS_LARGE)) {
                if (this.mHandTouchGraphic == null) {
                    this.mHandTouchGraphic = getResources().getDrawable(R.drawable.hand);
                }
                int i6 = this.mAppIconSize / 4;
                Drawable drawable2 = this.mHandTouchGraphic;
                drawable2.setBounds(i + i6, i2 + i6, i + drawable2.getIntrinsicWidth() + i6, i2 + this.mHandTouchGraphic.getIntrinsicHeight() + i6);
                this.mHandTouchGraphic.draw(canvas2);
            }
            canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, (Paint) null);
            canvas2.setBitmap(null);
        }
        super.dispatchDraw(canvas);
    }
}
