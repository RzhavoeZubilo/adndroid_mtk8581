.class Lcom/autochips/bluetooth/fragment/VolumeBar$3;
.super Landroid/database/ContentObserver;
.source "VolumeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/fragment/VolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/VolumeBar;Landroid/os/Handler;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$3;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",selfChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VolumeBar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content://com.carocean.status.provider/status/ST_SYSTEM_PARAM_INFO"

    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 339
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$3;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    .line 340
    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$500(Lcom/autochips/bluetooth/fragment/VolumeBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.carocean.status.provider/status"

    const-string v0, "ST_SYSTEM_PARAM_INFO"

    .line 339
    invoke-static {p2, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-eqz p1, :cond_1

    .line 343
    iget p2, p1, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bt_volume:I

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$3;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$200(Lcom/autochips/bluetooth/fragment/VolumeBar;)I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 344
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$3;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    iget p1, p1, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bt_volume:I

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$202(Lcom/autochips/bluetooth/fragment/VolumeBar;I)I

    .line 345
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$3;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/VolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$3;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-static {p2}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$200(Lcom/autochips/bluetooth/fragment/VolumeBar;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 346
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$3;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/VolumeBar;->mTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$3;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-static {p2}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$200(Lcom/autochips/bluetooth/fragment/VolumeBar;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
