.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BTSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->registerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$1;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.carocean.action.ACTION_QUIT_DLG"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$1;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$000(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$1;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$000(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
