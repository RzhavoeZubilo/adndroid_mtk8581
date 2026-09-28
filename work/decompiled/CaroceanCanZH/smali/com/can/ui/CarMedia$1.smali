.class Lcom/can/ui/CarMedia$1;
.super Ljava/lang/Object;
.source "CarMedia.java"

# interfaces
.implements Lcom/carocean/navicar/McuServiceManager$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CarMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CarMedia;


# direct methods
.method constructor <init>(Lcom/can/ui/CarMedia;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(I[B)V
    .locals 3

    const/16 v0, 0x1e

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    array-length p1, p2

    const/16 v0, 0xd

    if-lt p1, v0, :cond_4

    .line 129
    iget-object p1, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    aget-byte v0, p2, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {p1, v0}, Lcom/can/ui/CarMedia;->access$202(Lcom/can/ui/CarMedia;I)I

    .line 130
    iget-object p1, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    invoke-static {p1}, Lcom/can/ui/CarMedia;->access$200(Lcom/can/ui/CarMedia;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 132
    iget-object p0, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    invoke-static {p0, p2}, Lcom/can/ui/CarMedia;->access$500(Lcom/can/ui/CarMedia;[B)V

    goto :goto_0

    .line 110
    :cond_1
    array-length p1, p2

    const/4 v0, 0x6

    if-lt p1, v0, :cond_4

    .line 111
    iget-object p1, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    aget-byte v0, p2, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {p1, v0}, Lcom/can/ui/CarMedia;->access$002(Lcom/can/ui/CarMedia;I)I

    .line 112
    iget-object p1, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    invoke-static {p1}, Lcom/can/ui/CarMedia;->access$100(Lcom/can/ui/CarMedia;)V

    .line 113
    iget-object p1, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    invoke-static {p1}, Lcom/can/ui/CarMedia;->access$200(Lcom/can/ui/CarMedia;)I

    move-result p1

    if-nez p1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    invoke-static {p1}, Lcom/can/ui/CarMedia;->access$300(Lcom/can/ui/CarMedia;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    invoke-static {p1}, Lcom/can/ui/CarMedia;->access$000(Lcom/can/ui/CarMedia;)I

    move-result p1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    .line 117
    iget-object p0, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    invoke-virtual {p0}, Lcom/can/ui/CarMedia;->finish()V

    return-void

    .line 121
    :cond_2
    iget-object p0, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    invoke-static {p0, p2, v1}, Lcom/can/ui/CarMedia;->access$400(Lcom/can/ui/CarMedia;[BZ)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object p0, p0, Lcom/can/ui/CarMedia$1;->this$0:Lcom/can/ui/CarMedia;

    invoke-static {p0, p2, v2}, Lcom/can/ui/CarMedia;->access$400(Lcom/can/ui/CarMedia;[BZ)V

    :cond_4
    :goto_0
    return-void
.end method
