.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$1;
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

    .line 240
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$1;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$1;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$1;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$700(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$800(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;I)V

    return-void
.end method
