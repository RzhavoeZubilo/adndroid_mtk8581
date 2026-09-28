.class public Lcom/android/launcher2/popuView/AppsCustomizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppsCustomizeFrame.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$LauncherTransitionable;


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

.field private mTransitioningToWorkspace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.custom.showwallpaper"

    const-string v1, "yes"

    .line 65
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->NEED_SHOW_WALLPAPER:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 73
    new-instance p1, Lcom/android/launcher2/popuView/AppsCustomizeFrame$1;

    invoke-direct {p1, p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame$1;-><init>(Lcom/android/launcher2/popuView/AppsCustomizeFrame;)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mRelayoutAndMakeVisible:Ljava/lang/Runnable;

    return-void
.end method

.method private enableAndBuildHardwareLayer()V
    .locals 2

    .line 392
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setLayerType(ILandroid/graphics/Paint;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->buildLayer()V

    :cond_0
    return-void
.end method

.method private onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    return-void
.end method

.method private onTabChangedStart()V
    .locals 1

    .line 216
    iget-object p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    return-void
.end method

.method private reloadCurrentPage()V
    .locals 2

    .line 220
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->flashScrollingIndicator(Z)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 224
    iget-object p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestFocus()Z

    return-void
.end method

.method private setVisibilityOfSiblingsWithLowerZOrder(I)V
    .locals 4

    .line 506
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 510
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 512
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_1

    goto :goto_1

    .line 519
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 528
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed; can\'t get z-order of views"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mContent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    .locals 0

    const-string p0, "APPS"

    .line 347
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 348
    sget-object p0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    return-object p0

    :cond_0
    const-string p0, "WIDGETS"

    .line 349
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    sget-object p0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    return-object p0
.end method

.method public getContentVisibility()I
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x60000

    return p0

    .line 375
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getDescendantFocusability()I

    move-result p0

    return p0
.end method

.method public getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;
    .locals 1

    .line 359
    sget-object p0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    const-string v0, "APPS"

    if-ne p1, p0, :cond_0

    :cond_0
    return-object v0
.end method

.method public isTransitioning()Z
    .locals 0

    .line 555
    iget-boolean p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mInTransition:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f08000d

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizePagedView;

    .line 125
    iput-object v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const v0, 0x7f080009

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAnimationBuffer:Landroid/widget/FrameLayout;

    const v0, 0x7f08000c

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mContent:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mInTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mTransitioningToWorkspace:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 193
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 3

    .line 467
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "AppsCustomizeTabHost"

    if-eqz v0, :cond_0

    .line 468
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

    iget-object v2, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 469
    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mInTransition:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 475
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    if-nez p3, :cond_4

    .line 480
    invoke-virtual {p1, v2}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 482
    iget-object p1, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->showAllAppsCling()V

    .line 485
    iget-object p1, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 487
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result p1

    if-nez p1, :cond_2

    .line 488
    iget-object p1, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    :cond_2
    const/4 p1, 0x4

    .line 495
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setVisibilityOfSiblingsWithLowerZOrder(I)V

    .line 497
    sget-boolean p1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "[All apps launch time][End] onLauncherTransitionEnd."

    .line 498
    invoke-static {v1, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_3
    iget-object p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestCurrentPageItemFocus()V

    :cond_4
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V

    const/4 p1, 0x1

    .line 418
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mInTransition:Z

    .line 419
    iput-boolean p3, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mTransitioningToWorkspace:Z

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 424
    invoke-direct {p0, p2}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setVisibilityOfSiblingsWithLowerZOrder(I)V

    .line 427
    iget-object p1, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelScrollingIndicatorAnimations()V

    goto :goto_0

    .line 430
    :cond_0
    iget-object p3, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object p3, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p3}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p3, v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 436
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result p3

    if-nez p3, :cond_1

    .line 437
    iget-object p3, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p3, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->showScrollingIndicator(Z)V

    .line 442
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mResetAfterTransition:Z

    if-eqz p1, :cond_2

    .line 443
    iget-object p1, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->reset()V

    .line 444
    iput-boolean p2, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mResetAfterTransition:Z

    :cond_2
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 2

    .line 450
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 451
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

    .line 456
    invoke-direct {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->enableAndBuildHardwareLayer()V

    :cond_1
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 183
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 198
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 199
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

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mInTransition:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mTransitioningToWorkspace:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 209
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 212
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTrimMemory()V
    .locals 2

    .line 543
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppsCustomizeTabHost"

    const-string v1, "onTrimMemory."

    .line 544
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    iget-object p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->clearAllPages()V

    return-void
.end method

.method public onWindowVisible()V
    .locals 3

    .line 533
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 538
    iget-object p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mInTransition:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 381
    iput-boolean v0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mResetAfterTransition:Z

    goto :goto_0

    .line 384
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reset()V

    :goto_0
    return-void
.end method

.method selectAppsTab()V
    .locals 2

    .line 96
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppsCustomizeTabHost"

    const-string v1, "selectAppsTab."

    .line 97
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    return-void
.end method

.method selectWidgetsTab()V
    .locals 1

    .line 104
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "AppsCustomizeTabHost"

    const-string v0, "selectWidgetsTab."

    .line 105
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->onTabChangedStart()V

    .line 90
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    return-void
.end method

.method public setContentVisibility(I)V
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
