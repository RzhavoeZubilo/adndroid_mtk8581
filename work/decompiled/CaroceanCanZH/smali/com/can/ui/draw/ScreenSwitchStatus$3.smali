.class Lcom/can/ui/draw/ScreenSwitchStatus$3;
.super Ljava/lang/Object;
.source "ScreenSwitchStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/ScreenSwitchStatus;
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

    .line 72
    iput-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$3;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus$3;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-virtual {p0}, Lcom/can/ui/draw/ScreenSwitchStatus;->Hide()V

    return-void
.end method
