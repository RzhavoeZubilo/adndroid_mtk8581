.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$4;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$4;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$4;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/autochips/bluetooth/setting/module/R$anim;->bt_search:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$4;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$1400(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$4;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$1400(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method
