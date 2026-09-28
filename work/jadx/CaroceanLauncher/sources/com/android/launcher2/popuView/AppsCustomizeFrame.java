package com.android.launcher2.popuView;

import android.content.Context;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.android.launcher2.AppsCustomizePagedView;
import com.android.launcher2.Launcher;
import com.android.launcher2.LauncherApplication;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class AppsCustomizeFrame extends FrameLayout implements Launcher.LauncherTransitionable {
    private static final String APPS_TAB_TAG = "APPS";
    public static final boolean NEED_SHOW_WALLPAPER = !"no".equals(SystemProperties.get("ro.custom.showwallpaper", "yes"));
    private static final String TAG = "AppsCustomizeTabHost";
    private static final String WIDGETS_TAB_TAG = "WIDGETS";
    private FrameLayout mAnimationBuffer;
    private AppsCustomizePagedView mAppsCustomizePane;
    private LinearLayout mContent;
    private boolean mInTransition;
    private final LayoutInflater mLayoutInflater;
    private Runnable mRelayoutAndMakeVisible;
    private boolean mResetAfterTransition;
    private boolean mTransitioningToWorkspace;

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionStep(Launcher launcher, float f) {
    }

    public AppsCustomizeFrame(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLayoutInflater = LayoutInflater.from(context);
        this.mRelayoutAndMakeVisible = new Runnable() { // from class: com.android.launcher2.popuView.AppsCustomizeFrame.1
            @Override // java.lang.Runnable
            public void run() {
            }
        };
    }

    void setContentTypeImmediate(AppsCustomizePagedView.ContentType contentType) {
        onTabChangedStart();
        onTabChangedEnd(contentType);
    }

    void selectAppsTab() {
        if (L.DEBUG) {
            L.d(TAG, "selectAppsTab.");
        }
        setContentTypeImmediate(AppsCustomizePagedView.ContentType.Applications);
    }

    void selectWidgetsTab() {
        if (L.DEBUG) {
            L.d(TAG, "selectWidgetsTab.");
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this.mAppsCustomizePane = (AppsCustomizePagedView) findViewById(R.id.apps_customize_pane_content);
        this.mAnimationBuffer = (FrameLayout) findViewById(R.id.animation_buffer);
        this.mContent = (LinearLayout) findViewById(R.id.apps_customize_content);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mInTransition && this.mTransitioningToWorkspace) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (L.DEBUG) {
            L.d(TAG, "onTouchEvent: action = " + motionEvent.getAction() + ", y = " + motionEvent.getY());
        }
        if (this.mInTransition && this.mTransitioningToWorkspace) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent.getY() < this.mAppsCustomizePane.getBottom()) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    private void onTabChangedStart() {
        this.mAppsCustomizePane.hideScrollingIndicator(false);
    }

    private void reloadCurrentPage() {
        if (!LauncherApplication.isScreenLarge()) {
            this.mAppsCustomizePane.flashScrollingIndicator(true);
        }
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizePane;
        appsCustomizePagedView.loadAssociatedPages(appsCustomizePagedView.getCurrentPage());
        this.mAppsCustomizePane.requestFocus();
    }

    private void onTabChangedEnd(AppsCustomizePagedView.ContentType contentType) {
        this.mAppsCustomizePane.setContentType(contentType);
    }

    public AppsCustomizePagedView.ContentType getContentTypeForTabTag(String str) {
        if (str.equals(APPS_TAB_TAG)) {
            return AppsCustomizePagedView.ContentType.Applications;
        }
        str.equals(WIDGETS_TAB_TAG);
        return AppsCustomizePagedView.ContentType.Applications;
    }

    public String getTabTagForContentType(AppsCustomizePagedView.ContentType contentType) {
        if (contentType == AppsCustomizePagedView.ContentType.Applications) {
        }
        return APPS_TAB_TAG;
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        if (getVisibility() != 0) {
            return 393216;
        }
        return super.getDescendantFocusability();
    }

    public void reset() {
        if (this.mInTransition) {
            this.mResetAfterTransition = true;
        } else {
            this.mAppsCustomizePane.reset();
        }
    }

    private void enableAndBuildHardwareLayer() {
        if (isHardwareAccelerated()) {
            setLayerType(2, null);
            buildLayer();
        }
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public View getContent() {
        return this.mContent;
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionPrepare(Launcher launcher, boolean z, boolean z2) {
        this.mAppsCustomizePane.onLauncherTransitionPrepare(launcher, z, z2);
        this.mInTransition = true;
        this.mTransitioningToWorkspace = z2;
        if (z2) {
            setVisibilityOfSiblingsWithLowerZOrder(0);
            this.mAppsCustomizePane.cancelScrollingIndicatorAnimations();
        } else {
            this.mContent.setVisibility(0);
            AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizePane;
            appsCustomizePagedView.loadAssociatedPages(appsCustomizePagedView.getCurrentPage(), true);
            if (!LauncherApplication.isScreenLarge()) {
                this.mAppsCustomizePane.showScrollingIndicator(true);
            }
        }
        if (this.mResetAfterTransition) {
            this.mAppsCustomizePane.reset();
            this.mResetAfterTransition = false;
        }
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionStart(Launcher launcher, boolean z, boolean z2) {
        if (L.DEBUG) {
            L.d(TAG, "onLauncherTransitionStart: l = " + launcher + ", animated = " + z + ", toWorkspace = " + z2);
        }
        if (z) {
            enableAndBuildHardwareLayer();
        }
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionEnd(Launcher launcher, boolean z, boolean z2) {
        if (L.DEBUG) {
            L.d(TAG, "onLauncherTransitionEnd: l = " + launcher + ", animated = " + z + ", toWorkspace = " + z2 + ", current page = " + this.mAppsCustomizePane.getCurrentPage());
        }
        this.mAppsCustomizePane.onLauncherTransitionEnd(launcher, z, z2);
        this.mInTransition = false;
        if (z) {
            setLayerType(0, null);
        }
        if (z2) {
            return;
        }
        launcher.dismissWorkspaceCling(null);
        this.mAppsCustomizePane.showAllAppsCling();
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizePane;
        appsCustomizePagedView.loadAssociatedPages(appsCustomizePagedView.getCurrentPage());
        if (!LauncherApplication.isScreenLarge()) {
            this.mAppsCustomizePane.hideScrollingIndicator(false);
        }
        setVisibilityOfSiblingsWithLowerZOrder(4);
        if (L.DEBUG) {
            L.d(TAG, "[All apps launch time][End] onLauncherTransitionEnd.");
        }
        this.mAppsCustomizePane.requestCurrentPageItemFocus();
    }

    private void setVisibilityOfSiblingsWithLowerZOrder(int i) {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        if (isChildrenDrawingOrderEnabled()) {
            throw new RuntimeException("Failed; can't get z-order of views");
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt == this) {
                return;
            }
            childAt.getVisibility();
        }
    }

    public void onWindowVisible() {
        if (getVisibility() == 0) {
            this.mContent.setVisibility(0);
            AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizePane;
            appsCustomizePagedView.loadAssociatedPages(appsCustomizePagedView.getCurrentPage(), true);
            AppsCustomizePagedView appsCustomizePagedView2 = this.mAppsCustomizePane;
            appsCustomizePagedView2.loadAssociatedPages(appsCustomizePagedView2.getCurrentPage());
        }
    }

    public void onTrimMemory() {
        if (L.DEBUG) {
            L.d(TAG, "onTrimMemory.");
        }
        this.mContent.setVisibility(8);
        this.mAppsCustomizePane.clearAllPages();
    }

    public boolean isTransitioning() {
        return this.mInTransition;
    }

    public void setContentVisibility(int i) {
        this.mContent.setVisibility(i);
    }

    public int getContentVisibility() {
        return this.mContent.getVisibility();
    }
}
