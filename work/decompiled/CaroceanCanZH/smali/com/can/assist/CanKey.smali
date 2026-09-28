.class public Lcom/can/assist/CanKey;
.super Ljava/lang/Object;
.source "CanKey.java"

# interfaces
.implements Lcom/can/assist/CanContant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/assist/CanKey$OnCanKeyListener;,
        Lcom/can/assist/CanKey$KeyAction;,
        Lcom/can/assist/CanKey$CANKEY_INFO;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCanKeyListener:Lcom/can/assist/CanKey$OnCanKeyListener;

.field private mObjKeyAction:Lcom/can/assist/CanKey$KeyAction;

.field private mObjhHandler:Landroid/os/Handler;

.field private mbSeekTick:Z

.field private mkeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field runLongClick:Ljava/lang/Runnable;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/can/assist/CanKey;->mObjKeyAction:Lcom/can/assist/CanKey$KeyAction;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/can/assist/CanKey;->TAG:Ljava/lang/String;

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/can/assist/CanKey;->mkeyMap:Ljava/util/HashMap;

    .line 149
    new-instance v1, Lcom/can/assist/CanKey$1;

    invoke-direct {v1, p0}, Lcom/can/assist/CanKey$1;-><init>(Lcom/can/assist/CanKey;)V

    iput-object v1, p0, Lcom/can/assist/CanKey;->runnable:Ljava/lang/Runnable;

    .line 158
    new-instance v1, Lcom/can/assist/CanKey$2;

    invoke-direct {v1, p0}, Lcom/can/assist/CanKey$2;-><init>(Lcom/can/assist/CanKey;)V

    iput-object v1, p0, Lcom/can/assist/CanKey;->runLongClick:Ljava/lang/Runnable;

    .line 165
    new-instance v1, Lcom/can/assist/CanKey$3;

    invoke-direct {v1, p0}, Lcom/can/assist/CanKey$3;-><init>(Lcom/can/assist/CanKey;)V

    iput-object v1, p0, Lcom/can/assist/CanKey;->mObjhHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 335
    iput-boolean v1, p0, Lcom/can/assist/CanKey;->mbSeekTick:Z

    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    iget-object p1, p0, Lcom/can/assist/CanKey;->TAG:Ljava/lang/String;

    const-string p2, "key xml not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, v0}, Lcom/can/assist/CanKey;->parserkeyxml(Landroid/content/res/XmlResourceParser;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/can/assist/CanKey;)Lcom/can/assist/CanKey$KeyAction;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/can/assist/CanKey;->getKeyAction()Lcom/can/assist/CanKey$KeyAction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/can/assist/CanKey;Landroid/os/Message;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/can/assist/CanKey;->parser(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/can/assist/CanKey;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/can/assist/CanKey;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/can/assist/CanKey;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/can/assist/CanKey;->mObjhHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$602(Lcom/can/assist/CanKey;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/can/assist/CanKey;->mbSeekTick:Z

    return p1
.end method

.method static synthetic access$700(Lcom/can/assist/CanKey;)Lcom/can/assist/CanKey$OnCanKeyListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/can/assist/CanKey;->mCanKeyListener:Lcom/can/assist/CanKey$OnCanKeyListener;

    return-object p0
.end method

.method private getIsAction(Lcom/can/assist/CanKey$CANKEY_INFO;)Lcom/can/assist/CanContant$E_CANKEY_ACTION;
    .locals 3

    .line 128
    sget-object v0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_Invalid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    .line 130
    iget-boolean v1, p1, Lcom/can/assist/CanKey$CANKEY_INFO;->bCombination:Z

    if-eqz v1, :cond_3

    .line 131
    iget v1, p1, Lcom/can/assist/CanKey$CANKEY_INFO;->iKeyState:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/can/assist/CanKey;->getKeyAction()Lcom/can/assist/CanKey$KeyAction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/can/assist/CanKey$KeyAction;->knob(Lcom/can/assist/CanKey$CANKEY_INFO;)Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/can/assist/CanKey;->getKeyAction()Lcom/can/assist/CanKey$KeyAction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/can/assist/CanKey$KeyAction;->down(Lcom/can/assist/CanKey$CANKEY_INFO;)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/can/assist/CanKey;->getKeyAction()Lcom/can/assist/CanKey$KeyAction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/can/assist/CanKey$KeyAction;->up(Lcom/can/assist/CanKey$CANKEY_INFO;)Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_3
    invoke-direct {p0}, Lcom/can/assist/CanKey;->getKeyAction()Lcom/can/assist/CanKey$KeyAction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/can/assist/CanKey$KeyAction;->getNormalKeyAction(Lcom/can/assist/CanKey$CANKEY_INFO;)Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getKeyAction()Lcom/can/assist/CanKey$KeyAction;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/can/assist/CanKey;->mObjKeyAction:Lcom/can/assist/CanKey$KeyAction;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/can/assist/CanKey$KeyAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/can/assist/CanKey$KeyAction;-><init>(Lcom/can/assist/CanKey;Lcom/can/assist/CanKey$1;)V

    iput-object v0, p0, Lcom/can/assist/CanKey;->mObjKeyAction:Lcom/can/assist/CanKey$KeyAction;

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanKey;->mObjKeyAction:Lcom/can/assist/CanKey$KeyAction;

    return-object p0
.end method

.method private parser(Landroid/os/Message;)V
    .locals 2

    .line 100
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/can/assist/CanKey$CANKEY_INFO;

    .line 101
    invoke-direct {p0, p1}, Lcom/can/assist/CanKey;->getIsAction(Lcom/can/assist/CanKey$CANKEY_INFO;)Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/can/assist/CanKey$5;->$SwitchMap$com$can$assist$CanContant$E_CANKEY_ACTION:[I

    invoke-virtual {v0}, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/can/assist/CanKey;->mObjhHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/can/assist/CanKey;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 105
    :cond_1
    iget-boolean v0, p1, Lcom/can/assist/CanKey$CANKEY_INFO;->bInternal:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/can/assist/CanKey;->mCanKeyListener:Lcom/can/assist/CanKey$OnCanKeyListener;

    if-eqz v0, :cond_2

    .line 106
    iget-object p0, p1, Lcom/can/assist/CanKey$CANKEY_INFO;->strKeyCode:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/can/assist/CanKey$OnCanKeyListener;->ondo(Ljava/lang/String;Z)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object p1, p1, Lcom/can/assist/CanKey$CANKEY_INFO;->strKeyCode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/can/assist/CanKey;->sendKey(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parserkeyxml(Landroid/content/res/XmlResourceParser;)Z
    .locals 8

    const/4 v0, 0x0

    .line 387
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 391
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    move v4, v0

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    const/4 v6, 0x2

    const-string v7, "Item"

    if-eq v2, v6, :cond_1

    const/4 v6, 0x3

    if-eq v2, v6, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    iget-object v2, p0, Lcom/can/assist/CanKey;->mkeyMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_1

    .line 398
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-interface {p1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v1

    move-object v1, v2

    .line 413
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    move v0, v4

    goto :goto_2

    :catch_1
    move-exception p0

    move v0, v4

    goto :goto_3

    .line 421
    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    .line 419
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception p0

    .line 417
    :goto_3
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    :goto_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    move v4, v0

    :goto_5
    return v4

    :goto_6
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 422
    throw p0
.end method


# virtual methods
.method public TranslateKey(Ljava/lang/String;)I
    .locals 4

    const-string v0, "Media_pre"

    .line 436
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Media_next"

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 437
    invoke-static {v1}, Lcom/can/assist/CanXml;->getInstance(Landroid/content/Context;)Lcom/can/assist/CanXml;

    move-result-object v1

    const-string v3, "persist.sys.mirr_pri_next"

    invoke-virtual {v1, v3}, Lcom/can/assist/CanXml;->getAssistFun(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 441
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/can/assist/CanKey;->mkeyMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public sendCankey(Lcom/can/parser/DDef$WheelKeyInfo;)V
    .locals 4

    .line 60
    new-instance v0, Lcom/can/assist/CanKey$CANKEY_INFO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/can/assist/CanKey$CANKEY_INFO;-><init>(Lcom/can/assist/CanKey;Lcom/can/assist/CanKey$1;)V

    .line 62
    iget-object v2, p1, Lcom/can/parser/DDef$WheelKeyInfo;->mstrLongKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->strLongKey:Ljava/lang/String;

    .line 63
    iget-object v2, p1, Lcom/can/parser/DDef$WheelKeyInfo;->mstrKeyCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->strKeyCode:Ljava/lang/String;

    .line 64
    iget-boolean v2, p1, Lcom/can/parser/DDef$WheelKeyInfo;->mExeOnceLongClick:Z

    iput-boolean v2, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->bExeOnceLongClick:Z

    .line 65
    iget v2, p1, Lcom/can/parser/DDef$WheelKeyInfo;->mKeyStatus:I

    iput v2, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->iKeyState:I

    .line 67
    iget-boolean v2, p1, Lcom/can/parser/DDef$WheelKeyInfo;->bInternal:Z

    iput-boolean v2, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->bInternal:Z

    .line 68
    iget-boolean v2, p1, Lcom/can/parser/DDef$WheelKeyInfo;->bCombination:Z

    iput-boolean v2, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->bCombination:Z

    .line 69
    iget-boolean v2, p1, Lcom/can/parser/DDef$WheelKeyInfo;->bLongClick:Z

    iput-boolean v2, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->bLongClick:Z

    .line 70
    iget-boolean v2, p1, Lcom/can/parser/DDef$WheelKeyInfo;->bLongInternal:Z

    iput-boolean v2, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->bLongInternal:Z

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyInfo.bInternal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/can/parser/DDef$WheelKeyInfo;->bInternal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",objCanInfo.bInternal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->bInternal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LHB"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget v2, p1, Lcom/can/parser/DDef$WheelKeyInfo;->mKeyStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 73
    iget p1, p1, Lcom/can/parser/DDef$WheelKeyInfo;->mKnobSteps:I

    iput p1, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->iKnobStep:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 75
    iput p1, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->iKnobStep:I

    :goto_0
    const/16 p1, 0x321

    .line 78
    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 79
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object p0, p0, Lcom/can/assist/CanKey;->mObjhHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendKey(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    const-string v0, "Seek_pre"

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Seek_next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "Random"

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Repeat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    new-instance v0, Lcom/can/assist/CanKey$4;

    invoke-direct {v0, p0, p1}, Lcom/can/assist/CanKey$4;-><init>(Lcom/can/assist/CanKey;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Lcom/can/assist/CanKey$4;->start()V

    goto :goto_2

    .line 350
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/can/assist/CanKey;->mCanKeyListener:Lcom/can/assist/CanKey$OnCanKeyListener;

    invoke-interface {p0, p1}, Lcom/can/assist/CanKey$OnCanKeyListener;->onRadomRepeatKey(Ljava/lang/String;)V

    goto :goto_2

    .line 345
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/can/assist/CanKey;->mCanKeyListener:Lcom/can/assist/CanKey$OnCanKeyListener;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/can/assist/CanKey;->mbSeekTick:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 346
    iput-boolean v1, p0, Lcom/can/assist/CanKey;->mbSeekTick:Z

    .line 347
    invoke-interface {v0, p1}, Lcom/can/assist/CanKey$OnCanKeyListener;->onSeekKey(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setOnCanKeyListener(Lcom/can/assist/CanKey$OnCanKeyListener;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/can/assist/CanKey;->mCanKeyListener:Lcom/can/assist/CanKey$OnCanKeyListener;

    return-void
.end method
