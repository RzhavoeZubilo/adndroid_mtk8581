.class Lcom/can/ui/CarMedia$5;
.super Ljava/lang/Object;
.source "CarMedia.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/CarMedia;->showRadioSystemList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CarMedia;


# direct methods
.method constructor <init>(Lcom/can/ui/CarMedia;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/can/ui/CarMedia$5;->this$0:Lcom/can/ui/CarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 749
    iget-object p0, p0, Lcom/can/ui/CarMedia$5;->this$0:Lcom/can/ui/CarMedia;

    invoke-static {p0}, Lcom/can/ui/CarMedia;->access$800(Lcom/can/ui/CarMedia;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/can/ui/CarMedia;->access$702(Lcom/can/ui/CarMedia;I)I

    .line 750
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p0

    const/16 p1, 0x1e

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/carocean/navicar/util/McuUtils;->sendQueryCmd(II)V

    return-void
.end method
