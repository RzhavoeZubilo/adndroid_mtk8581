.class public Lcom/autochips/bluetooth/ExtendUtil;
.super Landroid/content/BroadcastReceiver;
.source "ExtendUtil.java"

# interfaces
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;
    }
.end annotation


# static fields
.field public static final BT_FRAGMENT_ID_CONTACT:I = 0x2

.field public static final BT_FRAGMENT_ID_DIAL:I = 0x1

.field public static final BT_FRAGMENT_ID_MUSIC:I = 0x4

.field public static final BT_FRAGMENT_ID_RECORD:I = 0x3

.field public static final BT_FRAGMENT_ID_SETTING:I = 0x5

.field public static final BT_FRAGMENT_ID_UNKNOW:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ExtendUtil"


# instance fields
.field private final context:Landroid/content/Context;

.field lastConnectMac:Ljava/lang/String;

.field mMcuListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;",
            ">;"
        }
    .end annotation
.end field

.field public naviCallDialog:Lcom/autochips/bluetooth/fragment/NaviCallDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->lastConnectMac:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/autochips/bluetooth/ExtendUtil;->context:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "navi.intent.action.ACTION_BLUETOOTH_SERVICE"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "navi.intent.action.ACTION_MCU_KEY_COMMAND"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "navi.intent.action.ACTION_BLUETOOTH_WINDOW_MOVE_TOP"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 55
    new-instance v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-direct {v0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->naviCallDialog:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/ExtendUtil;->onMcuKeyDown(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/ExtendUtil;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/autochips/bluetooth/ExtendUtil;->dialLastPhoneNumber()V

    return-void
.end method

.method private dialLastPhoneNumber()V
    .locals 1

    .line 351
    new-instance v0, Lcom/autochips/bluetooth/ExtendUtil$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/ExtendUtil$2;-><init>(Lcom/autochips/bluetooth/ExtendUtil;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onMcuKeyDown(I)Z
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->mMcuListener:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 313
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;

    .line 314
    invoke-interface {v2, p1}, Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;->onKeyDown(I)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private showCallView()V
    .locals 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCallView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/GlobalApplication;->isAppForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    sget-boolean v0, Lcom/autochips/bluetooth/util/BluetoothProperties;->isShowDialogOnlyNavi:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->isCurrentMapApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCallView is not foreground carplayshwo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayPhoneShow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-boolean v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isShowing:Z

    if-nez v0, :cond_3

    .line 301
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayPhoneShow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->naviCallDialog:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->showView()V

    goto :goto_1

    .line 284
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCallView is foreground carplayshow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayPhoneShow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 287
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->isCarPlayAutoConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayShow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayPhoneShow()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 292
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    const-class v1, Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 293
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/GlobalApplication;->startCallActivity()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addMcuCmdListener(Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;)V
    .locals 2

    const-string v0, "ExtendUtil"

    const-string v1, "addMcuCmdListener: "

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->mMcuListener:Ljava/util/List;

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->mMcuListener:Ljava/util/List;

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->mMcuListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->mMcuListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 3

    const/16 v0, 0x7d4

    const-string v1, "ExtendUtil"

    if-eq p1, v0, :cond_5

    const/16 v0, 0xbbb

    const/16 v2, 0x7d1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbd8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbdb

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 p1, 0xfa2

    .line 223
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 226
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p1

    if-eq p1, p2, :cond_9

    sget-boolean p1, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isShowing:Z

    if-eqz p1, :cond_9

    .line 227
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 231
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "backCarObserver 2backState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->isBackCarForeground(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 233
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p1

    if-eq p1, p2, :cond_9

    iget-object p1, p0, Lcom/autochips/bluetooth/ExtendUtil;->context:Landroid/content/Context;

    const-class p2, Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 234
    invoke-direct {p0}, Lcom/autochips/bluetooth/ExtendUtil;->showCallView()V

    goto/16 :goto_1

    :cond_2
    const/16 p1, 0xfb0

    .line 271
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0xfb1

    .line 272
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_SEND_NOT_ANSWER_CALL_NOTIFICATION phoneNumber:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/ExtendUtil;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/autochips/bluetooth/GlobalApplication;->sendNotAnswerCallNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 214
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_CALL_STATE_CHANGED LIST:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 216
    invoke-direct {p0}, Lcom/autochips/bluetooth/ExtendUtil;->showCallView()V

    goto/16 :goto_1

    .line 218
    :cond_4
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 219
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 240
    :cond_5
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayConnected()Z

    move-result p1

    const/4 p2, 0x0

    const-string v0, ""

    if-eqz p1, :cond_7

    const-string p1, "CAR_PLAY ACTION_CAR_PLAY_CONNECT_CHANGED closebt"

    .line 241
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_6

    .line 244
    iput-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->lastConnectMac:Ljava/lang/String;

    goto :goto_0

    .line 246
    :cond_6
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/ExtendUtil;->lastConnectMac:Ljava/lang/String;

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CAR_PLAY lastConnectMac="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->lastConnectMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/info/BTStateManager;->closeBT(Z)V

    .line 251
    iget-object p1, p0, Lcom/autochips/bluetooth/ExtendUtil;->context:Landroid/content/Context;

    const-class p2, Lcom/autochips/bluetooth/MainActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 253
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 254
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "android.intent.category.HOME"

    .line 255
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object p2, p0, Lcom/autochips/bluetooth/ExtendUtil;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 259
    :cond_7
    iget-object p1, p0, Lcom/autochips/bluetooth/ExtendUtil;->lastConnectMac:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 260
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p1

    iget-object v2, p0, Lcom/autochips/bluetooth/ExtendUtil;->lastConnectMac:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/info/BTDeviceManager;->connect(Ljava/lang/String;)V

    .line 261
    iput-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->lastConnectMac:Ljava/lang/String;

    .line 263
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CAR_PLAY ACTION_CAR_PLAY_CONNECT_CHANGED openbt  getBtStatePersist:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtStatePersist()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtStatePersist()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 265
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/info/BTStateManager;->openBT(Z)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/autochips/bluetooth/ExtendUtil$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/autochips/bluetooth/ExtendUtil$1;-><init>(Lcom/autochips/bluetooth/ExtendUtil;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public removeMcuCmdListener(Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;)V
    .locals 2

    const-string v0, "ExtendUtil"

    const-string v1, "removeMcuCmdListener: "

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->mMcuListener:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil;->mMcuListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
