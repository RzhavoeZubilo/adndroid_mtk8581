package com.android.launcher2;

import android.content.ComponentName;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.TransitionDrawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class InfoDropTarget extends ButtonDropTarget {
    private TransitionDrawable mDrawable;
    private ColorStateList mOriginalTextColor;

    public InfoDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InfoDropTarget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mOriginalTextColor = getTextColors();
        this.mHoverColor = Launcher.getThemeColor(getResources(), R.color.info_target_hover_tint);
        TransitionDrawable transitionDrawable = (TransitionDrawable) getCurrentDrawable();
        this.mDrawable = transitionDrawable;
        transitionDrawable.setCrossFadeEnabled(true);
        if (getResources().getConfiguration().orientation != 2 || LauncherApplication.isScreenLarge()) {
            return;
        }
        setText("");
    }

    private boolean isFromAllApps(DragSource dragSource) {
        return dragSource instanceof AppsCustomizePagedView;
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DropTarget
    public boolean acceptDrop(DropTarget.DragObject dragObject) {
        if (L.DEBUG) {
            L.d(DropTarget.TAG, "acceptDrop: d = " + dragObject + ", d.dragInfo = " + dragObject.dragInfo);
        }
        ComponentName component = null;
        if (dragObject.dragInfo instanceof ApplicationInfo) {
            component = ((ApplicationInfo) dragObject.dragInfo).componentName;
        } else if (dragObject.dragInfo instanceof ShortcutInfo) {
            component = ((ShortcutInfo) dragObject.dragInfo).intent.getComponent();
        } else if (dragObject.dragInfo instanceof PendingAddItemInfo) {
            component = ((PendingAddItemInfo) dragObject.dragInfo).componentName;
        }
        if (component != null) {
            this.mLauncher.startApplicationDetailsActivity(component);
        }
        dragObject.deferDragViewCleanupPostAnimation = false;
        return false;
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DragController.DragListener
    public void onDragStart(DragSource dragSource, Object obj, int i) {
        if (L.DEBUG) {
            L.d(DropTarget.TAG, "onDratStart: source = " + dragSource + ", info = " + obj + ", dragAction = " + i);
        }
        boolean zIsFromAllApps = isFromAllApps(dragSource);
        this.mActive = zIsFromAllApps;
        this.mDrawable.resetTransition();
        setTextColor(this.mOriginalTextColor);
        ((ViewGroup) getParent()).setVisibility(zIsFromAllApps ? 0 : 8);
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DragController.DragListener
    public void onDragEnd() {
        super.onDragEnd();
        if (L.DEBUG) {
            L.d(DropTarget.TAG, "onDragEnd.");
        }
        this.mActive = false;
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DropTarget
    public void onDragEnter(DropTarget.DragObject dragObject) {
        super.onDragEnter(dragObject);
        if (L.DEBUG) {
            L.d(DropTarget.TAG, "onDragEnter: d = " + dragObject);
        }
        this.mDrawable.startTransition(this.mTransitionDuration);
        setTextColor(this.mHoverColor);
    }

    @Override // com.android.launcher2.ButtonDropTarget, com.android.launcher2.DropTarget
    public void onDragExit(DropTarget.DragObject dragObject) {
        super.onDragExit(dragObject);
        if (L.DEBUG) {
            L.d(DropTarget.TAG, "onDragExit: d = " + dragObject + ", d.dragComplete = " + dragObject.dragComplete);
        }
        if (dragObject.dragComplete) {
            return;
        }
        this.mDrawable.resetTransition();
        setTextColor(this.mOriginalTextColor);
    }
}
