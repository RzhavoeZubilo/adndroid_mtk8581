package com.android.launcher2.popuView;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import com.android.launcher2.DragScroller;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class SwitchIconView extends View implements DragScroller {
    private final int MAX_ALPHA;
    private boolean isWorkSpace;
    private int mAlpha;
    private Context mContext;
    private int mCount;
    private Bitmap mCurBtnPic;
    private int mCurNum;
    private Bitmap mCurtbPic2;
    private Bitmap mHome;
    private int mHomeNum;
    private Bitmap mHomePress;
    private Bitmap mNormal;
    private Bitmap mNormalPress;
    private Paint mPaint;
    private ViewParent mParent;
    private RectF mSaveLayerRectF;
    private int mWeight;
    private PorterDuffXfermode mXfermode;
    private float yPos;

    @Override // com.android.launcher2.DragScroller
    public boolean onEnterScrollArea(int i, int i2, int i3) {
        return false;
    }

    @Override // com.android.launcher2.DragScroller
    public boolean onExitScrollArea() {
        return false;
    }

    @Override // com.android.launcher2.DragScroller
    public void scrollLeft() {
    }

    @Override // com.android.launcher2.DragScroller
    public void scrollRight() {
    }

    public SwitchIconView(Context context) {
        this(context, null, 0);
    }

    public SwitchIconView(Context context, int i, int i2, boolean z) {
        this(context, null, 0);
        this.mCount = i;
        this.mHomeNum = i2;
        this.isWorkSpace = z;
    }

    public SwitchIconView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwitchIconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCurNum = 2;
        this.mCount = 5;
        this.mHomeNum = 2;
        this.isWorkSpace = true;
        this.MAX_ALPHA = 255;
        this.mAlpha = 255;
        this.mWeight = 0;
        this.yPos = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchIconView, i, 0).getDimension(0, 0.0f);
        if (ZHTDOEMManager.getUIThemeid() == 1 || ZHTDOEMManager.getUIThemeid() == 3) {
            if (ZHTDOEMManager.isYZGCustomer()) {
                this.yPos = context.getResources().getDimension(R.dimen.new_switch_icon_y_yzg);
            } else {
                this.yPos = context.getResources().getDimension(R.dimen.new_switch_icon_y);
            }
        } else if (ZHTDOEMManager.ensureID8()) {
            this.yPos = context.getResources().getDimension(R.dimen.switch_icon_y);
        } else {
            this.yPos = context.getResources().getDimension(R.dimen.switch_icon_y);
        }
        initView(context);
    }

    public void initView(Context context) {
        this.mContext = context;
        this.mPaint = new Paint();
        Resources resources = context.getResources();
        if (ZHTDOEMManager.getUIThemeid() == 1) {
            if (ZHTDOEMManager.isYZGCustomer()) {
                this.mNormal = BitmapFactory.decodeResource(resources, R.drawable.bmw_piont_normal_yzg);
                this.mNormalPress = BitmapFactory.decodeResource(resources, R.drawable.bmw_piont_down_yzg);
            } else {
                this.mNormal = BitmapFactory.decodeResource(resources, R.drawable.bmw_piont_normal);
                this.mNormalPress = BitmapFactory.decodeResource(resources, R.drawable.bmw_piont_down);
            }
        } else if (ZHTDOEMManager.ensureID8() || (ZHTDOEMManager.isLFECustomer() && ZHTDOEMManager.getUIThemeid() == 3)) {
            this.mNormal = BitmapFactory.decodeResource(resources, R.drawable.bmw_id8_page_index1);
            this.mNormalPress = BitmapFactory.decodeResource(resources, R.drawable.bmw_id8_page_index0);
        } else {
            this.mNormal = BitmapFactory.decodeResource(resources, R.drawable.piont_normal);
            this.mNormalPress = BitmapFactory.decodeResource(resources, R.drawable.piont_down);
        }
        this.mHome = BitmapFactory.decodeResource(resources, R.drawable.main_normal);
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, R.drawable.main_down);
        this.mHomePress = bitmapDecodeResource;
        this.mCurtbPic2 = bitmapDecodeResource;
        this.mSaveLayerRectF = new RectF(getResources().getDisplayMetrics().widthPixels / 2, getResources().getDisplayMetrics().heightPixels / 2, getResources().getDisplayMetrics().widthPixels, 30.0f);
        this.mXfermode = new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER);
    }

    public void setPackageIndex(int i, int i2, boolean z) {
        this.mCurNum = i;
        this.isWorkSpace = z;
        this.mCount = i2;
        int i3 = this.mHomeNum;
        if (i != i3) {
            this.mCurtbPic2 = this.mNormalPress;
        } else if (i == i3 && z) {
            this.mCurtbPic2 = this.mHomePress;
        } else if (i != i3 || z) {
            return;
        } else {
            this.mCurtbPic2 = this.mNormalPress;
        }
        invalidate();
    }

    private void attemptClaimDrag() {
        ViewParent parent = getParent();
        this.mParent = parent;
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        canvas.save();
        canvas.translate(this.mWeight, this.yPos);
        this.mPaint.setFilterBitmap(true);
        int width = this.mNormal.getWidth();
        int integer = getResources().getInteger(R.integer.switch_icon_x_gas);
        if (ZHTDOEMManager.getUIThemeid() == 1 || ZHTDOEMManager.getUIThemeid() == 3) {
            integer = getResources().getInteger(R.integer.switch_new_icon_x_gas);
        } else if (ZHTDOEMManager.ensureID8()) {
            integer = getResources().getInteger(R.integer.switch_icon_x_gas);
        }
        int i4 = 0;
        while (true) {
            i = this.mCount;
            if (i4 >= i) {
                break;
            }
            Bitmap bitmap = (i4 == this.mHomeNum && this.isWorkSpace) ? this.mHome : this.mNormal;
            this.mCurBtnPic = bitmap;
            if (i % 2 != 0) {
                i3 = (i4 - (i / 2)) * ((width / 2) + integer);
            } else {
                int i5 = (width / 2) + integer;
                i3 = ((i4 - (i / 2)) * i5) + (i5 / 2);
            }
            canvas.drawBitmap(bitmap, i3, 0.0f, this.mPaint);
            i4++;
        }
        if (i % 2 != 0) {
            i2 = (this.mCurNum - (i / 2)) * ((width / 2) + integer);
        } else {
            int i6 = (width / 2) + integer;
            i2 = ((this.mCurNum - (i / 2)) * i6) + (i6 / 2);
        }
        canvas.drawBitmap(this.mCurtbPic2, i2, 0.0f, this.mPaint);
        canvas.restore();
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void layout(int i, int i2, int i3, int i4) {
        super.layout(i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(getSuggestedMinimumHeight(), i2);
        int defaultSize2 = getDefaultSize(getSuggestedMinimumWidth(), i);
        setMeasuredDimension(defaultSize2, defaultSize);
        this.mWeight = (defaultSize2 / 2) - 14;
        super.onMeasure(i, i2);
    }
}
