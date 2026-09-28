.class Lcom/autochips/bluetooth/setting/module/FragmentSetting$4;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/FragmentSetting;->setBluetoothSwitchClick()V
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

    .line 335
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$4;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "FragmentSetting"

    const-string v1, "setBluetoothSwitchClick2"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$4;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$000(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    return-void
.end method
