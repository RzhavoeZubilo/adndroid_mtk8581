.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->showResetNameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    iput-object p2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/autochips/bluetooth/setting/module/R$id;->confirmButton:I

    if-ne p1, v0, :cond_0

    .line 463
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 464
    new-instance p1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10$1;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10$1;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;)V

    invoke-static {p1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    .line 478
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$000(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
