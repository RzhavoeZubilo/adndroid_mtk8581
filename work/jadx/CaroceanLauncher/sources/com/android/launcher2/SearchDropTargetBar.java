package com.android.launcher2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class SearchDropTargetBar extends FrameLayout implements DragController.DragListener {
    private static final String TAG = "SearchDropTargetBar";
    private static final AccelerateInterpolator sAccelerateInterpolator = new AccelerateInterpolator();
    private static final int sTransitionInDuration = 200;
    private static final int sTransitionOutDuration = 175;
    private int mBarHeight;
    private boolean mDeferOnDragEnd;
    private ButtonDropTarget mDeleteDropTarget;
    private View mDropTargetBar;
    private ObjectAnimator mDropTargetBarAnim;
    private boolean mEnableDropDownDropTargets;
    private ButtonDropTarget mInfoDropTarget;
    private boolean mIsSearchBarHidden;
    private Drawable mPreviousBackground;
    private View mQSBSearchBar;
    private ObjectAnimator mQSBSearchBarAnim;

    public int getTransitionInDuration() {
        return 200;
    }

    public int getTransitionOutDuration() {
        return sTransitionOutDuration;
    }

    public SearchDropTargetBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchDropTargetBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDeferOnDragEnd = false;
    }

    public void setup(Launcher launcher, DragController dragController) {
        dragController.addDragListener(this);
        dragController.addDragListener(this.mInfoDropTarget);
        dragController.addDragListener(this.mDeleteDropTarget);
        dragController.addDropTarget(this.mInfoDropTarget);
        dragController.addDropTarget(this.mDeleteDropTarget);
        dragController.setFlingToDeleteDropTarget(this.mDeleteDropTarget);
        this.mInfoDropTarget.setLauncher(launcher);
        this.mDeleteDropTarget.setLauncher(launcher);
    }

    private void prepareStartAnimation(View view) {
        view.setLayerType(2, null);
        view.buildLayer();
    }

    private void setupAnimation(ObjectAnimator objectAnimator, final View view) {
        objectAnimator.setInterpolator(sAccelerateInterpolator);
        objectAnimator.setDuration(200L);
        objectAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.SearchDropTargetBar.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setLayerType(0, null);
            }
        });
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mQSBSearchBar = findViewById(R.id.qsb_search_bar);
        View viewFindViewById = findViewById(R.id.drag_target_bar);
        this.mDropTargetBar = viewFindViewById;
        this.mInfoDropTarget = (ButtonDropTarget) viewFindViewById.findViewById(R.id.info_target_text);
        this.mDeleteDropTarget = (ButtonDropTarget) this.mDropTargetBar.findViewById(R.id.delete_target_text);
        this.mBarHeight = getResources().getDimensionPixelSize(R.dimen.qsb_bar_height);
        this.mInfoDropTarget.setSearchDropTargetBar(this);
        this.mDeleteDropTarget.setSearchDropTargetBar(this);
        boolean z = getResources().getBoolean(R.bool.config_useDropTargetDownTransition);
        this.mEnableDropDownDropTargets = z;
        if (z) {
            this.mDropTargetBar.setTranslationY(-this.mBarHeight);
            this.mDropTargetBarAnim = LauncherAnimUtils.ofFloat(this.mDropTargetBar, "translationY", -this.mBarHeight, 0.0f);
            this.mQSBSearchBarAnim = LauncherAnimUtils.ofFloat(this.mQSBSearchBar, "translationY", 0.0f, -this.mBarHeight);
        } else {
            this.mDropTargetBar.setAlpha(0.0f);
            this.mDropTargetBarAnim = LauncherAnimUtils.ofFloat(this.mDropTargetBar, "alpha", 0.0f, 1.0f);
            this.mQSBSearchBarAnim = LauncherAnimUtils.ofFloat(this.mQSBSearchBar, "alpha", 1.0f, 0.0f);
        }
        setupAnimation(this.mDropTargetBarAnim, this.mDropTargetBar);
        setupAnimation(this.mQSBSearchBarAnim, this.mQSBSearchBar);
    }

    public void finishAnimations() {
        prepareStartAnimation(this.mDropTargetBar);
        this.mDropTargetBarAnim.reverse();
        prepareStartAnimation(this.mQSBSearchBar);
        this.mQSBSearchBarAnim.reverse();
    }

    public void showSearchBar(boolean z) {
        if (this.mIsSearchBarHidden) {
            if (z) {
                prepareStartAnimation(this.mQSBSearchBar);
                this.mQSBSearchBarAnim.reverse();
            } else {
                this.mQSBSearchBarAnim.cancel();
                if (this.mEnableDropDownDropTargets) {
                    this.mQSBSearchBar.setTranslationY(0.0f);
                } else {
                    this.mQSBSearchBar.setAlpha(1.0f);
                }
            }
            this.mIsSearchBarHidden = false;
        }
    }

    public void hideSearchBar(boolean z) {
        if (this.mIsSearchBarHidden) {
            return;
        }
        if (z) {
            prepareStartAnimation(this.mQSBSearchBar);
            this.mQSBSearchBarAnim.start();
        } else {
            this.mQSBSearchBarAnim.cancel();
            if (this.mEnableDropDownDropTargets) {
                this.mQSBSearchBar.setTranslationY(-this.mBarHeight);
            } else {
                this.mQSBSearchBar.setAlpha(0.0f);
            }
        }
        this.mIsSearchBarHidden = true;
    }

    @Override // com.android.launcher2.DragController.DragListener
    public void onDragStart(DragSource dragSource, Object obj, int i) {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDragStart: source = " + dragSource + ", info = " + obj + ", dragAction = " + i + ", this = " + this);
        }
        prepareStartAnimation(this.mDropTargetBar);
        this.mDropTargetBarAnim.start();
        if (this.mIsSearchBarHidden) {
            return;
        }
        prepareStartAnimation(this.mQSBSearchBar);
        this.mQSBSearchBarAnim.start();
    }

    public void deferOnDragEnd() {
        this.mDeferOnDragEnd = true;
    }

    @Override // com.android.launcher2.DragController.DragListener
    public void onDragEnd() {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDragEnd: mDeferOnDragEnd = " + this.mDeferOnDragEnd);
        }
        if (!this.mDeferOnDragEnd) {
            prepareStartAnimation(this.mDropTargetBar);
            this.mDropTargetBarAnim.reverse();
            if (this.mIsSearchBarHidden) {
                return;
            }
            prepareStartAnimation(this.mQSBSearchBar);
            this.mQSBSearchBarAnim.reverse();
            return;
        }
        this.mDeferOnDragEnd = false;
    }

    public void onSearchPackagesChanged(boolean z, boolean z2) {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onSearchPackagesChanged: searchVisible = " + z + ", voiceVisible = " + z2 + ", mQSBSearchBar = " + this.mQSBSearchBar);
        }
        View view = this.mQSBSearchBar;
        if (view != null) {
            Drawable background = view.getBackground();
            if (background != null && !z && !z2) {
                this.mPreviousBackground = background;
                this.mQSBSearchBar.setBackgroundResource(0);
                return;
            }
            Drawable drawable = this.mPreviousBackground;
            if (drawable != null) {
                if (z || z2) {
                    this.mQSBSearchBar.setBackground(drawable);
                }
            }
        }
    }

    public Rect getSearchBarBounds() {
        View view = this.mQSBSearchBar;
        if (view == null) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = iArr[0] + this.mQSBSearchBar.getWidth();
        rect.bottom = iArr[1] + this.mQSBSearchBar.getHeight();
        return rect;
    }
}
