.class public Lcom/can/parser/DDef$AirInfo;
.super Ljava/lang/Object;
.source "DDef.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/can/parser/DDef$AirInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bAirUIShow:Z

.field public m3Zone:B

.field public mAcMax:B

.field public mAcState:B

.field public mAirClear:B

.field public mAirHeat:B

.field public mAirIon:B

.field public mAirProfile:B

.field public mAiron:B

.field public mAqsInCircle:B

.field public mAutoLight1:B

.field public mAutoLight2:B

.field public mAutoWind:B

.field public mBWDefogger:B

.field public mBackAirAble:B

.field public mCircleState:B

.field public mClimate:B

.field public mDaulLight:B

.field public mDisplay:B

.field public mDowmWind:B

.field public mEco:B

.field public mFWDefogger:B

.field public mLTempMode:B

.field public mLeftCoolSeatTemp:B

.field public mLeftDowmWind:B

.field public mLeftHotSeatTemp:B

.field public mLeftParallelWind:B

.field public mLeftSeatState:B

.field public mLeftTemp:F

.field public mLeftUpwardWind:B

.field public mLeftWindRate:B

.field public mManual:B

.field public mMaxForntLight:B

.field public mMaxLeftTemp:F

.field public mMaxRightTemp:F

.field public mMaxTemp:F

.field public mMaxWindlv:B

.field public mMinLeftTemp:F

.field public mMinRightTemp:F

.field public mMinTemp:F

.field public mOutTemp:F

.field public mOutTempEnable:Z

.field public mParallelWind:B

.field public mPower:B

.field public mRTempMode:B

.field public mRearAir:B

.field public mRearAirTemp:F

.field public mRearAutoState:B

.field public mRearDisplay:B

.field public mRearDowmWind:B

.field public mRearLight:B

.field public mRearLock:B

.field public mRearParallelWind:B

.field public mRearTempEnable:Z

.field public mRearUpwardWind:B

.field public mRearWindRate:B

.field public mRightCoolSeatTemp:B

.field public mRightDowmWind:B

.field public mRightHotSeatTemp:B

.field public mRightParallelWind:B

.field public mRightSeatState:B

.field public mRightTemp:F

.field public mRightUpwardWind:B

.field public mRightWindRate:B

.field public mShowTempMode:B

.field public mShowWindStrength:B

.field public mSwitchState:B

.field public mSync:B

.field public mTempUnit:B

.field public mUpwardWind:B

.field public mVaildTemp:F

.field public mWindMode:B

.field public mWindRate:B

.field public mWindStrength:B

.field public mbFristShow:Z

.field public mbMaxMinDual:Z

.field public mbWindDual:Z

.field public mbshowLTemp:Z

.field public mbshowLTempLv:Z

.field public mbshowRTemp:Z

.field public mbshowRTempLv:Z

.field public mbyLeftTemplv:B

.field public mbyRightTemplv:B

.field public menergyuse:I

.field public miId:I

.field public mstrRearAirTemp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 837
    new-instance v0, Lcom/can/parser/DDef$AirInfo$1;

    invoke-direct {v0}, Lcom/can/parser/DDef$AirInfo$1;-><init>()V

    sput-object v0, Lcom/can/parser/DDef$AirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 551
    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mCircleState:B

    const/4 v1, 0x7

    .line 567
    iput-byte v1, p0, Lcom/can/parser/DDef$AirInfo;->mMaxWindlv:B

    .line 582
    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->miId:I

    const/4 v1, 0x0

    .line 592
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mRearTempEnable:Z

    .line 593
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mOutTempEnable:Z

    const/4 v2, 0x1

    .line 594
    iput-boolean v2, p0, Lcom/can/parser/DDef$AirInfo;->mbshowLTemp:Z

    .line 595
    iput-boolean v2, p0, Lcom/can/parser/DDef$AirInfo;->mbshowRTemp:Z

    .line 596
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbshowLTempLv:Z

    .line 597
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbshowRTempLv:Z

    .line 598
    iput v1, p0, Lcom/can/parser/DDef$AirInfo;->menergyuse:I

    .line 605
    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAirProfile:B

    .line 616
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbWindDual:Z

    .line 631
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->bAirUIShow:Z

    .line 639
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbMaxMinDual:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 640
    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mVaildTemp:F

    .line 641
    iput-byte v1, p0, Lcom/can/parser/DDef$AirInfo;->mClimate:B

    .line 643
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbFristShow:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 551
    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mCircleState:B

    const/4 v1, 0x7

    .line 567
    iput-byte v1, p0, Lcom/can/parser/DDef$AirInfo;->mMaxWindlv:B

    .line 582
    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->miId:I

    const/4 v1, 0x0

    .line 592
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mRearTempEnable:Z

    .line 593
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mOutTempEnable:Z

    const/4 v2, 0x1

    .line 594
    iput-boolean v2, p0, Lcom/can/parser/DDef$AirInfo;->mbshowLTemp:Z

    .line 595
    iput-boolean v2, p0, Lcom/can/parser/DDef$AirInfo;->mbshowRTemp:Z

    .line 596
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbshowLTempLv:Z

    .line 597
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbshowRTempLv:Z

    .line 598
    iput v1, p0, Lcom/can/parser/DDef$AirInfo;->menergyuse:I

    .line 605
    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAirProfile:B

    .line 616
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbWindDual:Z

    .line 631
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->bAirUIShow:Z

    .line 639
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbMaxMinDual:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 640
    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mVaildTemp:F

    .line 641
    iput-byte v1, p0, Lcom/can/parser/DDef$AirInfo;->mClimate:B

    .line 643
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbFristShow:Z

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAiron:B

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAirIon:B

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAcState:B

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mCircleState:B

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAutoLight1:B

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAutoLight2:B

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mDaulLight:B

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mMaxForntLight:B

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRearLight:B

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mSwitchState:B

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRearAir:B

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAirHeat:B

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAirClear:B

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mUpwardWind:B

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mDowmWind:B

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mParallelWind:B

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mDisplay:B

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mWindRate:B

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mMaxWindlv:B

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAutoWind:B

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mEco:B

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mWindStrength:B

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mShowWindStrength:B

    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mLeftWindRate:B

    .line 677
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRightWindRate:B

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mbyLeftTemplv:B

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mbyRightTemplv:B

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->miId:I

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mOutTemp:F

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/parser/DDef$AirInfo;->mstrRearAirTemp:Ljava/lang/String;

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/can/parser/DDef$AirInfo;->mRearTempEnable:Z

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/can/parser/DDef$AirInfo;->mOutTempEnable:Z

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/can/parser/DDef$AirInfo;->mbshowLTemp:Z

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/can/parser/DDef$AirInfo;->mbshowRTemp:Z

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/can/parser/DDef$AirInfo;->mbshowLTempLv:Z

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/can/parser/DDef$AirInfo;->mbshowRTempLv:Z

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->menergyuse:I

    .line 694
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAqsInCircle:B

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mLeftHotSeatTemp:B

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRearLock:B

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAcMax:B

    .line 698
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRightHotSeatTemp:B

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mAirProfile:B

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mLeftSeatState:B

    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRightSeatState:B

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mLeftCoolSeatTemp:B

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRightCoolSeatTemp:B

    .line 706
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mBackAirAble:B

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mBWDefogger:B

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mFWDefogger:B

    .line 709
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/can/parser/DDef$AirInfo;->mbWindDual:Z

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mLeftUpwardWind:B

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mLeftDowmWind:B

    .line 712
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mLeftParallelWind:B

    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRightUpwardWind:B

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRightDowmWind:B

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRightParallelWind:B

    .line 717
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mTempUnit:B

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mManual:B

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mLTempMode:B

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mRTempMode:B

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mShowTempMode:B

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/can/parser/DDef$AirInfo;->bAirUIShow:Z

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mSync:B

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mMinTemp:F

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mMaxTemp:F

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mMinLeftTemp:F

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mMinRightTemp:F

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mMaxLeftTemp:F

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mMaxRightTemp:F

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/can/parser/DDef$AirInfo;->mbMaxMinDual:Z

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/can/parser/DDef$AirInfo;->mVaildTemp:F

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mClimate:B

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/can/parser/DDef$AirInfo;->mWindMode:B

    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_9

    move v1, v2

    :cond_9
    iput-boolean v1, p0, Lcom/can/parser/DDef$AirInfo;->mbFristShow:Z

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/can/parser/DDef$AirInfo;->m3Zone:B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/can/parser/DDef$1;)V
    .locals 0

    .line 544
    invoke-direct {p0, p1}, Lcom/can/parser/DDef$AirInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 747
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAiron:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 748
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAirIon:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 749
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAcState:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 750
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mCircleState:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 751
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAutoLight1:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 752
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAutoLight2:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 753
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mDaulLight:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 754
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mMaxForntLight:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 755
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRearLight:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 756
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mSwitchState:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 757
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRearAir:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 758
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAirHeat:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 759
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAirClear:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 761
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mUpwardWind:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 762
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mDowmWind:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 763
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mParallelWind:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 764
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mDisplay:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 765
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mWindRate:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 766
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mMaxWindlv:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 767
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAutoWind:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 768
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mEco:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 769
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mWindStrength:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 770
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mShowWindStrength:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 772
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mLeftWindRate:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 773
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRightWindRate:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 775
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 776
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 777
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mbyLeftTemplv:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 778
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mbyRightTemplv:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 779
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->miId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->mOutTemp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 781
    iget-object p2, p0, Lcom/can/parser/DDef$AirInfo;->mstrRearAirTemp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 782
    iget-boolean p2, p0, Lcom/can/parser/DDef$AirInfo;->mRearTempEnable:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 783
    iget-boolean p2, p0, Lcom/can/parser/DDef$AirInfo;->mOutTempEnable:Z

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 784
    iget-boolean p2, p0, Lcom/can/parser/DDef$AirInfo;->mbshowLTemp:Z

    if-ne p2, v1, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 785
    iget-boolean p2, p0, Lcom/can/parser/DDef$AirInfo;->mbshowRTemp:Z

    if-ne p2, v1, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    move p2, v0

    :goto_3
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 786
    iget-boolean p2, p0, Lcom/can/parser/DDef$AirInfo;->mbshowLTempLv:Z

    if-ne p2, v1, :cond_4

    move p2, v1

    goto :goto_4

    :cond_4
    move p2, v0

    :goto_4
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 787
    iget-boolean p2, p0, Lcom/can/parser/DDef$AirInfo;->mbshowRTempLv:Z

    if-ne p2, v1, :cond_5

    move p2, v1

    goto :goto_5

    :cond_5
    move p2, v0

    :goto_5
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 788
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->menergyuse:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAqsInCircle:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 791
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mLeftHotSeatTemp:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 792
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRearLock:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 793
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAcMax:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 794
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRightHotSeatTemp:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 795
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mAirProfile:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 797
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mLeftSeatState:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 798
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRightSeatState:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 799
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mLeftCoolSeatTemp:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 800
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRightCoolSeatTemp:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 803
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mBackAirAble:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 804
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mBWDefogger:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 805
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mFWDefogger:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 806
    iget-boolean p2, p0, Lcom/can/parser/DDef$AirInfo;->mbWindDual:Z

    if-ne p2, v1, :cond_6

    move p2, v1

    goto :goto_6

    :cond_6
    move p2, v0

    :goto_6
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 807
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mLeftUpwardWind:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 808
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mLeftDowmWind:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 809
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mLeftParallelWind:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 810
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRightUpwardWind:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 811
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRightDowmWind:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 812
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRightParallelWind:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 814
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mTempUnit:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 816
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mManual:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 817
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mLTempMode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 818
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mRTempMode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 819
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mShowTempMode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 821
    iget-boolean p2, p0, Lcom/can/parser/DDef$AirInfo;->bAirUIShow:Z

    if-ne p2, v1, :cond_7

    move p2, v1

    goto :goto_7

    :cond_7
    move p2, v0

    :goto_7
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 822
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mSync:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 823
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->mMinTemp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 824
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->mMaxTemp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 825
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->mMinLeftTemp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 826
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->mMinRightTemp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 827
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->mMaxLeftTemp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 828
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->mMaxRightTemp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 829
    iget-boolean p2, p0, Lcom/can/parser/DDef$AirInfo;->mbMaxMinDual:Z

    if-ne p2, v1, :cond_8

    move p2, v1

    goto :goto_8

    :cond_8
    move p2, v0

    :goto_8
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 830
    iget p2, p0, Lcom/can/parser/DDef$AirInfo;->mVaildTemp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 831
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mClimate:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 832
    iget-byte p2, p0, Lcom/can/parser/DDef$AirInfo;->mWindMode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 833
    iget-boolean p2, p0, Lcom/can/parser/DDef$AirInfo;->mbFristShow:Z

    if-ne p2, v1, :cond_9

    move v0, v1

    :cond_9
    int-to-byte p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 834
    iget-byte p0, p0, Lcom/can/parser/DDef$AirInfo;->m3Zone:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
