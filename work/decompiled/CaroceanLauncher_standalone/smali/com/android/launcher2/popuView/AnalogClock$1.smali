.class Lcom/android/launcher2/popuView/AnalogClock$1;
.super Ljava/lang/Object;
.source "AnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/AnalogClock;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/AnalogClock;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock$1;->this$0:Lcom/android/launcher2/popuView/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnalogClock$1;->this$0:Lcom/android/launcher2/popuView/AnalogClock;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/AnalogClock;->postInvalidate()V

    .line 105
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnalogClock$1;->this$0:Lcom/android/launcher2/popuView/AnalogClock;

    iget-object v0, v0, Lcom/android/launcher2/popuView/AnalogClock;->tickHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher2/popuView/AnalogClock$1;->this$0:Lcom/android/launcher2/popuView/AnalogClock;

    invoke-static {p0}, Lcom/android/launcher2/popuView/AnalogClock;->access$000(Lcom/android/launcher2/popuView/AnalogClock;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
