.class Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/FragmentSetting;->init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
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

    .line 93
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {p1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$000(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v0, "FragmentSetting"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {p1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$100(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "checkCarplayConnected true return"

    .line 97
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {p1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$000(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {p1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$000(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    new-instance p1, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;)V

    invoke-static {p1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 120
    :cond_1
    new-instance p1, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$2;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$2;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;)V

    invoke-static {p1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    .line 137
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btSwitch="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$000(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
