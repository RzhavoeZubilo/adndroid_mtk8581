.class Lcom/can/services/CarMediaAudio$1;
.super Ljava/lang/Object;
.source "CarMediaAudio.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/services/CarMediaAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/services/CarMediaAudio;


# direct methods
.method constructor <init>(Lcom/can/services/CarMediaAudio;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/can/services/CarMediaAudio$1;->this$0:Lcom/can/services/CarMediaAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    const/4 v0, -0x3

    const-string v1, "CarMediaAudio"

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "AUDIOFOCUS_GAIN"

    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "AUDIOFOCUS_LOSS"

    .line 46
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p0, p0, Lcom/can/services/CarMediaAudio$1;->this$0:Lcom/can/services/CarMediaAudio;

    invoke-virtual {p0}, Lcom/can/services/CarMediaAudio;->exitUi()V

    goto :goto_0

    :cond_2
    const-string p0, "AUDIOFOCUS_LOSS_TRANSIENT"

    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
