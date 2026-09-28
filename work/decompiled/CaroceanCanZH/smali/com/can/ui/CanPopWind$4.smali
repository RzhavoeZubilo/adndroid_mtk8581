.class Lcom/can/ui/CanPopWind$4;
.super Ljava/lang/Object;
.source "CanPopWind.java"

# interfaces
.implements Lcom/can/assist/Platforms$OnGdDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CanPopWind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mMsg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mWheelInfo:Lcom/can/parser/DDef$WheelInfo;

.field final synthetic this$0:Lcom/can/ui/CanPopWind;


# direct methods
.method constructor <init>(Lcom/can/ui/CanPopWind;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/can/ui/CanPopWind$4;->this$0:Lcom/can/ui/CanPopWind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/can/ui/CanPopWind$4;->mMsg:Ljava/util/ArrayList;

    .line 383
    new-instance p1, Lcom/can/parser/DDef$WheelInfo;

    invoke-direct {p1}, Lcom/can/parser/DDef$WheelInfo;-><init>()V

    iput-object p1, p0, Lcom/can/ui/CanPopWind$4;->mWheelInfo:Lcom/can/parser/DDef$WheelInfo;

    return-void
.end method


# virtual methods
.method public onAbout()V
    .locals 0

    return-void
.end method

.method public onAcc(ZZ)V
    .locals 0

    return-void
.end method

.method public onBtInfo(II)V
    .locals 0

    return-void
.end method

.method public onCycle2send()V
    .locals 0

    return-void
.end method

.method public onLang()V
    .locals 0

    return-void
.end method

.method public onReverse(Z)V
    .locals 0

    return-void
.end method

.method public onScreenSwitch(I)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/can/ui/CanPopWind$4;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$700(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/ScreenSwitchStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/can/ui/CanPopWind$4;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p1}, Lcom/can/ui/CanPopWind;->access$700(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/ScreenSwitchStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/can/ui/draw/ScreenSwitchStatus;->IsShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 536
    iget-object p0, p0, Lcom/can/ui/CanPopWind$4;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p0}, Lcom/can/ui/CanPopWind;->access$700(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/ScreenSwitchStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/can/ui/draw/ScreenSwitchStatus;->Hide()V

    goto :goto_0

    .line 539
    :cond_0
    iget-object p1, p0, Lcom/can/ui/CanPopWind$4;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p1}, Lcom/can/ui/CanPopWind;->access$700(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/ScreenSwitchStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/can/ui/draw/ScreenSwitchStatus;->IsShow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 540
    iget-object p1, p0, Lcom/can/ui/CanPopWind$4;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p1}, Lcom/can/ui/CanPopWind;->access$700(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/ScreenSwitchStatus;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/CanPopWind$4;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p0}, Lcom/can/ui/CanPopWind;->access$800(Lcom/can/ui/CanPopWind;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/can/ui/draw/ScreenSwitchStatus;->show(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTrackData(I)V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/can/ui/CanPopWind$4;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$600(Lcom/can/ui/CanPopWind;)I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/can/ui/CanPopWind$4;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {v0, v1}, Lcom/can/ui/CanPopWind;->access$602(Lcom/can/ui/CanPopWind;I)I

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/can/ui/CanPopWind$4;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$600(Lcom/can/ui/CanPopWind;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 523
    iget-object p0, p0, Lcom/can/ui/CanPopWind$4;->mWheelInfo:Lcom/can/parser/DDef$WheelInfo;

    mul-int/lit8 p1, p1, 0x1a

    div-int/lit16 p1, p1, 0x21c

    iput p1, p0, Lcom/can/parser/DDef$WheelInfo;->mEps:I

    :cond_1
    return-void
.end method

.method public onTranslateKey(II)V
    .locals 0

    return-void
.end method

.method public onVolInfo(I)V
    .locals 0

    return-void
.end method
