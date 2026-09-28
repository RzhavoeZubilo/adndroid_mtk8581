.class public Lcom/can/assist/CanXml;
.super Ljava/lang/Object;
.source "CanXml.java"

# interfaces
.implements Lcom/can/assist/CanContant;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.can.assist.CanXml"

.field private static msInstance:Lcom/can/assist/CanXml;


# instance fields
.field private XmlListener:Lcom/can/tool/Xml$OnXmlListener;

.field private mCanParcel:Lcom/can/assist/CanParcel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    .line 500
    new-instance v0, Lcom/can/assist/CanXml$1;

    invoke-direct {v0, p0}, Lcom/can/assist/CanXml$1;-><init>(Lcom/can/assist/CanXml;)V

    iput-object v0, p0, Lcom/can/assist/CanXml;->XmlListener:Lcom/can/tool/Xml$OnXmlListener;

    .line 55
    new-instance v0, Lcom/can/assist/CanParcel;

    invoke-direct {v0, p1}, Lcom/can/assist/CanParcel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    .line 61
    :try_start_0
    invoke-static {p1}, Lcom/can/tool/DataConvert;->getPlatforms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/can/assist/CanXml;->Create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/can/assist/CanParcel;->setPlatforms(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/can/assist/CanXml;)Lcom/can/assist/CanParcel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/can/assist/CanXml;
    .locals 1

    .line 47
    sget-object v0, Lcom/can/assist/CanXml;->msInstance:Lcom/can/assist/CanXml;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/can/assist/CanXml;

    invoke-direct {v0, p0}, Lcom/can/assist/CanXml;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/can/assist/CanXml;->msInstance:Lcom/can/assist/CanXml;

    .line 50
    :cond_0
    sget-object p0, Lcom/can/assist/CanXml;->msInstance:Lcom/can/assist/CanXml;

    return-object p0
.end method


# virtual methods
.method public Create(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 144
    sget-object p0, Lcom/can/assist/CanXml;->TAG:Ljava/lang/String;

    const-string p1, "strClassName is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Class;

    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public IsGeneral(Ljava/lang/String;)Z
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->IsGeneral(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public create(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Lcom/can/parser/DDef$E_CMD_TYPE;)Lcom/can/assist/CanProxy;
    .locals 0

    .line 125
    new-instance p0, Lcom/can/parser/Parser;

    invoke-direct {p0}, Lcom/can/parser/Parser;-><init>()V

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lcom/can/assist/CanProxy;->start(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p4}, Lcom/can/assist/CanProxy;->Init(Lcom/can/parser/DDef$E_CMD_TYPE;)V

    return-object p0
.end method

.method public getAirFrament()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanXml;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/can/assist/CanParcel;->getAirPage(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAssistFun(Ljava/lang/String;)Z
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanParcel;->getPlatformsXxx()Lcom/can/assist/Platforms;

    move-result-object p0

    invoke-virtual {p0}, Lcom/can/assist/Platforms;->getMediaInfo()Lcom/can/assist/Platforms$MediaInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/can/assist/Platforms$MediaInfo;->getAssistFun(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAttr()Lcom/can/assist/CanContant$CarType_Info;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanXml;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    return-object p0
.end method

.method public getAttr(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    return-object p0
.end method

.method public getAttr(Lcom/can/assist/CanContant$E_Update_Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/can/assist/CanContant$CarType_Info;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$E_Update_Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    return-object p0
.end method

.method public getAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/can/assist/CanContant$CarType_Info;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/can/assist/CanParcel;->getCarType_Info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    return-object p0
.end method

.method public getAudio()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanXml;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/can/assist/CanParcel;->getAudioPage(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAudioProt()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanXml;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/can/assist/CanParcel;->getAudioProt(Lcom/can/assist/CanContant$CAN_DESCRIBE;)I

    move-result p0

    return p0
.end method

.method public getBand()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanXml;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/can/assist/CanParcel;->getBand(Lcom/can/assist/CanContant$CAN_DESCRIBE;)I

    move-result p0

    return p0
.end method

.method public getCanCfg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
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

    .line 311
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/can/assist/CanParcel;->getCanCfg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanParcel;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p0

    return-object p0
.end method

.method public getCanParcel()Lcom/can/assist/CanParcel;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    return-object p0
.end method

.method public getCanSeries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
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

    .line 274
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getCanSeries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getCanSeriesEx(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
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

    .line 286
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getCanSeriesEx(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getCanType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
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

    .line 299
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1, p2}, Lcom/can/assist/CanParcel;->getCanType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getCanboxlist()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanParcel;->getCanboxlist()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getCarType()I
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanParcel;->getCarType()I

    move-result p0

    return p0
.end method

.method public getCarType(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public getFrament()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanXml;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/can/assist/CanParcel;->getPageName(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfo(Landroid/content/Context;)Lcom/can/assist/CanContant$CarType_Info;
    .locals 0

    .line 249
    iget-object p1, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanXml;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/can/assist/CanParcel;->getCarType_Info(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Lcom/can/assist/CanContant$CarType_Info;

    move-result-object p0

    return-object p0
.end method

.method public getPlatforms()Lcom/can/assist/Platforms;
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanParcel;->getPlatformsXxx()Lcom/can/assist/Platforms;

    move-result-object p0

    return-object p0
.end method

.method public getPlatforms(Landroid/content/Context;)Lcom/can/assist/Platforms;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {v0}, Lcom/can/assist/CanParcel;->getPlatformsXxx()Lcom/can/assist/Platforms;

    move-result-object v0

    if-nez v0, :cond_0

    .line 465
    :try_start_0
    invoke-static {p1}, Lcom/can/tool/DataConvert;->getPlatforms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/can/assist/CanXml;->Create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/can/assist/Platforms;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 466
    :try_start_1
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->setPlatforms(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, p1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 469
    :goto_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v0
.end method

.method public getPopFrament()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0}, Lcom/can/assist/CanXml;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/can/assist/CanParcel;->getPopPage(Lcom/can/assist/CanContant$CAN_DESCRIBE;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProVer(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
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

    .line 370
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->getProVer(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public setCanDescribe(Lcom/can/assist/CanContant$CarType_Info;)Z
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/can/assist/CanXml;->mCanParcel:Lcom/can/assist/CanParcel;

    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel;->setCanDescribe(Lcom/can/assist/CanContant$CarType_Info;)Z

    move-result p0

    return p0
.end method
