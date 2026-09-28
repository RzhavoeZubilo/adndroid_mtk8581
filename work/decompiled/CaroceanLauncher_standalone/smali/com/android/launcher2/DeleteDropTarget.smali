.class public Lcom/android/launcher2/DeleteDropTarget;
.super Lcom/android/launcher2/ButtonDropTarget;
.source "DeleteDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static DELETE_ANIMATION_DURATION:I = 0x11d

.field private static FLING_DELETE_ANIMATION_DURATION:I = 0x15e

.field private static FLING_TO_DELETE_FRICTION:F = 0.035f

.field private static MODE_FLING_DELETE_ALONG_VECTOR:I = 0x1

.field private static MODE_FLING_DELETE_TO_TRASH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeleteDropTarget"


# instance fields
.field private mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private final mFlingDeleteMode:I

.field private mOriginalTextColor:Landroid/content/res/ColorStateList;

.field private mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget p1, Lcom/android/launcher2/DeleteDropTarget;->MODE_FLING_DELETE_ALONG_VECTOR:I

    iput p1, p0, Lcom/android/launcher2/DeleteDropTarget;->mFlingDeleteMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->completeDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    return-void
.end method

.method private animateToTrashAndCompleteDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 220
    iget-object v2, v0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v3

    .line 221
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 222
    iget-object v2, v1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3, v2, v5}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 223
    iget-object v2, v1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v2

    iget-object v4, v1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v4

    iget-object v6, v0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 224
    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, v0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v7

    .line 223
    invoke-virtual {v0, v2, v4, v6, v7}, Lcom/android/launcher2/DeleteDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v6

    .line 225
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v7, v2, v4

    .line 227
    iget-object v2, v0, Lcom/android/launcher2/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v2}, Lcom/android/launcher2/SearchDropTargetBar;->deferOnDragEnd()V

    .line 228
    new-instance v15, Lcom/android/launcher2/DeleteDropTarget$1;

    invoke-direct {v15, v0, v1}, Lcom/android/launcher2/DeleteDropTarget$1;-><init>(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 236
    iget-object v4, v1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    sget v12, Lcom/android/launcher2/DeleteDropTarget;->DELETE_ANIMATION_DURATION:I

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {v13, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3dcccccd    # 0.1f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method private completeDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 3

    .line 243
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 244
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeDrop: item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", d = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeleteDropTarget"

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/DeleteDropTarget;->isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    iget-object p0, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startApplicationUninstallActivity(Lcom/android/launcher2/ApplicationInfo;)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isWorkspaceOrFolderApplication(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-object p0, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {p0, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isWorkspaceFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 256
    iget-object p1, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Launcher;->removeFolder(Lcom/android/launcher2/FolderInfo;)V

    .line 257
    iget-object p0, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {p0, v0}, Lcom/android/launcher2/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/FolderInfo;)V

    goto :goto_0

    .line 258
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isWorkspaceOrFolderWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 260
    iget-object p1, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-virtual {p1, v1}, Lcom/android/launcher2/Launcher;->removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 261
    iget-object p1, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {p1, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 264
    iget-object p1, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 268
    new-instance v0, Lcom/android/launcher2/DeleteDropTarget$2;

    const-string v2, "deleteAppWidgetId"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/android/launcher2/DeleteDropTarget$2;-><init>(Lcom/android/launcher2/DeleteDropTarget;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 272
    invoke-virtual {v0}, Lcom/android/launcher2/DeleteDropTarget$2;->start()V

    :cond_4
    :goto_0
    return-void
.end method

.method private createFlingAlongVectorAnimatorListener(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DropTarget$DragObject;Landroid/graphics/PointF;JILandroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 7

    .line 393
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 394
    iget-object p0, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {p1, p0, v3}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 396
    new-instance p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;

    sget v6, Lcom/android/launcher2/DeleteDropTarget;->FLING_TO_DELETE_FRICTION:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;-><init>(Lcom/android/launcher2/DragLayer;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    return-object p0
.end method

.method private createFlingToTrashAnimatorListener(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 13

    move-object v1, p0

    move-object v0, p2

    move-object/from16 v2, p3

    .line 289
    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v1, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 290
    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, v1, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v6

    .line 289
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/launcher2/DeleteDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v3

    .line 291
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 292
    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object v5, p1

    invoke-virtual {p1, v0, v4}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/PointF;->length()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 297
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    div-float/2addr v0, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 298
    iget v6, v4, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v0, v6

    int-to-float v6, v0

    .line 299
    iget v7, v2, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v2

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 300
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    int-to-float v8, v6

    .line 301
    iget v0, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    int-to-float v6, v0

    .line 302
    iget v0, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v0

    .line 303
    iget v0, v4, Landroid/graphics/Rect;->top:I

    int-to-float v9, v0

    .line 304
    iget v0, v3, Landroid/graphics/Rect;->left:I

    int-to-float v10, v0

    .line 305
    iget v0, v3, Landroid/graphics/Rect;->top:I

    int-to-float v11, v0

    .line 307
    new-instance v3, Lcom/android/launcher2/DeleteDropTarget$3;

    invoke-direct {v3, p0}, Lcom/android/launcher2/DeleteDropTarget$3;-><init>(Lcom/android/launcher2/DeleteDropTarget;)V

    .line 313
    new-instance v12, Lcom/android/launcher2/DeleteDropTarget$4;

    move-object v0, v12

    move-object v2, p1

    move v4, v7

    move v5, v6

    move v6, v10

    move v7, v9

    move v9, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/DeleteDropTarget$4;-><init>(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DragLayer;Landroid/animation/TimeInterpolator;FFFFFF)V

    return-object v12
.end method

.method private isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z
    .locals 0

    .line 96
    instance-of p0, p1, Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz p0, :cond_0

    instance-of p0, p2, Lcom/android/launcher2/ApplicationInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAllAppsWidget(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z
    .locals 0

    .line 99
    instance-of p0, p1, Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz p0, :cond_1

    .line 100
    instance-of p0, p2, Lcom/android/launcher2/PendingAddItemInfo;

    if-eqz p0, :cond_1

    .line 101
    check-cast p2, Lcom/android/launcher2/PendingAddItemInfo;

    .line 102
    iget p0, p2, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p2, 0x4

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDragSourceWorkspaceOrFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 0

    .line 112
    iget-object p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of p0, p0, Lcom/android/launcher2/Workspace;

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of p0, p0, Lcom/android/launcher2/Folder;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isUnRemovableIcon(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z
    .locals 0

    .line 140
    instance-of p0, p1, Lcom/android/launcher2/Workspace;

    if-eqz p0, :cond_0

    .line 141
    instance-of p0, p2, Lcom/android/launcher2/ShortcutInfo;

    if-eqz p0, :cond_0

    .line 142
    check-cast p2, Lcom/android/launcher2/ShortcutInfo;

    .line 143
    iget-object p0, p2, Lcom/android/launcher2/ShortcutInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.yecon.carsetting.AllAppActivity"

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isWorkspaceFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 0

    .line 121
    iget-object p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of p0, p0, Lcom/android/launcher2/Workspace;

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of p0, p0, Lcom/android/launcher2/FolderInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWorkspaceOrFolderApplication(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of p0, p0, Lcom/android/launcher2/ShortcutInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWorkspaceOrFolderWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of p0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetHoverColor()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 130
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setHoverColor()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mTransitionDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 126
    iget v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteDropTarget;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDragEnd()V
    .locals 1

    .line 198
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnd()V

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mActive:Z

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 205
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDropTarget;->setHoverColor()V

    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 211
    iget-boolean v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDropTarget;->resetHoverColor()V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget p0, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverColor:I

    invoke-virtual {p1, p0}, Lcom/android/launcher2/DragView;->setColor(I)V

    :goto_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 3

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeleteDropTarget;->isAllAppsWidget(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeleteDropTarget;->isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 164
    move-object v1, p2

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 165
    iget v1, v1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move p3, v2

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 172
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeleteDropTarget;->isUnRemovableIcon(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p3, v2

    :cond_2
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    .line 177
    iget-object v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v1, p1, p1, p1}, Lcom/android/launcher2/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v1, p1, p1, p1}, Lcom/android/launcher2/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    iput-object p1, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 183
    iput-boolean p3, p0, Lcom/android/launcher2/DeleteDropTarget;->mActive:Z

    .line 184
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDropTarget;->resetHoverColor()V

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_6

    if-eqz v0, :cond_5

    const p1, 0x7f0c0027

    goto :goto_3

    :cond_5
    const p1, 0x7f0c0026

    .line 187
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->setText(I)V

    .line 190
    :cond_6
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_7

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onDragStart: isUninstall = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", isVisible = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeleteDropTarget"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2

    .line 278
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrop: d = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteDropTarget"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->animateToTrashAndCompleteDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onFinishInflate()V

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverColor:I

    const v1, 0x7f07035d

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const v1, 0x7f07033f

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 89
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteDropTarget;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 401
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFlingToDelete: d = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteDropTarget"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    iget-object v0, v9, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of v10, v0, Lcom/android/launcher2/AppsCustomizePagedView;

    .line 408
    iget-object v0, v9, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragView;->setColor(I)V

    .line 409
    iget-object v0, v9, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->updateInitialScaleToCurrentScale()V

    if-eqz v10, :cond_1

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/DeleteDropTarget;->resetHoverColor()V

    .line 415
    :cond_1
    iget v0, v8, Lcom/android/launcher2/DeleteDropTarget;->mFlingDeleteMode:I

    sget v1, Lcom/android/launcher2/DeleteDropTarget;->MODE_FLING_DELETE_TO_TRASH:I

    if-ne v0, v1, :cond_2

    .line 417
    iget-object v0, v8, Lcom/android/launcher2/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher2/SearchDropTargetBar;->deferOnDragEnd()V

    .line 418
    iget-object v0, v8, Lcom/android/launcher2/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher2/SearchDropTargetBar;->finishAnimations()V

    .line 421
    :cond_2
    iget-object v0, v8, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 422
    iget-object v0, v8, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v11

    .line 423
    sget v14, Lcom/android/launcher2/DeleteDropTarget;->FLING_DELETE_ANIMATION_DURATION:I

    .line 424
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 431
    new-instance v15, Lcom/android/launcher2/DeleteDropTarget$5;

    invoke-direct {v15, v8, v4, v5, v14}, Lcom/android/launcher2/DeleteDropTarget$5;-><init>(Lcom/android/launcher2/DeleteDropTarget;JI)V

    const/4 v0, 0x0

    .line 448
    iget v1, v8, Lcom/android/launcher2/DeleteDropTarget;->mFlingDeleteMode:I

    sget v2, Lcom/android/launcher2/DeleteDropTarget;->MODE_FLING_DELETE_TO_TRASH:I

    if-ne v1, v2, :cond_3

    move-object/from16 v3, p4

    .line 449
    invoke-direct {v8, v11, v9, v3, v7}, Lcom/android/launcher2/DeleteDropTarget;->createFlingToTrashAnimatorListener(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object/from16 v3, p4

    .line 450
    sget v2, Lcom/android/launcher2/DeleteDropTarget;->MODE_FLING_DELETE_ALONG_VECTOR:I

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move v6, v14

    .line 451
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/DeleteDropTarget;->createFlingAlongVectorAnimatorListener(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DropTarget$DragObject;Landroid/graphics/PointF;JILandroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    :cond_4
    :goto_0
    move-object v13, v0

    .line 454
    new-instance v0, Lcom/android/launcher2/DeleteDropTarget$6;

    invoke-direct {v0, v8, v10, v9}, Lcom/android/launcher2/DeleteDropTarget$6;-><init>(Lcom/android/launcher2/DeleteDropTarget;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 468
    iget-object v12, v9, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v18}, Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method
