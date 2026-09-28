package com.android.launcher2;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.util.AttributeSet;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.android.launcher2.uitl.Function;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class DeleteDropTarget extends ButtonDropTarget {
    private static int DELETE_ANIMATION_DURATION = 285;
    private static int FLING_DELETE_ANIMATION_DURATION = 350;
    private static float FLING_TO_DELETE_FRICTION = 0.035f;
    private static int MODE_FLING_DELETE_ALONG_VECTOR = 1;
    private static int MODE_FLING_DELETE_TO_TRASH = 0;
    private static final String TAG = "DeleteDropTarget";
    private TransitionDrawable mCurrentDrawable;
    private final int mFlingDeleteMode;
    private ColorStateList mOriginalTextColor;
    private TransitionDrawable mRemoveDrawable;
    private TransitionDrawable mUninstallDrawable;

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DropTarget
    public boolean acceptDrop(DropTarget.DragObject dragObject) {
        return true;
    }

    public DeleteDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DeleteDropTarget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFlingDeleteMode = MODE_FLING_DELETE_ALONG_VECTOR;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mOriginalTextColor = getTextColors();
        Resources resources = getResources();
        this.mHoverColor = resources.getColor(R.color.delete_target_hover_tint);
        this.mUninstallDrawable = (TransitionDrawable) resources.getDrawable(R.drawable.uninstall_target_selector);
        TransitionDrawable transitionDrawable = (TransitionDrawable) resources.getDrawable(R.drawable.remove_target_selector);
        this.mRemoveDrawable = transitionDrawable;
        transitionDrawable.setCrossFadeEnabled(true);
        this.mUninstallDrawable.setCrossFadeEnabled(true);
        this.mCurrentDrawable = (TransitionDrawable) getCurrentDrawable();
        if (getResources().getConfiguration().orientation != 2 || LauncherApplication.isScreenLarge()) {
            return;
        }
        setText("");
    }

    private boolean isAllAppsApplication(DragSource dragSource, Object obj) {
        return (dragSource instanceof AppsCustomizePagedView) && (obj instanceof ApplicationInfo);
    }

    private boolean isAllAppsWidget(DragSource dragSource, Object obj) {
        if (!(dragSource instanceof AppsCustomizePagedView) || !(obj instanceof PendingAddItemInfo)) {
            return false;
        }
        int i = ((PendingAddItemInfo) obj).itemType;
        return i == 1 || i == 4;
    }

    private boolean isDragSourceWorkspaceOrFolder(DropTarget.DragObject dragObject) {
        return (dragObject.dragSource instanceof Workspace) || (dragObject.dragSource instanceof Folder);
    }

    private boolean isWorkspaceOrFolderApplication(DropTarget.DragObject dragObject) {
        return isDragSourceWorkspaceOrFolder(dragObject) && (dragObject.dragInfo instanceof ShortcutInfo);
    }

    private boolean isWorkspaceOrFolderWidget(DropTarget.DragObject dragObject) {
        return isDragSourceWorkspaceOrFolder(dragObject) && (dragObject.dragInfo instanceof LauncherAppWidgetInfo);
    }

    private boolean isWorkspaceFolder(DropTarget.DragObject dragObject) {
        return (dragObject.dragSource instanceof Workspace) && (dragObject.dragInfo instanceof FolderInfo);
    }

    private void setHoverColor() {
        this.mCurrentDrawable.startTransition(this.mTransitionDuration);
        setTextColor(this.mHoverColor);
    }

    private void resetHoverColor() {
        this.mCurrentDrawable.resetTransition();
        setTextColor(this.mOriginalTextColor);
    }

    private boolean isUnRemovableIcon(DragSource dragSource, Object obj) {
        return (dragSource instanceof Workspace) && (obj instanceof ShortcutInfo) && ((ShortcutInfo) obj).componentName.getClassName().compareToIgnoreCase(Function.ALLAPP_ACTIVITY) == 0;
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DragController.DragListener
    public void onDragStart(DragSource dragSource, Object obj, int i) {
        boolean z = true;
        boolean z2 = !isAllAppsWidget(dragSource, obj);
        if (!isAllAppsApplication(dragSource, obj)) {
            z = false;
        } else if ((((ApplicationInfo) obj).flags & 1) == 0) {
            z2 = false;
            z = false;
        }
        if (isUnRemovableIcon(dragSource, obj)) {
            z2 = false;
        }
        if (z) {
            setCompoundDrawablesWithIntrinsicBounds(this.mUninstallDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            setCompoundDrawablesWithIntrinsicBounds(this.mRemoveDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
        }
        this.mCurrentDrawable = (TransitionDrawable) getCurrentDrawable();
        this.mActive = z2;
        resetHoverColor();
        ((ViewGroup) getParent()).setVisibility(z2 ? 0 : 8);
        if (getText().length() > 0) {
            setText(z ? R.string.delete_target_uninstall_label : R.string.delete_target_label);
        }
        if (L.DEBUG) {
            L.d(TAG, "onDragStart: isUninstall = " + z + ", isVisible = " + z2 + ", info = " + obj);
        }
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DragController.DragListener
    public void onDragEnd() {
        super.onDragEnd();
        this.mActive = false;
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DropTarget
    public void onDragEnter(DropTarget.DragObject dragObject) {
        super.onDragEnter(dragObject);
        setHoverColor();
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DropTarget
    public void onDragExit(DropTarget.DragObject dragObject) {
        super.onDragExit(dragObject);
        if (!dragObject.dragComplete) {
            resetHoverColor();
        } else {
            dragObject.dragView.setColor(this.mHoverColor);
        }
    }

    private void animateToTrashAndCompleteDrop(final DropTarget.DragObject dragObject) {
        DragLayer dragLayer = this.mLauncher.getDragLayer();
        Rect rect = new Rect();
        dragLayer.getViewRectRelativeToSelf(dragObject.dragView, rect);
        Rect iconRect = getIconRect(dragObject.dragView.getMeasuredWidth(), dragObject.dragView.getMeasuredHeight(), this.mCurrentDrawable.getIntrinsicWidth(), this.mCurrentDrawable.getIntrinsicHeight());
        float fWidth = iconRect.width() / rect.width();
        this.mSearchDropTargetBar.deferOnDragEnd();
        dragLayer.animateView(dragObject.dragView, rect, iconRect, fWidth, 1.0f, 1.0f, 0.1f, 0.1f, DELETE_ANIMATION_DURATION, new DecelerateInterpolator(2.0f), new LinearInterpolator(), new Runnable() { // from class: com.android.launcher2.DeleteDropTarget.1
            @Override // java.lang.Runnable
            public void run() {
                DeleteDropTarget.this.mSearchDropTargetBar.onDragEnd();
                DeleteDropTarget.this.mLauncher.exitSpringLoadedDragMode();
                DeleteDropTarget.this.completeDrop(dragObject);
            }
        }, 0, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.launcher2.DeleteDropTarget$2] */
    public void completeDrop(DropTarget.DragObject dragObject) {
        ItemInfo itemInfo = (ItemInfo) dragObject.dragInfo;
        if (L.DEBUG) {
            L.d(TAG, "completeDrop: item = " + itemInfo + ", d = " + dragObject);
        }
        if (isAllAppsApplication(dragObject.dragSource, itemInfo)) {
            this.mLauncher.startApplicationUninstallActivity((ApplicationInfo) itemInfo);
            return;
        }
        if (isWorkspaceOrFolderApplication(dragObject)) {
            LauncherModel.deleteItemFromDatabase(this.mLauncher, itemInfo);
            return;
        }
        if (isWorkspaceFolder(dragObject)) {
            FolderInfo folderInfo = (FolderInfo) itemInfo;
            this.mLauncher.removeFolder(folderInfo);
            LauncherModel.deleteFolderContentsFromDatabase(this.mLauncher, folderInfo);
        } else if (isWorkspaceOrFolderWidget(dragObject)) {
            final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
            this.mLauncher.removeAppWidget(launcherAppWidgetInfo);
            LauncherModel.deleteItemFromDatabase(this.mLauncher, itemInfo);
            final LauncherAppWidgetHost appWidgetHost = this.mLauncher.getAppWidgetHost();
            if (appWidgetHost != null) {
                new Thread("deleteAppWidgetId") { // from class: com.android.launcher2.DeleteDropTarget.2
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        appWidgetHost.deleteAppWidgetId(launcherAppWidgetInfo.appWidgetId);
                    }
                }.start();
            }
        }
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DropTarget
    public void onDrop(DropTarget.DragObject dragObject) {
        if (L.DEBUG) {
            L.d(TAG, "onDrop: d = " + dragObject);
        }
        animateToTrashAndCompleteDrop(dragObject);
    }

    private ValueAnimator.AnimatorUpdateListener createFlingToTrashAnimatorListener(final DragLayer dragLayer, DropTarget.DragObject dragObject, PointF pointF, ViewConfiguration viewConfiguration) {
        Rect iconRect = getIconRect(dragObject.dragView.getMeasuredWidth(), dragObject.dragView.getMeasuredHeight(), this.mCurrentDrawable.getIntrinsicWidth(), this.mCurrentDrawable.getIntrinsicHeight());
        Rect rect = new Rect();
        dragLayer.getViewRectRelativeToSelf(dragObject.dragView, rect);
        int iMin = (int) ((-rect.top) * Math.min(1.0f, Math.abs(pointF.length()) / (viewConfiguration.getScaledMaximumFlingVelocity() / 2.0f)));
        int i = (int) (iMin / (pointF.y / pointF.x));
        final float f = rect.top + iMin;
        final float f2 = rect.left + i;
        final float f3 = rect.left;
        final float f4 = rect.top;
        final float f5 = iconRect.left;
        final float f6 = iconRect.top;
        final TimeInterpolator timeInterpolator = new TimeInterpolator() { // from class: com.android.launcher2.DeleteDropTarget.3
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f7) {
                return f7 * f7 * f7 * f7 * f7 * f7 * f7 * f7;
            }
        };
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.DeleteDropTarget.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                DragView dragView = (DragView) dragLayer.getAnimatedView();
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float interpolation = timeInterpolator.getInterpolation(fFloatValue);
                float initialScale = dragView.getInitialScale();
                float scaleX = 1.0f - dragView.getScaleX();
                float measuredWidth = (dragView.getMeasuredWidth() * scaleX) / 2.0f;
                float measuredHeight = (scaleX * dragView.getMeasuredHeight()) / 2.0f;
                float f7 = 1.0f - fFloatValue;
                float f8 = f7 * f7;
                float f9 = f7 * 2.0f * fFloatValue;
                float f10 = fFloatValue * fFloatValue;
                float f11 = ((f3 - measuredWidth) * f8) + ((f2 - measuredWidth) * f9) + (f5 * f10);
                float f12 = (f8 * (f4 - measuredHeight)) + (f9 * (f - measuredWidth)) + (f10 * f6);
                dragView.setTranslationX(f11);
                dragView.setTranslationY(f12);
                float f13 = 1.0f - interpolation;
                float f14 = initialScale * f13;
                dragView.setScaleX(f14);
                dragView.setScaleY(f14);
                dragView.setAlpha((f13 * 0.5f) + 0.5f);
            }
        };
    }

    private static class FlingAlongVectorAnimatorUpdateListener implements ValueAnimator.AnimatorUpdateListener {
        private final TimeInterpolator mAlphaInterpolator = new DecelerateInterpolator(0.75f);
        private DragLayer mDragLayer;
        private float mFriction;
        private Rect mFrom;
        private boolean mHasOffsetForScale;
        private long mPrevTime;
        private PointF mVelocity;

        public FlingAlongVectorAnimatorUpdateListener(DragLayer dragLayer, PointF pointF, Rect rect, long j, float f) {
            this.mDragLayer = dragLayer;
            this.mVelocity = pointF;
            this.mFrom = rect;
            this.mPrevTime = j;
            this.mFriction = 1.0f - (dragLayer.getResources().getDisplayMetrics().density * f);
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            DragView dragView = (DragView) this.mDragLayer.getAnimatedView();
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (!this.mHasOffsetForScale) {
                this.mHasOffsetForScale = true;
                float scaleX = dragView.getScaleX() - 1.0f;
                float measuredWidth = (dragView.getMeasuredWidth() * scaleX) / 2.0f;
                float measuredHeight = (scaleX * dragView.getMeasuredHeight()) / 2.0f;
                Rect rect = this.mFrom;
                rect.left = (int) (rect.left + measuredWidth);
                Rect rect2 = this.mFrom;
                rect2.top = (int) (rect2.top + measuredHeight);
            }
            Rect rect3 = this.mFrom;
            rect3.left = (int) (rect3.left + ((this.mVelocity.x * (jCurrentAnimationTimeMillis - this.mPrevTime)) / 1000.0f));
            Rect rect4 = this.mFrom;
            rect4.top = (int) (rect4.top + ((this.mVelocity.y * (jCurrentAnimationTimeMillis - this.mPrevTime)) / 1000.0f));
            dragView.setTranslationX(this.mFrom.left);
            dragView.setTranslationY(this.mFrom.top);
            dragView.setAlpha(1.0f - this.mAlphaInterpolator.getInterpolation(fFloatValue));
            this.mVelocity.x *= this.mFriction;
            this.mVelocity.y *= this.mFriction;
            this.mPrevTime = jCurrentAnimationTimeMillis;
        }
    }

    private ValueAnimator.AnimatorUpdateListener createFlingAlongVectorAnimatorListener(DragLayer dragLayer, DropTarget.DragObject dragObject, PointF pointF, long j, int i, ViewConfiguration viewConfiguration) {
        Rect rect = new Rect();
        dragLayer.getViewRectRelativeToSelf(dragObject.dragView, rect);
        return new FlingAlongVectorAnimatorUpdateListener(dragLayer, pointF, rect, j, FLING_TO_DELETE_FRICTION);
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DropTarget
    public void onFlingToDelete(final DropTarget.DragObject dragObject, int i, int i2, PointF pointF) {
        if (L.DEBUG) {
            L.d(TAG, "onFlingToDelete: d = " + dragObject);
        }
        final boolean z = dragObject.dragSource instanceof AppsCustomizePagedView;
        dragObject.dragView.setColor(0);
        dragObject.dragView.updateInitialScaleToCurrentScale();
        if (z) {
            resetHoverColor();
        }
        if (this.mFlingDeleteMode == MODE_FLING_DELETE_TO_TRASH) {
            this.mSearchDropTargetBar.deferOnDragEnd();
            this.mSearchDropTargetBar.finishAnimations();
        }
        ViewConfiguration viewConfiguration = ViewConfiguration.get(this.mLauncher);
        DragLayer dragLayer = this.mLauncher.getDragLayer();
        final int i3 = FLING_DELETE_ANIMATION_DURATION;
        final long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        TimeInterpolator timeInterpolator = new TimeInterpolator() { // from class: com.android.launcher2.DeleteDropTarget.5
            private int mCount = -1;
            private float mOffset = 0.0f;

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                int i4 = this.mCount;
                if (i4 < 0) {
                    this.mCount = i4 + 1;
                } else if (i4 == 0) {
                    this.mOffset = Math.min(0.5f, (AnimationUtils.currentAnimationTimeMillis() - jCurrentAnimationTimeMillis) / i3);
                    this.mCount++;
                }
                return Math.min(1.0f, this.mOffset + f);
            }
        };
        ValueAnimator.AnimatorUpdateListener animatorUpdateListenerCreateFlingAlongVectorAnimatorListener = null;
        int i4 = this.mFlingDeleteMode;
        if (i4 == MODE_FLING_DELETE_TO_TRASH) {
            animatorUpdateListenerCreateFlingAlongVectorAnimatorListener = createFlingToTrashAnimatorListener(dragLayer, dragObject, pointF, viewConfiguration);
        } else if (i4 == MODE_FLING_DELETE_ALONG_VECTOR) {
            animatorUpdateListenerCreateFlingAlongVectorAnimatorListener = createFlingAlongVectorAnimatorListener(dragLayer, dragObject, pointF, jCurrentAnimationTimeMillis, i3, viewConfiguration);
        }
        dragLayer.animateView(dragObject.dragView, animatorUpdateListenerCreateFlingAlongVectorAnimatorListener, i3, timeInterpolator, new Runnable() { // from class: com.android.launcher2.DeleteDropTarget.6
            @Override // java.lang.Runnable
            public void run() {
                DeleteDropTarget.this.mSearchDropTargetBar.onDragEnd();
                if (!z) {
                    DeleteDropTarget.this.mLauncher.exitSpringLoadedDragMode();
                    DeleteDropTarget.this.completeDrop(dragObject);
                }
                DeleteDropTarget.this.mLauncher.getDragController().onDeferredEndFling(dragObject);
            }
        }, 0, null);
    }
}
