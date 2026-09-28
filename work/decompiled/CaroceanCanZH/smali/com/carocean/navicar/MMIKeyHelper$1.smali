.class Lcom/carocean/navicar/MMIKeyHelper$1;
.super Landroid/os/Handler;
.source "MMIKeyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/MMIKeyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/carocean/navicar/MMIKeyHelper;


# direct methods
.method constructor <init>(Lcom/carocean/navicar/MMIKeyHelper;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper$1;->this$0:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper$1;->this$0:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-static {v0}, Lcom/carocean/navicar/MMIKeyHelper;->access$000(Lcom/carocean/navicar/MMIKeyHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/carocean/navicar/MMIKeyHelper$1;->this$0:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
