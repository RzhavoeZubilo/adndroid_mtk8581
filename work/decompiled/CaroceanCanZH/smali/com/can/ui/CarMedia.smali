.class public Lcom/can/ui/CarMedia;
.super Landroid/app/Activity;
.source "CarMedia.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "CarAux"


# instance fields
.field private dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

.field private mCarMediaMode:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDisc:[Landroid/widget/ImageView;

.field private mDiscLayout:Landroid/view/View;

.field private mEnterMode:I

.field private mMediaLayout:Landroid/view/View;

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private mMenuLayout:Landroid/view/View;

.field private mMenuStatus:I

.field private mMenuText:Landroid/widget/TextView;

.field private mOperationACS:Landroid/widget/ImageView;

.field private mOperationALS:Landroid/widget/ImageView;

.field private mOperationAM:Landroid/widget/ImageView;

.field private mOperationAUDIO:Landroid/widget/ImageView;

.field private mOperationCHPlus:Landroid/widget/ImageView;

.field private mOperationCHReduce:Landroid/widget/ImageView;

.field private mOperationFM:Landroid/widget/ImageView;

.field private mOperationMUTE:Landroid/widget/ImageView;

.field private mOperationMedia:Landroid/widget/ImageView;

.field private mOperationNext:Landroid/widget/ImageView;

.field private mOperationNum1:Landroid/widget/ImageView;

.field private mOperationNum2:Landroid/widget/ImageView;

.field private mOperationNum3:Landroid/widget/ImageView;

.field private mOperationNum4:Landroid/widget/ImageView;

.field private mOperationNum5:Landroid/widget/ImageView;

.field private mOperationNum6:Landroid/widget/ImageView;

.field private mOperationPrev:Landroid/widget/ImageView;

.field private mOperationRand:Landroid/widget/ImageView;

.field private mOperationRepeat:Landroid/widget/ImageView;

.field private mOperationSCAN:Landroid/widget/ImageView;

.field private mOperationSet:Landroid/widget/ImageView;

.field private mRadioSystemIndex:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRightIcon:Landroid/widget/ImageView;

.field private mSTText:Landroid/widget/TextView;

.field private mSbMenuString:Ljava/lang/StringBuilder;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mTestFm:F

.field private mTestTmp:I

.field private mText1:Landroid/widget/TextView;

.field private mText2:Landroid/widget/TextView;

.field private mText3:Landroid/widget/TextView;

.field manager:Landroid/media/AudioManager;

.field private mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

.field onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/can/ui/CarMedia;->manager:Landroid/media/AudioManager;

    const/high16 v0, 0x42af0000    # 87.5f

    .line 43
    iput v0, p0, Lcom/can/ui/CarMedia;->mTestFm:F

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/can/ui/CarMedia;->mTestTmp:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/can/ui/CarMedia;->mMenuStatus:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/can/ui/CarMedia;->mCarMediaMode:I

    const/4 v2, 0x6

    new-array v2, v2, [Landroid/widget/ImageView;

    .line 47
    iput-object v2, p0, Lcom/can/ui/CarMedia;->mDisc:[Landroid/widget/ImageView;

    .line 51
    iput v1, p0, Lcom/can/ui/CarMedia;->mEnterMode:I

    .line 52
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/can/ui/CarMedia;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    .line 53
    iput v0, p0, Lcom/can/ui/CarMedia;->mRadioSystemIndex:I

    .line 103
    new-instance v0, Lcom/can/ui/CarMedia$1;

    invoke-direct {v0, p0}, Lcom/can/ui/CarMedia$1;-><init>(Lcom/can/ui/CarMedia;)V

    iput-object v0, p0, Lcom/can/ui/CarMedia;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    .line 557
    new-instance v0, Lcom/can/ui/CarMedia$2;

    invoke-direct {v0, p0}, Lcom/can/ui/CarMedia$2;-><init>(Lcom/can/ui/CarMedia;)V

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 575
    new-instance v0, Lcom/can/ui/CarMedia$3;

    invoke-direct {v0, p0}, Lcom/can/ui/CarMedia$3;-><init>(Lcom/can/ui/CarMedia;)V

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mConnection:Landroid/content/ServiceConnection;

    .line 662
    sget-object v0, Lcom/can/ui/-$$Lambda$CarMedia$XqWei3UC08CMCZahUSt4i3XpzO8;->INSTANCE:Lcom/can/ui/-$$Lambda$CarMedia$XqWei3UC08CMCZahUSt4i3XpzO8;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/can/ui/CarMedia;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/can/ui/CarMedia;->mCarMediaMode:I

    return p0
.end method

.method static synthetic access$002(Lcom/can/ui/CarMedia;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/can/ui/CarMedia;->mCarMediaMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/can/ui/CarMedia;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/can/ui/CarMedia;->updateTitleAndRightIcon()V

    return-void
.end method

.method static synthetic access$200(Lcom/can/ui/CarMedia;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/can/ui/CarMedia;->mMenuStatus:I

    return p0
.end method

.method static synthetic access$202(Lcom/can/ui/CarMedia;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/can/ui/CarMedia;->mMenuStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/can/ui/CarMedia;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/can/ui/CarMedia;->mEnterMode:I

    return p0
.end method

.method static synthetic access$400(Lcom/can/ui/CarMedia;[BZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/can/ui/CarMedia;->updateCarMediaView([BZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/can/ui/CarMedia;[B)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/can/ui/CarMedia;->updateCarMenuView([B)V

    return-void
.end method

.method static synthetic access$602(Lcom/can/ui/CarMedia;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/can/ui/CarMedia;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$702(Lcom/can/ui/CarMedia;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/can/ui/CarMedia;->mRadioSystemIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/can/ui/CarMedia;)I
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/can/ui/CarMedia;->getRadioSystemIndex()I

    move-result p0

    return p0
.end method

.method private getRadioSystemIndex()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RadioSystemIndex"

    .line 763
    invoke-static {p0, v1, v0}, Lcom/can/tool/DataConvert;->getIntEx(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 765
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private initMcu()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/can/ui/CarMedia;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1, v2}, Lcom/carocean/navicar/McuServiceManager;->regCallback([ILcom/carocean/navicar/McuServiceManager$DataListener;)V

    .line 99
    iget-object p0, p0, Lcom/can/ui/CarMedia;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    invoke-virtual {p0}, Lcom/carocean/navicar/McuServiceManager;->isServiceConnected()Z

    return-void

    nop

    :array_0
    .array-data 4
        0x1e
        0x1f
    .end array-data
.end method

.method static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v5, 0x7f080615

    const v6, 0x7f080614

    const v7, 0x7f08060d

    const v8, 0x7f080612

    const v9, 0x7f08060a

    const v10, 0x7f08060b

    const v11, 0x7f08061d

    const v12, 0x7f08060e

    const v13, 0x7f08060f

    const v14, 0x7f080613

    const v15, 0x7f08061a

    const v1, 0x7f080611

    const v2, 0x7f08060c

    const v3, 0x7f080610

    const/4 v4, 0x0

    if-nez v0, :cond_11

    .line 665
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 666
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 667
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 668
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 669
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 670
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 671
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v15, :cond_3

    .line 672
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 673
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v14, :cond_4

    .line 674
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 675
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v13, :cond_5

    .line 676
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 677
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v12, :cond_6

    .line 678
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 679
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 680
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 681
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v10, :cond_8

    .line 682
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 683
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v9, :cond_9

    .line 684
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 685
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 686
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 687
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v7, :cond_b

    .line 688
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 689
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v6, :cond_c

    .line 690
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 691
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v5, :cond_d

    .line 692
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 693
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080616

    if-ne v0, v1, :cond_e

    .line 694
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 695
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080617

    if-ne v0, v1, :cond_f

    .line 696
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 697
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080618

    if-ne v0, v1, :cond_10

    .line 698
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 699
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080619

    if-ne v0, v1, :cond_24

    .line 700
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 702
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_24

    .line 703
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_13

    .line 704
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 705
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_14

    .line 706
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 707
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v1, :cond_15

    .line 708
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 709
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v15, :cond_16

    .line 710
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 711
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v14, :cond_17

    .line 712
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 713
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v13, :cond_18

    .line 714
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 715
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v12, :cond_19

    .line 716
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 717
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v11, :cond_1a

    .line 718
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 719
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v10, :cond_1b

    .line 720
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 721
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v9, :cond_1c

    .line 722
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 723
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v8, :cond_1d

    .line 724
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto/16 :goto_0

    .line 725
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v7, :cond_1e

    .line 726
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto :goto_0

    .line 727
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v6, :cond_1f

    .line 728
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto :goto_0

    .line 729
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080615

    if-ne v0, v1, :cond_20

    .line 730
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto :goto_0

    .line 731
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080616

    if-ne v0, v1, :cond_21

    .line 732
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto :goto_0

    .line 733
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080617

    if-ne v0, v1, :cond_22

    .line 734
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto :goto_0

    .line 735
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080618

    if-ne v0, v1, :cond_23

    .line 736
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    goto :goto_0

    .line 737
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080619

    if-ne v0, v1, :cond_24

    .line 738
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/carocean/navicar/util/McuUtils;->sendCrownKeyCmd(I)V

    :cond_24
    :goto_0
    return v4
.end method

.method private registerMediaButton()V
    .locals 3

    .line 593
    new-instance v0, Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Lcom/can/ui/CarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/can/ui/CarMedia;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mMediaSession:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x10003

    .line 597
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 599
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 600
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mMediaSession:Landroid/media/session/MediaSession;

    new-instance v1, Lcom/can/ui/CarMedia$4;

    invoke-direct {v1, p0}, Lcom/can/ui/CarMedia$4;-><init>(Lcom/can/ui/CarMedia;)V

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    return-void
.end method

.method private setupViews()V
    .locals 4

    const v0, 0x7f0801c8

    .line 151
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mMediaLayout:Landroid/view/View;

    const v0, 0x7f0801cd

    .line 152
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mMenuLayout:Landroid/view/View;

    const v0, 0x7f0801ce

    .line 153
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mMenuText:Landroid/widget/TextView;

    const v0, 0x7f0802d2

    .line 154
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mDiscLayout:Landroid/view/View;

    const/4 v1, 0x4

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080701

    .line 156
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mRightIcon:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mDisc:[Landroid/widget/ImageView;

    const v2, 0x7f0802cc

    invoke-virtual {p0, v2}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 158
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mDisc:[Landroid/widget/ImageView;

    const v2, 0x7f0802cd

    invoke-virtual {p0, v2}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 159
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mDisc:[Landroid/widget/ImageView;

    const v2, 0x7f0802ce

    invoke-virtual {p0, v2}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 160
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mDisc:[Landroid/widget/ImageView;

    const v2, 0x7f0802cf

    invoke-virtual {p0, v2}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 161
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mDisc:[Landroid/widget/ImageView;

    const v2, 0x7f0802d0

    invoke-virtual {p0, v2}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 162
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mDisc:[Landroid/widget/ImageView;

    const v1, 0x7f0802d1

    invoke-virtual {p0, v1}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v0, 0x7f0801ca

    .line 164
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    const v0, 0x7f0801cb

    .line 165
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    const v0, 0x7f0801cc

    .line 166
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mText3:Landroid/widget/TextView;

    const v0, 0x7f080610

    .line 168
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationFM:Landroid/widget/ImageView;

    .line 169
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationFM:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08060c

    .line 171
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationAM:Landroid/widget/ImageView;

    .line 172
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationAM:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080611

    .line 174
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationMedia:Landroid/widget/ImageView;

    .line 175
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationMedia:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08061a

    .line 177
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationPrev:Landroid/widget/ImageView;

    .line 178
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationPrev:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080613

    .line 180
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNext:Landroid/widget/ImageView;

    .line 181
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNext:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08060f

    .line 183
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationCHReduce:Landroid/widget/ImageView;

    .line 184
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationCHReduce:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08060e

    .line 186
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationCHPlus:Landroid/widget/ImageView;

    .line 187
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationCHPlus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0801c9

    .line 189
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mSTText:Landroid/widget/TextView;

    const v0, 0x7f08061c

    .line 190
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    const v0, 0x7f08061b

    .line 191
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    const v0, 0x7f080614

    .line 193
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum1:Landroid/widget/ImageView;

    .line 194
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080615

    .line 196
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum2:Landroid/widget/ImageView;

    .line 197
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080616

    .line 199
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum3:Landroid/widget/ImageView;

    .line 200
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080617

    .line 202
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum4:Landroid/widget/ImageView;

    .line 203
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum4:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080618

    .line 205
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum5:Landroid/widget/ImageView;

    .line 206
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum5:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080619

    .line 208
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum6:Landroid/widget/ImageView;

    .line 209
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationNum6:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08060b

    .line 212
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationALS:Landroid/widget/ImageView;

    .line 213
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationALS:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08060a

    .line 215
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationACS:Landroid/widget/ImageView;

    .line 216
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationACS:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08060d

    .line 218
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationAUDIO:Landroid/widget/ImageView;

    .line 219
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationAUDIO:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080612

    .line 221
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationMUTE:Landroid/widget/ImageView;

    .line 222
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationMUTE:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08061d

    .line 224
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationSCAN:Landroid/widget/ImageView;

    .line 225
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationSCAN:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08061e

    .line 227
    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarMedia;->mOperationSet:Landroid/widget/ImageView;

    .line 228
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mOperationSet:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    invoke-direct {p0}, Lcom/can/ui/CarMedia;->getRadioSystemIndex()I

    move-result v0

    iput v0, p0, Lcom/can/ui/CarMedia;->mRadioSystemIndex:I

    return-void
.end method

.method private showRadioSystemList()V
    .locals 2

    .line 745
    new-instance v0, Lcom/can/ui/draw/RadioSystemDialog;

    invoke-direct {v0, p0}, Lcom/can/ui/draw/RadioSystemDialog;-><init>(Landroid/content/Context;)V

    .line 746
    new-instance v1, Lcom/can/ui/CarMedia$5;

    invoke-direct {v1, p0}, Lcom/can/ui/CarMedia$5;-><init>(Lcom/can/ui/CarMedia;)V

    invoke-virtual {v0, v1}, Lcom/can/ui/draw/RadioSystemDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 753
    invoke-virtual {v0}, Lcom/can/ui/draw/RadioSystemDialog;->show()V

    return-void
.end method

.method private unregisterMediaButton()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 650
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 651
    iget-object p0, p0, Lcom/can/ui/CarMedia;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Landroid/media/session/MediaSession;->release()V

    :cond_0
    return-void
.end method

.method private updateCarMediaView([BZ)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 272
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mMediaLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mMenuLayout:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_0
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x11

    const-string v5, ""

    const/16 v6, 0x8

    if-ne v4, v3, :cond_1

    .line 279
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    const-string v3, "AUX"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mText3:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mSTText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, v0, Lcom/can/ui/CarMedia;->mDiscLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12

    :cond_1
    const-string v4, " MHZ"

    const-string v7, "%.2f"

    const-string v10, "CH"

    const v11, 0x3dcccccd    # 0.1f

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v8, 0x1

    if-nez v3, :cond_9

    .line 291
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    const-string v9, "FM1"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    aget-byte v3, p1, v15

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    aget-byte v9, p1, v14

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    sub-int/2addr v3, v8

    .line 296
    iget v9, v0, Lcom/can/ui/CarMedia;->mRadioSystemIndex:I

    if-eq v9, v8, :cond_5

    if-ne v9, v1, :cond_2

    goto :goto_0

    :cond_2
    if-ne v9, v15, :cond_3

    const v9, 0x3e4ccccd    # 0.2f

    move v11, v9

    goto :goto_0

    :cond_3
    if-ne v9, v14, :cond_4

    const v9, 0x42af6666    # 87.7f

    goto :goto_1

    :cond_4
    const/high16 v9, 0x42af0000    # 87.5f

    const v11, 0x3d4ccccd    # 0.05f

    goto :goto_1

    :cond_5
    :goto_0
    const/high16 v9, 0x42af0000    # 87.5f

    :goto_1
    if-ltz v3, :cond_6

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float/2addr v9, v3

    .line 306
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText3:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v14, v2

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_6
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v8, :cond_7

    if-gt v3, v12, :cond_7

    .line 311
    iget-object v4, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 313
    :cond_7
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :goto_2
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mSTText:Landroid/widget/TextView;

    aget-byte v4, p1, v13

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_8

    goto :goto_3

    :cond_8
    move v2, v6

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v0, v0, Lcom/can/ui/CarMedia;->mDiscLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12

    :cond_9
    if-ne v8, v3, :cond_11

    .line 323
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    const-string v9, "FM2"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    aget-byte v3, p1, v15

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    aget-byte v9, p1, v14

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    sub-int/2addr v3, v8

    .line 327
    iget v9, v0, Lcom/can/ui/CarMedia;->mRadioSystemIndex:I

    if-eq v9, v8, :cond_d

    if-ne v9, v1, :cond_a

    goto :goto_4

    :cond_a
    if-ne v9, v15, :cond_b

    const v9, 0x3e4ccccd    # 0.2f

    move v11, v9

    goto :goto_4

    :cond_b
    if-ne v9, v14, :cond_c

    const v9, 0x42af6666    # 87.7f

    goto :goto_5

    :cond_c
    const/high16 v9, 0x42af0000    # 87.5f

    const v11, 0x3d4ccccd    # 0.05f

    goto :goto_5

    :cond_d
    :goto_4
    const/high16 v9, 0x42af0000    # 87.5f

    :goto_5
    if-ltz v3, :cond_e

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float/2addr v9, v3

    .line 337
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText3:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v14, v2

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_e
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v8, :cond_f

    if-gt v3, v12, :cond_f

    .line 342
    iget-object v4, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 344
    :cond_f
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :goto_6
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mSTText:Landroid/widget/TextView;

    aget-byte v4, p1, v13

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_10

    goto :goto_7

    :cond_10
    move v2, v6

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v0, v0, Lcom/can/ui/CarMedia;->mDiscLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12

    :cond_11
    if-ne v15, v3, :cond_16

    .line 354
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    const-string v3, "AM"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    aget-byte v2, p1, v15

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    aget-byte v3, p1, v14

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    sub-int/2addr v2, v8

    const/16 v3, 0x213

    const/16 v4, 0x9

    .line 358
    iget v7, v0, Lcom/can/ui/CarMedia;->mRadioSystemIndex:I

    if-eq v7, v15, :cond_12

    if-ne v7, v14, :cond_13

    :cond_12
    const/16 v3, 0x212

    const/16 v4, 0xa

    :cond_13
    if-ltz v2, :cond_14

    mul-int/2addr v2, v4

    add-int/2addr v3, v2

    .line 364
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mText3:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KHZ"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_14
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v8, :cond_15

    if-gt v2, v12, :cond_15

    .line 369
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 371
    :cond_15
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :goto_8
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mSTText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v0, v0, Lcom/can/ui/CarMedia;->mDiscLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12

    :cond_16
    const/16 v4, 0xf

    const v10, 0x7f070428

    const v11, 0x7f070427

    const-string v7, "T%02d"

    const-string v9, "%02d:%02d"

    if-ne v4, v3, :cond_1c

    .line 382
    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v8, :cond_17

    if-gt v3, v12, :cond_17

    .line 384
    iget-object v4, v0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v2

    const-string v12, "CD%d"

    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 386
    :cond_17
    iget-object v4, v0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    const-string v5, "CDC"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :goto_9
    iget-object v4, v0, Lcom/can/ui/CarMedia;->mText3:Landroid/widget/TextView;

    new-array v5, v15, [Ljava/lang/Object;

    aget-byte v12, p1, v15

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v2

    aget-byte v12, p1, v14

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v8

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v4, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    new-array v5, v8, [Ljava/lang/Object;

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v1, v0, Lcom/can/ui/CarMedia;->mSTText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v1, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    aget-byte v4, p1, v13

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_18

    goto :goto_a

    :cond_18
    move v10, v11

    :goto_a
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 396
    iget-object v1, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v1, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    aget-byte v4, p1, v13

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_19

    const v7, 0x7f070426

    goto :goto_b

    :cond_19
    const v7, 0x7f070425

    :goto_b
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 398
    iget-object v1, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    iget-object v1, v0, Lcom/can/ui/CarMedia;->mDiscLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    aget-byte v1, p1, v13

    shr-int/2addr v1, v15

    .line 403
    :goto_c
    iget-object v4, v0, Lcom/can/ui/CarMedia;->mDisc:[Landroid/widget/ImageView;

    array-length v5, v4

    if-ge v2, v5, :cond_24

    shl-int v5, v8, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_1b

    add-int/lit8 v5, v2, 0x1

    if-ne v3, v5, :cond_1a

    .line 406
    aget-object v4, v4, v2

    const v5, 0x7f07041a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 408
    :cond_1a
    aget-object v4, v4, v2

    const v5, 0x7f07041b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 411
    :cond_1b
    aget-object v4, v4, v2

    const v5, 0x7f07041c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    const/16 v4, 0x10

    if-ne v4, v3, :cond_1f

    .line 416
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    const-string v4, "CD"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText3:Landroid/widget/TextView;

    new-array v4, v15, [Ljava/lang/Object;

    aget-byte v5, p1, v15

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aget-byte v5, p1, v14

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    new-array v4, v8, [Ljava/lang/Object;

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mSTText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    aget-byte v4, p1, v13

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_1d

    goto :goto_e

    :cond_1d
    move v10, v11

    :goto_e
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 425
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    aget-byte v4, p1, v13

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_1e

    const v7, 0x7f070426

    goto :goto_f

    :cond_1e
    const v7, 0x7f070425

    :goto_f
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 427
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    iget-object v0, v0, Lcom/can/ui/CarMedia;->mDiscLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12

    :cond_1f
    const/16 v4, 0x12

    if-ne v4, v3, :cond_22

    .line 432
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    const-string v4, "USB"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText3:Landroid/widget/TextView;

    new-array v4, v15, [Ljava/lang/Object;

    aget-byte v5, p1, v15

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aget-byte v5, p1, v14

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    new-array v4, v8, [Ljava/lang/Object;

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mSTText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    aget-byte v4, p1, v13

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_20

    goto :goto_10

    :cond_20
    move v10, v11

    :goto_10
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 441
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    aget-byte v4, p1, v13

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_21

    const v7, 0x7f070426

    goto :goto_11

    :cond_21
    const v7, 0x7f070425

    :goto_11
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 443
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    iget-object v0, v0, Lcom/can/ui/CarMedia;->mDiscLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_22
    const/16 v4, 0x13

    if-ne v4, v3, :cond_23

    .line 448
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    const-string v3, "PHONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mText3:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mSTText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    iget-object v0, v0, Lcom/can/ui/CarMedia;->mDiscLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_23
    const/16 v4, 0x14

    if-ne v4, v3, :cond_24

    .line 461
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText1:Landroid/widget/TextView;

    const-string v4, "BT"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v3, v0, Lcom/can/ui/CarMedia;->mText3:Landroid/widget/TextView;

    new-array v4, v15, [Ljava/lang/Object;

    aget-byte v5, p1, v15

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aget-byte v2, p1, v14

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mSTText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRepeat:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object v2, v0, Lcom/can/ui/CarMedia;->mOperationRand:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v0, v0, Lcom/can/ui/CarMedia;->mDiscLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    :goto_12
    return-void
.end method

.method private updateCarMenuView([B)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mMediaLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mMenuLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mSbMenuString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    .line 238
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/can/ui/CarMedia;->mSbMenuString:Ljava/lang/StringBuilder;

    aget-byte v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    aget-byte v1, p1, v0

    int-to-char v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/can/ui/CarMedia;->mMenuText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/can/ui/CarMedia;->mSbMenuString:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTitleAndRightIcon()V
    .locals 3

    .line 248
    iget v0, p0, Lcom/can/ui/CarMedia;->mCarMediaMode:I

    const/16 v1, 0x11

    if-ne v1, v0, :cond_0

    .line 249
    iget-object p0, p0, Lcom/can/ui/CarMedia;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x7f0703c7

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v1, v0, :cond_6

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xf

    if-ne v1, v0, :cond_2

    .line 257
    iget-object p0, p0, Lcom/can/ui/CarMedia;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x7f0703ca

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x10

    if-ne v1, v0, :cond_3

    .line 259
    iget-object p0, p0, Lcom/can/ui/CarMedia;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x7f0703c9

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x12

    if-ne v1, v0, :cond_4

    .line 261
    iget-object p0, p0, Lcom/can/ui/CarMedia;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x7f0703cd

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x13

    if-ne v1, v0, :cond_5

    .line 263
    iget-object p0, p0, Lcom/can/ui/CarMedia;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x7f0703cb

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const/16 v1, 0x14

    if-ne v1, v0, :cond_7

    .line 265
    iget-object p0, p0, Lcom/can/ui/CarMedia;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x7f0703c8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 255
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/can/ui/CarMedia;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x7f0703cc

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 540
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_0

    const/16 v1, 0x48

    if-eq v0, v1, :cond_1

    const/16 v1, 0x128

    if-eq v0, v1, :cond_1

    const/16 v1, 0x129

    if-eq v0, v1, :cond_1

    .line 554
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 549
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/can/ui/CarMedia;->onBackPressed()V

    :cond_1
    return v2
.end method

.method public onBackPressed()V
    .locals 0

    .line 479
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08061e

    if-ne p1, v0, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/can/ui/CarMedia;->showRadioSystemList()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/can/ui/CarMedia;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 61
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 62
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 65
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 66
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x8000000

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    const p1, 0x7f0b0092

    .line 69
    invoke-virtual {p0, p1}, Lcom/can/ui/CarMedia;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/can/ui/CarMedia;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    const-string v1, "mode"

    .line 73
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/can/ui/CarMedia;->mEnterMode:I

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/can/ui/CarMedia;->mSbMenuString:Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0}, Lcom/can/ui/CarMedia;->setupViews()V

    .line 80
    invoke-direct {p0}, Lcom/can/ui/CarMedia;->initMcu()V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/can/ui/CarMedia;->mServiceMessenger:Landroid/os/Messenger;

    .line 83
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/can/ui/CanPopWind;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/can/ui/CarMedia;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 86
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.carocean.action.ACTION_QUIT_APK"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/can/ui/CarMedia;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-direct {p0}, Lcom/can/ui/CarMedia;->registerMediaButton()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    iget-object v1, p0, Lcom/can/ui/CarMedia;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/McuServiceManager;->unregCallback(Lcom/carocean/navicar/McuServiceManager$DataListener;)V

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->unbindService(Landroid/content/ServiceConnection;)V

    .line 488
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/can/ui/CarMedia;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 490
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 492
    :goto_0
    invoke-direct {p0}, Lcom/can/ui/CarMedia;->unregisterMediaButton()V

    .line 494
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 495
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendOriginalVehicleStata(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 501
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 507
    iget-object v0, p0, Lcom/can/ui/CarMedia;->mServiceMessenger:Landroid/os/Messenger;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/can/ui/CarMedia;->mCarMediaMode:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 509
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 515
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 516
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendOriginalVehicleStata(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 522
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 528
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
