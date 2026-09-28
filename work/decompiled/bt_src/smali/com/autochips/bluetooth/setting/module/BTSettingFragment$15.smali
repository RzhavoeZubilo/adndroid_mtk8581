.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment;
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

    .line 683
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BTSettingFragment"

    const-string v1, "delaySyncRunnable switchSyncContactState >>"

    .line 686
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15$1;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method
