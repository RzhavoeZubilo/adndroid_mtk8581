package com.android.launcher2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class FolderIcon extends LinearLayout implements FolderInfo.FolderListener {
    private static final int CONSUMPTION_ANIMATION_DURATION = 100;
    private static final int DROP_IN_ANIMATION_DURATION = 400;
    private static final int FINAL_ITEM_ANIMATION_DURATION = 200;
    private static final int INITIAL_ITEM_ANIMATION_DURATION = 350;
    private static final float INNER_RING_GROWTH_FACTOR = 0.15f;
    private static final int NUM_ITEMS_IN_PREVIEW = 3;
    private static final float OUTER_RING_GROWTH_FACTOR = 0.3f;
    private static final float PERSPECTIVE_SCALE_FACTOR = 0.35f;
    private static final float PERSPECTIVE_SHIFT_FACTOR = 0.24f;
    private static final String TAG = "FolderIcon";
    public static Drawable sSharedFolderLeaveBehind = null;
    private static boolean sStaticValuesDirty = true;
    private PreviewItemDrawingParams mAnimParams;
    boolean mAnimating;
    private int mAvailableSpaceInPreview;
    private float mBaselineIconScale;
    private int mBaselineIconSize;
    private Folder mFolder;
    private BubbleTextView mFolderName;
    FolderRingAnimator mFolderRingAnimator;
    private ArrayList<ShortcutInfo> mHiddenItems;
    private FolderInfo mInfo;
    private int mIntrinsicIconSize;
    private Launcher mLauncher;
    private CheckLongPressHelper mLongPressHelper;
    private float mMaxPerspectiveShift;
    private PreviewItemDrawingParams mParams;
    private ImageView mPreviewBackground;
    private int mPreviewOffsetX;
    private int mPreviewOffsetY;
    private int mTotalWidth;

    public DropTarget getDropTargetDelegate(DropTarget.DragObject dragObject) {
        return null;
    }

    public void onDragOver(Object obj) {
    }

    public FolderIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFolderRingAnimator = null;
        this.mTotalWidth = -1;
        this.mAnimating = false;
        this.mParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0);
        this.mAnimParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0);
        this.mHiddenItems = new ArrayList<>();
        init();
    }

    public FolderIcon(Context context) {
        super(context);
        this.mFolderRingAnimator = null;
        this.mTotalWidth = -1;
        this.mAnimating = false;
        this.mParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0);
        this.mAnimParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0);
        this.mHiddenItems = new ArrayList<>();
        init();
    }

    private void init() {
        this.mLongPressHelper = new CheckLongPressHelper(this);
    }

    public boolean isDropEnabled() {
        return !((Workspace) ((ViewGroup) ((ViewGroup) getParent()).getParent()).getParent()).isSmall();
    }

    static FolderIcon fromXml(int i, Launcher launcher, ViewGroup viewGroup, FolderInfo folderInfo, IconCache iconCache) {
        FolderIcon folderIcon = (FolderIcon) LayoutInflater.from(launcher).inflate(i, viewGroup, false);
        BubbleTextView bubbleTextView = (BubbleTextView) folderIcon.findViewById(R.id.folder_icon_name);
        folderIcon.mFolderName = bubbleTextView;
        bubbleTextView.setText(folderInfo.title);
        folderIcon.mPreviewBackground = (ImageView) folderIcon.findViewById(R.id.preview_background);
        folderIcon.setTag(folderInfo);
        folderIcon.setOnClickListener(launcher);
        folderIcon.mInfo = folderInfo;
        folderIcon.mLauncher = launcher;
        folderIcon.setContentDescription(String.format(launcher.getString(R.string.folder_name_format), folderInfo.title));
        Folder folderFromXml = Folder.fromXml(launcher);
        folderFromXml.setDragController(launcher.getDragController());
        folderFromXml.setFolderIcon(folderIcon);
        folderFromXml.bind(folderInfo);
        folderIcon.mFolder = folderFromXml;
        folderIcon.mFolderRingAnimator = new FolderRingAnimator(launcher, folderIcon);
        folderInfo.addListener(folderIcon);
        return folderIcon;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        sStaticValuesDirty = true;
        return super.onSaveInstanceState();
    }

    public static class FolderRingAnimator {
        public static int sPreviewPadding = -1;
        public static int sPreviewSize = -1;
        public static Drawable sSharedInnerRingDrawable;
        public static Drawable sSharedOuterRingDrawable;
        private ValueAnimator mAcceptAnimator;
        private CellLayout mCellLayout;
        public int mCellX;
        public int mCellY;
        public FolderIcon mFolderIcon;
        public Drawable mInnerRingDrawable;
        public float mInnerRingSize;
        private ValueAnimator mNeutralAnimator;
        public Drawable mOuterRingDrawable;
        public float mOuterRingSize;

        public FolderRingAnimator(Launcher launcher, FolderIcon folderIcon) {
            this.mFolderIcon = null;
            this.mOuterRingDrawable = null;
            this.mInnerRingDrawable = null;
            this.mFolderIcon = folderIcon;
            Resources resources = launcher.getResources();
            this.mOuterRingDrawable = resources.getDrawable(R.drawable.portal_ring_outer_holo);
            this.mInnerRingDrawable = resources.getDrawable(R.drawable.portal_ring_inner_holo);
            if (FolderIcon.sStaticValuesDirty) {
                sPreviewSize = resources.getDimensionPixelSize(R.dimen.folder_preview_size);
                sPreviewPadding = resources.getDimensionPixelSize(R.dimen.folder_preview_padding);
                sSharedOuterRingDrawable = resources.getDrawable(R.drawable.portal_ring_outer_holo);
                sSharedInnerRingDrawable = resources.getDrawable(R.drawable.portal_ring_inner_holo);
                FolderIcon.sSharedFolderLeaveBehind = resources.getDrawable(R.drawable.portal_ring_rest);
                boolean unused = FolderIcon.sStaticValuesDirty = false;
            }
        }

        public void animateToAcceptState() {
            ValueAnimator valueAnimator = this.mNeutralAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = LauncherAnimUtils.ofFloat(0.0f, 1.0f);
            this.mAcceptAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(100L);
            final int i = sPreviewSize;
            this.mAcceptAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.FolderIcon.FolderRingAnimator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float fFloatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    FolderRingAnimator.this.mOuterRingSize = ((FolderIcon.OUTER_RING_GROWTH_FACTOR * fFloatValue) + 1.0f) * i;
                    FolderRingAnimator.this.mInnerRingSize = ((fFloatValue * FolderIcon.INNER_RING_GROWTH_FACTOR) + 1.0f) * i;
                    if (FolderRingAnimator.this.mCellLayout != null) {
                        FolderRingAnimator.this.mCellLayout.invalidate();
                    }
                }
            });
            this.mAcceptAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.FolderIcon.FolderRingAnimator.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    if (FolderRingAnimator.this.mFolderIcon != null) {
                        FolderRingAnimator.this.mFolderIcon.mPreviewBackground.setVisibility(4);
                    }
                }
            });
            this.mAcceptAnimator.start();
        }

        public void animateToNaturalState() {
            ValueAnimator valueAnimator = this.mAcceptAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = LauncherAnimUtils.ofFloat(0.0f, 1.0f);
            this.mNeutralAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(100L);
            final int i = sPreviewSize;
            this.mNeutralAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.FolderIcon.FolderRingAnimator.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float fFloatValue = 1.0f - ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    FolderRingAnimator.this.mOuterRingSize = ((FolderIcon.OUTER_RING_GROWTH_FACTOR * fFloatValue) + 1.0f) * i;
                    FolderRingAnimator.this.mInnerRingSize = ((fFloatValue * FolderIcon.INNER_RING_GROWTH_FACTOR) + 1.0f) * i;
                    if (FolderRingAnimator.this.mCellLayout != null) {
                        FolderRingAnimator.this.mCellLayout.invalidate();
                    }
                }
            });
            this.mNeutralAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.FolderIcon.FolderRingAnimator.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (FolderRingAnimator.this.mFolderIcon != null) {
                        FolderRingAnimator.this.mFolderIcon.mPreviewBackground.setVisibility(0);
                    }
                }
            });
            this.mNeutralAnimator.start();
            CellLayout cellLayout = this.mCellLayout;
            if (cellLayout != null) {
                cellLayout.hideFolderAccept(this);
            }
        }

        public void getCell(int[] iArr) {
            iArr[0] = this.mCellX;
            iArr[1] = this.mCellY;
        }

        public void setCell(int i, int i2) {
            this.mCellX = i;
            this.mCellY = i2;
        }

        public void setCellLayout(CellLayout cellLayout) {
            this.mCellLayout = cellLayout;
        }

        public float getOuterRingSize() {
            return this.mOuterRingSize;
        }

        public float getInnerRingSize() {
            return this.mInnerRingSize;
        }
    }

    Folder getFolder() {
        return this.mFolder;
    }

    FolderInfo getFolderInfo() {
        return this.mInfo;
    }

    private boolean willAcceptItem(ItemInfo itemInfo) {
        FolderInfo folderInfo;
        int i = itemInfo.itemType;
        return ((i != 0 && i != 1) || this.mFolder.isFull() || itemInfo == (folderInfo = this.mInfo) || folderInfo.opened) ? false : true;
    }

    public boolean acceptDrop(Object obj) {
        return !this.mFolder.isDestroyed() && willAcceptItem((ItemInfo) obj);
    }

    public void addItem(ShortcutInfo shortcutInfo) {
        this.mInfo.add(shortcutInfo);
    }

    public void onDragEnter(Object obj) {
        if (this.mFolder.isDestroyed() || !willAcceptItem((ItemInfo) obj)) {
            return;
        }
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) getLayoutParams();
        CellLayout cellLayout = (CellLayout) getParent().getParent();
        this.mFolderRingAnimator.setCell(layoutParams.cellX, layoutParams.cellY);
        this.mFolderRingAnimator.setCellLayout(cellLayout);
        this.mFolderRingAnimator.animateToAcceptState();
        cellLayout.showFolderAccept(this.mFolderRingAnimator);
    }

    public void performCreateAnimation(ShortcutInfo shortcutInfo, View view, ShortcutInfo shortcutInfo2, DragView dragView, Rect rect, float f, Runnable runnable) {
        Drawable drawable = ((TextView) view).getCompoundDrawables()[1];
        computePreviewDrawingParams(drawable.getIntrinsicWidth(), view.getMeasuredWidth());
        animateFirstItem(drawable, INITIAL_ITEM_ANIMATION_DURATION, false, null);
        addItem(shortcutInfo);
        onDrop(shortcutInfo2, dragView, rect, f, 1, runnable, null);
    }

    public void performDestroyAnimation(View view, Runnable runnable) {
        Drawable drawable = ((TextView) view).getCompoundDrawables()[1];
        computePreviewDrawingParams(drawable.getIntrinsicWidth(), view.getMeasuredWidth());
        animateFirstItem(drawable, 200, true, runnable);
    }

    public void onDragExit(Object obj) {
        onDragExit();
    }

    public void onDragExit() {
        this.mFolderRingAnimator.animateToNaturalState();
    }

    private void onDrop(final ShortcutInfo shortcutInfo, DragView dragView, Rect rect, float f, int i, Runnable runnable, DropTarget.DragObject dragObject) {
        float f2;
        float descendantRectRelativeToSelf;
        Rect rect2 = rect;
        if (L.DEBUG) {
            f2 = f;
            L.d(TAG, "onDrop: item = " + shortcutInfo + ", animateView = " + dragView + ", finalRect = " + rect2 + ", scaleRelativeToDragLayer = " + f2 + ", index = " + i + ", d = " + dragObject);
        } else {
            f2 = f;
        }
        shortcutInfo.cellX = -1;
        shortcutInfo.cellY = -1;
        if (dragView != null) {
            DragLayer dragLayer = this.mLauncher.getDragLayer();
            Rect rect3 = new Rect();
            dragLayer.getViewRectRelativeToSelf(dragView, rect3);
            if (rect2 == null) {
                rect2 = new Rect();
                Workspace workspace = this.mLauncher.getWorkspace();
                workspace.setFinalTransitionTransform((CellLayout) getParent().getParent());
                float scaleX = getScaleX();
                float scaleY = getScaleY();
                setScaleX(1.0f);
                setScaleY(1.0f);
                descendantRectRelativeToSelf = dragLayer.getDescendantRectRelativeToSelf(this, rect2);
                setScaleX(scaleX);
                setScaleY(scaleY);
                workspace.resetTransitionTransform((CellLayout) getParent().getParent());
            } else {
                descendantRectRelativeToSelf = f2;
            }
            Rect rect4 = rect2;
            int[] iArr = new int[2];
            float localCenterForIndex = getLocalCenterForIndex(i, iArr);
            iArr[0] = Math.round(iArr[0] * descendantRectRelativeToSelf);
            iArr[1] = Math.round(iArr[1] * descendantRectRelativeToSelf);
            rect4.offset(iArr[0] - (dragView.getMeasuredWidth() / 2), iArr[1] - (dragView.getMeasuredHeight() / 2));
            float f3 = descendantRectRelativeToSelf * localCenterForIndex;
            dragLayer.animateView(dragView, rect3, rect4, i < 3 ? 0.5f : 0.0f, 1.0f, 1.0f, f3, f3, DROP_IN_ANIMATION_DURATION, new DecelerateInterpolator(2.0f), new AccelerateInterpolator(2.0f), runnable, 0, null);
            addItem(shortcutInfo);
            this.mHiddenItems.add(shortcutInfo);
            postDelayed(new Runnable() { // from class: com.android.launcher2.FolderIcon.1
                @Override // java.lang.Runnable
                public void run() {
                    FolderIcon.this.mHiddenItems.remove(shortcutInfo);
                    FolderIcon.this.invalidate();
                }
            }, 400L);
            return;
        }
        addItem(shortcutInfo);
    }

    public void onDrop(DropTarget.DragObject dragObject) {
        ShortcutInfo shortcutInfoMakeShortcut;
        if (L.DEBUG) {
            L.d(TAG, "onDrop: DragObject = " + dragObject);
        }
        if (dragObject.dragInfo instanceof ApplicationInfo) {
            shortcutInfoMakeShortcut = ((ApplicationInfo) dragObject.dragInfo).makeShortcut();
        } else {
            shortcutInfoMakeShortcut = (ShortcutInfo) dragObject.dragInfo;
        }
        this.mFolder.notifyDrop();
        onDrop(shortcutInfoMakeShortcut, dragObject.dragView, null, 1.0f, this.mInfo.contents.size(), dragObject.postAnimationRunnable, dragObject);
    }

    private void computePreviewDrawingParams(int i, int i2) {
        if (this.mIntrinsicIconSize == i && this.mTotalWidth == i2) {
            return;
        }
        this.mIntrinsicIconSize = i;
        this.mTotalWidth = i2;
        int i3 = FolderRingAnimator.sPreviewSize;
        int i4 = FolderRingAnimator.sPreviewPadding;
        int i5 = i3 - (i4 * 2);
        this.mAvailableSpaceInPreview = i5;
        int i6 = this.mIntrinsicIconSize;
        float f = (((int) ((i5 / 2) * 1.8f)) * 1.0f) / ((int) (i6 * 1.24f));
        this.mBaselineIconScale = f;
        int i7 = (int) (i6 * f);
        this.mBaselineIconSize = i7;
        this.mMaxPerspectiveShift = i7 * PERSPECTIVE_SHIFT_FACTOR;
        this.mPreviewOffsetX = (this.mTotalWidth - i5) / 2;
        this.mPreviewOffsetY = i4;
    }

    private void computePreviewDrawingParams(Drawable drawable) {
        computePreviewDrawingParams(drawable.getIntrinsicWidth(), getMeasuredWidth());
    }

    class PreviewItemDrawingParams {
        Drawable drawable;
        int overlayAlpha;
        float scale;
        float transX;
        float transY;

        PreviewItemDrawingParams(float f, float f2, float f3, int i) {
            this.transX = f;
            this.transY = f2;
            this.scale = f3;
            this.overlayAlpha = i;
        }
    }

    private float getLocalCenterForIndex(int i, int[] iArr) {
        PreviewItemDrawingParams previewItemDrawingParamsComputePreviewItemDrawingParams = computePreviewItemDrawingParams(Math.min(3, i), this.mParams);
        this.mParams = previewItemDrawingParamsComputePreviewItemDrawingParams;
        previewItemDrawingParamsComputePreviewItemDrawingParams.transX += this.mPreviewOffsetX;
        this.mParams.transY += this.mPreviewOffsetY;
        float f = this.mParams.transX + ((this.mParams.scale * this.mIntrinsicIconSize) / 2.0f);
        float f2 = this.mParams.transY + ((this.mParams.scale * this.mIntrinsicIconSize) / 2.0f);
        iArr[0] = Math.round(f);
        iArr[1] = Math.round(f2);
        return this.mParams.scale;
    }

    private PreviewItemDrawingParams computePreviewItemDrawingParams(int i, PreviewItemDrawingParams previewItemDrawingParams) {
        float f = 1.0f - ((((3 - i) - 1) * 1.0f) / 2.0f);
        float f2 = 1.0f - (PERSPECTIVE_SCALE_FACTOR * f);
        float f3 = this.mMaxPerspectiveShift * f;
        int i2 = this.mBaselineIconSize;
        float f4 = (1.0f - f2) * i2;
        float f5 = this.mAvailableSpaceInPreview - (((i2 * f2) + f3) + f4);
        float f6 = f3 + f4;
        float f7 = this.mBaselineIconScale * f2;
        int i3 = (int) (f * 80.0f);
        if (previewItemDrawingParams == null) {
            return new PreviewItemDrawingParams(f6, f5, f7, i3);
        }
        previewItemDrawingParams.transX = f6;
        previewItemDrawingParams.transY = f5;
        previewItemDrawingParams.scale = f7;
        previewItemDrawingParams.overlayAlpha = i3;
        return previewItemDrawingParams;
    }

    private void drawPreviewItem(Canvas canvas, PreviewItemDrawingParams previewItemDrawingParams) {
        canvas.save();
        canvas.translate(previewItemDrawingParams.transX + this.mPreviewOffsetX, previewItemDrawingParams.transY + this.mPreviewOffsetY);
        canvas.scale(previewItemDrawingParams.scale, previewItemDrawingParams.scale);
        Drawable drawable = previewItemDrawingParams.drawable;
        if (drawable != null) {
            int i = this.mIntrinsicIconSize;
            drawable.setBounds(0, 0, i, i);
            drawable.setFilterBitmap(true);
            drawable.setColorFilter(Color.argb(previewItemDrawingParams.overlayAlpha, 0, 0, 0), PorterDuff.Mode.SRC_ATOP);
            drawable.draw(canvas);
            drawable.clearColorFilter();
            drawable.setFilterBitmap(false);
        }
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        Folder folder = this.mFolder;
        if (folder == null) {
            return;
        }
        if (folder.getItemCount() != 0 || this.mAnimating) {
            ArrayList<View> itemsInReadingOrder = this.mFolder.getItemsInReadingOrder(false);
            if (this.mAnimating) {
                computePreviewDrawingParams(this.mAnimParams.drawable);
            } else {
                computePreviewDrawingParams(((TextView) itemsInReadingOrder.get(0)).getCompoundDrawables()[1]);
            }
            int iMin = Math.min(itemsInReadingOrder.size(), 3);
            if (this.mAnimating) {
                drawPreviewItem(canvas, this.mAnimParams);
            } else {
                for (int i = iMin - 1; i >= 0; i--) {
                    TextView textView = (TextView) itemsInReadingOrder.get(i);
                    if (!this.mHiddenItems.contains(textView.getTag())) {
                        Drawable drawable = textView.getCompoundDrawables()[1];
                        PreviewItemDrawingParams previewItemDrawingParamsComputePreviewItemDrawingParams = computePreviewItemDrawingParams(i, this.mParams);
                        this.mParams = previewItemDrawingParamsComputePreviewItemDrawingParams;
                        previewItemDrawingParamsComputePreviewItemDrawingParams.drawable = drawable;
                        drawPreviewItem(canvas, this.mParams);
                    }
                }
            }
            MTKUnreadLoader.drawUnreadEventIfNeed(canvas, this);
        }
    }

    private void animateFirstItem(Drawable drawable, int i, final boolean z, final Runnable runnable) {
        final PreviewItemDrawingParams previewItemDrawingParamsComputePreviewItemDrawingParams = computePreviewItemDrawingParams(0, null);
        final float intrinsicWidth = (this.mAvailableSpaceInPreview - drawable.getIntrinsicWidth()) / 2;
        final float intrinsicHeight = (this.mAvailableSpaceInPreview - drawable.getIntrinsicHeight()) / 2;
        this.mAnimParams.drawable = drawable;
        ValueAnimator valueAnimatorOfFloat = LauncherAnimUtils.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.FolderIcon.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (z) {
                    fFloatValue = 1.0f - fFloatValue;
                    FolderIcon.this.mPreviewBackground.setAlpha(fFloatValue);
                }
                FolderIcon.this.mAnimParams.transX = intrinsicWidth + ((previewItemDrawingParamsComputePreviewItemDrawingParams.transX - intrinsicWidth) * fFloatValue);
                FolderIcon.this.mAnimParams.transY = intrinsicHeight + ((previewItemDrawingParamsComputePreviewItemDrawingParams.transY - intrinsicHeight) * fFloatValue);
                FolderIcon.this.mAnimParams.scale = (fFloatValue * (previewItemDrawingParamsComputePreviewItemDrawingParams.scale - 1.0f)) + 1.0f;
                FolderIcon.this.invalidate();
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.FolderIcon.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                FolderIcon.this.mAnimating = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                FolderIcon.this.mAnimating = false;
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        valueAnimatorOfFloat.setDuration(i);
        valueAnimatorOfFloat.start();
    }

    public void setTextVisible(boolean z) {
        if (z) {
            this.mFolderName.setVisibility(0);
        } else {
            this.mFolderName.setVisibility(4);
        }
    }

    public boolean getTextVisible() {
        return this.mFolderName.getVisibility() == 0;
    }

    @Override // com.android.launcher2.FolderInfo.FolderListener
    public void onItemsChanged() {
        invalidate();
        requestLayout();
    }

    @Override // com.android.launcher2.FolderInfo.FolderListener
    public void onAdd(ShortcutInfo shortcutInfo) {
        if (L.DEBUG) {
            L.d(TAG, "onAdd item = " + shortcutInfo);
        }
        updateFolderUnreadNum(shortcutInfo.intent.getComponent(), shortcutInfo.unreadNum);
        invalidate();
        requestLayout();
    }

    @Override // com.android.launcher2.FolderInfo.FolderListener
    public void onRemove(ShortcutInfo shortcutInfo) {
        if (L.DEBUG) {
            L.d(TAG, "onRemove item = " + shortcutInfo);
        }
        updateFolderUnreadNum(shortcutInfo.intent.getComponent(), shortcutInfo.unreadNum);
        invalidate();
        requestLayout();
    }

    @Override // com.android.launcher2.FolderInfo.FolderListener
    public void onTitleChanged(CharSequence charSequence) {
        this.mFolderName.setText(charSequence.toString());
        setContentDescription(String.format(getContext().getString(R.string.folder_name_format), charSequence));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mLongPressHelper.postCheckForLongPress();
        } else if (action == 1 || action == 3) {
            this.mLongPressHelper.cancelLongPress();
        }
        return zOnTouchEvent;
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public void setFolderUnreadNum(int i) {
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "setFolderUnreadNum: unreadNum = " + i + ", mInfo = " + this.mInfo + ", this = " + this);
        }
        if (i <= 0) {
            this.mInfo.unreadNum = 0;
        } else {
            this.mInfo.unreadNum = i;
        }
    }

    public void updateFolderUnreadNum() {
        ArrayList<ShortcutInfo> arrayList = this.mInfo.contents;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            ShortcutInfo shortcutInfo = arrayList.get(i2);
            ComponentName component = shortcutInfo.intent.getComponent();
            int unreadNumberOfComponent = MTKUnreadLoader.getUnreadNumberOfComponent(component);
            if (unreadNumberOfComponent > 0) {
                shortcutInfo.unreadNum = unreadNumberOfComponent;
                int i3 = 0;
                while (i3 < arrayList2.size() && (component == null || !component.equals(arrayList2.get(i3)))) {
                    i3++;
                }
                if (L.DEBUG_UNREAD) {
                    L.d(TAG, "updateFolderUnreadNum: unreadNumTotal = " + i + ", j = " + i3 + ", components.size() = " + arrayList2.size());
                }
                if (i3 >= arrayList2.size()) {
                    arrayList2.add(component);
                    i += unreadNumberOfComponent;
                }
            }
        }
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "updateFolderUnreadNum 1 end: unreadNumTotal = " + i);
        }
        setFolderUnreadNum(i);
    }

    public void updateFolderUnreadNum(ComponentName componentName, int i) {
        ArrayList<ShortcutInfo> arrayList = this.mInfo.contents;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            ShortcutInfo shortcutInfo = arrayList.get(i3);
            ComponentName component = shortcutInfo.intent.getComponent();
            if (component != null && component.equals(componentName)) {
                shortcutInfo.unreadNum = i;
            }
            if (shortcutInfo.unreadNum > 0) {
                int i4 = 0;
                while (i4 < arrayList2.size() && (component == null || !component.equals(arrayList2.get(i4)))) {
                    i4++;
                }
                if (L.DEBUG_UNREAD) {
                    L.d(TAG, "updateFolderUnreadNum: unreadNumTotal = " + i2 + ", j = " + i4 + ", components.size() = " + arrayList2.size());
                }
                if (i4 >= arrayList2.size()) {
                    arrayList2.add(component);
                    i2 += shortcutInfo.unreadNum;
                }
            }
        }
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "updateFolderUnreadNum 2 end: unreadNumTotal = " + i2);
        }
        setFolderUnreadNum(i2);
    }

    public static void resetValuesDirty() {
        sStaticValuesDirty = true;
    }
}
