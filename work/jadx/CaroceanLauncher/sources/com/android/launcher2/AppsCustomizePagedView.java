package com.android.launcher2;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher2.popuView.AppsCustomizeFrame;
import com.android.launcher2.uitl.Function;
import com.android.launcher2.uitl.L;
import com.android.launcher2.uitl.Utils;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AppsCustomizePagedView extends PagedViewWithDraggableItems implements View.OnClickListener, View.OnKeyListener, DragSource, PagedViewIcon.PressedCallback, Launcher.LauncherTransitionable {
    private static float CAMERA_DISTANCE = 6500.0f;
    private static final boolean PERFORM_OVERSCROLL_ROTATION = true;
    private static final String TAG = "AppsCustomizePagedView";
    private static float TRANSITION_MAX_ROTATION = 22.0f;
    private static float TRANSITION_PIVOT = 0.65f;
    private static float TRANSITION_SCALE_FACTOR = 0.74f;
    static final int sLookAheadPageCount = 2;
    static final int sLookBehindPageCount = 2;
    private static final int sPageSleepDelay = 200;
    private AccelerateInterpolator mAlphaInterpolator;
    private int mAppIconSize;
    private ArrayList<ApplicationInfo> mApps;
    private boolean mAppsHasSet;
    BitmapCache mCachedShortcutPreviewBitmap;
    CanvasCache mCachedShortcutPreviewCanvas;
    PaintCache mCachedShortcutPreviewPaint;
    private Canvas mCanvas;
    private int mClingFocusedX;
    private int mClingFocusedY;
    private int mContentWidth;
    private ArrayList<Runnable> mDeferredPrepareLoadWidgetPreviewsTasks;
    private ArrayList<AsyncTaskPageData> mDeferredSyncWidgetPageItems;
    private DragController mDragController;
    private boolean mHasShownAllAppsCling;
    private IconCache mIconCache;
    private boolean mInTransition;
    private Launcher mLauncher;
    private final LayoutInflater mLayoutInflater;
    private DecelerateInterpolator mLeftScreenAlphaInterpolator;
    private int mMaxAppCellCountX;
    private int mMaxAppCellCountY;
    private int mNumAppsPages;
    private final PackageManager mPackageManager;
    private PagedViewIcon mPressedIcon;
    ArrayList<AppsCustomizeAsyncTask> mRunningTasks;
    private int mSaveInstanceStateItemIndex;
    private Rect mTmpRect;
    Workspace.ZInterpolator mZInterpolator;
    private String[] mapName;

    public enum ContentType {
        Applications
    }

    @Override // com.android.launcher2.PagedViewWithDraggableItems
    protected void determineDraggingStart(MotionEvent motionEvent) {
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public View getContent() {
        return null;
    }

    @Override // com.android.launcher2.PagedView, com.android.launcher2.ScreenEffect
    public boolean isSupportCycleSlidingScreen() {
        return false;
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionStart(Launcher launcher, boolean z, boolean z2) {
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionStep(Launcher launcher, float f) {
    }

    @Override // com.android.launcher2.DragSource
    public boolean supportsFlingToDelete() {
        return true;
    }

    public AppsCustomizePagedView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSaveInstanceStateItemIndex = -1;
        this.mZInterpolator = new Workspace.ZInterpolator(0.5f);
        this.mAlphaInterpolator = new AccelerateInterpolator(0.9f);
        this.mLeftScreenAlphaInterpolator = new DecelerateInterpolator(4.0f);
        this.mDeferredSyncWidgetPageItems = new ArrayList<>();
        this.mDeferredPrepareLoadWidgetPreviewsTasks = new ArrayList<>();
        this.mTmpRect = new Rect();
        this.mCachedShortcutPreviewBitmap = new BitmapCache();
        this.mCachedShortcutPreviewPaint = new PaintCache();
        this.mCachedShortcutPreviewCanvas = new CanvasCache();
        this.mAppsHasSet = false;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.mPackageManager = context.getPackageManager();
        this.mApps = new ArrayList<>();
        this.mIconCache = ((LauncherApplication) context.getApplicationContext()).getIconCache();
        this.mCanvas = new Canvas();
        this.mRunningTasks = new ArrayList<>();
        Resources resources = context.getResources();
        if (ZHTDOEMManager.ensureID8()) {
            this.mAppIconSize = resources.getDimensionPixelSize(R.dimen.app_icon_id8_size);
        } else if (ZHTDOEMManager.isMRWCustomer() || ZHTDOEMManager.isYZGCustomer() || ZHTDOEMManager.isLCCustomerTheme1()) {
            this.mAppIconSize = resources.getDimensionPixelSize(R.dimen.app_icon_mrw_size);
        } else {
            this.mAppIconSize = resources.getDimensionPixelSize(ZHTDOEMManager.isLCCustomer() ? R.dimen.app_icon_lc_size : R.dimen.app_icon_size);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppsCustomizePagedView, 0, 0);
        this.mMaxAppCellCountX = typedArrayObtainStyledAttributes.getInt(2, -1);
        this.mMaxAppCellCountY = typedArrayObtainStyledAttributes.getInt(3, -1);
        this.mClingFocusedX = typedArrayObtainStyledAttributes.getInt(0, 0);
        this.mClingFocusedY = typedArrayObtainStyledAttributes.getInt(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mFadeInAdjacentScreens = false;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.mapName = context.getResources().getStringArray(R.array.map_name);
    }

    @Override // com.android.launcher2.PagedView
    protected void init() {
        super.init();
        this.mCenterPagesVertically = false;
        setDragSlopeThreshold(getContext().getResources().getInteger(R.integer.config_appsCustomizeDragSlopeThreshold) / 100.0f);
    }

    private int getMiddleComponentIndexOnCurrentPage() {
        if (getPageCount() <= 0) {
            return -1;
        }
        int currentPage = getCurrentPage();
        if (currentPage < this.mNumAppsPages) {
            PagedViewCellLayoutChildren childrenLayout = ((PagedViewCellLayout) getPageAt(currentPage)).getChildrenLayout();
            int i = this.mCellCountX * this.mCellCountY;
            int childCount = childrenLayout.getChildCount();
            if (childCount > 0) {
                return (currentPage * i) + (childCount / 2);
            }
            return -1;
        }
        int size = this.mApps.size();
        int childCount2 = ((PagedViewGridLayout) getPageAt(currentPage)).getChildCount();
        if (childCount2 > 0) {
            return size + ((currentPage - this.mNumAppsPages) * 0) + (childCount2 / 2);
        }
        return -1;
    }

    int getSaveInstanceStateIndex() {
        if (this.mSaveInstanceStateItemIndex == -1) {
            this.mSaveInstanceStateItemIndex = getMiddleComponentIndexOnCurrentPage();
        }
        return this.mSaveInstanceStateItemIndex;
    }

    int getPageForComponent(int i) {
        if (i < 0) {
            return 0;
        }
        if (i < this.mApps.size()) {
            return i / (this.mCellCountX * this.mCellCountY);
        }
        return this.mNumAppsPages + 0;
    }

    void restorePageForIndex(int i) {
        if (i < 0) {
            return;
        }
        this.mSaveInstanceStateItemIndex = i;
    }

    private void updatePageCounts() {
        this.mNumAppsPages = (int) Math.ceil(this.mApps.size() / (this.mCellCountX * this.mCellCountY));
        if (L.DEBUG) {
            L.d(TAG, "updatePageCounts end: mNumWidgetPages = , mNumAppsPages = " + this.mNumAppsPages + ", mApps.size() = " + this.mApps.size() + ", mCellCountX = " + this.mCellCountX + ", mCellCountY = " + this.mCellCountY + ", this = " + this);
        }
    }

    protected void onDataReady(int i, int i2) {
        int cellCountX;
        int cellCountY;
        boolean z = getResources().getConfiguration().orientation == 2;
        int i3 = Integer.MAX_VALUE;
        if (LauncherApplication.isScreenLarge()) {
            if (z) {
                cellCountY = LauncherModel.getCellCountX();
            } else {
                cellCountY = LauncherModel.getCellCountY();
            }
            i3 = cellCountY;
            if (z) {
                cellCountX = LauncherModel.getCellCountY();
            } else {
                cellCountX = LauncherModel.getCellCountX();
            }
        } else {
            cellCountX = Integer.MAX_VALUE;
        }
        int i4 = this.mMaxAppCellCountX;
        if (i4 > -1) {
            Math.min(i3, i4);
        }
        int i5 = this.mMaxAppCellCountY;
        if (i5 > -1) {
            Math.min(cellCountX, i5);
        }
        if (!ZHTDOEMManager.isMRWCustomer() && !ZHTDOEMManager.isYZGCustomer() && !ZHTDOEMManager.isLCCustomerTheme1()) {
            this.mCellCountX = getResources().getInteger(ZHTDOEMManager.isLCCustomer() ? R.integer.lc_true_of_count_cell_y : R.integer.true_of_count_cell_y);
        } else if (ZHTDOEMManager.isYZGCustomer() && ZHTDOEMManager.is1600x720And240dpi() && ZHTDOEMManager.getUIThemeid() != 0) {
            this.mCellCountX = 4;
        } else {
            this.mCellCountX = 5;
        }
        this.mCellCountY = getResources().getInteger(R.integer.true_of_count_cell_x);
        updatePageCounts();
        View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Integer.MIN_VALUE);
        View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE);
        boolean zIsTransitioning = getTabHost().isTransitioning();
        int pageForComponent = getPageForComponent(this.mSaveInstanceStateItemIndex);
        if (L.DEBUG) {
            L.d(TAG, "onDataReady: height = " + i2 + ", width = " + i + ", isLandscape = " + z + ", page = " + pageForComponent + ", hostIsTransitioning = " + zIsTransitioning + ", mContentWidth = " + this.mContentWidth + ", mNumAppsPages = " + this.mNumAppsPages + ", mNumWidgetPages = , this = " + this);
        }
        invalidatePageData(Math.max(0, pageForComponent), zIsTransitioning);
        if (zIsTransitioning) {
            return;
        }
        post(new Runnable() { // from class: com.android.launcher2.AppsCustomizePagedView.1
            @Override // java.lang.Runnable
            public void run() {
                AppsCustomizePagedView.this.showAllAppsCling();
            }
        });
    }

    public void showAllAppsCling() {
        if (L.DEBUG) {
            L.d(TAG, "showAllAppsCling: mHasShownAllAppsCling = " + this.mHasShownAllAppsCling);
        }
        if (!this.mHasShownAllAppsCling && isDataReady()) {
            this.mHasShownAllAppsCling = true;
            this.mLauncher.getDragLayer().getLocationInDragLayer(this, new int[2]);
        }
        this.mLauncher.setPackageIndex(this.mCurrentPage, this.mNumAppsPages, false);
    }

    @Override // com.android.launcher2.PagedView, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (!isDataReady() && !this.mApps.isEmpty() && this.mAppsHasSet) {
            setDataIsReady();
            setMeasuredDimension(size, size2);
            onDataReady(size, size2);
        }
        super.onMeasure(i, i2);
    }

    public void onPackagesUpdated() {
        updatePageCounts();
        invalidateOnDataChange();
    }

    @Override // com.android.launcher2.PagedViewWithDraggableItems, android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (L.DEBUG) {
            L.d(TAG, "onLongClick: v = " + view + ", v.getTag() = " + view.getTag());
        }
        if (this.mLauncher.isAllAppsVisible() && !this.mLauncher.getWorkspace().isSwitchingState() && (view instanceof PagedViewIcon)) {
            ApplicationInfo applicationInfo = (ApplicationInfo) view.getTag();
            try {
                if (!applicationInfo.getPackageName().equals(Function.WECHAT_PACKAGE_NAME) && (getContext().getPackageManager().getPackageInfo(applicationInfo.getPackageName(), 0).applicationInfo.flags & 1) <= 0) {
                    Intent intent = new Intent("android.intent.action.DELETE");
                    intent.addCategory("android.intent.category.DEFAULT");
                    intent.setData(Uri.parse("package:" + applicationInfo.getPackageName()));
                    this.mLauncher.startActivityForResult(intent, 0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (L.DEBUG) {
            L.d(TAG, "onClick: v = " + view + ", v.getTag() = " + view.getTag());
        }
        Trace.beginSection("AppsCustomizePagedView.onClick");
        if (!this.mLauncher.isAllAppsVisible() || this.mLauncher.getWorkspace().isSwitchingState()) {
            return;
        }
        if (view instanceof PagedViewIcon) {
            ApplicationInfo applicationInfo = (ApplicationInfo) view.getTag();
            PagedViewIcon pagedViewIcon = this.mPressedIcon;
            if (pagedViewIcon != null) {
                pagedViewIcon.lockDrawableState();
            }
            this.mLauncher.updateWallpaperVisibility(true);
            this.mLauncher.startActivitySafely(view, applicationInfo.intent, applicationInfo);
        }
        Trace.endSection();
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        return FocusHelper.handleAppsCustomizeKeyEvent(view, i, keyEvent);
    }

    private void beginDraggingApplication(View view) {
        this.mLauncher.getWorkspace().onDragStartedWithItem(view);
        this.mLauncher.getWorkspace().beginDragShared(view, this);
    }

    Bundle getDefaultOptionsForWidget(Launcher launcher, PendingAddWidgetInfo pendingAddWidgetInfo) {
        if (Build.VERSION.SDK_INT < 17) {
            return null;
        }
        AppWidgetResizeFrame.getWidgetSizeRanges(this.mLauncher, pendingAddWidgetInfo.spanX, pendingAddWidgetInfo.spanY, this.mTmpRect);
        Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(this.mLauncher, pendingAddWidgetInfo.componentName, null);
        float f = getResources().getDisplayMetrics().density;
        int i = (int) ((defaultPaddingForWidget.left + defaultPaddingForWidget.right) / f);
        int i2 = (int) ((defaultPaddingForWidget.top + defaultPaddingForWidget.bottom) / f);
        Bundle bundle = new Bundle();
        bundle.putInt("appWidgetMinWidth", this.mTmpRect.left - i);
        bundle.putInt("appWidgetMinHeight", this.mTmpRect.top - i2);
        bundle.putInt("appWidgetMaxWidth", this.mTmpRect.right - i);
        bundle.putInt("appWidgetMaxHeight", this.mTmpRect.bottom - i2);
        return bundle;
    }

    private void preloadWidget(PendingAddWidgetInfo pendingAddWidgetInfo) {
        AppWidgetProviderInfo appWidgetProviderInfo = pendingAddWidgetInfo.info;
        Bundle defaultOptionsForWidget = getDefaultOptionsForWidget(this.mLauncher, pendingAddWidgetInfo);
        if (L.DEBUG) {
            L.d(TAG, "preloadWidget info = " + pendingAddWidgetInfo + ", pInfo = " + appWidgetProviderInfo + ", pInfo.configure = " + appWidgetProviderInfo.configure);
        }
        if (appWidgetProviderInfo.configure != null) {
            pendingAddWidgetInfo.bindOptions = defaultOptionsForWidget;
        }
    }

    @Override // com.android.launcher2.PagedViewWithDraggableItems
    protected boolean beginDragging(View view) {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "beginDragging: v = " + view + ", this = " + this);
        }
        if (!super.beginDragging(view)) {
            return false;
        }
        if (view instanceof PagedViewIcon) {
            beginDraggingApplication(view);
        } else {
            boolean z = view instanceof PagedViewWidget;
        }
        postDelayed(new Runnable() { // from class: com.android.launcher2.AppsCustomizePagedView.2
            @Override // java.lang.Runnable
            public void run() {
                if (AppsCustomizePagedView.this.mLauncher.getDragController().isDragging()) {
                    AppsCustomizePagedView.this.mLauncher.dismissAllAppsCling(null);
                    AppsCustomizePagedView.this.resetDrawableState();
                    AppsCustomizePagedView.this.mLauncher.enterSpringLoadedDragMode();
                }
            }
        }, 150L);
        return true;
    }

    private void endDragging(View view, boolean z, boolean z2) {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "endDragging: target = " + view + ", isFlingToDelete = " + z + ", success = " + z2);
        }
        if (z || !z2 || (view != this.mLauncher.getWorkspace() && !(view instanceof DeleteDropTarget))) {
            this.mLauncher.exitSpringLoadedDragMode();
        }
        this.mLauncher.unlockScreenOrientation(false);
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionPrepare(Launcher launcher, boolean z, boolean z2) {
        if (L.DEBUG) {
            L.d(TAG, "onLauncherTransitionPrepare l = " + launcher + ", animated = " + z + ", toWorkspace = " + z2);
        }
        this.mInTransition = true;
        if (z2) {
            cancelAllTasks();
        }
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionEnd(Launcher launcher, boolean z, boolean z2) {
        if (L.DEBUG) {
            L.d(TAG, "onLauncherTransitionEnd l = " + launcher + ", animated = " + z + ", toWorkspace = " + z2);
        }
        this.mInTransition = false;
        Iterator<AsyncTaskPageData> it = this.mDeferredSyncWidgetPageItems.iterator();
        while (it.hasNext()) {
            onSyncWidgetPageItems(it.next());
        }
        this.mDeferredSyncWidgetPageItems.clear();
        Iterator<Runnable> it2 = this.mDeferredPrepareLoadWidgetPreviewsTasks.iterator();
        while (it2.hasNext()) {
            it2.next().run();
        }
        this.mDeferredPrepareLoadWidgetPreviewsTasks.clear();
        this.mForceDrawAllChildrenNextFrame = !z2;
    }

    @Override // com.android.launcher2.DragSource
    public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z, boolean z2) {
        boolean z3;
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDropCompleted: target = " + view + ", d = " + dragObject + ", isFlingToDelete = " + z + ", success = " + z2);
        }
        if (z) {
            return;
        }
        endDragging(view, false, z2);
        if (z2) {
            return;
        }
        if (view instanceof Workspace) {
            Workspace workspace = (Workspace) view;
            CellLayout cellLayout = (CellLayout) workspace.getChildAt(this.mLauncher.getCurrentWorkspaceScreen());
            ItemInfo itemInfo = (ItemInfo) dragObject.dragInfo;
            if (cellLayout != null) {
                cellLayout.calculateSpans(itemInfo);
                z3 = !cellLayout.findCellForSpan(null, itemInfo.spanX, itemInfo.spanY);
            } else {
                z3 = false;
            }
            if (dragObject.dragInfo instanceof PendingAddWidgetInfo) {
                PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) dragObject.dragInfo;
                if (workspace.searchIMTKWidget(workspace, pendingAddWidgetInfo.componentName.getClassName()) != null) {
                    this.mLauncher.showOnlyOneWidgetMessage(pendingAddWidgetInfo);
                }
            }
        } else {
            z3 = false;
        }
        if (z3) {
            this.mLauncher.showOutOfSpaceMessage(false);
        }
        dragObject.deferDragViewCleanupPostAnimation = false;
    }

    @Override // com.android.launcher2.DragSource
    public void onFlingToDeleteCompleted() {
        if (L.DEBUG) {
            L.d(TAG, "onFlingToDeleteCompleted.");
        }
        endDragging(null, true, true);
    }

    @Override // com.android.launcher2.PagedViewWithDraggableItems, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (L.DEBUG) {
            L.d(TAG, "onDetachedFromWindow.");
        }
        cancelAllTasks();
    }

    public void clearAllPages() {
        cancelAllTasks();
        int childCount = getChildCount();
        if (L.DEBUG) {
            L.d(TAG, "clearAllPages: count = " + childCount);
        }
        for (int i = 0; i < childCount; i++) {
            View pageAt = getPageAt(i);
            if (pageAt instanceof PagedViewGridLayout) {
                ((PagedViewGridLayout) pageAt).removeAllViewsOnPage();
                this.mDirtyPageContent.set(i, true);
            } else if (pageAt instanceof PagedViewCellLayout) {
                ((PagedViewCellLayout) pageAt).removeAllViewsOnPage();
                this.mDirtyPageContent.set(i, true);
            }
        }
    }

    private void cancelAllTasks() {
        if (L.DEBUG) {
            L.d(TAG, "cancelAllTasks: mRunningTasks size = " + this.mRunningTasks.size());
        }
        Iterator<AppsCustomizeAsyncTask> it = this.mRunningTasks.iterator();
        while (it.hasNext()) {
            AppsCustomizeAsyncTask next = it.next();
            next.cancel(false);
            it.remove();
            this.mDirtyPageContent.set(next.page, true);
            View pageAt = getPageAt(next.page);
            if (pageAt instanceof PagedViewGridLayout) {
                ((PagedViewGridLayout) pageAt).removeAllViewsOnPage();
            }
        }
        this.mDeferredSyncWidgetPageItems.clear();
        this.mDeferredPrepareLoadWidgetPreviewsTasks.clear();
    }

    public void setContentType(ContentType contentType) {
        if (contentType == ContentType.Applications) {
            invalidatePageData(0, true);
        }
    }

    @Override // com.android.launcher2.PagedView
    protected void snapToPage(int i, int i2, int i3) {
        super.snapToPage(i, i2, i3);
        if (L.DEBUG) {
            L.d(TAG, "snapToPage: whichPage = " + i + ", delta = " + i2 + ", duration = " + i3 + ", this = " + this.mNumAppsPages);
        }
        this.mLauncher.setPackageIndex(i, this.mNumAppsPages, false);
        for (AppsCustomizeAsyncTask appsCustomizeAsyncTask : this.mRunningTasks) {
            int i4 = appsCustomizeAsyncTask.page;
            if ((this.mNextPage > this.mCurrentPage && i4 >= this.mCurrentPage) || (this.mNextPage < this.mCurrentPage && i4 <= this.mCurrentPage)) {
                appsCustomizeAsyncTask.setThreadPriority(getThreadPriorityForPage(i4));
            } else {
                appsCustomizeAsyncTask.setThreadPriority(19);
            }
        }
    }

    private void setVisibilityOnChildren(ViewGroup viewGroup, int i) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            viewGroup.getChildAt(i2).setVisibility(i);
        }
    }

    private void setupPage(PagedViewCellLayout pagedViewCellLayout) {
        pagedViewCellLayout.setCellCount(this.mCellCountX, this.mCellCountY);
        pagedViewCellLayout.setGap(this.mPageLayoutWidthGap, this.mPageLayoutHeightGap);
        pagedViewCellLayout.setPadding(this.mPageLayoutPaddingLeft, this.mPageLayoutPaddingTop, this.mPageLayoutPaddingRight, this.mPageLayoutPaddingBottom);
        setVisibilityOnChildren(pagedViewCellLayout, 8);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE);
        pagedViewCellLayout.setMinimumWidth(getPageContentWidth());
        pagedViewCellLayout.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        setVisibilityOnChildren(pagedViewCellLayout, 0);
    }

    public void syncAppsPageItems(int i, boolean z) {
        PagedViewIcon pagedViewIcon;
        int i2 = this.mCellCountX * this.mCellCountY;
        int i3 = i * i2;
        int iMin = Math.min(i3 + i2, this.mApps.size());
        if (L.DEBUG) {
            L.d(TAG, "syncAppsPageItems: page = " + i + ", immediate = " + z + ", numCells = " + i2 + ", startIndex = " + i3 + ", endIndex = " + iMin + ", app size = " + this.mApps.size() + ", child count = " + getChildCount() + ", this = " + this);
        }
        PagedViewCellLayout pagedViewCellLayout = (PagedViewCellLayout) getPageAt(i);
        pagedViewCellLayout.removeAllViewsOnPage();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i4 = i3; i4 < iMin; i4++) {
            ApplicationInfo applicationInfo = this.mApps.get(i4);
            if (ZHTDOEMManager.ensureID8()) {
                pagedViewIcon = (PagedViewIcon) this.mLayoutInflater.inflate(R.layout.apps_customize_application_id8, (ViewGroup) pagedViewCellLayout, false);
                int i5 = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, getContext().getContentResolver(), Navi.Status.SYS_THEME, 1);
                if (i5 == 1) {
                    pagedViewIcon.setBackgroundResource(R.drawable.bmw_id8_orange_focusable_view_bg);
                } else if (i5 == 2) {
                    pagedViewIcon.setBackgroundResource(R.drawable.bmw_id8_red_focusable_view_bg);
                } else if (i5 == 3) {
                    pagedViewIcon.setBackgroundResource(R.drawable.bmw_id8_blue_focusable_view_bg);
                }
            } else if (ZHTDOEMManager.isMRWCustomer() || ZHTDOEMManager.isYZGCustomer() || ZHTDOEMManager.isLCCustomerTheme1()) {
                pagedViewIcon = (PagedViewIcon) this.mLayoutInflater.inflate(R.layout.apps_customize_application_mrw, (ViewGroup) pagedViewCellLayout, false);
            } else if (ZHTDOEMManager.isLFECustomer() && ZHTDOEMManager.getUIThemeid() == 3) {
                pagedViewIcon = (PagedViewIcon) this.mLayoutInflater.inflate(R.layout.apps_customize_application_lfe, (ViewGroup) pagedViewCellLayout, false);
            } else {
                pagedViewIcon = (PagedViewIcon) this.mLayoutInflater.inflate(ZHTDOEMManager.isLCCustomer() ? R.layout.apps_customize_application_lc : R.layout.apps_customize_application, (ViewGroup) pagedViewCellLayout, false);
            }
            pagedViewIcon.applyFromApplicationInfo(applicationInfo, true, this);
            pagedViewIcon.setOnClickListener(this);
            pagedViewIcon.setOnLongClickListener(this);
            pagedViewIcon.setOnTouchListener(this);
            pagedViewIcon.setOnKeyListener(this);
            int i6 = i4 - i3;
            int i7 = i6 % this.mCellCountX;
            int i8 = i6 / this.mCellCountX;
            pagedViewCellLayout.addViewToCellLayout(pagedViewIcon, -1, i4, new PagedViewCellLayout.LayoutParams(i7, i8, 1, 1));
            arrayList.add(applicationInfo);
            arrayList2.add(applicationInfo.iconBitmap);
            if (L.DEBUG) {
                L.d(TAG, "Add app :  = " + applicationInfo.getPackageName() + " index:" + i4 + "  x:" + i7 + " y:" + i8);
            }
        }
        pagedViewCellLayout.createHardwareLayers();
    }

    private int getWidgetPageLoadPriority(int i) {
        int i2 = this.mCurrentPage;
        if (this.mNextPage > -1) {
            i2 = this.mNextPage;
        }
        Iterator<AppsCustomizeAsyncTask> it = this.mRunningTasks.iterator();
        int iAbs = Integer.MAX_VALUE;
        while (it.hasNext()) {
            iAbs = Math.abs(it.next().page - i2);
        }
        int iAbs2 = Math.abs(i - i2);
        return iAbs2 - Math.min(iAbs2, iAbs);
    }

    private int getThreadPriorityForPage(int i) {
        int widgetPageLoadPriority = getWidgetPageLoadPriority(i);
        if (widgetPageLoadPriority <= 0) {
            return 1;
        }
        if (widgetPageLoadPriority <= 1) {
        }
        return 19;
    }

    private int getSleepForPage(int i) {
        return Math.max(0, getWidgetPageLoadPriority(i) * 200);
    }

    private void prepareLoadWidgetPreviewsTask(int i, ArrayList<Object> arrayList, int i2, int i3, int i4) {
        Iterator<AppsCustomizeAsyncTask> it = this.mRunningTasks.iterator();
        while (it.hasNext()) {
            AppsCustomizeAsyncTask next = it.next();
            int i5 = next.page;
            if (i5 < getAssociatedLowerPageBound(this.mCurrentPage) || i5 > getAssociatedUpperPageBound(this.mCurrentPage)) {
                next.cancel(false);
                it.remove();
            } else {
                next.setThreadPriority(getThreadPriorityForPage(i5));
            }
        }
        final int sleepForPage = getSleepForPage(i);
        AsyncTaskPageData asyncTaskPageData = new AsyncTaskPageData(i, arrayList, i2, i3, new AsyncTaskCallback() { // from class: com.android.launcher2.AppsCustomizePagedView.3
            @Override // com.android.launcher2.AsyncTaskCallback
            public void run(AppsCustomizeAsyncTask appsCustomizeAsyncTask, AsyncTaskPageData asyncTaskPageData2) {
                try {
                    try {
                        Thread.sleep(sleepForPage);
                    } catch (Exception unused) {
                    }
                    AppsCustomizePagedView.this.loadWidgetPreviewsInBackground(appsCustomizeAsyncTask, asyncTaskPageData2);
                } finally {
                    if (appsCustomizeAsyncTask.isCancelled()) {
                        asyncTaskPageData2.cleanup(true);
                    }
                }
            }
        }, new AsyncTaskCallback() { // from class: com.android.launcher2.AppsCustomizePagedView.4
            @Override // com.android.launcher2.AsyncTaskCallback
            public void run(AppsCustomizeAsyncTask appsCustomizeAsyncTask, AsyncTaskPageData asyncTaskPageData2) {
                AppsCustomizePagedView.this.mRunningTasks.remove(appsCustomizeAsyncTask);
                if (appsCustomizeAsyncTask.isCancelled()) {
                    return;
                }
                AppsCustomizePagedView.this.onSyncWidgetPageItems(asyncTaskPageData2);
            }
        });
        AppsCustomizeAsyncTask appsCustomizeAsyncTask = new AppsCustomizeAsyncTask(i, AsyncTaskPageData.Type.LoadWidgetPreviewData);
        appsCustomizeAsyncTask.setThreadPriority(getThreadPriorityForPage(i));
        appsCustomizeAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, asyncTaskPageData);
        this.mRunningTasks.add(appsCustomizeAsyncTask);
    }

    private void setupPage(PagedViewGridLayout pagedViewGridLayout) {
        pagedViewGridLayout.setPadding(this.mPageLayoutPaddingLeft, this.mPageLayoutPaddingTop, this.mPageLayoutPaddingRight, this.mPageLayoutPaddingBottom);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE);
        pagedViewGridLayout.setMinimumWidth(getPageContentWidth());
        pagedViewGridLayout.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    private void renderDrawableToBitmap(Drawable drawable, Bitmap bitmap, int i, int i2, int i3, int i4) {
        renderDrawableToBitmap(drawable, bitmap, i, i2, i3, i4, 1.0f);
    }

    private void renderDrawableToBitmap(Drawable drawable, Bitmap bitmap, int i, int i2, int i3, int i4, float f) {
        if (bitmap != null) {
            Canvas canvas = new Canvas(bitmap);
            canvas.scale(f, f);
            Rect rectCopyBounds = drawable.copyBounds();
            drawable.setBounds(i, i2, i3 + i, i4 + i2);
            drawable.draw(canvas);
            drawable.setBounds(rectCopyBounds);
            canvas.setBitmap(null);
        }
    }

    private Bitmap getShortcutPreview(ResolveInfo resolveInfo, int i, int i2) {
        Bitmap bitmapCreateBitmap = this.mCachedShortcutPreviewBitmap.get();
        Canvas canvas = this.mCachedShortcutPreviewCanvas.get();
        if (bitmapCreateBitmap == null || bitmapCreateBitmap.getWidth() != i || bitmapCreateBitmap.getHeight() != i2) {
            bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            this.mCachedShortcutPreviewBitmap.set(bitmapCreateBitmap);
        } else {
            canvas.setBitmap(bitmapCreateBitmap);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            canvas.setBitmap(null);
        }
        SceneInfo newCurrentSceneInfo = SceneManager.getNewCurrentSceneInfo(getContext());
        newCurrentSceneInfo.setShortcut();
        BitmapDrawable bitmapDrawable = new BitmapDrawable(Utilities.createIconBitmap(this.mIconCache.getFullResIcon(resolveInfo), getContext(), newCurrentSceneInfo));
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.shortcut_preview_padding_top);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.shortcut_preview_padding_left);
        int dimensionPixelOffset3 = (i - dimensionPixelOffset2) - getResources().getDimensionPixelOffset(R.dimen.shortcut_preview_padding_right);
        renderDrawableToBitmap(bitmapDrawable, bitmapCreateBitmap, dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset3, dimensionPixelOffset3);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap2);
        Paint paint = this.mCachedShortcutPreviewPaint.get();
        if (paint == null) {
            paint = new Paint();
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            paint.setAlpha(15);
            this.mCachedShortcutPreviewPaint.set(paint);
        }
        canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
        canvas.setBitmap(null);
        int i3 = this.mAppIconSize;
        renderDrawableToBitmap(bitmapDrawable, bitmapCreateBitmap2, 0, 0, i3, i3);
        return bitmapCreateBitmap2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadWidgetPreviewsInBackground(AppsCustomizeAsyncTask appsCustomizeAsyncTask, AsyncTaskPageData asyncTaskPageData) {
        if (appsCustomizeAsyncTask != null) {
            appsCustomizeAsyncTask.syncThreadPriority();
        }
        ArrayList<Object> arrayList = asyncTaskPageData.items;
        ArrayList<Bitmap> arrayList2 = asyncTaskPageData.generatedImages;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (appsCustomizeAsyncTask != null) {
                if (appsCustomizeAsyncTask.isCancelled()) {
                    return;
                } else {
                    appsCustomizeAsyncTask.syncThreadPriority();
                }
            }
            Object obj = arrayList.get(i);
            if (!(obj instanceof AppWidgetProviderInfo) && (obj instanceof ResolveInfo)) {
                arrayList2.add(getShortcutPreview((ResolveInfo) obj, asyncTaskPageData.maxImageWidth, asyncTaskPageData.maxImageHeight));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSyncWidgetPageItems(AsyncTaskPageData asyncTaskPageData) {
        if (this.mInTransition) {
            this.mDeferredSyncWidgetPageItems.add(asyncTaskPageData);
            return;
        }
        try {
            int i = asyncTaskPageData.page;
            PagedViewGridLayout pagedViewGridLayout = (PagedViewGridLayout) getPageAt(i);
            int size = asyncTaskPageData.items.size();
            for (int i2 = 0; i2 < size; i2++) {
                PagedViewWidget pagedViewWidget = (PagedViewWidget) pagedViewGridLayout.getChildAt(i2);
                if (pagedViewWidget != null) {
                    pagedViewWidget.applyPreview(new FastBitmapDrawable(asyncTaskPageData.generatedImages.get(i2)), i2);
                }
            }
            if (L.DEBUG) {
                L.d(TAG, "onSyncWidgetPageItems: page = " + i + ", layout = " + pagedViewGridLayout + ", count = " + size + ", this = " + this);
            }
            pagedViewGridLayout.createHardwareLayer();
            invalidate();
            for (AppsCustomizeAsyncTask appsCustomizeAsyncTask : this.mRunningTasks) {
                appsCustomizeAsyncTask.setThreadPriority(getThreadPriorityForPage(appsCustomizeAsyncTask.page));
            }
        } finally {
            asyncTaskPageData.cleanup(false);
        }
    }

    @Override // com.android.launcher2.PagedView
    public void syncPages() {
        if (L.DEBUG) {
            L.d(TAG, "syncPages: mNumWidgetPages = , mNumAppsPages = " + this.mNumAppsPages + ", this = " + this);
        }
        removeAllViews();
        cancelAllTasks();
        this.mLauncher.notifyPagesWereRecreated();
        Context context = getContext();
        for (int i = 0; i < this.mNumAppsPages; i++) {
            PagedViewCellLayout pagedViewCellLayout = new PagedViewCellLayout(context);
            setupPage(pagedViewCellLayout);
            addView(pagedViewCellLayout);
            if (L.DEBUG) {
                L.d(TAG, "syncPages: PagedViewCellLayout layout = " + pagedViewCellLayout);
            }
        }
    }

    @Override // com.android.launcher2.PagedView
    public void syncPageItems(int i, boolean z) {
        if (L.DEBUG) {
            L.d(TAG, "syncPageItems: page = " + i + ", immediate = " + z + ", mNumAppsPages = " + this.mNumAppsPages);
        }
        if (i < this.mNumAppsPages) {
            syncAppsPageItems(i, z);
        }
    }

    @Override // com.android.launcher2.PagedView
    View getPageAt(int i) {
        return getChildAt(indexToPage(i));
    }

    @Override // com.android.launcher2.PagedView
    protected int indexToPage(int i) {
        return (getChildCount() - i) - 1;
    }

    @Override // com.android.launcher2.PagedView
    protected void screenScrolled(int i) {
        super.screenScrolled(i);
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "screenScrolled: screenCenter = " + i + ", mOverScrollX = " + this.mOverScrollX + ", mMaxScrollX = " + this.mMaxScrollX + ", mScrollX = " + getScrollX() + ", this = " + this);
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View pageAt = getPageAt(i2);
            if (pageAt != null) {
                pageAt.setAlpha(1.0f);
                pageAt.setScaleX(1.0f);
                pageAt.setScaleY(1.0f);
                if (pageAt.getVisibility() != 0) {
                    pageAt.setVisibility(0);
                }
            }
        }
    }

    @Override // com.android.launcher2.PagedView
    protected void overScroll(float f) {
        acceleratedOverScroll(f);
    }

    public int getPageContentWidth() {
        return this.mContentWidth;
    }

    @Override // com.android.launcher2.PagedViewWithDraggableItems, com.android.launcher2.PagedView
    protected void onPageEndMoving() {
        super.onPageEndMoving();
        this.mForceDrawAllChildrenNextFrame = true;
        this.mSaveInstanceStateItemIndex = -1;
    }

    public void setup(Launcher launcher, DragController dragController) {
        this.mLauncher = launcher;
        this.mDragController = dragController;
    }

    private void invalidateOnDataChange() {
        if (!isDataReady()) {
            requestLayout();
        } else {
            cancelAllTasks();
            invalidatePageData();
        }
    }

    public void setApps(ArrayList<ApplicationInfo> arrayList) {
        this.mApps = arrayList;
        if (L.DEBUG) {
            L.d(TAG, "setApps : mApps = " + this.mApps.size() + ", mAppsHasSet = " + this.mAppsHasSet + ", this = " + this);
        }
        this.mAppsHasSet = true;
        reorderApps();
        updatePageCounts();
        invalidateOnDataChange();
    }

    private void addAppsWithoutInvalidate(ArrayList<ApplicationInfo> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ApplicationInfo applicationInfo = arrayList.get(i);
            int iBinarySearch = Collections.binarySearch(this.mApps, applicationInfo, LauncherModel.getAppNameComparator());
            if (iBinarySearch < 0) {
                this.mApps.add(applicationInfo);
                if (L.DEBUG) {
                    L.d(TAG, "addAppsWithoutInvalidate: mApps size = " + this.mApps.size() + ", index = " + iBinarySearch + ", info = " + applicationInfo + ", this = " + this);
                }
            }
        }
    }

    public void addApps(ArrayList<ApplicationInfo> arrayList) {
        if (L.DEBUG) {
            L.d(TAG, "addApps: list = " + arrayList + ", this = " + this);
        }
        addAppsWithoutInvalidate(arrayList);
        reorderApps();
        updatePageCounts();
        invalidateOnDataChange();
    }

    private int findAppByComponent(List<ApplicationInfo> list, ApplicationInfo applicationInfo) {
        ComponentName component = applicationInfo.intent.getComponent();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i).intent.getComponent().equals(component)) {
                return i;
            }
        }
        return -1;
    }

    private int findAppByPackage(List<ApplicationInfo> list, String str) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ApplicationInfo applicationInfo = list.get(i);
            if (ItemInfo.getPackageName(applicationInfo.intent).equals(str)) {
                boolean zIsComponentEnabled = Utilities.isComponentEnabled(getContext(), applicationInfo.intent.getComponent());
                L.d(TAG, "findAppByPackage: i = " + i + ",name = " + applicationInfo.intent.getComponent() + ",isComponentEnabled = " + zIsComponentEnabled);
                if (!zIsComponentEnabled) {
                    return i;
                }
            }
        }
        return -1;
    }

    private void removeAppsWithoutInvalidate(ArrayList<ApplicationInfo> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ApplicationInfo applicationInfo = arrayList.get(i);
            int iFindAppByComponent = findAppByComponent(this.mApps, applicationInfo);
            if (iFindAppByComponent > -1) {
                this.mApps.remove(iFindAppByComponent);
                if (L.DEBUG) {
                    L.d(TAG, "removeAppsWithoutInvalidate: removeIndex = " + iFindAppByComponent + ", ApplicationInfo info = " + applicationInfo + ", this = " + this);
                }
            }
        }
    }

    private void removeAppsWithPackageNameWithoutInvalidate(ArrayList<String> arrayList) {
        for (String str : arrayList) {
            int iFindAppByPackage = findAppByPackage(this.mApps, str);
            while (iFindAppByPackage > -1) {
                this.mApps.remove(iFindAppByPackage);
                iFindAppByPackage = findAppByPackage(this.mApps, str);
            }
        }
    }

    public void removeApps(ArrayList<String> arrayList) {
        if (L.DEBUG) {
            L.d(TAG, "removeApps: packageNames = " + arrayList + ",size = " + this.mApps.size() + ", this = " + this);
        }
        removeAppsWithPackageNameWithoutInvalidate(arrayList);
        reorderApps();
        updatePageCounts();
        invalidateOnDataChange();
    }

    public void updateApps(ArrayList<ApplicationInfo> arrayList) {
        if (L.DEBUG) {
            L.d(TAG, "updateApps: list = " + arrayList + ", this = " + this);
        }
        removeAppsWithoutInvalidate(arrayList);
        addAppsWithoutInvalidate(arrayList);
        updatePageCounts();
        reorderApps();
        invalidateOnDataChange();
    }

    public void reset() {
        this.mSaveInstanceStateItemIndex = -1;
        getTabHost();
        if (this.mCurrentPage != 0) {
            invalidatePageData(0);
        }
    }

    private AppsCustomizeFrame getTabHost() {
        return (AppsCustomizeFrame) this.mLauncher.findViewById(R.id.apps_customize_pane_only);
    }

    public void dumpState() {
        ApplicationInfo.dumpApplicationInfoList(TAG, "mApps", this.mApps);
    }

    private void dumpAppWidgetProviderInfoList(String str, String str2, ArrayList<Object> arrayList) {
        L.d(str, str2 + " size=" + arrayList.size());
        for (Object obj : arrayList) {
            if (obj instanceof AppWidgetProviderInfo) {
                AppWidgetProviderInfo appWidgetProviderInfo = (AppWidgetProviderInfo) obj;
                L.d(str, "   label=\"" + appWidgetProviderInfo.label + "\" previewImage=" + appWidgetProviderInfo.previewImage + " resizeMode=" + appWidgetProviderInfo.resizeMode + " configure=" + appWidgetProviderInfo.configure + " initialLayout=" + appWidgetProviderInfo.initialLayout + " minWidth=" + appWidgetProviderInfo.minWidth + " minHeight=" + appWidgetProviderInfo.minHeight);
            } else if (obj instanceof ResolveInfo) {
                ResolveInfo resolveInfo = (ResolveInfo) obj;
                L.d(str, "   label=\"" + ((Object) resolveInfo.loadLabel(this.mPackageManager)) + "\" icon=" + resolveInfo.icon);
            }
        }
    }

    public void surrender() {
        cancelAllTasks();
    }

    @Override // com.android.launcher2.PagedViewIcon.PressedCallback
    public void iconPressed(PagedViewIcon pagedViewIcon) {
        PagedViewIcon pagedViewIcon2 = this.mPressedIcon;
        if (pagedViewIcon2 != null) {
            pagedViewIcon2.resetDrawableState();
        }
        this.mPressedIcon = pagedViewIcon;
    }

    public void resetDrawableState() {
        PagedViewIcon pagedViewIcon = this.mPressedIcon;
        if (pagedViewIcon != null) {
            pagedViewIcon.resetDrawableState();
            this.mPressedIcon = null;
        }
    }

    @Override // com.android.launcher2.PagedView
    protected int getAssociatedLowerPageBound(int i) {
        int i2 = this.mCurrentPage;
        int i3 = this.mNumAppsPages;
        if (i2 < i3) {
            return 0;
        }
        return i3;
    }

    @Override // com.android.launcher2.PagedView
    protected int getAssociatedUpperPageBound(int i) {
        int i2 = this.mCurrentPage;
        int i3 = this.mNumAppsPages;
        return i2 < i3 ? i3 - 1 : getChildCount() - 1;
    }

    @Override // com.android.launcher2.PagedView
    public int getAppPageNum() {
        return this.mNumAppsPages;
    }

    @Override // com.android.launcher2.PagedView
    protected String getCurrentPageDescription() {
        int i = this.mNextPage != -1 ? this.mNextPage : this.mCurrentPage;
        int i2 = R.string.default_scroll_format;
        int i3 = this.mNumAppsPages;
        if (i < i3) {
            i2 = R.string.apps_customize_apps_scroll_format;
        } else {
            i -= i3;
            i3 = 0;
        }
        return String.format(getContext().getString(i2), Integer.valueOf(i + 1), Integer.valueOf(i3));
    }

    public void reorderApps() {
        ArrayList<ApplicationInfo> arrayList;
        if (L.DEBUG) {
            L.d(TAG, "reorderApps: mApps = " + this.mApps + ", this = " + this);
        }
        if (AllAppsList.sTopPackages == null || (arrayList = this.mApps) == null || arrayList.isEmpty() || AllAppsList.sTopPackages.isEmpty()) {
            return;
        }
        ArrayList<ApplicationInfo> arrayList2 = new ArrayList(42);
        for (AllAppsList.TopPackage topPackage : AllAppsList.sTopPackages) {
            for (ApplicationInfo applicationInfo : this.mApps) {
                if (applicationInfo.componentName.getPackageName().equals(topPackage.packageName) && applicationInfo.componentName.getClassName().equals(topPackage.className)) {
                    this.mApps.remove(applicationInfo);
                    arrayList2.add(applicationInfo);
                    break;
                }
            }
        }
        for (AllAppsList.TopPackage topPackage2 : AllAppsList.sTopPackages) {
            for (ApplicationInfo applicationInfo2 : arrayList2) {
                if (applicationInfo2.componentName.getPackageName().equals(topPackage2.packageName) && applicationInfo2.componentName.getClassName().equals(topPackage2.className)) {
                    this.mApps.add(Math.min(Math.max(topPackage2.order, 0), this.mApps.size()), applicationInfo2);
                    break;
                }
            }
        }
        deleteMaskApps();
    }

    private void deleteMaskApps() {
        for (int size = this.mApps.size() - 1; size >= 0; size--) {
            if (Utils.isMaskClassName(this.mApps.get(size).componentName)) {
                this.mApps.remove(size);
            }
        }
    }

    public void updateAppsUnreadChanged(ComponentName componentName, int i) {
        PagedViewCellLayout pagedViewCellLayout;
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "updateAppsUnreadChanged: component = " + componentName + ",unreadNum = " + i + ",mNumAppsPages = " + this.mNumAppsPages);
        }
        updateUnreadNumInAppInfo(componentName, i);
        for (int i2 = 0; i2 < this.mNumAppsPages && (pagedViewCellLayout = (PagedViewCellLayout) getPageAt(i2)) != null; i2++) {
            int pageChildCount = pagedViewCellLayout.getPageChildCount();
            for (int i3 = 0; i3 < pageChildCount; i3++) {
                PagedViewIcon pagedViewIcon = (PagedViewIcon) pagedViewCellLayout.getChildOnPageAt(i3);
                ApplicationInfo applicationInfo = (ApplicationInfo) pagedViewIcon.getTag();
                if (L.DEBUG_UNREAD) {
                    L.d(TAG, "updateAppsUnreadChanged: component = " + componentName + ", appInfo = " + applicationInfo.componentName + ", appIcon = " + pagedViewIcon);
                }
                if (applicationInfo != null && applicationInfo.componentName.equals(componentName)) {
                    applicationInfo.unreadNum = i;
                    pagedViewIcon.invalidate();
                }
            }
        }
    }

    public void updateAppsUnread() {
        PagedViewCellLayout pagedViewCellLayout;
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "updateAppsUnreadChanged: mNumAppsPages = " + this.mNumAppsPages);
        }
        updateUnreadNumInAppInfo(this.mApps);
        for (int i = 0; i < this.mNumAppsPages && (pagedViewCellLayout = (PagedViewCellLayout) getPageAt(i)) != null; i++) {
            int pageChildCount = pagedViewCellLayout.getPageChildCount();
            for (int i2 = 0; i2 < pageChildCount; i2++) {
                PagedViewIcon pagedViewIcon = (PagedViewIcon) pagedViewCellLayout.getChildOnPageAt(i2);
                ApplicationInfo applicationInfo = (ApplicationInfo) pagedViewIcon.getTag();
                applicationInfo.unreadNum = MTKUnreadLoader.getUnreadNumberOfComponent(applicationInfo.componentName);
                pagedViewIcon.invalidate();
                if (L.DEBUG_UNREAD) {
                    L.d(TAG, "updateAppsUnreadChanged: i = " + i + ", appInfo = " + applicationInfo.componentName + ", unreadNum = " + applicationInfo.unreadNum);
                }
            }
        }
    }

    private void updateUnreadNumInAppInfo(ComponentName componentName, int i) {
        int size = this.mApps.size();
        for (int i2 = 0; i2 < size; i2++) {
            ApplicationInfo applicationInfo = this.mApps.get(i2);
            if (applicationInfo.intent.getComponent().equals(componentName)) {
                applicationInfo.unreadNum = i;
            }
        }
    }

    public static void updateUnreadNumInAppInfo(ArrayList<ApplicationInfo> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ApplicationInfo applicationInfo = arrayList.get(i);
            applicationInfo.unreadNum = MTKUnreadLoader.getUnreadNumberOfComponent(applicationInfo.componentName);
        }
    }

    void invalidateAppPages(int i, boolean z) {
        if (L.DEBUG) {
            L.d(TAG, "invalidateAppPages: currentPage = " + i + ", immediateAndOnly = " + z);
        }
        invalidatePageData(i, z);
    }

    public void requestCurrentPageItemFocus() {
        final PagedViewCellLayoutChildren childrenLayout;
        PagedViewCellLayout pagedViewCellLayout = (PagedViewCellLayout) getPageAt(getCurrentPage());
        if (pagedViewCellLayout == null || pagedViewCellLayout.getChildCount() <= 0 || (childrenLayout = pagedViewCellLayout.getChildrenLayout()) == null || childrenLayout.getChildCount() <= 0) {
            return;
        }
        L.d(TAG, "requestCurrentPageItemFocus:" + getCurrentPage() + " childCount:" + childrenLayout.getChildCount());
        childrenLayout.getChildAt(0).postDelayed(new Runnable() { // from class: com.android.launcher2.AppsCustomizePagedView.5
            @Override // java.lang.Runnable
            public void run() {
                View childAt = childrenLayout.getChildAt(0);
                L.d(AppsCustomizePagedView.TAG, "requestCurrentPageItemFocus child 0 getVisibility:" + childAt.getVisibility());
                L.d(AppsCustomizePagedView.TAG, "requestCurrentPageItemFocus child 0 isEnabled:" + childAt.isEnabled());
                L.d(AppsCustomizePagedView.TAG, "requestCurrentPageItemFocus child 0 isFocusable:" + childAt.isFocusable());
                if (childrenLayout.getChildAt(0).requestFocus()) {
                    return;
                }
                L.d(AppsCustomizePagedView.TAG, "requestCurrentPageItemFocus failed.");
            }
        }, 100L);
    }
}
