.class Lcom/can/ui/CarAux$2;
.super Ljava/lang/Object;
.source "CarAux.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CarAux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CarAux;


# direct methods
.method constructor <init>(Lcom/can/ui/CarAux;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/can/ui/CarAux$2;->this$0:Lcom/can/ui/CarAux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x3

    const/4 v1, 0x0

    const-string v2, "CarAux"

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "aux---AUDIOFOCUS_GAIN"

    .line 152
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p0, p0, Lcom/can/ui/CarAux$2;->this$0:Lcom/can/ui/CarAux;

    invoke-virtual {p0, v0}, Lcom/can/ui/CarAux;->openAuxAudio(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "aux---AUDIOFOCUS_LOSS"

    .line 164
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p1, p0, Lcom/can/ui/CarAux$2;->this$0:Lcom/can/ui/CarAux;

    invoke-static {p1}, Lcom/can/ui/CarAux;->access$000(Lcom/can/ui/CarAux;)V

    .line 167
    iget-object p0, p0, Lcom/can/ui/CarAux$2;->this$0:Lcom/can/ui/CarAux;

    invoke-virtual {p0}, Lcom/can/ui/CarAux;->finish()V

    goto :goto_0

    :cond_2
    const-string p1, "aux---AUDIOFOCUS_LOSS_TRANSIENT"

    .line 160
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/can/ui/CarAux$2;->this$0:Lcom/can/ui/CarAux;

    invoke-virtual {p0, v1}, Lcom/can/ui/CarAux;->openAuxAudio(Z)V

    goto :goto_0

    :cond_3
    const-string p1, "aux---AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    .line 156
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p0, p0, Lcom/can/ui/CarAux$2;->this$0:Lcom/can/ui/CarAux;

    invoke-virtual {p0, v1}, Lcom/can/ui/CarAux;->openAuxAudio(Z)V

    :goto_0
    return-void
.end method
