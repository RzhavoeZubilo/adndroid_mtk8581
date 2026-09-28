.class Lcom/autochips/bluetooth/fragment/DialFragment$4;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/fragment/DialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/DialFragment;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/DialFragment;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$4;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(I)Z
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment$4;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/DialFragment;->access$200(Lcom/autochips/bluetooth/fragment/DialFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/fragment/DialFragment$4$1;

    invoke-direct {v1, p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment$4$1;-><init>(Lcom/autochips/bluetooth/fragment/DialFragment$4;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method
