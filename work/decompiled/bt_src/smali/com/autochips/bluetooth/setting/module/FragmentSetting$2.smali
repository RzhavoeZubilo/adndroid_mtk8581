.class Lcom/autochips/bluetooth/setting/module/FragmentSetting$2;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/FragmentSetting;->checkCarplayConnected()Z
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

    .line 185
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$2;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$2;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/autochips/bluetooth/setting/module/R$string;->toast_carplay_connect_tip:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
