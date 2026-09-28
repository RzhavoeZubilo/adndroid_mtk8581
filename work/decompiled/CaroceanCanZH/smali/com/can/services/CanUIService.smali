.class public abstract Lcom/can/services/CanUIService;
.super Landroid/app/Service;
.source "CanUIService.java"

# interfaces
.implements Lcom/can/assist/CanContant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/services/CanUIService$UIUserInfo;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

.field private mArrayMessengers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/can/services/CanUIService$UIUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field mCanUiService:Landroid/os/Messenger;

.field private mCarMediaAudio:Lcom/can/services/CarMediaAudio;

.field private mCarMediaMode:I

.field protected mIsCarInfoShowing:Z

.field private mMenuStatus:I

.field public mObjCanProxy:Lcom/can/assist/CanProxy;

.field public mObjHandler:Landroid/os/Handler;

.field public mObjUserHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "CanUIService"

    .line 41
    iput-object v0, p0, Lcom/can/services/CanUIService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/can/services/CanUIService;->mIsCarInfoShowing:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/can/services/CanUIService;->mObjCanProxy:Lcom/can/assist/CanProxy;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/can/services/CanUIService;->mArrayMessengers:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 45
    iput v1, p0, Lcom/can/services/CanUIService;->mCarMediaMode:I

    .line 46
    iput v0, p0, Lcom/can/services/CanUIService;->mMenuStatus:I

    .line 79
    new-instance v0, Lcom/can/services/CanUIService$1;

    invoke-direct {v0, p0}, Lcom/can/services/CanUIService$1;-><init>(Lcom/can/services/CanUIService;)V

    iput-object v0, p0, Lcom/can/services/CanUIService;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    .line 172
    new-instance v0, Lcom/can/services/CanUIService$2;

    invoke-direct {v0, p0}, Lcom/can/services/CanUIService$2;-><init>(Lcom/can/services/CanUIService;)V

    iput-object v0, p0, Lcom/can/services/CanUIService;->mObjHandler:Landroid/os/Handler;

    .line 192
    new-instance v0, Lcom/can/services/CanUIService$3;

    invoke-direct {v0, p0}, Lcom/can/services/CanUIService$3;-><init>(Lcom/can/services/CanUIService;)V

    iput-object v0, p0, Lcom/can/services/CanUIService;->mObjUserHandler:Landroid/os/Handler;

    .line 241
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/can/services/CanUIService;->mObjUserHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/can/services/CanUIService;->mCanUiService:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/can/services/CanUIService;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/can/services/CanUIService;->mCarMediaMode:I

    return p0
.end method

.method static synthetic access$002(Lcom/can/services/CanUIService;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/can/services/CanUIService;->mCarMediaMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/can/services/CanUIService;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/can/services/CanUIService;->mMenuStatus:I

    return p0
.end method

.method static synthetic access$102(Lcom/can/services/CanUIService;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/can/services/CanUIService;->mMenuStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/can/services/CanUIService;Landroid/os/Message;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/can/services/CanUIService;->registerUser(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/can/services/CanUIService;Landroid/os/Message;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/can/services/CanUIService;->unregisterUser(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/can/services/CanUIService;Landroid/os/Message;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/can/services/CanUIService;->send(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/can/services/CanUIService;Landroid/os/Message;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/can/services/CanUIService;->getdata(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/can/services/CanUIService;)Lcom/can/services/CarMediaAudio;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/can/services/CanUIService;->mCarMediaAudio:Lcom/can/services/CarMediaAudio;

    return-object p0
.end method

.method private getdata(Landroid/os/Message;)V
    .locals 3

    .line 377
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/can/services/CanUIService;->mObjCanProxy:Lcom/can/assist/CanProxy;

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/can/services/CanUIService;->mObjCanProxy:Lcom/can/assist/CanProxy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 381
    invoke-virtual {p0, v2, p1}, Lcom/can/assist/CanProxy;->getData(II)Ljava/lang/Object;

    move-result-object p0

    .line 380
    invoke-static {v1, p0}, Lcom/can/assist/CanMessage;->getdataMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 384
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initMcu()V
    .locals 2

    .line 73
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/carocean/navicar/McuServiceManager;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    .line 74
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object p0, p0, Lcom/can/services/CanUIService;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1, p0}, Lcom/carocean/navicar/McuServiceManager;->regCallback([ILcom/carocean/navicar/McuServiceManager$DataListener;)V

    .line 75
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/carocean/navicar/McuServiceManager;->isServiceConnected()Z

    return-void

    nop

    :array_0
    .array-data 4
        0x1e
        0x1f
    .end array-data
.end method

.method private registerUser(Landroid/os/Message;)V
    .locals 6

    const-string v0, "CanUIService"

    const-string v1, "++registerUser++"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v2, "Msg_Can_Reg_User"

    const-string v3, "--registerUser:  "

    if-nez v1, :cond_0

    .line 258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 261
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " error!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 266
    :cond_0
    new-instance v1, Lcom/can/services/CanUIService$UIUserInfo;

    invoke-direct {v1, p0}, Lcom/can/services/CanUIService$UIUserInfo;-><init>(Lcom/can/services/CanUIService;)V

    .line 268
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v4, v1, Lcom/can/services/CanUIService$UIUserInfo;->mMessenger:Landroid/os/Messenger;

    .line 269
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/can/services/CanUIService$UIUserInfo;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 274
    iget-object v2, p0, Lcom/can/services/CanUIService;->mArrayMessengers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/services/CanUIService$UIUserInfo;

    .line 275
    iget-object v5, v4, Lcom/can/services/CanUIService$UIUserInfo;->mMessenger:Landroid/os/Messenger;

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/can/services/CanUIService$UIUserInfo;->mMessenger:Landroid/os/Messenger;

    iget-object v5, v1, Lcom/can/services/CanUIService$UIUserInfo;->mMessenger:Landroid/os/Messenger;

    .line 276
    invoke-virtual {v4, v5}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    :cond_2
    if-gtz p1, :cond_3

    .line 284
    iget-object p0, p0, Lcom/can/services/CanUIService;->mArrayMessengers:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v1, Lcom/can/services/CanUIService$UIUserInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " registered successfully"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v1, Lcom/can/services/CanUIService$UIUserInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " had been registered"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "--registerUser--"

    .line 293
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private send(Landroid/os/Message;)V
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/can/services/CanUIService;->mObjCanProxy:Lcom/can/assist/CanProxy;

    if-eqz p0, :cond_0

    .line 364
    invoke-static {p1}, Lcom/can/assist/CanMessage;->getTxMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/can/assist/CanProxy;->sendMsg2Can(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private unregisterUser(Landroid/os/Message;)V
    .locals 6

    .line 307
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Msg_Can_Reg_User"

    .line 309
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++deregisterUser:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CanUIService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p0, p0, Lcom/can/services/CanUIService;->mArrayMessengers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 314
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/services/CanUIService$UIUserInfo;

    .line 317
    iget-object v4, v3, Lcom/can/services/CanUIService$UIUserInfo;->mMessenger:Landroid/os/Messenger;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/can/services/CanUIService$UIUserInfo;->mName:Ljava/lang/String;

    .line 318
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deregisterUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcom/can/services/CanUIService$UIUserInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-gtz v1, :cond_2

    const-string p0, "--deregisterUser: failed, no user"

    .line 327
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "--deregisterUser: OK"

    .line 329
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public abstract doMessage(Landroid/os/Message;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/can/services/CanUIService;->mCanUiService:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 5

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 55
    invoke-virtual {p0}, Lcom/can/services/CanUIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/can/assist/CanXml;->getInstance(Landroid/content/Context;)Lcom/can/assist/CanXml;

    move-result-object v0

    iget-object v1, p0, Lcom/can/services/CanUIService;->mObjHandler:Landroid/os/Handler;

    .line 56
    invoke-virtual {p0}, Lcom/can/services/CanUIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_PopWind:Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v4, "CanUIService"

    .line 55
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/can/assist/CanXml;->create(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Lcom/can/parser/DDef$E_CMD_TYPE;)Lcom/can/assist/CanProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/can/services/CanUIService;->mObjCanProxy:Lcom/can/assist/CanProxy;

    .line 58
    new-instance v0, Lcom/can/services/CarMediaAudio;

    invoke-direct {v0, p0}, Lcom/can/services/CarMediaAudio;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/can/services/CanUIService;->mCarMediaAudio:Lcom/can/services/CarMediaAudio;

    .line 59
    invoke-direct {p0}, Lcom/can/services/CanUIService;->initMcu()V

    const-string p0, "CanUIService is Active!"

    .line 60
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/can/services/CanUIService;->mCarMediaAudio:Lcom/can/services/CarMediaAudio;

    invoke-virtual {v0}, Lcom/can/services/CarMediaAudio;->releaseAudioFocus()Z

    .line 67
    iget-object v0, p0, Lcom/can/services/CanUIService;->mObjCanProxy:Lcom/can/assist/CanProxy;

    invoke-virtual {v0}, Lcom/can/assist/CanProxy;->deInit()V

    .line 68
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/can/services/CanUIService;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/McuServiceManager;->unregCallback(Lcom/carocean/navicar/McuServiceManager$DataListener;)V

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const-string p2, "CanUIService"

    const-string v0, "onStartCommand"

    .line 118
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const-string v1, "mode"

    .line 120
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string p2, "open_touch_screen"

    .line 123
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 124
    iget-object p2, p0, Lcom/can/services/CanUIService;->mObjHandler:Landroid/os/Handler;

    invoke-virtual {p2, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p2, "close_touch_screen"

    .line 126
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 127
    iget-object p2, p0, Lcom/can/services/CanUIService;->mObjHandler:Landroid/os/Handler;

    invoke-virtual {p2, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string v1, "air"

    .line 131
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 134
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 135
    iget-object p2, p0, Lcom/can/services/CanUIService;->mObjHandler:Landroid/os/Handler;

    const/16 v2, 0x41

    invoke-virtual {p2, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    const-string v4, "videomode"

    .line 138
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand, videomode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v1, :cond_3

    .line 144
    iget-object p2, p0, Lcom/can/services/CanUIService;->mObjHandler:Landroid/os/Handler;

    const-string v4, "sourceresumed"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p2, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    :cond_3
    :goto_0
    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public send2UIUser(Landroid/os/Message;)V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/can/services/CanUIService;->mArrayMessengers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/can/services/CanUIService$UIUserInfo;

    .line 344
    :try_start_0
    iget-object v2, v1, Lcom/can/services/CanUIService$UIUserInfo;->mMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, v1, Lcom/can/services/CanUIService$UIUserInfo;->mMessenger:Landroid/os/Messenger;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 349
    iget-object v3, p0, Lcom/can/services/CanUIService;->mArrayMessengers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
