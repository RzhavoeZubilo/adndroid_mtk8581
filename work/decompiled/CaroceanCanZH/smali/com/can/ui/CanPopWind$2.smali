.class Lcom/can/ui/CanPopWind$2;
.super Ljava/lang/Object;
.source "CanPopWind.java"

# interfaces
.implements Lcom/carocean/navicar/McuServiceManager$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CanPopWind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CanPopWind;


# direct methods
.method constructor <init>(Lcom/can/ui/CanPopWind;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/can/ui/CanPopWind$2;->this$0:Lcom/can/ui/CanPopWind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(I[B)V
    .locals 5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/can/ui/CanPopWind$2;->this$0:Lcom/can/ui/CanPopWind;

    const/4 v1, 0x0

    aget-byte v2, p2, v1

    and-int/lit8 v2, v2, 0xf

    invoke-static {v0, v2}, Lcom/can/ui/CanPopWind;->access$302(Lcom/can/ui/CanPopWind;I)I

    .line 178
    iget-object v0, p0, Lcom/can/ui/CanPopWind$2;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$400(Lcom/can/ui/CanPopWind;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    array-length v0, p2

    const/4 v2, 0x3

    add-int/2addr v0, v2

    new-array v3, v0, [B

    const/16 v4, 0x2d

    .line 180
    aput-byte v4, v3, v1

    int-to-byte p1, p1

    const/4 v4, 0x1

    .line 181
    aput-byte p1, v3, v4

    const/4 p1, 0x2

    .line 182
    array-length v4, p2

    int-to-byte v4, v4

    aput-byte v4, v3, p1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 p1, v2, -0x3

    .line 184
    aget-byte p1, p2, p1

    aput-byte p1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/can/ui/CanPopWind$2;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p1}, Lcom/can/ui/CanPopWind;->access$500(Lcom/can/ui/CanPopWind;)Lcom/can/ui/CanPopWind$UIHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/CanPopWind$2;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p0}, Lcom/can/ui/CanPopWind;->access$500(Lcom/can/ui/CanPopWind;)Lcom/can/ui/CanPopWind$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Lcom/can/ui/CanPopWind$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/can/ui/CanPopWind$UIHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_1
    return-void
.end method
