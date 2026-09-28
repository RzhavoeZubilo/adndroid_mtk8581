.class Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1$1;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1$1;->this$2:Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1$1;->this$2:Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;->this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$000(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method
