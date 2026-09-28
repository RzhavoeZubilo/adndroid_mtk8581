.class public Lcom/android/launcher2/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherAppWidgetHostView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

.field private mPreviousOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/android/launcher2/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    const-string v0, "layout_inflater"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 0

    .line 112
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 114
    iget-object p0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public getDescendantFocusability()I
    .locals 0

    const/high16 p0, 0x60000

    return p0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0a0012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 82
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_MOTION:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterceptTouchEvent: ev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAppWidgetHostView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/CheckLongPressHelper;->cancelLongPress()V

    return v1

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 96
    :cond_3
    iget-object p0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/CheckLongPressHelper;->postCheckForLongPress()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 69
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_MOTION:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent: ev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAppWidgetHostView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/CheckLongPressHelper;->cancelLongPress()V

    .line 78
    :cond_2
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public orientationChangedSincedInflation()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 62
    iget p0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPreviousOrientation:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPreviousOrientation:I

    .line 57
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method
