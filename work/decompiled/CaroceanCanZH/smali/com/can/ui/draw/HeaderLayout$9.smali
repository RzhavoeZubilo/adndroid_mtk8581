.class Lcom/can/ui/draw/HeaderLayout$9;
.super Ljava/lang/Object;
.source "HeaderLayout.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/draw/HeaderLayout;->initSeekBarLayout()V
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

    .line 486
    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout$9;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 504
    iget-object p3, p0, Lcom/can/ui/draw/HeaderLayout$9;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p3}, Lcom/can/ui/draw/HeaderLayout;->access$600(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onProgressChanged;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 505
    iget-object p3, p0, Lcom/can/ui/draw/HeaderLayout$9;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p3}, Lcom/can/ui/draw/HeaderLayout;->access$600(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onProgressChanged;

    move-result-object p3

    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout$9;->this$0:Lcom/can/ui/draw/HeaderLayout;

    invoke-static {p0}, Lcom/can/ui/draw/HeaderLayout;->access$100(Lcom/can/ui/draw/HeaderLayout;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p3, p0, p1, p2}, Lcom/can/ui/draw/HeaderLayout$onProgressChanged;->onProgressChanged(Landroid/view/View;Landroid/widget/SeekBar;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
