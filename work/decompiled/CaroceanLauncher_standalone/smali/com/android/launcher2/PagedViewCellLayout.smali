.class public Lcom/android/launcher2/PagedViewCellLayout;
.super Landroid/view/ViewGroup;
.source "PagedViewCellLayout.java"

# interfaces
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewCellLayout"


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mCellHeight:I

.field private mCellWidth:I

.field protected mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

.field private mHeightGap:I

.field private mMaxGap:I

.field private mOriginalCellHeight:I

.field private mOriginalCellWidth:I

.field private mOriginalHeightGap:I

.field private mOriginalPaddingLeft:I

.field private mOriginalPaddingRight:I

.field private mOriginalWidthGap:I

.field mResources:Landroid/content/res/Resources;

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewCellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    .line 75
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result p2

    const p3, 0x7f060010

    const v0, 0x7f060012

    if-nez p2, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f060013

    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    .line 80
    iget-object p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_2

    const p3, 0x7f060011

    :cond_2
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    .line 77
    iget-object p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    .line 83
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingLeft:I

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingRight:I

    .line 86
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getTrueX()I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 87
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getTrueY()I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    const/4 p2, -0x1

    .line 88
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 89
    iget-object p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    const p3, 0x7f060014

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    .line 91
    new-instance p2, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-direct {p2, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    .line 92
    iget p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget p3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setCellDimensions(II)V

    .line 93
    iget-object p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iget p3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 95
    iget-object p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getTrueX()I
    .locals 3

    .line 495
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 496
    :goto_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v1

    const v2, 0x7f09002e

    if-nez v1, :cond_4

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 502
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f09002a

    goto :goto_1

    :cond_2
    const v0, 0x7f09002f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_2
    return p0

    .line 497
    :cond_4
    :goto_3
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    const/4 p0, 0x4

    goto :goto_4

    .line 498
    :cond_5
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_4
    return p0

    :cond_6
    if-eqz v0, :cond_7

    const/4 p0, 0x5

    goto :goto_5

    .line 500
    :cond_7
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_5
    return p0
.end method

.method private getTrueY()I
    .locals 3

    .line 486
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 487
    :goto_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v1

    const v2, 0x7f09002e

    if-nez v1, :cond_4

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 490
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f09002a

    goto :goto_1

    :cond_3
    const v0, 0x7f09002f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_2
    return p0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 488
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_4

    :cond_5
    const/4 p0, 0x5

    :goto_4
    return p0
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z
    .locals 3

    .line 142
    iget v0, p4, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    if-ltz v0, :cond_2

    iget v0, p4, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    iget v0, p4, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    if-ltz v0, :cond_2

    iget v0, p4, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 145
    iget v0, p4, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iput v0, p4, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 146
    :cond_0
    iget v0, p4, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iput v0, p4, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 148
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 149
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public calculateCellCount(IIII)V
    .locals 2

    .line 431
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getTrueX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 432
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getTrueY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 433
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateCellCount width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", height = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", maxCellCountX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", maxCellCountY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mCellCountX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mCellCountY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", this = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PagedViewCellLayout"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->requestLayout()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .line 127
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 468
    instance-of p0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    return p0
.end method

.method createHardwareLayers()V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAW:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createHardwareLayers: mChildren = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedViewCellLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method destroyHardwareLayers()V
    .locals 2

    .line 107
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAW:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyHardwareLayers: mChildren = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedViewCellLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public enableCenteredContent(Z)V
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->enableCenteredContent(Z)V

    return-void
.end method

.method public estimateCellHSpan(I)I
    .locals 4

    .line 388
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 391
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    add-int/2addr v3, v1

    div-int/2addr v2, v3

    const/4 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 393
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_0

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "estimateCellHSpan width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", availWidth = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", n = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PagedViewCellLayout"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method public estimateCellHeight(I)I
    .locals 2

    .line 454
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "estimateCellHeight sSpan = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCellHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedViewCellLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_0
    iget p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public estimateCellPosition(II)[I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int v4, p1, v3

    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    mul-int/2addr v4, p1

    add-int/2addr v2, v4

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v2

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int v5, p2, v4

    add-int/2addr v2, v5

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    mul-int/2addr v5, p2

    add-int/2addr v2, v5

    div-int/2addr v4, v0

    add-int/2addr v2, v4

    const/4 v0, 0x1

    aput v2, v1, v0

    .line 424
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_0

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "estimateCellPosition x = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", y = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", result[0] = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget p2, v1, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", result[1] = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget p2, v1, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", this = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PagedViewCellLayout"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public estimateCellVSpan(I)I
    .locals 4

    .line 407
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 410
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    add-int/2addr v3, v1

    div-int/2addr v2, v3

    const/4 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 412
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "estimateCellVSpan width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", availHeight = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", n = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PagedViewCellLayout"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method public estimateCellWidth(I)I
    .locals 2

    .line 443
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "estimeateCellWidth hSpan = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCellWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedViewCellLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    iget p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 463
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 473
    new-instance p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCellCountForDimensions(II)[I
    .locals 4

    .line 360
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p1, v0

    .line 363
    div-int/2addr v1, v0

    add-int v2, p2, v0

    .line 364
    div-int/2addr v2, v0

    .line 366
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellCountForDimensions width = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", height ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", spanX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", spanY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", this = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PagedViewCellLayout"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 p1, 0x0

    aput v1, p0, p1

    const/4 p1, 0x1

    aput v2, p0, p1

    return-object p0
.end method

.method public getCellCountX()I
    .locals 0

    .line 205
    iget p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    return p0
.end method

.method public getCellCountY()I
    .locals 0

    .line 209
    iget p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    return p0
.end method

.method public getCellHeight()I
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    return p0
.end method

.method public getCellWidth()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    return p0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    return-object p0
.end method

.method getContentHeight()I
    .locals 3

    .line 296
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 297
    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v2, v0

    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    return v2

    :cond_0
    return v1
.end method

.method getContentWidth()I
    .locals 2

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getWidthBeforeFirstLayout()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getPageChildCount()I
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result p0

    return p0
.end method

.method getWidthBeforeFirstLayout()I
    .locals 3

    .line 303
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 304
    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v2, v0

    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    return v2

    :cond_0
    return v1
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 0

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    const/4 p1, 0x1

    .line 379
    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isDragging:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 311
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v5, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 213
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 214
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 216
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 217
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 225
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingRight:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 227
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v1, v1, -0x1

    .line 228
    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    .line 230
    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    const-string v4, ", mOriginalCellHeight = "

    const-string v5, ", mOriginalCellWidth ="

    const-string v6, ", mWidthGap = "

    const/4 v7, 0x0

    const-string v8, "PagedViewCellLayout"

    if-ltz v3, :cond_1

    iget v9, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    if-gez v9, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iput v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    .line 244
    iput v9, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    goto/16 :goto_3

    .line 231
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v3, v9

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, p2, v9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    .line 233
    iget v10, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v11, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    mul-int/2addr v10, v11

    sub-int/2addr v3, v10

    .line 234
    iget v10, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iget v11, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    .line 235
    iget v10, p0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    if-lez v1, :cond_2

    div-int v11, v3, v1

    goto :goto_1

    :cond_2
    move v11, v7

    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    .line 236
    iget v10, p0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    if-lez v2, :cond_3

    div-int/2addr v9, v2

    goto :goto_2

    :cond_3
    move v9, v7

    :goto_2
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    .line 237
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_4

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMeasure 0: mMaxGap = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, p0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", numWidthGaps = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hFreeSpace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 250
    :goto_3
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    const-string v2, ", this = "

    const-string v3, ", newHeight = "

    if-eqz v1, :cond_5

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMeasure 1: newWidth = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", widthSpecMode = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ",mPaddingLeft = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", mPaddingRight = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ",mCellCountX = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", mCellWidth = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", mOriginalWidthGap ="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", mOriginalHeightGap = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_8

    .line 255
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v1, v0

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v4, v1

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, -0x1

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 257
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_6

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure 2: newWidth = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eq p2, p1, :cond_7

    sub-int p2, p1, p2

    shr-int/lit8 v1, p2, 0x1

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v1

    .line 270
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr p2, v1

    add-int/2addr v5, p2

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, v4, p2, v5, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    goto :goto_4

    :cond_7
    move p1, p2

    .line 274
    :goto_4
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedViewCellLayout;->setMeasuredDimension(II)V

    move p2, v0

    .line 277
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v0

    :goto_5
    if-ge v7, v0, :cond_9

    .line 279
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 280
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 282
    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 284
    :cond_9
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_a

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMeasure 4: newWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedViewCellLayout;->setMeasuredDimension(II)V

    return-void

    .line 220
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 320
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 321
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 327
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 329
    iget p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    :cond_0
    if-nez v0, :cond_2

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    int-to-float p1, v1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    move v0, p0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :cond_3
    :goto_1
    return v0
.end method

.method public removeAllViewsOnPage()V
    .locals 2

    .line 158
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAllViewsOnPage: mChildren = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedViewCellLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->removeAllViews()V

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->destroyHardwareLayers()V

    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 2

    .line 168
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeViewOnPageAt: mChildren = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedViewCellLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->removeViewAt(I)V

    return-void
.end method

.method public resetChildrenOnKeyListeners()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCellCount(II)V
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getTrueX()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 347
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getTrueY()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->requestLayout()V

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public setGap(II)V
    .locals 0

    .line 352
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 353
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    .line 354
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 478
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 481
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingLeft:I

    .line 482
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingRight:I

    return-void
.end method
