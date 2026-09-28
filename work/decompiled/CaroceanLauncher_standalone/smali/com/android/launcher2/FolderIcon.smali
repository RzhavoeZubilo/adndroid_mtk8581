.class public Lcom/android/launcher2/FolderIcon;
.super Landroid/widget/LinearLayout;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher2/FolderInfo$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;,
        Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    }
.end annotation


# static fields
.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DROP_IN_ANIMATION_DURATION:I = 0x190

.field private static final FINAL_ITEM_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x15e

.field private static final INNER_RING_GROWTH_FACTOR:F = 0.15f

.field private static final NUM_ITEMS_IN_PREVIEW:I = 0x3

.field private static final OUTER_RING_GROWTH_FACTOR:F = 0.3f

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.35f

.field private static final PERSPECTIVE_SHIFT_FACTOR:F = 0.24f

.field private static final TAG:Ljava/lang/String; = "FolderIcon"

.field public static sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable; = null

.field private static sStaticValuesDirty:Z = true


# instance fields
.field private mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

.field mAnimating:Z

.field private mAvailableSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mFolderName:Lcom/android/launcher2/BubbleTextView;

.field mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

.field private mHiddenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher2/FolderInfo;

.field private mIntrinsicIconSize:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

.field private mMaxPerspectiveShift:F

.field private mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

.field private mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    .line 102
    new-instance p1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object p1, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 103
    new-instance p1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object p1, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 113
    invoke-direct {p0}, Lcom/android/launcher2/FolderIcon;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    .line 102
    new-instance p1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object p1, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 103
    new-instance p1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object p1, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 108
    invoke-direct {p0}, Lcom/android/launcher2/FolderIcon;->init()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 53
    sput-boolean p0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderIcon;)Landroid/widget/ImageView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher2/FolderIcon;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    return-object p0
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 586
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v6

    .line 589
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v5, v0

    .line 590
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    int-to-float v7, v0

    .line 591
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iput-object p1, v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    new-array p1, v1, [F

    .line 593
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 594
    new-instance v0, Lcom/android/launcher2/FolderIcon$2;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/FolderIcon$2;-><init>(Lcom/android/launcher2/FolderIcon;ZFLcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 608
    new-instance p3, Lcom/android/launcher2/FolderIcon$3;

    invoke-direct {p3, p0, p4}, Lcom/android/launcher2/FolderIcon$3;-><init>(Lcom/android/launcher2/FolderIcon;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long p2, p2

    .line 621
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 622
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computePreviewDrawingParams(II)V
    .locals 4

    .line 447
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    if-eq v0, p2, :cond_1

    .line 448
    :cond_0
    iput p1, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    .line 449
    iput p2, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    .line 451
    sget p1, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 452
    sget p2, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    mul-int/lit8 v0, p2, 0x2

    sub-int/2addr p1, v0

    .line 454
    iput p1, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    .line 456
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    const v1, 0x3fe66666    # 1.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 458
    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v2, v1

    const v3, 0x3f9eb852    # 1.24f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 459
    iput v0, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconScale:F

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 461
    iput v0, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconSize:I

    int-to-float v0, v0

    const v1, 0x3e75c28f    # 0.24f

    mul-float/2addr v0, v1

    .line 462
    iput v0, p0, Lcom/android/launcher2/FolderIcon;->mMaxPerspectiveShift:F

    .line 464
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetX:I

    .line 465
    iput p2, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetY:I

    :cond_1
    return-void
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 470
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(II)V

    return-void
.end method

.method private computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    .locals 11

    rsub-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float p1, v0, p1

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v1, p1

    sub-float v1, v0, v1

    .line 506
    iget v2, p0, Lcom/android/launcher2/FolderIcon;->mMaxPerspectiveShift:F

    mul-float/2addr v2, p1

    .line 507
    iget v3, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconSize:I

    int-to-float v4, v3

    mul-float/2addr v4, v1

    sub-float/2addr v0, v1

    int-to-float v3, v3

    mul-float/2addr v0, v3

    .line 512
    iget v3, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v3, v3

    add-float/2addr v4, v2

    add-float/2addr v4, v0

    sub-float v8, v3, v4

    add-float v7, v2, v0

    .line 514
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconScale:F

    mul-float v9, v0, v1

    const/high16 v0, 0x42a00000    # 80.0f

    mul-float/2addr p1, v0

    float-to-int v10, p1

    if-nez p2, :cond_0

    .line 518
    new-instance p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    goto :goto_0

    .line 520
    :cond_0
    iput v7, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 521
    iput v8, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 522
    iput v9, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 523
    iput v10, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    :goto_0
    return-object p2
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)V
    .locals 3

    .line 529
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 530
    iget v0, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v2, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 531
    iget v0, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v1, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 532
    iget-object v0, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 535
    iget p0, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p0, 0x1

    .line 536
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 537
    iget p0, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {p0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 538
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 539
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 540
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 542
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;
    .locals 2

    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/FolderIcon;

    const p2, 0x7f080027

    .line 139
    invoke-virtual {p0, p2}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher2/BubbleTextView;

    iput-object p2, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    .line 140
    iget-object p4, p3, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, p4}, Lcom/android/launcher2/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0800a0

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/launcher2/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 143
    invoke-virtual {p0, p3}, Lcom/android/launcher2/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object p3, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 146
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    const p2, 0x7f0c0049

    .line 147
    invoke-virtual {p1, p2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    iget-object v1, p3, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v1, p4, v0

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher2/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    invoke-static {p1}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object p2

    .line 150
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getDragController()Lcom/android/launcher2/DragController;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/launcher2/Folder;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 151
    invoke-virtual {p2, p0}, Lcom/android/launcher2/Folder;->setFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 152
    invoke-virtual {p2, p3}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 153
    iput-object p2, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    .line 155
    new-instance p2, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-direct {p2, p1, p0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderIcon;)V

    iput-object p2, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 156
    invoke-virtual {p3, p0}, Lcom/android/launcher2/FolderInfo;->addListener(Lcom/android/launcher2/FolderInfo$FolderListener;)V

    return-object p0
.end method

.method private getLocalCenterForIndex(I[I)F
    .locals 4

    const/4 v0, 0x3

    .line 488
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 490
    iget v0, p1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 491
    iget-object p1, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v0, p1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 492
    iget-object p1, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget p1, p1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v0, v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    .line 493
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v0, v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v3, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 495
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v1, 0x0

    aput p1, p2, v1

    .line 496
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    aput p1, p2, v0

    .line 497
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget p0, p0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    return p0
.end method

.method private init()V
    .locals 1

    .line 117
    new-instance v0, Lcom/android/launcher2/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    return-void
.end method

.method private onDrop(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    move/from16 v4, p5

    .line 365
    sget-boolean v5, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDrop: item = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", animateView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", finalRect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scaleRelativeToDragLayer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", index = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", d = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v7, p7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "FolderIcon"

    invoke-static {v7, v5}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    const/4 v5, -0x1

    .line 371
    iput v5, v1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 372
    iput v5, v1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    if-eqz v3, :cond_3

    .line 378
    iget-object v5, v0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v5

    .line 379
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 380
    invoke-virtual {v5, v3, v7}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    if-nez v2, :cond_1

    .line 383
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 384
    iget-object v6, v0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6, v8}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIcon;->getScaleX()F

    move-result v8

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIcon;->getScaleY()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    .line 389
    invoke-virtual {v0, v10}, Lcom/android/launcher2/FolderIcon;->setScaleX(F)V

    .line 390
    invoke-virtual {v0, v10}, Lcom/android/launcher2/FolderIcon;->setScaleY(F)V

    .line 391
    invoke-virtual {v5, v0, v2}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v10

    .line 393
    invoke-virtual {v0, v8}, Lcom/android/launcher2/FolderIcon;->setScaleX(F)V

    .line 394
    invoke-virtual {v0, v9}, Lcom/android/launcher2/FolderIcon;->setScaleY(F)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6, v8}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    goto :goto_1

    :cond_1
    move v10, v6

    :goto_1
    move-object v6, v2

    const/4 v2, 0x2

    new-array v8, v2, [I

    .line 399
    invoke-direct {v0, v4, v8}, Lcom/android/launcher2/FolderIcon;->getLocalCenterForIndex(I[I)F

    move-result v9

    const/4 v11, 0x0

    .line 400
    aget v12, v8, v11

    int-to-float v12, v12

    mul-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    aput v12, v8, v11

    const/4 v12, 0x1

    .line 401
    aget v13, v8, v12

    int-to-float v13, v13

    mul-float/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    aput v13, v8, v12

    .line 403
    aget v11, v8, v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v2

    sub-int/2addr v11, v13

    aget v8, v8, v12

    .line 404
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v12

    div-int/2addr v12, v2

    sub-int/2addr v8, v12

    .line 403
    invoke-virtual {v6, v11, v8}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x3

    if-ge v4, v2, :cond_2

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move v8, v2

    mul-float/2addr v10, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0x190

    .line 409
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v13, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v14, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v2, v5

    move-object/from16 v3, p2

    move-object v4, v7

    move-object v5, v6

    move v6, v8

    move v7, v9

    move v8, v11

    move v9, v10

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, p6

    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 413
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    .line 414
    iget-object v2, v0, Lcom/android/launcher2/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v2, Lcom/android/launcher2/FolderIcon$1;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher2/FolderIcon$1;-><init>(Lcom/android/launcher2/FolderIcon;Lcom/android/launcher2/ShortcutInfo;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 422
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    :goto_3
    return-void
.end method

.method public static resetValuesDirty()V
    .locals 1

    const/4 v0, 0x1

    .line 802
    sput-boolean v0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    return-void
.end method

.method private willAcceptItem(Lcom/android/launcher2/ItemInfo;)Z
    .locals 2

    .line 299
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    .line 302
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isFull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    if-eq p1, p0, :cond_1

    iget-boolean p0, p0, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 1

    .line 306
    check-cast p1, Lcom/android/launcher2/ItemInfo;

    .line 307
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIcon;->willAcceptItem(Lcom/android/launcher2/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public addItem(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    .line 694
    invoke-super {p0}, Landroid/widget/LinearLayout;->cancelLongPress()V

    .line 696
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 547
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 549
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v0, :cond_0

    return-void

    .line 550
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    if-nez v0, :cond_1

    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 557
    iget-boolean v2, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 558
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget-object v1, v1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 561
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v3

    .line 562
    invoke-direct {p0, v1}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 565
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 566
    iget-boolean v2, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    if-nez v2, :cond_4

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_5

    .line 568
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 569
    iget-object v4, p0, Lcom/android/launcher2/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 570
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    .line 571
    iget-object v4, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v1, v4}, Lcom/android/launcher2/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 572
    iput-object v2, v4, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 573
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 577
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)V

    .line 581
    :cond_5
    invoke-static {p1, p0}, Lcom/android/launcher2/MTKUnreadLoader;->drawUnreadEventIfNeed(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getFolder()Lcom/android/launcher2/Folder;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    return-object p0
.end method

.method getFolderInfo()Lcom/android/launcher2/FolderInfo;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    return-object p0
.end method

.method public getTextVisible()Z
    .locals 0

    .line 634
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDropEnabled()Z
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 122
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 123
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Workspace;

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onAdd(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 2

    .line 643
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdd item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderIcon"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 650
    iget p1, p1, Lcom/android/launcher2/ShortcutInfo;->unreadNum:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/FolderIcon;->updateFolderUnreadNum(Landroid/content/ComponentName;I)V

    .line 651
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    .line 652
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->requestLayout()V

    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Lcom/android/launcher2/ItemInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIcon;->willAcceptItem(Lcom/android/launcher2/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 317
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 318
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget p1, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 319
    iget-object p1, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/android/launcher2/CellLayout;)V

    .line 320
    iget-object p1, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 321
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->showFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDragExit()V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    return-void
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .locals 0

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->onDragExit()V

    return-void
.end method

.method public onDragOver(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 9

    .line 427
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrop: DragObject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderIcon"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationInfo;->makeShortcut()Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    :goto_0
    move-object v2, v0

    .line 438
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->notifyDrop()V

    .line 439
    iget-object v3, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p1, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher2/DropTarget$DragObject;)V

    return-void
.end method

.method public onItemsChanged()V
    .locals 0

    .line 638
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    .line 639
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->requestLayout()V

    return-void
.end method

.method public onRemove(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 2

    .line 656
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemove item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderIcon"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 663
    iget p1, p1, Lcom/android/launcher2/ShortcutInfo;->unreadNum:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/FolderIcon;->updateFolderUnreadNum(Landroid/content/ComponentName;I)V

    .line 664
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    .line 665
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    .line 163
    sput-boolean v0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    .line 164
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0049

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 678
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 686
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 682
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/CheckLongPressHelper;->postCheckForLongPress()V

    :goto_0
    return v0
.end method

.method public performCreateAnimation(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 8

    .line 331
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 332
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(II)V

    const/16 v2, 0x15e

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 336
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/launcher2/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v6, p7

    .line 340
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher2/DropTarget$DragObject;)V

    return-void
.end method

.method public performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    .line 344
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 345
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 345
    invoke-direct {p0, v2, p1}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(II)V

    const/16 p1, 0xc8

    .line 350
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/launcher2/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public setFolderUnreadNum(I)V
    .locals 2

    .line 705
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFolderUnreadNum: unreadNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderIcon"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-gtz p1, :cond_1

    .line 711
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher2/FolderInfo;->unreadNum:I

    goto :goto_0

    .line 713
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iput p1, p0, Lcom/android/launcher2/FolderInfo;->unreadNum:I

    :goto_0
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 627
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    .line 629
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/launcher2/BubbleTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateFolderUnreadNum()V
    .locals 12

    .line 722
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 723
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 725
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const-string v6, "FolderIcon"

    if-ge v4, v1, :cond_4

    .line 730
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ShortcutInfo;

    .line 731
    iget-object v8, v7, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 732
    invoke-static {v8}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadNumberOfComponent(Landroid/content/ComponentName;)I

    move-result v9

    if-lez v9, :cond_3

    .line 734
    iput v9, v7, Lcom/android/launcher2/ShortcutInfo;->unreadNum:I

    move v7, v3

    .line 736
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_1

    if-eqz v8, :cond_0

    .line 737
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 741
    :cond_1
    :goto_2
    sget-boolean v10, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v10, :cond_2

    .line 742
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateFolderUnreadNum: unreadNumTotal = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", j = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", components.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 743
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 742
    invoke-static {v6, v10}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v7, v6, :cond_3

    .line 746
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v9

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 751
    :cond_4
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v0, :cond_5

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFolderUnreadNum 1 end: unreadNumTotal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/launcher2/FolderIcon;->setFolderUnreadNum(I)V

    return-void
.end method

.method public updateFolderUnreadNum(Landroid/content/ComponentName;I)V
    .locals 12

    .line 763
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 764
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 768
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const-string v6, "FolderIcon"

    if-ge v4, v1, :cond_5

    .line 770
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ShortcutInfo;

    .line 771
    iget-object v8, v7, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 772
    invoke-virtual {v8, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 773
    iput p2, v7, Lcom/android/launcher2/ShortcutInfo;->unreadNum:I

    .line 775
    :cond_0
    iget v9, v7, Lcom/android/launcher2/ShortcutInfo;->unreadNum:I

    if-lez v9, :cond_4

    move v9, v3

    .line 777
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    if-eqz v8, :cond_1

    .line 778
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 782
    :cond_2
    :goto_2
    sget-boolean v10, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v10, :cond_3

    .line 783
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateFolderUnreadNum: unreadNumTotal = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", j = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", components.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 784
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 783
    invoke-static {v6, v10}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v9, v6, :cond_4

    .line 787
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    iget v6, v7, Lcom/android/launcher2/ShortcutInfo;->unreadNum:I

    add-int/2addr v5, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 792
    :cond_5
    sget-boolean p1, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz p1, :cond_6

    .line 793
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateFolderUnreadNum 2 end: unreadNumTotal = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/launcher2/FolderIcon;->setFolderUnreadNum(I)V

    return-void
.end method
