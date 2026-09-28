.class public Lcom/android/launcher2/AppsCustomizeTabHost;
.super Landroid/widget/TabHost;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$LauncherTransitionable;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final APPS_TAB_TAG:Ljava/lang/String; = "APPS"

.field public static final NEED_SHOW_WALLPAPER:Z

.field private static final TAG:Ljava/lang/String; = "AppsCustomizeTabHost"

.field private static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"


# instance fields
.field private mAnimationBuffer:Landroid/widget/FrameLayout;

.field private mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mInTransition:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRelayoutAndMakeVisible:Ljava/lang/Runnable;

.field private mResetAfterTransition:Z

.field private mTabs:Landroid/view/ViewGroup;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTransitioningToWorkspace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.custom.showwallpaper"

    const-string v1, "yes"

    .line 60
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/AppsCustomizeTabHost;->NEED_SHOW_WALLPAPER:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    sget-boolean p2, Lcom/android/launcher2/AppsCustomizeTabHost;->NEED_SHOW_WALLPAPER:Z

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v0, 0x7f050000

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setBackgroundColor(I)V

    .line 67
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    new-instance p1, Lcom/android/launcher2/AppsCustomizeTabHost$1;

    invoke-direct {p1, p0}, Lcom/android/launcher2/AppsCustomizeTabHost$1;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mRelayoutAndMakeVisible:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher2/AppsCustomizeTabHost;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->reloadCurrentPage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher2/AppsCustomizeTabHost;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedStart()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    return-void
.end method

.method private enableAndBuildHardwareLayer()V
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->buildLayer()V

    :cond_0
    return-void
.end method

.method private onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    return-void
.end method

.method private onTabChangedStart()V
    .locals 1

    .line 211
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    return-void
.end method

.method private reloadCurrentPage()V
    .locals 2

    .line 215
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->flashScrollingIndicator(Z)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 219
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestFocus()Z

    return-void
.end method

.method private setVisibilityOfSiblingsWithLowerZOrder(I)V
    .locals 6

    .line 496
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 499
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 500
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 502
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p0, :cond_1

    goto :goto_2

    .line 506
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 509
    :cond_2
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    .line 513
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed; can\'t get z-order of views"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    .locals 0

    const-string p0, "APPS"

    .line 342
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 343
    sget-object p0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    return-object p0

    .line 347
    :cond_0
    sget-object p0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    return-object p0
.end method

.method public getContentVisibility()I
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x60000

    return p0

    .line 370
    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result p0

    return p0
.end method

.method public getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;
    .locals 1

    .line 354
    sget-object p0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    const-string v0, "APPS"

    if-ne p1, p0, :cond_0

    :cond_0
    return-object v0
.end method

.method isTransitioning()Z
    .locals 0

    .line 540
    iget-boolean p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setup()V

    const v0, 0x7f0800b0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const v2, 0x7f08000d

    .line 117
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizePagedView;

    .line 118
    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    .line 119
    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    .line 120
    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const v0, 0x7f080009

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    const v0, 0x7f08000c

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/launcher2/AppsCustomizeTabHost$2;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost$2;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0a005f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 138
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v2, "APPS"

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0142

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v2, "WIDGETS"

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 146
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 149
    new-instance v0, Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;-><init>()V

    .line 150
    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v1, 0x7f080093

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void

    .line 123
    :cond_0
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 188
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 3

    .line 460
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "AppsCustomizeTabHost"

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLauncherTransitionEnd: l = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", animated = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", toWorkspace = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", current page = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 462
    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 468
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    if-nez p3, :cond_3

    .line 473
    invoke-virtual {p1, v2}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 475
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->showAllAppsCling()V

    .line 478
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 480
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result p1

    if-nez p1, :cond_2

    .line 481
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    :cond_2
    const/4 p1, 0x4

    .line 487
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibilityOfSiblingsWithLowerZOrder(I)V

    .line 489
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "[All apps launch time][End] onLauncherTransitionEnd"

    .line 490
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 2

    .line 405
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLauncherTransitionPrepare: toWorkspace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", animated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResetAfterTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContent visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    .line 408
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 409
    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizeTabHost"

    .line 406
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V

    const/4 p1, 0x1

    .line 413
    iput-boolean p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    .line 414
    iput-boolean p3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 418
    invoke-direct {p0, p2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibilityOfSiblingsWithLowerZOrder(I)V

    .line 421
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelScrollingIndicatorAnimations()V

    goto :goto_0

    .line 424
    :cond_1
    iget-object p3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    iget-object p3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p3}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p3, v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 430
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result p3

    if-nez p3, :cond_2

    .line 431
    iget-object p3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p3, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->showScrollingIndicator(Z)V

    .line 435
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    if-eqz p1, :cond_3

    .line 436
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->reset()V

    .line 437
    iput-boolean p2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    :cond_3
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 2

    .line 443
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLauncherTransitionStart: l = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", animated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", toWorkspace = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AppsCustomizeTabHost"

    invoke-static {p3, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->enableAndBuildHardwareLayer()V

    :cond_1
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 163
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_1

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure end: remeasureTabWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", widthMeasureSpec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", heightMeasureSpec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppsCustomizeTabHost"

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 172
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v0, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mRelayoutAndMakeVisible:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 178
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    move-result-object v0

    .line 229
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabChanged: tabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", type = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppsCustomizeTabHost"

    invoke-static {v1, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f09001e

    .line 236
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 240
    new-instance v1, Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost$3;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;I)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 193
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizeTabHost"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    if-eqz v0, :cond_1

    .line 199
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 207
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTrimMemory()V
    .locals 2

    .line 528
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppsCustomizeTabHost"

    const-string v1, "onTrimMemory."

    .line 529
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->clearAllPages()V

    return-void
.end method

.method public onWindowVisible()V
    .locals 3

    .line 518
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 523
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    goto :goto_0

    .line 379
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reset()V

    :goto_0
    return-void
.end method

.method selectAppsTab()V
    .locals 2

    .line 91
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppsCustomizeTabHost"

    const-string v1, "selectAppsTab."

    .line 92
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    return-void
.end method

.method selectWidgetsTab()V
    .locals 1

    .line 99
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "AppsCustomizeTabHost"

    const-string v0, "selectWidgetsTab."

    .line 100
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 84
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedStart()V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method public setContentVisibility(I)V
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 1

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method
