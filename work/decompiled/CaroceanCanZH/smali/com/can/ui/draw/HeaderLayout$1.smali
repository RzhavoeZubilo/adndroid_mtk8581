.class Lcom/can/ui/draw/HeaderLayout$1;
.super Ljava/lang/Object;
.source "HeaderLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/draw/HeaderLayout;->initViews()V
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

    .line 150
    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout$1;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout$1;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p1}, Lcom/can/ui/draw/HeaderLayout;->access$000(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onOneButtonListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout$1;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p1}, Lcom/can/ui/draw/HeaderLayout;->access$000(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onOneButtonListener;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout$1;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p0}, Lcom/can/ui/draw/HeaderLayout;->access$100(Lcom/can/ui/draw/HeaderLayout;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/can/ui/draw/HeaderLayout$onOneButtonListener;->onOneButtonClick(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
