.class Lcom/can/ui/CarInfo$UIHandler;
.super Lcom/carocean/navicar/HandlerWeakReference;
.source "CarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/carocean/navicar/HandlerWeakReference<",
        "Lcom/can/ui/CarInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/can/ui/CarInfo;)V
    .locals 0

    .line 647
    invoke-direct {p0, p1}, Lcom/carocean/navicar/HandlerWeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 652
    iget-object p0, p0, Lcom/can/ui/CarInfo$UIHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/can/ui/CarInfo;

    if-nez p0, :cond_0

    return-void

    .line 657
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 658
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_b

    .line 659
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 660
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/can/ui/CarInfo;->access$900(Lcom/can/ui/CarInfo;I[B)V

    goto/16 :goto_4

    .line 662
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ne v3, v0, :cond_8

    .line 663
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1000(Lcom/can/ui/CarInfo;)B

    move-result p1

    const-wide/16 v5, 0x1f4

    const/4 v0, 0x0

    if-ne p1, v1, :cond_3

    .line 664
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1100(Lcom/can/ui/CarInfo;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1100(Lcom/can/ui/CarInfo;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 665
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v3, v5, v6}, Lcom/can/ui/CarInfo$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 666
    :cond_3
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1000(Lcom/can/ui/CarInfo;)B

    move-result p1

    if-ne p1, v3, :cond_5

    .line 667
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1200(Lcom/can/ui/CarInfo;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1200(Lcom/can/ui/CarInfo;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v3, v5, v6}, Lcom/can/ui/CarInfo$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 669
    :cond_5
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1000(Lcom/can/ui/CarInfo;)B

    move-result p1

    if-ne p1, v2, :cond_b

    .line 670
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1100(Lcom/can/ui/CarInfo;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1100(Lcom/can/ui/CarInfo;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 671
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1200(Lcom/can/ui/CarInfo;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1200(Lcom/can/ui/CarInfo;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    move v4, v0

    :goto_3
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 672
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v3, v5, v6}, Lcom/can/ui/CarInfo$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 674
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_9

    .line 675
    invoke-static {p0, v1}, Lcom/can/ui/CarInfo;->access$1300(Lcom/can/ui/CarInfo;Z)V

    .line 676
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Lcom/can/ui/CarInfo$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 677
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_a

    .line 678
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1400(Lcom/can/ui/CarInfo;)V

    .line 679
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1500(Lcom/can/ui/CarInfo;)V

    .line 680
    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v4, v0, v1}, Lcom/can/ui/CarInfo$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_a
    const/16 v0, 0x2710

    .line 681
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_b

    .line 682
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/can/ui/CarInfo;->updateID8Theme(I)V

    :cond_b
    :goto_4
    return-void
.end method
