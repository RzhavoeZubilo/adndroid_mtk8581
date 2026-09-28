.class Lcom/carlos/eventlibrary/EventMailer$MyHandler;
.super Landroid/os/Handler;
.source "EventMailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carlos/eventlibrary/EventMailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/carlos/eventlibrary/EventMailer$1;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/carlos/eventlibrary/EventMailer$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 269
    :goto_0
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->access$100()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 270
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->access$100()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carlos/eventlibrary/EventMail;

    invoke-virtual {p1, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Lcom/carlos/eventlibrary/EventMail;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
