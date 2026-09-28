.class public Lcom/android/launcher2/InfoDropTarget;
.super Lcom/android/launcher2/ButtonDropTarget;
.source "InfoDropTarget.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mOriginalTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/InfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private isFromAllApps(Lcom/android/launcher2/DragSource;)Z
    .locals 0

    .line 68
    instance-of p0, p1, Lcom/android/launcher2/AppsCustomizePagedView;

    return p0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 2

    .line 73
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptDrop: d = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", d.dragInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DropTarget"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 81
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 82
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    iget-object v0, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 84
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    iget-object v0, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_2
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher2/PendingAddItemInfo;

    if-eqz v1, :cond_3

    .line 86
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/PendingAddItemInfo;

    iget-object v0, v0, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 89
    iget-object p0, p0, Lcom/android/launcher2/InfoDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startApplicationDetailsActivity(Landroid/content/ComponentName;)V

    :cond_4
    const/4 p0, 0x0

    .line 93
    iput-boolean p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    return p0
.end method

.method public onDragEnd()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnd()V

    .line 120
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DropTarget"

    const-string v1, "onDragEnd."

    .line 121
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/launcher2/InfoDropTarget;->mActive:Z

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 128
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnter: d = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DropTarget"

    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/android/launcher2/InfoDropTarget;->mTransitionDuration:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 133
    iget p1, p0, Lcom/android/launcher2/InfoDropTarget;->mHoverColor:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/InfoDropTarget;->setTextColor(I)V

    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 138
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragExit: d = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", d.dragComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DropTarget"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    iget-boolean p1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 144
    iget-object p1, p0, Lcom/android/launcher2/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 2

    .line 99
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDratStart: source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", dragAction = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DropTarget"

    invoke-static {p3, p2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/InfoDropTarget;->isFromAllApps(Lcom/android/launcher2/DragSource;)Z

    move-result p1

    .line 111
    iput-boolean p1, p0, Lcom/android/launcher2/InfoDropTarget;->mActive:Z

    .line 112
    iget-object p2, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 113
    iget-object p2, p0, Lcom/android/launcher2/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p2}, Lcom/android/launcher2/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onFinishInflate()V

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    .line 54
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->getThemeColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/InfoDropTarget;->mHoverColor:I

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 61
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/launcher2/InfoDropTarget;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
