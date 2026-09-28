.class Lcom/autochips/bluetooth/setting/module/FragmentSetting$5;
.super Landroid/content/BroadcastReceiver;
.source "FragmentSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/setting/module/FragmentSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$5;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 421
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 425
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 426
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 427
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive connectState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentSetting"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$5;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {p1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$800(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)V

    :cond_1
    return-void
.end method
