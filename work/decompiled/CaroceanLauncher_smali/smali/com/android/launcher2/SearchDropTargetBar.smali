.class public Lcom/android/launcher2/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SearchDropTargetBar.java"

# interfaces
.implements Lcom/android/launcher2/DragController$DragListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchDropTargetBar"

.field private static final sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private static final sTransitionInDuration:I = 0xc8

.field private static final sTransitionOutDuration:I = 0xaf


# instance fields
.field private mBarHeight:I

.field private mDeferOnDragEnd:Z

.field private mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

.field private mDropTargetBar:Landroid/view/View;

.field private mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

.field private mEnableDropDownDropTargets:Z

.field private mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

.field private mIsSearchBarHidden:Z

.field private mPreviousBackground:Landroid/graphics/drawable/Drawable;

.field private mQSBSearchBar:Landroid/view/View;

.field private mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher2/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    return-void
.end method

.method private prepareStartAnimation(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x2

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->buildLayer()V

    return-void
.end method

.method private setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/android/launcher2/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    new-instance v0, Lcom/android/launcher2/SearchDropTargetBar$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher2/SearchDropTargetBar$1;-><init>(Lcom/android/launcher2/SearchDropTargetBar;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public deferOnDragEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    return-void
.end method

.method public finishAnimations()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 135
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 136
    iget-object p0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->reverse()V

    return-void
.end method

.method public getSearchBarBounds()Landroid/graphics/Rect;
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 247
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    .line 250
    aget v3, v1, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    .line 251
    aget v4, v1, v3

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 252
    aget v2, v1, v2

    iget-object v4, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 253
    aget v1, v1, v3

    iget-object p0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransitionInDuration()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method public getTransitionOutDuration()I
    .locals 0

    const/16 p0, 0xaf

    return p0
.end method

.method public hideSearchBar(Z)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 161
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 164
    iget-boolean p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 208
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnd: mDeferOnDragEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchDropTargetBar"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 216
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 218
    iget-object p0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->reverse()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 2

    .line 188
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragStart: source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", info = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", dragAction = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", this = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SearchDropTargetBar"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 195
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 196
    iget-boolean p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 198
    iget-object p0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0800a4

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const v0, 0x7f080020

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v1, 0x7f080043

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    .line 106
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher2/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher2/SearchDropTargetBar;)V

    .line 111
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher2/SearchDropTargetBar;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher2/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v1, v3, v4

    const-string v6, "translationY"

    invoke-static {v0, v6, v3}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    .line 121
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    new-array v2, v2, [F

    aput v1, v2, v5

    iget v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v2, v4

    invoke-static {v0, v6, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    .line 126
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v3, v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onSearchPackagesChanged(ZZ)V
    .locals 2

    .line 226
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearchPackagesChanged: searchVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voiceVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQSBSearchBar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchDropTargetBar"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 235
    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object p0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 239
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .locals 1

    .line 67
    invoke-virtual {p2, p0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->setFlingToDeleteDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 73
    iget-object p2, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/ButtonDropTarget;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 74
    iget-object p0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->setLauncher(Lcom/android/launcher2/Launcher;)V

    return-void
.end method

.method public showSearchBar(Z)V
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 146
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->reverse()V

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 149
    iget-boolean p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    return-void
.end method
