.class Lcom/can/ui/draw/LexusAir$1;
.super Ljava/lang/Object;
.source "LexusAir.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/draw/LexusAir;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/LexusAir;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/LexusAir;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/can/ui/draw/LexusAir$1;->this$0:Lcom/can/ui/draw/LexusAir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir$1;->this$0:Lcom/can/ui/draw/LexusAir;

    invoke-virtual {p1}, Lcom/can/ui/draw/LexusAir;->IsShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p0, p0, Lcom/can/ui/draw/LexusAir$1;->this$0:Lcom/can/ui/draw/LexusAir;

    invoke-virtual {p0}, Lcom/can/ui/draw/LexusAir;->Hide()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
