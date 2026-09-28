.class public Lcom/android/launcher2/AppsCustomizePagedView;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/PagedViewIcon$PressedCallback;
.implements Lcom/android/launcher2/Launcher$LauncherTransitionable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 6500.0f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "AppsCustomizePagedView"

.field private static TRANSITION_MAX_ROTATION:F = 22.0f

.field private static TRANSITION_PIVOT:F = 0.65f

.field private static TRANSITION_SCALE_FACTOR:F = 0.74f

.field static final sLookAheadPageCount:I = 0x2

.field static final sLookBehindPageCount:I = 0x2

.field private static final sPageSleepDelay:I = 0xc8


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAppIconSize:I

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsHasSet:Z

.field mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

.field mCachedShortcutPreviewCanvas:Lcom/android/launcher2/CanvasCache;

.field mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClingFocusedX:I

.field private mClingFocusedY:I

.field private mContentWidth:I

.field private mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/AsyncTaskPageData;",
            ">;"
        }
    .end annotation
.end field

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mHasShownAllAppsCling:Z

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInTransition:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mMaxAppCellCountX:I

.field private mMaxAppCellCountY:I

.field private mNumAppsPages:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

.field mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field private mTmpRect:Landroid/graphics/Rect;

.field mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

.field private mapName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 281
    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 309
    new-instance v1, Lcom/android/launcher2/Workspace$ZInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Lcom/android/launcher2/Workspace$ZInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    .line 315
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 316
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 345
    new-instance v1, Lcom/android/launcher2/BitmapCache;

    invoke-direct {v1}, Lcom/android/launcher2/BitmapCache;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

    .line 346
    new-instance v1, Lcom/android/launcher2/PaintCache;

    invoke-direct {v1}, Lcom/android/launcher2/PaintCache;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

    .line 347
    new-instance v1, Lcom/android/launcher2/CanvasCache;

    invoke-direct {v1}, Lcom/android/launcher2/CanvasCache;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    const/4 v1, 0x0

    .line 356
    iput-boolean v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppsHasSet:Z

    .line 360
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 365
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    .line 366
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 370
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f060003

    .line 371
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    goto :goto_2

    .line 373
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 376
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f060004

    goto :goto_0

    :cond_2
    const v3, 0x7f060007

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    goto :goto_2

    :cond_3
    :goto_1
    const v3, 0x7f060005

    .line 374
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    .line 380
    :goto_2
    sget-object v2, Lcom/yecon/launcher1/R$styleable;->AppsCustomizePagedView:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x2

    .line 381
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    const/4 v2, 0x3

    .line 382
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    .line 389
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedX:I

    const/4 v0, 0x1

    .line 390
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedY:I

    .line 391
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 396
    iput-boolean v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mFadeInAdjacentScreens:Z

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_4

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setImportantForAccessibility(I)V

    .line 402
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f020005

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mapName:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method private addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2055
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2057
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 2058
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getAppNameComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    if-gez v3, :cond_0

    .line 2061
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAppsWithoutInvalidate: mApps size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppsCustomizePagedView"

    invoke-static {v3, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private beginDraggingApplication(Landroid/view/View;)V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 755
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    return-void
.end method

.method private cancelAllTasks()V
    .locals 5

    .line 1194
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAllTasks: mRunningTasks size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1200
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    const/4 v2, 0x0

    .line 1202
    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 1203
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1204
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    iget v3, v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1207
    iget v1, v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1208
    instance-of v2, v1, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v2, :cond_1

    .line 1209
    check-cast v1, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViewsOnPage()V

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1213
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private deleteMaskApps()V
    .locals 2

    .line 2347
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2348
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 2349
    iget-object v1, v1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/android/launcher2/uitl/Utils;->isMaskClassName(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2350
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " size="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 2200
    instance-of v0, p3, Landroid/appwidget/AppWidgetProviderInfo;

    const-string v1, "   label=\""

    if-eqz v0, :cond_1

    .line 2201
    check-cast p3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" previewImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " configure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p3, p3, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2206
    :cond_1
    instance-of v0, p3, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    .line 2207
    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p3, p3, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private endDragging(Landroid/view/View;ZZ)V
    .locals 2

    .line 1041
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endDragging: target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFlingToDelete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 1045
    iget-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object p2

    if-eq p1, p2, :cond_2

    instance-of p1, p1, Lcom/android/launcher2/DeleteDropTarget;

    if-nez p1, :cond_2

    .line 1049
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 1051
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    return-void
.end method

.method private findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Lcom/android/launcher2/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .line 2082
    iget-object p0, p2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 2083
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 2085
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 2086
    iget-object v1, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private findAppByPackage(Ljava/util/List;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 2094
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2096
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 2097
    iget-object v3, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/launcher2/ItemInfo;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2102
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 2103
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 2102
    invoke-static {v3, v4}, Lcom/android/launcher2/Utilities;->isComponentEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    .line 2104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findAppByPackage: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 2105
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",isComponentEnabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AppsCustomizePagedView"

    .line 2104
    invoke-static {v4, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 4

    .line 421
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageCount()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    .line 423
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v0, v2, :cond_0

    .line 424
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewCellLayout;

    .line 425
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-result-object v2

    .line 426
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v3, p0

    .line 427
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1

    mul-int/2addr v0, v3

    .line 429
    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    move v1, v0

    goto :goto_0

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 435
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 437
    iget p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x0

    add-int/2addr v2, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    :cond_1
    :goto_0
    return v1
.end method

.method private getShortcutPreview(Landroid/content/pm/ResolveInfo;II)Landroid/graphics/Bitmap;
    .locals 12

    .line 1506
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

    invoke-virtual {v0}, Lcom/android/launcher2/BitmapCache;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1507
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    invoke-virtual {v1}, Lcom/android/launcher2/CanvasCache;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1509
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 1510
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, p3, :cond_0

    goto :goto_0

    .line 1514
    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 1515
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1516
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1511
    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1512
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/BitmapCache;->set(Ljava/lang/Object;)V

    .line 1520
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/SceneManager;->getNewCurrentSceneInfo(Landroid/content/Context;)Lcom/android/launcher2/SceneInfo;

    move-result-object v3

    .line 1521
    invoke-virtual {v3}, Lcom/android/launcher2/SceneInfo;->setShortcut()V

    .line 1522
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/android/launcher2/SceneInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1524
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1527
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f060093

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 1529
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f060091

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 1531
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f060092

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sub-int v3, p2, v7

    sub-int v10, v3, p1

    move-object v4, p0

    move-object v5, v11

    move-object v6, v0

    move v9, v10

    .line 1535
    invoke-direct/range {v4 .. v10}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1538
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1539
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1540
    iget-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

    invoke-virtual {p2}, Lcom/android/launcher2/PaintCache;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Paint;

    const/4 p3, 0x0

    if-nez p2, :cond_2

    .line 1542
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 1543
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1544
    invoke-virtual {v3, p3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1545
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/16 v3, 0xf

    .line 1546
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1549
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

    invoke-virtual {v3, p2}, Lcom/android/launcher2/PaintCache;->set(Ljava/lang/Object;)V

    .line 1551
    :cond_2
    invoke-virtual {v1, v0, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1552
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1554
    iget v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    move-object v3, p0

    move-object v4, v11

    move-object v5, p1

    move v8, v9

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    return-object p1
.end method

.method private getSleepForPage(I)I
    .locals 0

    .line 1411
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result p0

    mul-int/lit16 p0, p0, 0xc8

    const/4 p1, 0x0

    .line 1412
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getTabHost()Lcom/android/launcher2/popuView/AppsCustomizeFrame;
    .locals 1

    .line 2187
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    return-object p0
.end method

.method private getThreadPriorityForPage(I)I
    .locals 1

    .line 1400
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result p0

    const/4 p1, 0x1

    if-gtz p0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x13

    if-gt p0, p1, :cond_1

    :cond_1
    return v0
.end method

.method private getWidgetPageLoadPriority(I)I
    .locals 3

    .line 1375
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    .line 1376
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 1377
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    .line 1383
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v1, 0x7fffffff

    .line 1385
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1386
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1387
    iget v1, v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    .line 1390
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 1391
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private invalidateOnDataChange()V
    .locals 1

    .line 2028
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2031
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestLayout()V

    goto :goto_0

    .line 2033
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 2034
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData()V

    :goto_0
    return-void
.end method

.method private loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1825
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1829
    :cond_0
    iget-object v0, p2, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1830
    iget-object v1, p2, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 1831
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    if-eqz p1, :cond_2

    .line 1835
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 1838
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1841
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1842
    instance-of v5, v4, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1853
    :cond_3
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_4

    .line 1855
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1856
    iget v5, p2, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    iget v6, p2, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/launcher2/AppsCustomizePagedView;->getShortcutPreview(Landroid/content/pm/ResolveInfo;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 8

    .line 1862
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    if-eqz v0, :cond_0

    .line 1863
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1867
    :try_start_0
    iget v1, p1, Lcom/android/launcher2/AsyncTaskPageData;->page:I

    .line 1868
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1870
    iget-object v3, p1, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1871
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 1873
    invoke-virtual {v2, v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v5, :cond_1

    .line 1875
    iget-object v6, p1, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 1876
    new-instance v7, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v7, v6}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v7, v4}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1880
    :cond_2
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "AppsCustomizePagedView"

    .line 1881
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSyncWidgetPageItems: page = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", layout = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", count = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", this = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->createHardwareLayer()V

    .line 1886
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidate()V

    .line 1889
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1890
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1891
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1892
    iget v3, v2, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 1893
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1896
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    .line 1897
    throw p0
.end method

.method private preloadWidget(Lcom/android/launcher2/PendingAddWidgetInfo;)V
    .locals 3

    .line 783
    iget-object v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 784
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getDefaultOptionsForWidget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object p0

    .line 786
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadWidget info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pInfo.configure = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppsCustomizePagedView"

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_0
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 792
    iput-object p0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    :cond_1
    return-void
.end method

.method private prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;III)V"
        }
    .end annotation

    .line 1421
    iget-object p5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    .line 1422
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1423
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1424
    iget v2, v0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 1425
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getAssociatedLowerPageBound(I)I

    move-result v3

    if-lt v2, v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    .line 1426
    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getAssociatedUpperPageBound(I)I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 1430
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 1427
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 1428
    invoke-interface {p5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1435
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getSleepForPage(I)I

    move-result p5

    .line 1436
    new-instance v0, Lcom/android/launcher2/AsyncTaskPageData;

    new-instance v7, Lcom/android/launcher2/AppsCustomizePagedView$3;

    invoke-direct {v7, p0, p5}, Lcom/android/launcher2/AppsCustomizePagedView$3;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;I)V

    new-instance v8, Lcom/android/launcher2/AppsCustomizePagedView$4;

    invoke-direct {v8, p0}, Lcom/android/launcher2/AppsCustomizePagedView$4;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V

    .line 1466
    new-instance p2, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    sget-object p3, Lcom/android/launcher2/AsyncTaskPageData$Type;->LoadWidgetPreviewData:Lcom/android/launcher2/AsyncTaskPageData$Type;

    invoke-direct {p2, p1, p3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;-><init>(ILcom/android/launcher2/AsyncTaskPageData$Type;)V

    .line 1468
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 1469
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/android/launcher2/AsyncTaskPageData;

    aput-object v0, p3, v1

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1470
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeAppsWithPackageNameWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2133
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2134
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByPackage(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 2136
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2137
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByPackage(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2117
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2119
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 2120
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 2122
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2123
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAppsWithoutInvalidate: removeIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ApplicationInfo info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppsCustomizePagedView"

    invoke-static {v3, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1489
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1495
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1496
    invoke-virtual {p0, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1497
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object p2

    add-int/2addr p5, p3

    add-int/2addr p6, p4

    .line 1498
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1499
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1500
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 1501
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 1276
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 1278
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V
    .locals 4

    .line 1283
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setCellCount(II)V

    .line 1284
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutWidthGap:I

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 1285
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    const/16 v0, 0x8

    .line 1292
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 1293
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1294
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1295
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 1296
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->measure(II)V

    const/4 v0, 0x0

    .line 1297
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V
    .locals 4

    .line 1477
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher2/PagedViewGridLayout;->setPadding(IIII)V

    .line 1482
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1483
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1484
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 1485
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->measure(II)V

    return-void
.end method

.method private updatePageCounts()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 484
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePageCounts end: mNumWidgetPages = , mNumAppsPages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApps.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 486
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCellCountX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCellCountY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppsCustomizePagedView"

    .line 485
    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateUnreadNumInAppInfo(Landroid/content/ComponentName;I)V
    .locals 4

    .line 2431
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2434
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 2435
    iget-object v3, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2436
    iput p2, v2, Lcom/android/launcher2/ApplicationInfo;->unreadNum:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateUnreadNumInAppInfo(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2447
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2450
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 2451
    iget-object v3, v2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v3}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadNumberOfComponent(Landroid/content/ComponentName;)I

    move-result v3

    iput v3, v2, Lcom/android/launcher2/ApplicationInfo;->unreadNum:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2071
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addApps: list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 2076
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 2077
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 2078
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    return-void
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 2

    .line 999
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginDragging: v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1005
    :cond_1
    instance-of v0, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_2

    .line 1006
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->beginDraggingApplication(Landroid/view/View;)V

    goto :goto_0

    .line 1007
    :cond_2
    instance-of p1, p1, Lcom/android/launcher2/PagedViewWidget;

    .line 1015
    :goto_0
    new-instance p1, Lcom/android/launcher2/AppsCustomizePagedView$2;

    invoke-direct {p1, p0}, Lcom/android/launcher2/AppsCustomizePagedView$2;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method public clearAllPages()V
    .locals 5

    .line 1174
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1175
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 1176
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllPages: count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppsCustomizePagedView"

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1181
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1182
    instance-of v3, v2, Lcom/android/launcher2/PagedViewGridLayout;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1183
    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViewsOnPage()V

    .line 1184
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1186
    :cond_1
    instance-of v3, v2, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v3, :cond_2

    .line 1187
    check-cast v2, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 1188
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public dumpState()V
    .locals 2

    .line 2192
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mApps"

    invoke-static {v0, v1, p0}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getAppPageNum()I
    .locals 0

    .line 2263
    iget p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    return p0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 0

    .line 2247
    iget p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    iget p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 1

    .line 2255
    iget p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 2258
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .line 2268
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    :goto_0
    const v1, 0x7f0c0025

    .line 2272
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    const v1, 0x7f0c000b

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v2

    move v2, v3

    .line 2281
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getDefaultOptionsForWidget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 4

    .line 760
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x11

    if-lt p1, v1, :cond_0

    .line 761
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v1, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->spanX:I

    iget v2, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->spanY:I

    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2, v3}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher2/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 762
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object p2, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {p1, p2, v0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 765
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 766
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-int v0, v0

    .line 767
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    int-to-float p1, v1

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 769
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 770
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    const-string v2, "appWidgetMinWidth"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    const-string v2, "appWidgetMinHeight"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    const-string v0, "appWidgetMaxWidth"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 776
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    const-string p1, "appWidgetMaxHeight"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, p2

    :cond_0
    return-object v0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 0

    .line 1950
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->indexToPage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getPageContentWidth()I
    .locals 0

    .line 2001
    iget p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    return p0
.end method

.method getPageForComponent(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 463
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v0, p0

    .line 464
    div-int/2addr p1, v0

    return p1

    .line 467
    :cond_1
    iget p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr p0, v0

    return p0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    .line 449
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 452
    :cond_0
    iget p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    return p0
.end method

.method public iconPressed(Lcom/android/launcher2/PagedViewIcon;)V
    .locals 1

    .line 2226
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_0

    .line 2227
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewIcon;->resetDrawableState()V

    .line 2229
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    return-void
.end method

.method protected indexToPage(I)I
    .locals 0

    .line 1955
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method protected init()V
    .locals 2

    .line 407
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->init()V

    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCenterPagesVertically:Z

    .line 410
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setDragSlopeThreshold(F)V

    return-void
.end method

.method invalidateAppPages(IZ)V
    .locals 2

    .line 2459
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalidateAppPages: currentPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", immediateAndOnly = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    return-void
.end method

.method public isSupportCycleSlidingScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 689
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", v.getTag() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "AppsCustomizePagedView.onClick"

    .line 694
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 698
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    instance-of v0, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_3

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 705
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v1, :cond_2

    .line 706
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewIcon;->lockDrawableState()V

    .line 712
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 713
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 738
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onDataReady(II)V
    .locals 6

    .line 494
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 498
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    const v3, 0x7fffffff

    if-eqz v2, :cond_3

    if-eqz v0, :cond_1

    .line 499
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v2

    goto :goto_1

    .line 500
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v2

    :goto_1
    move v3, v2

    if-eqz v0, :cond_2

    .line 501
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v2

    goto :goto_2

    .line 502
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v3

    .line 504
    :goto_2
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_4

    .line 505
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 509
    :cond_4
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    if-le v3, v5, :cond_5

    .line 510
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 519
    :cond_5
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 526
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f09002a

    goto :goto_3

    :cond_7
    const v3, 0x7f09002f

    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    goto :goto_5

    .line 520
    :cond_8
    :goto_4
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x4

    .line 521
    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    goto :goto_5

    :cond_9
    const/4 v2, 0x5

    .line 523
    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    .line 528
    :goto_5
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    .line 530
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 533
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 534
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 539
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    move-result-object v2

    .line 540
    invoke-virtual {v2}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->isTransitioning()Z

    move-result v2

    .line 543
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageForComponent(I)I

    move-result v3

    .line 544
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataReady: height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, ", width = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", isLandscape = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", page = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", hostIsTransitioning = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mContentWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mNumAppsPages = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mNumWidgetPages = , this = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppsCustomizePagedView"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_a
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    if-nez v2, :cond_b

    .line 558
    new-instance p1, Lcom/android/launcher2/AppsCustomizePagedView$1;

    invoke-direct {p1, p0}, Lcom/android/launcher2/AppsCustomizePagedView$1;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1165
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 1166
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppsCustomizePagedView"

    const-string v1, "onDetachedFromWindow."

    .line 1167
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V
    .locals 3

    .line 1104
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDropCompleted: target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", d = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFlingToDelete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x0

    .line 1111
    invoke-direct {p0, p1, p3, p4}, Lcom/android/launcher2/AppsCustomizePagedView;->endDragging(Landroid/view/View;ZZ)V

    if-nez p4, :cond_6

    .line 1117
    instance-of p4, p1, Lcom/android/launcher2/Workspace;

    if-eqz p4, :cond_3

    .line 1118
    iget-object p4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p4}, Lcom/android/launcher2/Launcher;->getCurrentWorkspaceScreen()I

    move-result p4

    .line 1119
    check-cast p1, Lcom/android/launcher2/Workspace;

    .line 1120
    invoke-virtual {p1, p4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/android/launcher2/CellLayout;

    .line 1121
    iget-object v0, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    if-eqz p4, :cond_2

    .line 1123
    invoke-virtual {p4, v0}, Lcom/android/launcher2/CellLayout;->calculateSpans(Lcom/android/launcher2/ItemInfo;)V

    const/4 v1, 0x0

    .line 1124
    iget v2, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 1125
    invoke-virtual {p4, v1, v2, v0}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    move p4, p3

    .line 1129
    :goto_0
    iget-object v0, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_4

    .line 1130
    iget-object v0, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 1131
    iget-object v1, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p1, v1}, Lcom/android/launcher2/Workspace;->searchIMTKWidget(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1132
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Launcher;->showOnlyOneWidgetMessage(Lcom/android/launcher2/PendingAddWidgetInfo;)V

    goto :goto_1

    :cond_3
    move p4, p3

    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    .line 1137
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, p3}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    .line 1140
    :cond_5
    iput-boolean p3, p2, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    :cond_6
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 2

    .line 1148
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppsCustomizePagedView"

    const-string v1, "onFlingToDeleteCompleted."

    .line 1149
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1153
    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->endDragging(Landroid/view/View;ZZ)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 742
    invoke-static {p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 2

    .line 1084
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLauncherTransitionEnd l = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", animated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", toWorkspace = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppsCustomizePagedView"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 1089
    iput-boolean p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    .line 1090
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher2/AsyncTaskPageData;

    .line 1091
    invoke-direct {p0, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V

    goto :goto_0

    .line 1093
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1094
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 1095
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1097
    :cond_2
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    xor-int/lit8 p1, p3, 0x1

    .line 1098
    iput-boolean p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mForceDrawAllChildrenNextFrame:Z

    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 2

    .line 1061
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLauncherTransitionPrepare l = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", animated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", toWorkspace = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppsCustomizePagedView"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 1067
    iput-boolean p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    if-eqz p3, :cond_1

    .line 1070
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    :cond_1
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0

    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 649
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongClick: v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", v.getTag() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 653
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 656
    :cond_1
    instance-of v0, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_3

    .line 658
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/ApplicationInfo;

    .line 661
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.txznet.webchat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 665
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 666
    invoke-virtual {p1}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 665
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 667
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-gtz v0, :cond_3

    .line 669
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    .line 670
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 672
    invoke-virtual {p1}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 671
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 673
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 681
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 590
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 591
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 592
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppsHasSet:Z

    if-eqz v2, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->setDataIsReady()V

    .line 596
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->setMeasuredDimension(II)V

    .line 597
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->onDataReady(II)V

    .line 601
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onMeasure(II)V

    return-void
.end method

.method public onPackagesUpdated()V
    .locals 0

    .line 638
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 639
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .line 2006
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageEndMoving()V

    const/4 v0, 0x1

    .line 2007
    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mForceDrawAllChildrenNextFrame:Z

    const/4 v0, -0x1

    .line 2010
    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    .line 1992
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->acceleratedOverScroll(F)V

    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2143
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeApps: packageNames = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 2145
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    .line 2144
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithPackageNameWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 2149
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 2150
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 2151
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    return-void
.end method

.method public reorderApps()V
    .locals 7

    .line 2288
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reorderApps: mApps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    :cond_0
    sget-object v0, Lcom/android/launcher2/AllAppsList;->sTopPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/launcher2/AllAppsList;->sTopPackages:Ljava/util/ArrayList;

    .line 2292
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 2296
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2300
    sget-object v1, Lcom/android/launcher2/AllAppsList;->sTopPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AllAppsList$TopPackage;

    .line 2301
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ApplicationInfo;

    .line 2304
    iget-object v5, v4, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher2/AllAppsList$TopPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 2305
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher2/AllAppsList$TopPackage;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2306
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2309
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2319
    :cond_4
    sget-object v1, Lcom/android/launcher2/AllAppsList;->sTopPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AllAppsList$TopPackage;

    .line 2321
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ApplicationInfo;

    .line 2322
    iget-object v5, v4, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher2/AllAppsList$TopPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 2323
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher2/AllAppsList$TopPackage;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2324
    iget v2, v2, Lcom/android/launcher2/AllAppsList$TopPackage;->order:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2325
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 2342
    :cond_7
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->deleteMaskApps()V

    :cond_8
    :goto_2
    return-void
.end method

.method public requestCurrentPageItemFocus()V
    .locals 5

    .line 2476
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v0, :cond_0

    .line 2477
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2479
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2480
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCurrentPageItemFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " childCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppsCustomizePagedView"

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2483
    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/AppsCustomizePagedView$5;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView$5;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/PagedViewCellLayoutChildren;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 2171
    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 2173
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    .line 2181
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2182
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(I)V

    :cond_0
    return-void
.end method

.method public resetDrawableState()V
    .locals 1

    .line 2233
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_0

    .line 2234
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewIcon;->resetDrawableState()V

    const/4 v0, 0x0

    .line 2235
    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    :cond_0
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    .line 476
    :cond_0
    iput p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 3

    .line 1961
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->screenScrolled(I)V

    .line 1963
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    .line 1964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenScrolled: screenCenter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mOverScrollX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mOverScrollX:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mMaxScrollX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxScrollX:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mScrollX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1966
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppsCustomizePagedView"

    .line 1964
    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    .line 1969
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1970
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1976
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1977
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1978
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1984
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1985
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2039
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 2040
    sget-boolean p1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 2041
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setApps : mApps = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mAppsHasSet = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppsHasSet:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppsCustomizePagedView"

    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 2044
    iput-boolean p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppsHasSet:Z

    .line 2046
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 2047
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 2048
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    return-void
.end method

.method public setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 1

    .line 1220
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1221
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    :cond_0
    return-void
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .locals 0

    .line 2017
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 2018
    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    return-void
.end method

.method public showAllAppsCling()V
    .locals 3

    .line 568
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAllAppsCling: mHasShownAllAppsCling = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 573
    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 577
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    iget p0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    return-void
.end method

.method protected snapToPage(III)V
    .locals 2

    .line 1226
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/PagedViewWithDraggableItems;->snapToPage(III)V

    .line 1228
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapToPage: whichPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delta = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", duration = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", this = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppsCustomizePagedView"

    invoke-static {p3, p2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_0
    iget-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget p3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    .line 1238
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1239
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1240
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1241
    iget p3, p2, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 1242
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-ge p3, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-gt p3, v0, :cond_3

    .line 1244
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    :cond_3
    const/16 p3, 0x13

    .line 1246
    invoke-virtual {p2, p3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public surrender()V
    .locals 0

    .line 2219
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    return-void
.end method

.method public syncAppsPageItems(IZ)V
    .locals 12

    .line 1302
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    mul-int v1, p1, v0

    add-int v2, v1, v0

    .line 1304
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1305
    sget-boolean v3, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v4, "AppsCustomizePagedView"

    if-eqz v3, :cond_0

    .line 1306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncAppsPageItems: page = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", immediate = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ", numCells = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", startIndex = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", endIndex = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", app size = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 1308
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", child count = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1309
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", this = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1306
    invoke-static {v4, p2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/PagedViewCellLayout;

    .line 1314
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 1315
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_a

    .line 1318
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ApplicationInfo;

    .line 1320
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    .line 1321
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0a0006

    .line 1322
    invoke-virtual {v6, v10, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewIcon;

    .line 1323
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "content://com.carocean.status.provider/sys"

    const-string v11, "SYS_THEME"

    invoke-static {v10, v8, v11, v9}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v9, :cond_3

    const/4 v10, 0x2

    if-eq v8, v10, :cond_2

    if-eq v8, v7, :cond_1

    goto :goto_3

    :cond_1
    const v7, 0x7f070025

    .line 1332
    invoke-virtual {v6, v7}, Lcom/android/launcher2/PagedViewIcon;->setBackgroundResource(I)V

    goto :goto_3

    :cond_2
    const v7, 0x7f070062

    .line 1329
    invoke-virtual {v6, v7}, Lcom/android/launcher2/PagedViewIcon;->setBackgroundResource(I)V

    goto :goto_3

    :cond_3
    const v7, 0x7f070044

    .line 1326
    invoke-virtual {v6, v7}, Lcom/android/launcher2/PagedViewIcon;->setBackgroundResource(I)V

    goto :goto_3

    .line 1336
    :cond_4
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 1339
    :cond_5
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLFECustomer()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 1340
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0a0008

    .line 1341
    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewIcon;

    goto :goto_3

    .line 1343
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1344
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v7

    if-eqz v7, :cond_7

    const v7, 0x7f0a0007

    goto :goto_1

    :cond_7
    const v7, 0x7f0a0005

    :goto_1
    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewIcon;

    goto :goto_3

    .line 1337
    :cond_8
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0a0009

    .line 1338
    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewIcon;

    .line 1348
    :goto_3
    invoke-virtual {v6, v5, v9, p0}, Lcom/android/launcher2/PagedViewIcon;->applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;ZLcom/android/launcher2/PagedViewIcon$PressedCallback;)V

    .line 1349
    invoke-virtual {v6, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    invoke-virtual {v6, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1351
    invoke-virtual {v6, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1352
    invoke-virtual {v6, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sub-int v7, v3, v1

    .line 1355
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    rem-int v8, v7, v8

    .line 1356
    iget v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    div-int/2addr v7, v10

    const/4 v10, -0x1

    .line 1357
    new-instance v11, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-direct {v11, v8, v7, v9, v9}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v6, v10, v3, v11}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    .line 1359
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    iget-object v6, v5, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    sget-boolean v6, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v6, :cond_9

    .line 1363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add app :  = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  x:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1367
    :cond_a
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewCellLayout;->createHardwareLayers()V

    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 2

    .line 1935
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncPageItems: page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", immediate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumAppsPages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    :cond_0
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v0, :cond_1

    .line 1941
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    :cond_1
    return-void
.end method

.method public syncPages()V
    .locals 6

    .line 1902
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "AppsCustomizePagedView"

    if-eqz v0, :cond_0

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncPages: mNumWidgetPages = , mNumAppsPages = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", this = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAllViews()V

    .line 1909
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1912
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->notifyPagesWereRecreated()V

    .line 1914
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    .line 1923
    :goto_0
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v2, v3, :cond_2

    .line 1924
    new-instance v3, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-direct {v3, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 1925
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 1926
    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    .line 1927
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncPages: PagedViewCellLayout layout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2155
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateApps: list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsCustomizePagedView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 2163
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 2164
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 2165
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 2166
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    return-void
.end method

.method public updateAppsUnread()V
    .locals 9

    .line 2397
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    const-string v1, "AppsCustomizePagedView"

    if-eqz v0, :cond_0

    .line 2398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAppsUnreadChanged: mNumAppsPages = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->updateUnreadNumInAppInfo(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    move v2, v0

    .line 2403
    :goto_0
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v2, v3, :cond_4

    .line 2404
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewCellLayout;

    if-nez v3, :cond_1

    return-void

    .line 2408
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v4

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 2412
    invoke-virtual {v3, v5}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewIcon;

    .line 2413
    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewIcon;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ApplicationInfo;

    .line 2414
    iget-object v8, v7, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v8}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadNumberOfComponent(Landroid/content/ComponentName;)I

    move-result v8

    iput v8, v7, Lcom/android/launcher2/ApplicationInfo;->unreadNum:I

    .line 2415
    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewIcon;->invalidate()V

    .line 2416
    sget-boolean v6, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v6, :cond_2

    .line 2417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAppsUnreadChanged: i = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", appInfo = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v7, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", unreadNum = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v7, Lcom/android/launcher2/ApplicationInfo;->unreadNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public updateAppsUnreadChanged(Landroid/content/ComponentName;I)V
    .locals 11

    .line 2365
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    const-string v1, "updateAppsUnreadChanged: component = "

    const-string v2, "AppsCustomizePagedView"

    if-eqz v0, :cond_0

    .line 2366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",unreadNum = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",mNumAppsPages = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->updateUnreadNumInAppInfo(Landroid/content/ComponentName;I)V

    const/4 v0, 0x0

    move v3, v0

    .line 2370
    :goto_0
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v3, v4, :cond_5

    .line 2371
    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewCellLayout;

    if-nez v4, :cond_1

    return-void

    .line 2375
    :cond_1
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v5

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_4

    .line 2379
    invoke-virtual {v4, v6}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedViewIcon;

    .line 2380
    invoke-virtual {v7}, Lcom/android/launcher2/PagedViewIcon;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/ApplicationInfo;

    .line 2381
    sget-boolean v9, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v9, :cond_2

    .line 2382
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", appInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", appIcon = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v8, :cond_3

    .line 2385
    iget-object v9, v8, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2386
    iput p2, v8, Lcom/android/launcher2/ApplicationInfo;->unreadNum:I

    .line 2387
    invoke-virtual {v7}, Lcom/android/launcher2/PagedViewIcon;->invalidate()V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
