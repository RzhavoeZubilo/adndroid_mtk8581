.class Lcom/can/ui/CarInfo$1;
.super Ljava/lang/Object;
.source "CarInfo.java"

# interfaces
.implements Lcom/carocean/navicar/McuServiceManager$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CarInfo;


# direct methods
.method constructor <init>(Lcom/can/ui/CarInfo;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(I[B)V
    .locals 4

    const/16 v0, 0x12

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v3, 0x18

    if-eq p1, v3, :cond_2

    const/16 v3, 0x24

    if-eq p1, v3, :cond_0

    goto/16 :goto_1

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1, p2}, Lcom/can/ui/CarInfo;->access$302(Lcom/can/ui/CarInfo;[B)[B

    .line 194
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 195
    iget-object p1, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$300(Lcom/can/ui/CarInfo;)[B

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$300(Lcom/can/ui/CarInfo;)[B

    move-result-object p1

    array-length p1, p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_4

    .line 196
    iget-object p1, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$300(Lcom/can/ui/CarInfo;)[B

    move-result-object p1

    const/4 p2, 0x5

    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x2

    shr-int/2addr p1, v2

    .line 197
    iget-object p2, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-static {p2, v3}, Lcom/can/ui/CarInfo;->access$402(Lcom/can/ui/CarInfo;Z)Z

    .line 198
    iget-object p2, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p2}, Lcom/can/ui/CarInfo;->access$500(Lcom/can/ui/CarInfo;)I

    move-result p2

    if-eq p1, p2, :cond_4

    iget-object p2, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p2}, Lcom/can/ui/CarInfo;->access$000(Lcom/can/ui/CarInfo;)[B

    move-result-object p2

    if-eqz p2, :cond_4

    .line 199
    iget-object p2, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p2, p1}, Lcom/can/ui/CarInfo;->access$502(Lcom/can/ui/CarInfo;I)I

    .line 200
    iget-object p1, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p2}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$000(Lcom/can/ui/CarInfo;)[B

    move-result-object p0

    invoke-virtual {p2, v2, v0, v1, p0}, Lcom/can/ui/CarInfo$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/can/ui/CarInfo$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0, p2}, Lcom/can/ui/CarInfo;->access$202(Lcom/can/ui/CarInfo;[B)[B

    .line 190
    iget-object v0, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v2, p1, v1, p2}, Lcom/can/ui/CarInfo$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/can/ui/CarInfo$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0, p2}, Lcom/can/ui/CarInfo;->access$002(Lcom/can/ui/CarInfo;[B)[B

    .line 186
    iget-object v0, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/CarInfo$1;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v2, p1, v1, p2}, Lcom/can/ui/CarInfo$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/can/ui/CarInfo$UIHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_1
    return-void
.end method
