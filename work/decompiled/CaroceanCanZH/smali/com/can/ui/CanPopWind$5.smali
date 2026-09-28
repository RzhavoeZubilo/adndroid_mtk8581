.class Lcom/can/ui/CanPopWind$5;
.super Ljava/lang/Object;
.source "CanPopWind.java"

# interfaces
.implements Lcom/can/assist/CanKey$OnCanKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CanPopWind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CanPopWind;


# direct methods
.method constructor <init>(Lcom/can/ui/CanPopWind;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/can/ui/CanPopWind$5;->this$0:Lcom/can/ui/CanPopWind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadomRepeatKey(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 632
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Random"

    .line 633
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "action.media.random"

    .line 634
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "Repeat"

    .line 635
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "action.media.repeat"

    .line 636
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/can/ui/CanPopWind$5;->this$0:Lcom/can/ui/CanPopWind;

    invoke-virtual {p0, v0}, Lcom/can/ui/CanPopWind;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onSeekKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ondo(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onlongOver()V
    .locals 0

    return-void
.end method
