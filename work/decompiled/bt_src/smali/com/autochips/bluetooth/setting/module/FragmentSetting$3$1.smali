.class Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$1;
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

    .line 275
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$1;->this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$1;->this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$1;->this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$400(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$500(Lcom/autochips/bluetooth/setting/module/FragmentSetting;I)V

    return-void
.end method
