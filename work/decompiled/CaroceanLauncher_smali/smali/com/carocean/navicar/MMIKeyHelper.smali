.class public Lcom/carocean/navicar/MMIKeyHelper;
.super Ljava/lang/Object;
.source "MMIKeyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carocean/navicar/MMIKeyHelper$ViewItem;,
        Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;,
        Lcom/carocean/navicar/MMIKeyHelper$Callback;,
        Lcom/carocean/navicar/MMIKeyHelper$onDispatchKeyEvent;,
        Lcom/carocean/navicar/MMIKeyHelper$SelectLoop;,
        Lcom/carocean/navicar/MMIKeyHelper$SelectMode;,
        Lcom/carocean/navicar/MMIKeyHelper$Mode;
    }
.end annotation


# static fields
.field public static final MAX_SECTOR_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MMIKeyHelper"


# instance fields
.field private final FOCUS:I

.field private final KEY_TIMEOUT_MILLIS:I

.field private final MSG_KEY_TIMEOUT:I

.field private final SELECT:I

.field private mCurSector:I

.field private mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mLastKeyDownCode:I

.field private mLastSector:I

.field private mSelectIndexArray:[I

.field private mSelectLoopArray:[I

.field private mSelectMode:I

.field private mSelectStatus:I

.field private mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

.field private mViewListGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/carocean/navicar/MMIKeyHelper$ViewItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->SELECT:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->FOCUS:I

    .line 103
    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mLastSector:I

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 104
    iput-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    new-array v1, v1, [I

    .line 105
    iput-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectLoopArray:[I

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    .line 112
    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectStatus:I

    .line 113
    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectMode:I

    .line 118
    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->MSG_KEY_TIMEOUT:I

    const/16 v1, 0x1388

    .line 119
    iput v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->KEY_TIMEOUT_MILLIS:I

    .line 120
    new-instance v1, Lcom/carocean/navicar/MMIKeyHelper$1;

    invoke-direct {v1, p0}, Lcom/carocean/navicar/MMIKeyHelper$1;-><init>(Lcom/carocean/navicar/MMIKeyHelper;)V

    iput-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mHandler:Landroid/os/Handler;

    .line 605
    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mLastKeyDownCode:I

    .line 109
    invoke-virtual {p0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSectorCount(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/carocean/navicar/MMIKeyHelper;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectMode:I

    return p0
.end method

.method private doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 77
    iget p2, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 78
    iget-object p2, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setSelected(Z)V

    .line 80
    :cond_1
    iget p2, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_3

    .line 81
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz p0, :cond_3

    .line 82
    iget-object p1, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-interface {p0, p1, p3}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onSelectChanged(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    if-ne v0, p2, :cond_3

    .line 90
    iget p2, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_3

    .line 91
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz p0, :cond_3

    .line 92
    iget-object p1, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-interface {p0, p1, p3}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onFocused(Landroid/view/View;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private findNextVisibleView(II)I
    .locals 8

    .line 362
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 368
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    .line 369
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    aget v3, v3, p1

    move v5, v3

    :cond_1
    const/4 v6, 0x0

    if-nez p2, :cond_2

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_4

    .line 375
    iget-object v5, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectLoopArray:[I

    aget v5, v5, p1

    if-ne v5, v4, :cond_7

    .line 376
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    move v5, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 387
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_4

    .line 388
    iget-object v5, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectLoopArray:[I

    aget v5, v5, p1

    if-ne v5, v4, :cond_3

    move v5, v6

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 v6, p0, -0x1

    goto :goto_1

    .line 397
    :cond_4
    :goto_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 398
    iget-object v6, v2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    if-nez v6, :cond_5

    return v1

    .line 402
    :cond_5
    iget-object v6, v2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_6

    if-ne v3, v5, :cond_1

    :cond_6
    move v6, v5

    :cond_7
    :goto_1
    if-eq v3, v6, :cond_8

    if-eqz v2, :cond_8

    .line 404
    iget-object p0, v2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_8

    move v1, v6

    :cond_8
    return v1
.end method

.method private hideSelectedStatusLater()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private onBackPressed()V
    .locals 0

    return-void
.end method

.method private onEnter(Landroid/view/KeyEvent;)V
    .locals 3

    .line 556
    iget-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 559
    :cond_0
    iget p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 560
    invoke-direct {p0}, Lcom/carocean/navicar/MMIKeyHelper;->hideSelectedStatusLater()V

    .line 561
    iget p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectStatus:I

    if-nez p1, :cond_1

    .line 563
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "MMIKeyHelper"

    const-string p1, "onEnter only show the select status"

    .line 564
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 570
    :cond_1
    iget-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    iget v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 571
    iget v1, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 572
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    iget v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 574
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz p0, :cond_6

    .line 575
    iget-object p1, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-interface {p0, p1}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onEnter(Landroid/view/View;)V

    goto :goto_1

    .line 579
    :cond_2
    iget-boolean v1, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mFocused:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mFocused:Z

    .line 580
    iget-boolean v0, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mFocused:Z

    if-eqz v0, :cond_3

    .line 581
    iput-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 584
    iput-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 586
    :goto_0
    iget v0, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 587
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz p0, :cond_6

    .line 588
    iget-object v0, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    iget-boolean p1, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mFocused:Z

    invoke-interface {p0, v0, p1}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onFocused(Landroid/view/View;Z)V

    goto :goto_1

    .line 594
    :cond_4
    iget v0, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 595
    iget-object v0, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 597
    :cond_5
    iget v0, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 598
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz p0, :cond_6

    .line 599
    iget-object p1, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-interface {p0, p1}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onEnter(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private sectorChange(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 472
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 475
    :cond_0
    iget v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 476
    invoke-direct {p0}, Lcom/carocean/navicar/MMIKeyHelper;->hideSelectedStatusLater()V

    .line 477
    iget v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectStatus:I

    if-nez v0, :cond_1

    const-string v0, "MMIKeyHelper"

    const-string v3, "sectorChange show the select status"

    .line 478
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0, v2}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_5

    .line 489
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 490
    instance-of v2, v0, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    .line 492
    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;

    iget v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    invoke-interface {v0, v2, p2}, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;->onMenuUp(II)V

    goto :goto_0

    .line 495
    :cond_2
    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;

    iget v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    invoke-interface {v0, v2, p2}, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;->onMenuDown(II)V

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 499
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    invoke-interface {p0}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onMenuUpEnd()V

    :cond_4
    return v1

    .line 505
    :cond_5
    iget v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mLastSector:I

    if-nez p1, :cond_7

    sub-int/2addr v0, v2

    .line 509
    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    if-gez v0, :cond_6

    .line 511
    iput v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    .line 512
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v0, :cond_9

    .line 513
    invoke-interface {v0}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onMenuUpEnd()V

    goto :goto_1

    .line 518
    :cond_6
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v4, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    add-int/2addr v4, v2

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 519
    invoke-direct {p0, v0, v1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    goto :goto_1

    :cond_7
    add-int/2addr v0, v2

    .line 524
    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    .line 525
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_8

    .line 526
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    goto :goto_1

    .line 530
    :cond_8
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    iget v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v4, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    sub-int/2addr v4, v2

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 531
    invoke-direct {p0, v0, v1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    .line 534
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    iget v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v4, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 535
    invoke-direct {p0, v0, v1, v2}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    .line 536
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    if-eqz v0, :cond_b

    .line 537
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v3, :cond_a

    .line 538
    iget-object v0, v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-interface {v3, v0, v1}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onFocused(Landroid/view/View;Z)V

    :cond_a
    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    :cond_b
    if-eqz p2, :cond_d

    .line 543
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v0, :cond_d

    instance-of v1, v0, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;

    if-eqz v1, :cond_d

    if-nez p1, :cond_c

    .line 545
    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;

    iget p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;->onMenuUp(II)V

    goto :goto_2

    .line 548
    :cond_c
    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;

    iget p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;->onMenuDown(II)V

    :cond_d
    :goto_2
    return v2
.end method


# virtual methods
.method public addView(Landroid/view/View;II)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    .line 218
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    or-int/lit8 p2, p2, 0x10

    invoke-direct {v0, p0, p1, p2}, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;-><init>(Lcom/carocean/navicar/MMIKeyHelper;Landroid/view/View;I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 212
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addView mViewListGroup.size(): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ",view==null:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MMIKeyHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clear()V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 815
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public fillView(Landroid/view/View;III)V
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    .line 765
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_1

    .line 766
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    or-int/lit8 p2, p2, 0x10

    invoke-direct {v0, p0, p1, p2}, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;-><init>(Lcom/carocean/navicar/MMIKeyHelper;Landroid/view/View;I)V

    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public getLastSector()I
    .locals 0

    .line 810
    iget p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mLastSector:I

    return p0
.end method

.method public getSectorSize(I)I
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 738
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    if-eqz v0, :cond_0

    .line 251
    iget p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSelectedSector()I
    .locals 0

    .line 257
    iget p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    return p0
.end method

.method public handlerMMIKeys(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 608
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0x42

    if-eq v0, v1, :cond_7

    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    const/16 v1, 0x16

    if-eq v0, v1, :cond_4

    const/16 v1, 0x47

    if-eq v0, v1, :cond_2

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    const/16 v1, 0x128

    if-eq v0, v1, :cond_4

    const/16 v1, 0x129

    if-eq v0, v1, :cond_5

    goto/16 :goto_1

    .line 637
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v0, :cond_6

    .line 639
    instance-of v1, v0, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;

    if-eqz v1, :cond_6

    .line 640
    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;

    iget v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;->onMenuDown(II)V

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mLastKeyDownCode:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 645
    invoke-direct {p0, v3, p1}, Lcom/carocean/navicar/MMIKeyHelper;->sectorChange(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 624
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v0, :cond_6

    .line 626
    instance-of v1, v0, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;

    if-eqz v1, :cond_6

    .line 627
    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;

    iget v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;->onMenuUp(II)V

    goto :goto_0

    .line 631
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mLastKeyDownCode:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 632
    invoke-direct {p0, v2, p1}, Lcom/carocean/navicar/MMIKeyHelper;->sectorChange(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 618
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 619
    invoke-virtual {p0, v3, p1}, Lcom/carocean/navicar/MMIKeyHelper;->selectChange(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 611
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 612
    invoke-virtual {p0, v2, p1}, Lcom/carocean/navicar/MMIKeyHelper;->selectChange(ILandroid/view/KeyEvent;)V

    :cond_6
    :goto_0
    move v2, v3

    goto :goto_1

    .line 650
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mLastKeyDownCode:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 651
    invoke-direct {p0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->onEnter(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 670
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 671
    invoke-direct {p0}, Lcom/carocean/navicar/MMIKeyHelper;->onBackPressed()V

    .line 677
    :cond_9
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 678
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    iput p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mLastKeyDownCode:I

    :cond_a
    return v2
.end method

.method public initSectorSize(II)V
    .locals 5

    .line 745
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 749
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    .line 752
    new-instance v3, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v1}, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;-><init>(Lcom/carocean/navicar/MMIKeyHelper;Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    :cond_1
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public insertSector(I)V
    .locals 5

    .line 773
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "MMIKeyHelper"

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    const-string p0, "setSectorCount: too many sectors."

    .line 774
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-le p1, v0, :cond_1

    .line 778
    iget-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    if-gtz p1, :cond_2

    move p1, v2

    .line 784
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-le v0, p1, :cond_3

    .line 785
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 788
    :cond_3
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    aput v2, v0, p1

    .line 790
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-le v0, p1, :cond_4

    .line 791
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectLoopArray:[I

    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 793
    :cond_4
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectLoopArray:[I

    aput v2, v0, p1

    .line 795
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertSector "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ,size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isSelectLoop(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectLoopArray:[I

    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 162
    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public removeFromSector(I)V
    .locals 6

    const/4 v0, 0x1

    if-lt p1, v0, :cond_5

    .line 713
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-lez v1, :cond_4

    if-lt v1, p1, :cond_4

    move v2, v1

    .line 719
    :goto_1
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_1

    .line 720
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    aput v5, v3, v2

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v1

    .line 722
    :goto_2
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_2

    .line 723
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectLoopArray:[I

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    aput v5, v3, v2

    move v2, v4

    goto :goto_2

    .line 725
    :cond_2
    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 726
    iget v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    const/4 v2, 0x0

    .line 728
    iput v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    .line 729
    iget-object v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v5, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    invoke-direct {p0, v3, v2, v0}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_3
    const-string p0, "MMIKeyHelper"

    const-string p1, "removeFromSector: leave one sector at least."

    .line 714
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeSector(I)V
    .locals 5

    .line 686
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-string p0, "MMIKeyHelper"

    const-string p1, "removeSector: leave on sector at least."

    .line 687
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 690
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    move v0, p1

    .line 692
    :goto_0
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    add-int/lit8 v2, v0, 0x1

    aget v3, v1, v2

    aput v3, v1, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p1

    .line 695
    :goto_1
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 696
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectLoopArray:[I

    add-int/lit8 v3, v0, 0x1

    aget v4, v1, v3

    aput v4, v1, v0

    move v0, v3

    goto :goto_1

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 700
    iget p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    const/4 p1, 0x0

    .line 702
    iput p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    .line 703
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    invoke-direct {p0, v0, p1, v2}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    :cond_3
    return-void
.end method

.method public sectorMove(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-direct {p0, p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->sectorChange(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method public selectChange(ILandroid/view/KeyEvent;)V
    .locals 4

    .line 412
    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 415
    :cond_0
    iget p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectMode:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/carocean/navicar/MMIKeyHelper;->hideSelectedStatusLater()V

    .line 418
    iget p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectStatus:I

    if-nez p2, :cond_1

    .line 419
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "MMIKeyHelper"

    const-string p1, "selectChange only show the select status"

    .line 420
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_1
    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 427
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz p0, :cond_3

    .line 428
    iget-object p2, p2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-interface {p0, p2, v0}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onTurnning(Landroid/view/View;Z)V

    :cond_3
    return-void

    .line 432
    :cond_4
    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    iget v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 433
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 434
    iget v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-direct {p0, v2, p1}, Lcom/carocean/navicar/MMIKeyHelper;->findNextVisibleView(II)I

    move-result p1

    if-ltz p1, :cond_7

    .line 436
    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget v2, v2, v3

    .line 437
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 438
    invoke-direct {p0, v2, v1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    .line 454
    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aput p1, v2, v3

    .line 455
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 456
    invoke-direct {p0, p1, v1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    goto :goto_2

    .line 459
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 461
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz p0, :cond_7

    .line 462
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    iget-object p2, p2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    invoke-interface {p0, p2, v0}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onTurnning(Landroid/view/View;Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    return-void
.end method

.method public setSectorCount(I)V
    .locals 4

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const-string p0, "MMIKeyHelper"

    const-string p1, "setSectorCount too many sectors."

    .line 137
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    .line 141
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 143
    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 146
    :goto_1
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 147
    aput v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v0

    .line 149
    :goto_2
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectLoopArray:[I

    array-length v2, v1

    if-ge p1, v2, :cond_3

    .line 150
    aput v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setSelectLoop(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    .line 155
    iget-object p0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectLoopArray:[I

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 156
    aput p2, p0, p1

    :cond_0
    return-void
.end method

.method public setSelectMode(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectMode:I

    return-void
.end method

.method public setSelectSector(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 800
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 801
    iget v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    if-eq v0, p1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    .line 803
    iput p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    .line 804
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    :cond_0
    return-void
.end method

.method public setSelected(II)V
    .locals 4

    if-ltz p1, :cond_5

    .line 330
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    if-ltz p2, :cond_5

    .line 331
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 332
    iget v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    aget v2, v2, v0

    if-eq p2, v2, :cond_1

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 334
    iput p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    .line 335
    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    aput p2, v2, p1

    .line 336
    invoke-direct {p0, v0, v1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    .line 338
    :cond_1
    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 339
    iget p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectMode:I

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 340
    invoke-direct {p0, p1, v1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 343
    iget p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectStatus:I

    if-ne p2, v0, :cond_3

    .line 344
    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    invoke-virtual {p0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 348
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    if-eqz p2, :cond_5

    .line 349
    iget-object p1, p1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    iget-object p2, p2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    if-eq p1, p2, :cond_5

    .line 350
    iget-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz p1, :cond_4

    .line 351
    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    iget-object p2, p2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-interface {p1, p2, v1}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onFocused(Landroid/view/View;Z)V

    :cond_4
    const/4 p1, 0x0

    .line 353
    iput-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    :cond_5
    return-void
.end method

.method public setSelected(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setSelected(Landroid/view/View;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v5, v0

    move v4, v1

    move v3, v2

    .line 277
    :goto_0
    iget-object v6, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 278
    iget-object v6, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move v7, v2

    .line 280
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 281
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 282
    iget-object v8, v5, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    if-ne v8, p1, :cond_1

    move v4, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ltz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-ne v4, v1, :cond_5

    return-void

    .line 295
    :cond_5
    iget v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    if-ne v1, v3, :cond_6

    iget-object v6, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    aget v6, v6, v1

    if-eq v4, v6, :cond_7

    .line 296
    :cond_6
    iget-object v6, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v7, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 297
    iput v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    .line 298
    iget-object v6, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    aput v4, v6, v3

    .line 299
    invoke-direct {p0, v1, v2, v2}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    .line 302
    :cond_7
    iget v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectMode:I

    const/4 v3, 0x1

    if-nez v1, :cond_8

    .line 303
    invoke-direct {p0, v5, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    goto :goto_4

    :cond_8
    if-ne v1, v3, :cond_a

    if-eqz p2, :cond_9

    .line 307
    iget p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectStatus:I

    if-ne p2, v3, :cond_a

    .line 308
    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    invoke-virtual {p0, v2}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    goto :goto_4

    .line 312
    :cond_9
    iget p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectStatus:I

    if-ne p2, v3, :cond_a

    .line 314
    invoke-direct {p0, v5, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->doViewAction(Lcom/carocean/navicar/MMIKeyHelper$ViewItem;IZ)V

    .line 317
    :cond_a
    :goto_4
    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    if-eqz p2, :cond_c

    .line 318
    iget-object p2, p2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    if-eq p1, p2, :cond_c

    .line 319
    iget-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz p1, :cond_b

    .line 320
    iget-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    iget-object p2, p2, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-interface {p1, p2, v2}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onFocused(Landroid/view/View;Z)V

    .line 322
    :cond_b
    iput-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewItemFocused:Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    :cond_c
    return-void
.end method

.method public setViewMode(Landroid/view/View;I)V
    .locals 6

    .line 225
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 229
    :goto_0
    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v3, v0

    .line 232
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 233
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    .line 234
    iget-object v5, v4, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    if-ne v5, p1, :cond_0

    .line 235
    iput p2, v4, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public showSelectedStatus(Z)Z
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    iput p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectStatus:I

    .line 179
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    iget v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 181
    iget-object v2, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectIndexArray:[I

    iget v3, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCurSector:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 182
    iget v3, v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 186
    :goto_0
    iget v4, v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    if-eqz p1, :cond_2

    .line 188
    iget-object v1, v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    iget-object v1, v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 193
    :cond_2
    iget-object v2, v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 198
    :cond_3
    :goto_1
    iget v1, v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 199
    iget-object v1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mCustomCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v1, :cond_4

    .line 200
    iget-object v0, v0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    invoke-interface {v1, v0, p1}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onSelectChanged(Landroid/view/View;Z)V

    :cond_4
    if-eqz p1, :cond_5

    .line 204
    invoke-direct {p0}, Lcom/carocean/navicar/MMIKeyHelper;->hideSelectedStatusLater()V

    :cond_5
    move v1, v3

    :cond_6
    return v1
.end method

.method public showSelectedView()V
    .locals 1

    const/4 v0, 0x1

    .line 834
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedView(Z)V

    return-void
.end method

.method public showSelectedView(Z)V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper;->mViewListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 843
    iget p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mSelectStatus:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 844
    invoke-virtual {p0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "MMIKeyHelper"

    const-string v0, "onBackPressed: show the select status"

    .line 845
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_1
    invoke-direct {p0}, Lcom/carocean/navicar/MMIKeyHelper;->hideSelectedStatusLater()V

    goto :goto_0

    .line 851
    :cond_2
    iget-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    :goto_0
    return-void
.end method
