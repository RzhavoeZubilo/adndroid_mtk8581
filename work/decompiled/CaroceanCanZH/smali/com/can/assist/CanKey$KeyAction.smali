.class Lcom/can/assist/CanKey$KeyAction;
.super Ljava/lang/Object;
.source "CanKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyAction"
.end annotation


# instance fields
.field private mDelayMillis:J

.field private mIntervalTime:J

.field private mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

.field final synthetic this$0:Lcom/can/assist/CanKey;


# direct methods
.method private constructor <init>(Lcom/can/assist/CanKey;)V
    .locals 2

    .line 208
    iput-object p1, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 209
    iput-wide v0, p0, Lcom/can/assist/CanKey$KeyAction;->mIntervalTime:J

    const-wide/16 v0, 0x64

    .line 210
    iput-wide v0, p0, Lcom/can/assist/CanKey$KeyAction;->mDelayMillis:J

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    return-void
.end method

.method synthetic constructor <init>(Lcom/can/assist/CanKey;Lcom/can/assist/CanKey$1;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/can/assist/CanKey$KeyAction;-><init>(Lcom/can/assist/CanKey;)V

    return-void
.end method


# virtual methods
.method public KnobStep()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    if-eqz v0, :cond_0

    .line 284
    iget v0, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->iKnobStep:I

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    iget v1, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->iKnobStep:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->iKnobStep:I

    .line 286
    iget-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    iget-object v1, v1, Lcom/can/assist/CanKey$CANKEY_INFO;->strKeyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/can/assist/CanKey;->sendKey(Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    invoke-static {v0}, Lcom/can/assist/CanKey;->access$500(Lcom/can/assist/CanKey;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    iget-object v1, v1, Lcom/can/assist/CanKey;->runnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/can/assist/CanKey$KeyAction;->mDelayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public down(Lcom/can/assist/CanKey$CANKEY_INFO;)V
    .locals 4

    .line 221
    iput-object p1, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    .line 222
    iget-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    invoke-static {v0}, Lcom/can/assist/CanKey;->access$400(Lcom/can/assist/CanKey;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++++++++++++++++++CanKey Down:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/can/assist/CanKey$CANKEY_INFO;->strKeyCode:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-wide v0, p0, Lcom/can/assist/CanKey$KeyAction;->mIntervalTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/can/assist/CanKey$KeyAction;->mIntervalTime:J

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/can/assist/CanKey$CANKEY_INFO;->bLongClick:Z

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    invoke-static {p1}, Lcom/can/assist/CanKey;->access$500(Lcom/can/assist/CanKey;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    iget-object p0, p0, Lcom/can/assist/CanKey;->runLongClick:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public getNormalKeyAction(Lcom/can/assist/CanKey$CANKEY_INFO;)Lcom/can/assist/CanContant$E_CANKEY_ACTION;
    .locals 0

    .line 331
    iget p0, p1, Lcom/can/assist/CanKey$CANKEY_INFO;->iKeyState:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_valid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_Invalid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    :goto_0
    return-object p0
.end method

.method public knob(Lcom/can/assist/CanKey$CANKEY_INFO;)Lcom/can/assist/CanContant$E_CANKEY_ACTION;
    .locals 2

    .line 268
    sget-object v0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_Invalid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    .line 269
    iget v1, p1, Lcom/can/assist/CanKey$CANKEY_INFO;->iKnobStep:I

    if-lez v1, :cond_0

    .line 270
    iput-object p1, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    .line 271
    sget-object v0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCankey_Action_Knob:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    :cond_0
    return-object v0
.end method

.method public longClick()V
    .locals 4

    .line 299
    iget-wide v0, p0, Lcom/can/assist/CanKey$KeyAction;->mIntervalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->bLongClick:Z

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    iget-object v0, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->strKeyCode:Ljava/lang/String;

    .line 301
    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    iget-object v1, v1, Lcom/can/assist/CanKey$CANKEY_INFO;->strLongKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    iget-object v1, v1, Lcom/can/assist/CanKey$CANKEY_INFO;->strLongKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    iget-object v0, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->strLongKey:Ljava/lang/String;

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    iget-boolean v1, v1, Lcom/can/assist/CanKey$CANKEY_INFO;->bLongInternal:Z

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    invoke-static {v1}, Lcom/can/assist/CanKey;->access$700(Lcom/can/assist/CanKey;)Lcom/can/assist/CanKey$OnCanKeyListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    invoke-static {v1}, Lcom/can/assist/CanKey;->access$700(Lcom/can/assist/CanKey;)Lcom/can/assist/CanKey$OnCanKeyListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/can/assist/CanKey$OnCanKeyListener;->ondo(Ljava/lang/String;Z)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    invoke-virtual {v1, v0}, Lcom/can/assist/CanKey;->sendKey(Ljava/lang/String;)V

    .line 313
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    iget-boolean v0, v0, Lcom/can/assist/CanKey$CANKEY_INFO;->bExeOnceLongClick:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    goto :goto_1

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    invoke-static {v0}, Lcom/can/assist/CanKey;->access$500(Lcom/can/assist/CanKey;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    iget-object v1, v1, Lcom/can/assist/CanKey;->runLongClick:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/can/assist/CanKey$KeyAction;->mDelayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public up(Lcom/can/assist/CanKey$CANKEY_INFO;)Lcom/can/assist/CanContant$E_CANKEY_ACTION;
    .locals 4

    .line 243
    sget-object v0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_Invalid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    .line 244
    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/can/assist/CanKey$KeyAction;->mObjCanKeyInfo:Lcom/can/assist/CanKey$CANKEY_INFO;

    .line 247
    sget-object v0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_valid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    .line 248
    iget-object v1, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    invoke-static {v1}, Lcom/can/assist/CanKey;->access$400(Lcom/can/assist/CanKey;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++++++++++++++++++++++CanKey Up:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Lcom/can/assist/CanKey$CANKEY_INFO;->strKeyCode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    invoke-static {p1}, Lcom/can/assist/CanKey;->access$400(Lcom/can/assist/CanKey;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "The last time no down press\u951b\ufffd"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    iget-object p1, p0, Lcom/can/assist/CanKey$KeyAction;->this$0:Lcom/can/assist/CanKey;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/can/assist/CanKey;->access$602(Lcom/can/assist/CanKey;Z)Z

    const-wide/16 v1, 0x0

    .line 255
    iput-wide v1, p0, Lcom/can/assist/CanKey$KeyAction;->mIntervalTime:J

    return-object v0
.end method
