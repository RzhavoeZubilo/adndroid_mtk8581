.class public Lcom/android/launcher2/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragLayer$LayoutParams;
    }
.end annotation


# static fields
.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_FADE_OUT:I = 0x1

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DragLayer"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewInitialScrollX:I

.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Lcom/android/launcher2/DragView;

.field private mFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field private mInScrollArea:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mQsbIndex:I

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mTmpXY:[I

.field private mWorkspaceIndex:I

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 53
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 65
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 66
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/android/launcher2/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 67
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    const/4 p2, 0x0

    .line 68
    iput p2, p0, Lcom/android/launcher2/DragLayer;->mAnchorViewInitialScrollX:I

    .line 69
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mAnchorView:Landroid/view/View;

    .line 71
    iput-boolean p2, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    .line 72
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/android/launcher2/DragLayer;->mWorkspaceIndex:I

    .line 74
    iput p1, p0, Lcom/android/launcher2/DragLayer;->mQsbIndex:I

    .line 89
    invoke-virtual {p0, p2}, Lcom/android/launcher2/DragLayer;->setMotionEventSplittingEnabled(Z)V

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 91
    invoke-virtual {p0, p0}, Lcom/android/launcher2/DragLayer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702f8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702f9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DragView;)Lcom/android/launcher2/DragView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/DragLayer;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/DragLayer;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/launcher2/DragLayer;->mAnchorViewInitialScrollX:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/launcher2/DragLayer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/launcher2/DragLayer;->fadeOutDragView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragController;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    return-object p0
.end method

.method private fadeOutDragView()V
    .locals 3

    .line 718
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    .line 719
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 720
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 721
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 722
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DragLayer$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DragLayer$4;-><init>(Lcom/android/launcher2/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 730
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DragLayer$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DragLayer$5;-><init>(Lcom/android/launcher2/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 739
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 8

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 132
    sget-boolean v3, Lcom/android/launcher2/uitl/L;->DEBUG_MOTION:Z

    if-eqz v3, :cond_0

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTouchDown: x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intercept = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mXDown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mYDown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DragLayer"

    invoke-static {v4, v3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 138
    invoke-virtual {v4, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    invoke-virtual {v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLeft()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->getTop()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    iput-object v4, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 142
    iput v1, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    .line 143
    iput v2, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    .line 144
    invoke-virtual {p0, v5}, Lcom/android/launcher2/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    return v5

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 151
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isFolderClingVisible()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    .line 152
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 153
    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolderTextRegion(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 154
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    return v5

    .line 159
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 160
    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 161
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    return v5

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 122
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEventOverFolderTextRegion(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 113
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 114
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 233
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f0c004d

    goto :goto_0

    :cond_0
    const p1, 0x7f0c004c

    :goto_0
    const/16 v1, 0x8

    .line 235
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 237
    invoke-virtual {p0, v1}, Lcom/android/launcher2/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 238
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method private updateChildIndices()V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragLayer;->mWorkspaceIndex:I

    .line 755
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getSearchBar()Lcom/android/launcher2/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragLayer;->mQsbIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addResizeFrame(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 2

    .line 456
    new-instance v0, Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragLayer;)V

    .line 459
    sget-boolean p3, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p3, :cond_0

    .line 460
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addResizeFrame: itemInfo = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", widget = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", resizeFrame = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DragLayer"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    new-instance p1, Lcom/android/launcher2/DragLayer$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    .line 465
    iput-boolean p2, p1, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 467
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 470
    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method public animateView(Lcom/android/launcher2/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 666
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    .line 667
    invoke-virtual {p1}, Lcom/android/launcher2/DragView;->cancelAnimation()V

    .line 668
    iget-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    invoke-virtual {p1}, Lcom/android/launcher2/DragView;->resetLayoutParams()V

    if-eqz p7, :cond_2

    .line 672
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/DragLayer;->mAnchorViewInitialScrollX:I

    .line 674
    :cond_2
    iput-object p7, p0, Lcom/android/launcher2/DragLayer;->mAnchorView:Landroid/view/View;

    .line 677
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 678
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 679
    iget-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 680
    iget-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 681
    iget-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 682
    iget-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher2/DragLayer$3;

    invoke-direct {p2, p0, p5, p6}, Lcom/android/launcher2/DragLayer$3;-><init>(Lcom/android/launcher2/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 699
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/android/launcher2/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 18

    move-object/from16 v14, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 596
    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, v13, Landroid/graphics/Rect;->top:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    .line 597
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 596
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    .line 599
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    if-gez p9, :cond_1

    const v3, 0x7f090019

    .line 603
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    cmpg-float v4, v0, v2

    if-gez v4, :cond_0

    int-to-float v3, v3

    .line 605
    iget-object v4, v14, Lcom/android/launcher2/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float/2addr v0, v2

    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    :cond_0
    const v0, 0x7f09001a

    .line 607
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v15, v0

    goto :goto_0

    :cond_1
    move/from16 v15, p9

    :goto_0
    const/4 v0, 0x0

    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    .line 613
    :cond_2
    iget-object v0, v14, Lcom/android/launcher2/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    :cond_3
    move-object/from16 v16, v0

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getAlpha()F

    move-result v11

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getScaleX()F

    move-result v6

    .line 619
    new-instance v17, Lcom/android/launcher2/DragLayer$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p11

    move-object/from16 v4, p10

    move/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher2/DragLayer$2;-><init>(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v17

    move/from16 p5, v15

    move-object/from16 p6, v16

    move-object/from16 p7, p12

    move/from16 p8, p13

    move-object/from16 p9, p14

    .line 654
    invoke-virtual/range {p2 .. p9}, Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    .line 561
    new-instance v4, Landroid/graphics/Rect;

    .line 562
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 563
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p13

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p14

    .line 564
    invoke-virtual/range {v0 .. v14}, Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 498
    invoke-virtual {v3, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 500
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 501
    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 503
    sget-boolean v5, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateViewIntoPosition: dragView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", r = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lp.x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lp.y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DragLayer"

    invoke-static {v6, v5}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 510
    iget v8, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v11, v10, v7

    mul-float/2addr v9, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v9, v12

    float-to-int v9, v9

    add-int/2addr v8, v9

    const/4 v9, 0x0

    aput v8, v6, v9

    .line 511
    iget v4, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    div-float/2addr v8, v12

    float-to-int v8, v8

    add-int/2addr v4, v8

    const/4 v8, 0x1

    aput v4, v6, v8

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0, v4, v6}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v4

    mul-float v11, v4, v7

    .line 519
    aget v4, v6, v9

    .line 520
    aget v6, v6, v8

    .line 521
    instance-of v7, v2, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 522
    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    .line 527
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v10, v11

    mul-float/2addr v7, v10

    div-float/2addr v7, v12

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v7, v5

    :goto_0
    sub-int/2addr v4, v7

    move v5, v6

    goto :goto_1

    .line 530
    :cond_1
    instance-of v7, v2, Lcom/android/launcher2/FolderIcon;

    if-eqz v7, :cond_2

    int-to-float v6, v6

    mul-float v7, v11, v12

    div-float/2addr v7, v12

    sub-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    sub-float/2addr v10, v11

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v10, v7

    div-float/2addr v10, v12

    sub-float/2addr v6, v10

    float-to-int v6, v6

    .line 535
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v7, v5

    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getHeight()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v7

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v11

    .line 538
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/2addr v7, v5

    goto :goto_0

    .line 542
    :goto_1
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 543
    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x4

    .line 544
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 545
    new-instance v12, Lcom/android/launcher2/DragLayer$1;

    move-object/from16 v7, p4

    invoke-direct {v12, p0, v2, v7}, Lcom/android/launcher2/DragLayer$1;-><init>(Lcom/android/launcher2/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v11

    move v10, v11

    move-object v11, v12

    move v12, v13

    move/from16 v13, p3

    move-object/from16 v14, p5

    .line 553
    invoke-virtual/range {v0 .. v14}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 491
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 16

    .line 480
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 481
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 482
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 483
    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x0

    .line 485
    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move/from16 v7, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    move/from16 v13, p6

    move/from16 v14, p8

    invoke-virtual/range {v1 .. v15}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 434
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAllResizeFrames: mResizeFrames size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragLayer"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 439
    invoke-virtual {v1}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 440
    invoke-virtual {p0, v1}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method public clearAnimatedView()V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    if-eqz v0, :cond_1

    .line 707
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->onDeferredEndDrag(Lcom/android/launcher2/DragView;)V

    :cond_1
    const/4 v0, 0x0

    .line 709
    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    .line 710
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 797
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 799
    iget-boolean v0, p0, Lcom/android/launcher2/DragLayer;->mInScrollArea:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v1

    .line 802
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    .line 803
    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 805
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 806
    invoke-virtual {v0, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    add-int/lit8 v4, v4, 0x1

    .line 807
    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_0

    .line 809
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 811
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 810
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 812
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, v1, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 816
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 105
    :goto_1
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent: keycode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", handled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DragLayer"

    .line 106
    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return p0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 2

    .line 366
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchUnhandledMove: focused = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragLayer"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 0

    .line 714
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    return-object p0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    return p2
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 330
    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p2, v2

    int-to-float v3, v3

    aput v3, v0, v2

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    .line 333
    aget v4, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v1

    .line 334
    aget v4, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v2

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 336
    :goto_0
    instance-of v4, p1, Landroid/view/View;

    if-eqz v4, :cond_0

    if-eq p1, p0, :cond_0

    .line 337
    check-cast p1, Landroid/view/View;

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    .line 340
    aget v4, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v1

    .line 341
    aget v4, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v2

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 344
    :cond_0
    aget p0, v0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v1

    .line 345
    aget p0, v0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v2

    return v3
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    .line 304
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 305
    aput v1, v0, v2

    .line 306
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 307
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aget v4, v3, v1

    aget v5, v3, v2

    aget v1, v3, v1

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    .line 307
    invoke-virtual {p2, v4, v5, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2

    const/4 v0, 0x0

    .line 313
    aput v0, p2, v0

    const/4 v1, 0x1

    .line 314
    aput v0, p2, v1

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result p0

    return p0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->getLocationInWindow([I)V

    const/4 p0, 0x0

    .line 352
    aget v1, v0, p0

    const/4 v2, 0x1

    .line 353
    aget v3, v0, v2

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 356
    aget p0, v0, p0

    .line 357
    aget v0, v0, v2

    sub-int/2addr p0, v1

    sub-int/2addr v0, v3

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public hasResizeFrames()Z
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWidgetBeingResized()Z
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 744
    invoke-direct {p0}, Lcom/android/launcher2/DragLayer;->updateChildIndices()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 749
    invoke-direct {p0}, Lcom/android/launcher2/DragLayer;->updateChildIndices()V

    return-void
.end method

.method onEnterScrollArea(I)V
    .locals 0

    const/4 p1, 0x1

    .line 786
    iput-boolean p1, p0, Lcom/android/launcher2/DragLayer;->mInScrollArea:Z

    .line 787
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->invalidate()V

    return-void
.end method

.method onExitScrollArea()V
    .locals 1

    const/4 v0, 0x0

    .line 791
    iput-boolean v0, p0, Lcom/android/launcher2/DragLayer;->mInScrollArea:Z

    .line 792
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->invalidate()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 198
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 203
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 205
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher2/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 206
    iput-boolean v4, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    return v4

    :cond_3
    if-eqz v2, :cond_4

    .line 209
    iput-boolean v1, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    :cond_4
    return v4

    .line 214
    :cond_5
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 215
    iget-boolean v2, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v2, :cond_6

    .line 216
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher2/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 217
    iput-boolean v4, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    return v4

    :cond_6
    if-eqz p1, :cond_7

    .line 220
    iput-boolean v1, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_1

    :cond_7
    return v4

    :cond_8
    :goto_1
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 418
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 419
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 421
    invoke-virtual {p0, p2}, Lcom/android/launcher2/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 422
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 423
    instance-of p5, p4, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz p5, :cond_0

    .line 424
    check-cast p4, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 425
    iget-boolean p5, p4, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    if-eqz p5, :cond_0

    .line 426
    iget p5, p4, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v0, p4, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v1, p4, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v2, p4, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p4, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget p4, p4, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    add-int/2addr v2, p4

    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const-string v3, "DragLayer"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const-string v5, "[PerfTest --> drag widget] start process"

    .line 259
    invoke-static {v3, v5}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    sget-boolean v5, Lcom/android/launcher2/uitl/L;->DEBUG_MOTION:Z

    if-eqz v5, :cond_1

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent: action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mXDown = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mYDown = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentResizeFrame = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 270
    invoke-direct {p0, p1, v6}, Lcom/android/launcher2/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_MOTION:Z

    if-eqz p0, :cond_2

    const-string p0, "onTouchEvent: handleTouchDown return true."

    .line 272
    invoke-static {v3, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v4

    .line 279
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz v3, :cond_6

    if-eq v0, v4, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_5

    goto :goto_0

    .line 283
    :cond_4
    iget v0, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    sub-int/2addr v2, v0

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_0

    .line 287
    :cond_5
    iget v0, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    sub-int/2addr v2, v0

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 288
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->onTouchUp()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    :goto_0
    move v6, v4

    :cond_6
    if-eqz v6, :cond_7

    return v4

    .line 293
    :cond_7
    iget-object p0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 99
    iput-object p2, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    return-void
.end method
