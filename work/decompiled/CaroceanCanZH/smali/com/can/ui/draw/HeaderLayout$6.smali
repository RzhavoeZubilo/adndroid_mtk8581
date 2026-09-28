.class Lcom/can/ui/draw/HeaderLayout$6;
.super Ljava/lang/Object;
.source "HeaderLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/draw/HeaderLayout;->initOnlyCheckBox()V
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

    .line 332
    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout$6;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout$6;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {v0}, Lcom/can/ui/draw/HeaderLayout;->access$300(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout$6;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {v0}, Lcom/can/ui/draw/HeaderLayout;->access$300(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout$6;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p0}, Lcom/can/ui/draw/HeaderLayout;->access$100(Lcom/can/ui/draw/HeaderLayout;)Landroid/view/View;

    move-result-object p0

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;->onCheckout(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
