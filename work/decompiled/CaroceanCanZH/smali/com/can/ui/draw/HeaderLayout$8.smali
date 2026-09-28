.class Lcom/can/ui/draw/HeaderLayout$8;
.super Ljava/lang/Object;
.source "HeaderLayout.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/draw/HeaderLayout;->titleTwoRadioButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/HeaderLayout;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/HeaderLayout;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout$8;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 432
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout$8;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p1}, Lcom/can/ui/draw/HeaderLayout;->access$400(Lcom/can/ui/draw/HeaderLayout;)Landroid/widget/RadioGroup;

    move-result-object p1

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->playSoundEffect(I)V

    const p1, 0x7f0804ba

    if-ne p2, p1, :cond_0

    .line 435
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout$8;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p1}, Lcom/can/ui/draw/HeaderLayout;->access$500(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 436
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout$8;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p1}, Lcom/can/ui/draw/HeaderLayout;->access$500(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout$8;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p0}, Lcom/can/ui/draw/HeaderLayout;->access$100(Lcom/can/ui/draw/HeaderLayout;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;->onLeftRadioButtonClick(Landroid/view/View;)V

    goto :goto_0

    .line 439
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout$8;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p1}, Lcom/can/ui/draw/HeaderLayout;->access$500(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 440
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout$8;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p1}, Lcom/can/ui/draw/HeaderLayout;->access$500(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout$8;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p0}, Lcom/can/ui/draw/HeaderLayout;->access$100(Lcom/can/ui/draw/HeaderLayout;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;->onRightRadioButtonClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
