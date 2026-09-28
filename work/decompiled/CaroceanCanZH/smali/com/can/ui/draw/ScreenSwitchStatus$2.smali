.class Lcom/can/ui/draw/ScreenSwitchStatus$2;
.super Ljava/lang/Object;
.source "ScreenSwitchStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/draw/ScreenSwitchStatus;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/ScreenSwitchStatus;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/ScreenSwitchStatus;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$2;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus$2;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-virtual {p0}, Lcom/can/ui/draw/ScreenSwitchStatus;->Hide()V

    return-void
.end method
