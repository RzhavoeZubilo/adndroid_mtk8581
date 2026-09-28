.class Lcom/can/ui/CanPopWind$Inquiry$1;
.super Ljava/lang/Object;
.source "CanPopWind.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CanPopWind$Inquiry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/can/ui/CanPopWind$Inquiry;


# direct methods
.method constructor <init>(Lcom/can/ui/CanPopWind$Inquiry;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/can/ui/CanPopWind$Inquiry$1;->this$1:Lcom/can/ui/CanPopWind$Inquiry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 994
    iget-object v0, p0, Lcom/can/ui/CanPopWind$Inquiry$1;->this$1:Lcom/can/ui/CanPopWind$Inquiry;

    invoke-static {v0}, Lcom/can/ui/CanPopWind$Inquiry;->access$900(Lcom/can/ui/CanPopWind$Inquiry;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/can/ui/CanPopWind$Inquiry$1;->this$1:Lcom/can/ui/CanPopWind$Inquiry;

    invoke-static {v0}, Lcom/can/ui/CanPopWind$Inquiry;->access$900(Lcom/can/ui/CanPopWind$Inquiry;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 996
    iget-object v2, p0, Lcom/can/ui/CanPopWind$Inquiry$1;->this$1:Lcom/can/ui/CanPopWind$Inquiry;

    invoke-static {v2}, Lcom/can/ui/CanPopWind$Inquiry;->access$900(Lcom/can/ui/CanPopWind$Inquiry;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/can/ui/CanPopWind$Inquiry$1;->this$1:Lcom/can/ui/CanPopWind$Inquiry;

    invoke-static {v0}, Lcom/can/ui/CanPopWind$Inquiry;->access$1100(Lcom/can/ui/CanPopWind$Inquiry;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/CanPopWind$Inquiry$1;->this$1:Lcom/can/ui/CanPopWind$Inquiry;

    invoke-static {p0}, Lcom/can/ui/CanPopWind$Inquiry;->access$1000(Lcom/can/ui/CanPopWind$Inquiry;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
