package com.android.launcher2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AppsCustomizeTabHost extends TabHost implements Launcher.LauncherTransitionable, TabHost.OnTabChangeListener {
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
    private ViewGroup mTabs;
    private ViewGroup mTabsContainer;
    private boolean mTransitioningToWorkspace;

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionStep(Launcher launcher, float f) {
    }

    public AppsCustomizeTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (NEED_SHOW_WALLPAPER) {
            setBackgroundColor(context.getResources().getColor(R.color.allapps_bg_color));
        }
        this.mLayoutInflater = LayoutInflater.from(context);
        this.mRelayoutAndMakeVisible = new Runnable() { // from class: com.android.launcher2.AppsCustomizeTabHost.1
            @Override // java.lang.Runnable
            public void run() {
                AppsCustomizeTabHost.this.mTabs.requestLayout();
                AppsCustomizeTabHost.this.mTabsContainer.setAlpha(1.0f);
            }
        };
    }

    void setContentTypeImmediate(AppsCustomizePagedView.ContentType contentType) {
        setOnTabChangedListener(null);
        onTabChangedStart();
        onTabChangedEnd(contentType);
        setCurrentTabByTag(getTabTagForContentType(contentType));
        setOnTabChangedListener(this);
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
        setup();
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.tabs_container);
        TabWidget tabWidget = getTabWidget();
        final AppsCustomizePagedView appsCustomizePagedView = (AppsCustomizePagedView) findViewById(R.id.apps_customize_pane_content);
        this.mTabs = tabWidget;
        this.mTabsContainer = viewGroup;
        this.mAppsCustomizePane = appsCustomizePagedView;
        this.mAnimationBuffer = (FrameLayout) findViewById(R.id.animation_buffer);
        this.mContent = (LinearLayout) findViewById(R.id.apps_customize_content);
        if (tabWidget == null || this.mAppsCustomizePane == null) {
            throw new Resources.NotFoundException();
        }
        TabHost.TabContentFactory tabContentFactory = new TabHost.TabContentFactory() { // from class: com.android.launcher2.AppsCustomizeTabHost.2
            @Override // android.widget.TabHost.TabContentFactory
            public View createTabContent(String str) {
                return appsCustomizePagedView;
            }
        };
        String string = getContext().getString(R.string.all_apps_button_label);
        TextView textView = (TextView) this.mLayoutInflater.inflate(R.layout.tab_widget_indicator, (ViewGroup) tabWidget, false);
        textView.setText(string);
        textView.setContentDescription(string);
        addTab(newTabSpec(APPS_TAB_TAG).setIndicator(textView).setContent(tabContentFactory));
        String string2 = getContext().getString(R.string.widgets_tab_label);
        TextView textView2 = (TextView) this.mLayoutInflater.inflate(R.layout.tab_widget_indicator, (ViewGroup) tabWidget, false);
        textView2.setText(string2);
        textView2.setContentDescription(string2);
        addTab(newTabSpec(WIDGETS_TAB_TAG).setIndicator(textView2).setContent(tabContentFactory));
        setOnTabChangedListener(this);
        AppsCustomizeTabKeyEventListener appsCustomizeTabKeyEventListener = new AppsCustomizeTabKeyEventListener();
        tabWidget.getChildTabViewAt(tabWidget.getTabCount() - 1).setOnKeyListener(appsCustomizeTabKeyEventListener);
        findViewById(R.id.market_button).setOnKeyListener(appsCustomizeTabKeyEventListener);
        this.mTabsContainer.setAlpha(0.0f);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z = this.mTabs.getLayoutParams().width <= 0;
        super.onMeasure(i, i2);
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "onMeasure end: remeasureTabWidth = " + z + ", widthMeasureSpec = " + i + ", heightMeasureSpec = " + i2 + ", this = " + this);
        }
        if (z) {
            int pageContentWidth = this.mAppsCustomizePane.getPageContentWidth();
            if (pageContentWidth > 0 && this.mTabs.getLayoutParams().width != pageContentWidth) {
                this.mTabs.getLayoutParams().width = pageContentWidth;
                this.mRelayoutAndMakeVisible.run();
            }
            super.onMeasure(i, i2);
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void onTabChangedStart() {
        this.mAppsCustomizePane.hideScrollingIndicator(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadCurrentPage() {
        if (!LauncherApplication.isScreenLarge()) {
            this.mAppsCustomizePane.flashScrollingIndicator(true);
        }
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizePane;
        appsCustomizePagedView.loadAssociatedPages(appsCustomizePagedView.getCurrentPage());
        this.mAppsCustomizePane.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTabChangedEnd(AppsCustomizePagedView.ContentType contentType) {
        this.mAppsCustomizePane.setContentType(contentType);
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        final AppsCustomizePagedView.ContentType contentTypeForTabTag = getContentTypeForTabTag(str);
        if (L.DEBUG) {
            L.d(TAG, "onTabChanged: tabId = " + str + ", type = " + contentTypeForTabTag);
        }
        final int integer = getResources().getInteger(R.integer.config_tabTransitionDuration);
        post(new Runnable() { // from class: com.android.launcher2.AppsCustomizeTabHost.3
            @Override // java.lang.Runnable
            public void run() {
                if (AppsCustomizeTabHost.this.mAppsCustomizePane.getMeasuredWidth() <= 0 || AppsCustomizeTabHost.this.mAppsCustomizePane.getMeasuredHeight() <= 0) {
                    AppsCustomizeTabHost.this.reloadCurrentPage();
                    return;
                }
                int[] iArr = new int[2];
                AppsCustomizeTabHost.this.mAppsCustomizePane.getVisiblePages(iArr);
                if (iArr[0] == -1 && iArr[1] == -1) {
                    AppsCustomizeTabHost.this.reloadCurrentPage();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (int i = iArr[0]; i <= iArr[1]; i++) {
                    arrayList.add(AppsCustomizeTabHost.this.mAppsCustomizePane.getPageAt(i));
                }
                AppsCustomizeTabHost.this.mAnimationBuffer.scrollTo(AppsCustomizeTabHost.this.mAppsCustomizePane.getScrollX(), 0);
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    View view = (View) arrayList.get(size);
                    if (view instanceof PagedViewCellLayout) {
                        ((PagedViewCellLayout) view).resetChildrenOnKeyListeners();
                    } else if (view instanceof PagedViewGridLayout) {
                        ((PagedViewGridLayout) view).resetChildrenOnKeyListeners();
                    }
                    PagedViewWidget.setDeletePreviewsWhenDetachedFromWindow(false);
                    if (L.DEBUG) {
                        L.d(AppsCustomizeTabHost.TAG, "onTabChanged before remove view: i = " + size + ", child = " + view + ", mAppsCustomizePane = " + AppsCustomizeTabHost.this.mAppsCustomizePane);
                    }
                    AppsCustomizeTabHost.this.mAppsCustomizePane.removeView(view);
                    PagedViewWidget.setDeletePreviewsWhenDetachedFromWindow(true);
                    AppsCustomizeTabHost.this.mAnimationBuffer.setAlpha(1.0f);
                    AppsCustomizeTabHost.this.mAnimationBuffer.setVisibility(0);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(view.getMeasuredWidth(), view.getMeasuredHeight());
                    layoutParams.setMargins(view.getLeft(), view.getTop(), 0, 0);
                    AppsCustomizeTabHost.this.mAnimationBuffer.addView(view, layoutParams);
                }
                AppsCustomizeTabHost.this.onTabChangedStart();
                AppsCustomizeTabHost.this.onTabChangedEnd(contentTypeForTabTag);
                ObjectAnimator objectAnimatorOfFloat = LauncherAnimUtils.ofFloat(AppsCustomizeTabHost.this.mAnimationBuffer, "alpha", 0.0f);
                objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.AppsCustomizeTabHost.3.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AppsCustomizeTabHost.this.mAnimationBuffer.setVisibility(8);
                        AppsCustomizeTabHost.this.mAnimationBuffer.removeAllViews();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        AppsCustomizeTabHost.this.mAnimationBuffer.setVisibility(8);
                        AppsCustomizeTabHost.this.mAnimationBuffer.removeAllViews();
                    }
                });
                ObjectAnimator objectAnimatorOfFloat2 = LauncherAnimUtils.ofFloat(AppsCustomizeTabHost.this.mAppsCustomizePane, "alpha", 1.0f);
                objectAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.AppsCustomizeTabHost.3.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AppsCustomizeTabHost.this.reloadCurrentPage();
                    }
                });
                final AnimatorSet animatorSetCreateAnimatorSet = LauncherAnimUtils.createAnimatorSet();
                animatorSetCreateAnimatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
                animatorSetCreateAnimatorSet.setDuration(integer);
                AppsCustomizeTabHost.this.post(new Runnable() { // from class: com.android.launcher2.AppsCustomizeTabHost.3.3
                    @Override // java.lang.Runnable
                    public void run() {
                        animatorSetCreateAnimatorSet.start();
                    }
                });
            }
        });
    }

    public void setCurrentTabFromContent(AppsCustomizePagedView.ContentType contentType) {
        setOnTabChangedListener(null);
        setCurrentTabByTag(getTabTagForContentType(contentType));
        setOnTabChangedListener(this);
    }

    public AppsCustomizePagedView.ContentType getContentTypeForTabTag(String str) {
        if (str.equals(APPS_TAB_TAG)) {
            return AppsCustomizePagedView.ContentType.Applications;
        }
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

    void reset() {
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
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "onLauncherTransitionPrepare: toWorkspace = " + z2 + ", animated = " + z + ", mResetAfterTransition = " + this.mResetAfterTransition + ", mContent visibility = " + this.mContent.getVisibility() + ", current page = " + this.mAppsCustomizePane.getCurrentPage());
        }
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
            L.d(TAG, "[All apps launch time][End] onLauncherTransitionEnd");
        }
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
            if (childAt.getVisibility() != 8) {
                childAt.setVisibility(i);
            }
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

    boolean isTransitioning() {
        return this.mInTransition;
    }

    public void setContentVisibility(int i) {
        this.mContent.setVisibility(i);
    }

    public int getContentVisibility() {
        return this.mContent.getVisibility();
    }
}
