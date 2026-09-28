.class Lcom/can/services/CanUIService$3;
.super Landroid/os/Handler;
.source "CanUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/services/CanUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/services/CanUIService;


# direct methods
.method constructor <init>(Lcom/can/services/CanUIService;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 235
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 232
    :pswitch_1
    iget-object p0, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p0}, Lcom/can/services/CanUIService;->access$600(Lcom/can/services/CanUIService;)Lcom/can/services/CarMediaAudio;

    move-result-object p0

    invoke-virtual {p0}, Lcom/can/services/CarMediaAudio;->releaseAudioFocus()Z

    goto/16 :goto_1

    :pswitch_2
    :try_start_0
    const-string p1, "content://com.carocean.status.provider/sys"

    .line 220
    iget-object v0, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-virtual {v0}, Lcom/can/services/CanUIService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYS_BT_CALL_STATUS"

    invoke-static {p1, v0, v1}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p1}, Lcom/can/services/CanUIService;->access$000(Lcom/can/services/CanUIService;)I

    move-result p1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    .line 223
    iget-object p1, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p1}, Lcom/can/services/CanUIService;->access$600(Lcom/can/services/CanUIService;)Lcom/can/services/CarMediaAudio;

    move-result-object p1

    invoke-virtual {p1}, Lcom/can/services/CarMediaAudio;->requestAudioFocus()V

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p1}, Lcom/can/services/CanUIService;->access$600(Lcom/can/services/CanUIService;)Lcom/can/services/CarMediaAudio;

    move-result-object p1

    iget-object p0, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p0}, Lcom/can/services/CanUIService;->access$000(Lcom/can/services/CanUIService;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/can/services/CarMediaAudio;->showUi(I)V
    :try_end_0
    .catch Lcom/carocean/navicar/NaviStatus$StatusNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 228
    invoke-virtual {p0}, Lcom/carocean/navicar/NaviStatus$StatusNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 216
    :pswitch_3
    iget-object p0, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p0}, Lcom/can/services/CanUIService;->access$600(Lcom/can/services/CanUIService;)Lcom/can/services/CarMediaAudio;

    move-result-object p0

    invoke-virtual {p0}, Lcom/can/services/CarMediaAudio;->requestAudioFocus()V

    goto :goto_1

    .line 211
    :pswitch_4
    iget-object v0, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/can/services/CanUIService;->mIsCarInfoShowing:Z

    .line 213
    iget-object p1, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    iget-object p1, p1, Lcom/can/services/CanUIService;->mObjHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    iget-object p0, p0, Lcom/can/services/CanUIService;->mObjHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    sget-object v1, Lcom/can/parser/Parser;->mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 208
    :pswitch_5
    iget-object p0, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p0, p1}, Lcom/can/services/CanUIService;->access$500(Lcom/can/services/CanUIService;Landroid/os/Message;)V

    goto :goto_1

    .line 202
    :pswitch_6
    iget-object p0, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p0, p1}, Lcom/can/services/CanUIService;->access$300(Lcom/can/services/CanUIService;Landroid/os/Message;)V

    goto :goto_1

    .line 199
    :pswitch_7
    iget-object p0, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p0, p1}, Lcom/can/services/CanUIService;->access$200(Lcom/can/services/CanUIService;Landroid/os/Message;)V

    goto :goto_1

    .line 205
    :pswitch_8
    iget-object p0, p0, Lcom/can/services/CanUIService$3;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p0, p1}, Lcom/can/services/CanUIService;->access$400(Lcom/can/services/CanUIService;Landroid/os/Message;)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
