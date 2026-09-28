.class public Lcom/can/assist/CanParcel;
.super Ljava/lang/Object;
.source "CanParcel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/can/assist/CanContant;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/can/assist/CanParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/can/assist/CanContant$CarType_Info;",
            ">;"
        }
    .end annotation
.end field

.field private mCanPlatformsXxx:Lcom/can/assist/Platforms;

.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/can/assist/CanParcel$1;

    invoke-direct {v0}, Lcom/can/assist/CanParcel$1;-><init>()V

    sput-object v0, Lcom/can/assist/CanParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/can/assist/CanParcel;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/can/assist/CanParcel;->mCanPlatformsXxx:Lcom/can/assist/Platforms;

    .line 26
    iput-object v0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/can/assist/CanParcel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/can/assist/CanParcel;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/can/assist/CanParcel;->mCanPlatformsXxx:Lcom/can/assist/Platforms;

    .line 26
    iput-object v0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    .line 37
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method private IsVaild()Z
    .locals 1

    .line 723
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 726
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public IsGeneral(Ljava/lang/String;)Z
    .locals 3

    .line 700
    invoke-direct {p0}, Lcom/can/assist/CanParcel;->IsVaild()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 701
    iget-object p0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    const-string p1, "CarTypeInfo Arraylist is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 704
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 705
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/assist/CanContant$CarType_Info;

    .line 709
    iget-object v2, v0, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    if-eqz v1, :cond_3

    .line 716
    iget p1, v1, Lcom/can/assist/CanContant$CarType_Info;->iBoxId:I

    if-nez p1, :cond_3

    const/4 p0, 0x1

    :cond_3
    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAirPage(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Ljava/lang/String;
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/can/assist/CanContant$CarType_Info;->strAirClass:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getAudioPage(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 166
    iget-object p0, p0, Lcom/can/assist/CanContant$CarType_Info;->strAudioClass:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getAudioProt(Lcom/can/assist/CanContant$CAN_DESCRIBE;)I
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    iget p0, p0, Lcom/can/assist/CanContant$CarType_Info;->iAudioPort:I

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public getBand(Lcom/can/assist/CanContant$CAN_DESCRIBE;)I
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 132
    iget p0, p0, Lcom/can/assist/CanContant$CarType_Info;->iBoxBand:I

    return p0

    :cond_0
    const p0, 0x9600

    return p0
.end method

.method public getCanCfg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    invoke-direct {p0}, Lcom/can/assist/CanParcel;->IsVaild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    iget-object p0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    const-string p1, "CarTypeInfo Arraylist is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 525
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 526
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 527
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/can/assist/CanContant$CarType_Info;

    .line 529
    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strSeriesName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strTypeName:Ljava/lang/String;

    .line 530
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    iget-object v1, v1, Lcom/can/assist/CanContant$CarType_Info;->strCfgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 536
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    iget-object v4, v1, Lcom/can/assist/CanContant$CarType_Info;->strCfgName:Ljava/lang/String;

    .line 538
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    if-nez v2, :cond_1

    .line 545
    iget-object v1, v1, Lcom/can/assist/CanContant$CarType_Info;->strCfgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;
    .locals 0

    .line 259
    :try_start_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mCanPlatformsXxx:Lcom/can/assist/Platforms;

    invoke-virtual {p0}, Lcom/can/assist/Platforms;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 262
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCanSeries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    invoke-direct {p0}, Lcom/can/assist/CanParcel;->IsVaild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object p0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    const-string p1, "CarTypeInfo Arraylist is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 379
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 380
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 383
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/can/assist/CanContant$CarType_Info;

    .line 385
    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    iget-object v1, v1, Lcom/can/assist/CanContant$CarType_Info;->strSeriesName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 395
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 396
    iget-object v4, v1, Lcom/can/assist/CanContant$CarType_Info;->strSeriesName:Ljava/lang/String;

    .line 397
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    if-nez v2, :cond_1

    .line 404
    iget-object v1, v1, Lcom/can/assist/CanContant$CarType_Info;->strSeriesName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public getCanSeriesEx(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    invoke-direct {p0}, Lcom/can/assist/CanParcel;->IsVaild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object p0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    const-string p1, "CarTypeInfo Arraylist is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 428
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 429
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 432
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/can/assist/CanContant$CarType_Info;

    .line 434
    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    iget v1, v1, Lcom/can/assist/CanContant$CarType_Info;->iSeriesId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 445
    iget v5, v1, Lcom/can/assist/CanContant$CarType_Info;->iSeriesId:I

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-eqz v4, :cond_3

    :cond_5
    if-nez v4, :cond_1

    .line 452
    iget v1, v1, Lcom/can/assist/CanContant$CarType_Info;->iSeriesId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_2
    return-object v0
.end method

.method public getCanType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-direct {p0}, Lcom/can/assist/CanParcel;->IsVaild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object p0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    const-string p1, "CarTypeInfo Arraylist is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 476
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 477
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 478
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/can/assist/CanContant$CarType_Info;

    .line 481
    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strSeriesName:Ljava/lang/String;

    .line 482
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 484
    iget-object v3, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 488
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    iget-object v1, v1, Lcom/can/assist/CanContant$CarType_Info;->strTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 494
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 495
    iget-object v4, v1, Lcom/can/assist/CanContant$CarType_Info;->strTypeName:Ljava/lang/String;

    .line 496
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    if-nez v2, :cond_1

    .line 503
    iget-object v1, v1, Lcom/can/assist/CanContant$CarType_Info;->strTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public getCanboxlist()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-direct {p0}, Lcom/can/assist/CanParcel;->IsVaild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object p0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    const-string v1, "CarTypeInfo Arraylist is empty!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 341
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 342
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/can/assist/CanContant$CarType_Info;

    .line 344
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    iget-object v1, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 349
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 350
    iget-object v5, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_1

    .line 357
    iget-object v1, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public getCarType()I
    .locals 0

    .line 276
    :try_start_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mCanPlatformsXxx:Lcom/can/assist/Platforms;

    invoke-virtual {p0}, Lcom/can/assist/Platforms;->getCarType()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 279
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCarTypeInfos()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/can/assist/CanContant$CarType_Info;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;
    .locals 4

    .line 294
    invoke-direct {p0}, Lcom/can/assist/CanParcel;->IsVaild()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    iget-object p0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    const-string p1, "CarTypeInfo Arraylist is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 299
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/assist/CanContant$CarType_Info;

    .line 302
    iget v2, v0, Lcom/can/assist/CanContant$CarType_Info;->iBoxId:I

    iget v3, p1, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iBoxID:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Lcom/can/assist/CanContant$CarType_Info;->iSeriesId:I

    iget v3, p1, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iSeriesID:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Lcom/can/assist/CanContant$CarType_Info;->iTypeId:I

    iget v3, p1, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iCarTypeID:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Lcom/can/assist/CanContant$CarType_Info;->iCfgId:I

    iget v3, p1, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iConfigID:I

    if-ne v2, v3, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getCarType_Info(Lcom/can/assist/CanContant$E_Update_Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/can/assist/CanContant$CarType_Info;
    .locals 3

    .line 611
    new-instance v0, Lcom/can/assist/CanContant$CarType_Info;

    invoke-direct {v0}, Lcom/can/assist/CanContant$CarType_Info;-><init>()V

    .line 613
    invoke-direct {p0}, Lcom/can/assist/CanParcel;->IsVaild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    iget-object p0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    const-string p1, "CarTypeInfo Arraylist is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 617
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 618
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 620
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/can/assist/CanContant$CarType_Info;

    .line 622
    sget-object v2, Lcom/can/assist/CanContant$E_Update_Type;->eUpdate_Type_CanBox:Lcom/can/assist/CanContant$E_Update_Type;

    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_1

    .line 624
    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 629
    :cond_2
    sget-object v2, Lcom/can/assist/CanContant$E_Update_Type;->eUpdate_Type_CanSeries:Lcom/can/assist/CanContant$E_Update_Type;

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 631
    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strSeriesName:Ljava/lang/String;

    .line 632
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 637
    :cond_3
    sget-object v2, Lcom/can/assist/CanContant$E_Update_Type;->eUpdate_Type_CanType:Lcom/can/assist/CanContant$E_Update_Type;

    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 640
    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strSeriesName:Ljava/lang/String;

    .line 641
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strTypeName:Ljava/lang/String;

    .line 642
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move-object v0, v1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getCarType_Info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/can/assist/CanContant$CarType_Info;
    .locals 3

    .line 668
    invoke-direct {p0}, Lcom/can/assist/CanParcel;->IsVaild()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 669
    iget-object p0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    const-string p1, "CarTypeInfo Arraylist is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 672
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 673
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/assist/CanContant$CarType_Info;

    .line 677
    iget-object v2, v0, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/can/assist/CanContant$CarType_Info;->strSeriesName:Ljava/lang/String;

    .line 678
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/can/assist/CanContant$CarType_Info;->strTypeName:Ljava/lang/String;

    .line 679
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/can/assist/CanContant$CarType_Info;->strCfgName:Ljava/lang/String;

    .line 680
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getPageName(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Ljava/lang/String;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/can/assist/CanContant$CarType_Info;->strUIClass:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getPlatformsXxx()Lcom/can/assist/Platforms;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mCanPlatformsXxx:Lcom/can/assist/Platforms;

    return-object p0
.end method

.method public getPopPage(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Ljava/lang/String;
    .locals 0

    .line 180
    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 183
    iget-object p0, p0, Lcom/can/assist/CanContant$CarType_Info;->strPopClass:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getProVer(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    invoke-direct {p0}, Lcom/can/assist/CanParcel;->IsVaild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    iget-object p0, p0, Lcom/can/assist/CanParcel;->TAG:Ljava/lang/String;

    const-string p1, "CarTypeInfo Arraylist is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 568
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 569
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 572
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/can/assist/CanContant$CarType_Info;

    .line 574
    iget-object v2, v1, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    iget-object v1, v1, Lcom/can/assist/CanContant$CarType_Info;->strProVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 584
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    iget-object v4, v1, Lcom/can/assist/CanContant$CarType_Info;->strProVer:Ljava/lang/String;

    .line 586
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_3
    if-nez v2, :cond_1

    .line 590
    iget-object v1, v1, Lcom/can/assist/CanContant$CarType_Info;->strProVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getProtocol(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/can/assist/CanContant$CarType_Info;->strProClass:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public setCanDescribe(Lcom/can/assist/CanContant$CarType_Info;)Z
    .locals 0

    .line 242
    :try_start_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mCanPlatformsXxx:Lcom/can/assist/Platforms;

    invoke-virtual {p0, p1}, Lcom/can/assist/Platforms;->setCanDescribe(Lcom/can/assist/CanContant$CarType_Info;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 245
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setCarTypeInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/can/assist/CanContant$CarType_Info;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPlatforms(Ljava/lang/Object;)V
    .locals 0

    .line 214
    check-cast p1, Lcom/can/assist/Platforms;

    iput-object p1, p0, Lcom/can/assist/CanParcel;->mCanPlatformsXxx:Lcom/can/assist/Platforms;

    .line 216
    :try_start_0
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/can/assist/Platforms;->Init(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 219
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/assist/CanParcel;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
