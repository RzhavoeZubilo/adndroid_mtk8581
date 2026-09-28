package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class ButtonDropTarget extends TextView implements DropTarget, DragController.DragListener {
    protected boolean mActive;
    private int mBottomDragPadding;
    protected int mHoverColor;
    protected Launcher mLauncher;
    protected SearchDropTargetBar mSearchDropTargetBar;
    protected TextView mText;
    protected final int mTransitionDuration;

    @Override // com.android.launcher2.DropTarget
    public boolean acceptDrop(DropTarget.DragObject dragObject) {
        return false;
    }

    @Override // com.android.launcher2.DropTarget
    public DropTarget getDropTargetDelegate(DropTarget.DragObject dragObject) {
        return null;
    }

    @Override // com.android.launcher2.DragController.DragListener
    public void onDragEnd() {
    }

    @Override // com.android.launcher2.DropTarget
    public void onDragOver(DropTarget.DragObject dragObject) {
    }

    @Override // com.android.launcher2.DragController.DragListener
    public void onDragStart(DragSource dragSource, Object obj, int i) {
    }

    @Override // com.android.launcher2.DropTarget
    public void onDrop(DropTarget.DragObject dragObject) {
    }

    @Override // com.android.launcher2.DropTarget
    public void onFlingToDelete(DropTarget.DragObject dragObject, int i, int i2, PointF pointF) {
    }

    public ButtonDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ButtonDropTarget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHoverColor = 0;
        Resources resources = getResources();
        this.mTransitionDuration = resources.getInteger(R.integer.config_dropTargetBgTransitionDuration);
        this.mBottomDragPadding = resources.getDimensionPixelSize(R.dimen.drop_target_drag_padding);
    }

    void setLauncher(Launcher launcher) {
        this.mLauncher = launcher;
    }

    public void setSearchDropTargetBar(SearchDropTargetBar searchDropTargetBar) {
        this.mSearchDropTargetBar = searchDropTargetBar;
    }

    protected Drawable getCurrentDrawable() {
        Drawable[] compoundDrawables = getCompoundDrawables();
        for (int i = 0; i < compoundDrawables.length; i++) {
            if (compoundDrawables[i] != null) {
                return compoundDrawables[i];
            }
        }
        return null;
    }

    @Override // com.android.launcher2.DropTarget
    public void onDragEnter(DropTarget.DragObject dragObject) {
        dragObject.dragView.setColor(this.mHoverColor);
    }

    @Override // com.android.launcher2.DropTarget
    public void onDragExit(DropTarget.DragObject dragObject) {
        dragObject.dragView.setColor(0);
    }

    @Override // com.android.launcher2.DropTarget
    public boolean isDropEnabled() {
        return this.mActive;
    }

    @Override // android.view.View, com.android.launcher2.DropTarget
    public void getHitRect(Rect rect) {
        super.getHitRect(rect);
        rect.bottom += this.mBottomDragPadding;
    }

    Rect getIconRect(int i, int i2, int i3, int i4) {
        DragLayer dragLayer = this.mLauncher.getDragLayer();
        Rect rect = new Rect();
        dragLayer.getViewRectRelativeToSelf(this, rect);
        int paddingLeft = rect.left + getPaddingLeft();
        int measuredHeight = rect.top + ((getMeasuredHeight() - i4) / 2);
        rect.set(paddingLeft, measuredHeight, paddingLeft + i3, measuredHeight + i4);
        rect.offset((-(i - i3)) / 2, (-(i2 - i4)) / 2);
        return rect;
    }

    @Override // com.android.launcher2.DropTarget
    public void getLocationInDragLayer(int[] iArr) {
        this.mLauncher.getDragLayer().getLocationInDragLayer(this, iArr);
    }
}
