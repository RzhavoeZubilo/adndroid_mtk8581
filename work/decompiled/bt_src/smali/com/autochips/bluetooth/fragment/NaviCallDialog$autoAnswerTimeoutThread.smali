.class Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;
.super Ljava/lang/Thread;
.source "NaviCallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/fragment/NaviCallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "autoAnswerTimeoutThread"
.end annotation


# instance fields
.field private stoped:Z

.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 290
    iput-boolean p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;->stoped:Z

    return-void
.end method

.method private autoAnswertimeout()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 302
    :goto_0
    iget-boolean v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;->stoped:Z

    if-nez v2, :cond_1

    const/16 v2, 0x1388

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x64

    .line 310
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x64

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 317
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->acceptCall()V

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;->autoAnswertimeout()V

    return-void
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;->stoped:Z

    return-void
.end method
