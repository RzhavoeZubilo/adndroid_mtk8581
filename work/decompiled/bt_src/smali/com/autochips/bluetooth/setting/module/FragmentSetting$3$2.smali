.class Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$2;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$2;->this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$2;->this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$700(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$2;->this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$600(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
