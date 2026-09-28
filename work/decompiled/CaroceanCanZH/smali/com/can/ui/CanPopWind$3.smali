.class Lcom/can/ui/CanPopWind$3;
.super Ljava/lang/Object;
.source "CanPopWind.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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

    .line 225
    iput-object p1, p0, Lcom/can/ui/CanPopWind$3;->this$0:Lcom/can/ui/CanPopWind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0

    const/4 p0, -0x3

    if-eq p1, p0, :cond_3

    const/4 p0, -0x2

    if-eq p1, p0, :cond_2

    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    sget-object p0, Lcom/can/ui/CanPopWind;->TAG:Ljava/lang/String;

    const-string p1, "origncarmediaopen---AUDIOFOCUS_GAIN"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_1
    sget-object p0, Lcom/can/ui/CanPopWind;->TAG:Ljava/lang/String;

    const-string p1, "origncarmediaopen---AUDIOFOCUS_LOSS"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_2
    sget-object p0, Lcom/can/ui/CanPopWind;->TAG:Ljava/lang/String;

    const-string p1, "origncarmediaopen---AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    :cond_3
    sget-object p0, Lcom/can/ui/CanPopWind;->TAG:Ljava/lang/String;

    const-string p1, "origncarmediaopen---AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
