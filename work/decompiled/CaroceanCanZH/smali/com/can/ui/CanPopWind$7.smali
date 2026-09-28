.class Lcom/can/ui/CanPopWind$7;
.super Ljava/lang/Object;
.source "CanPopWind.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1085
    iput-object p1, p0, Lcom/can/ui/CanPopWind$7;->this$0:Lcom/can/ui/CanPopWind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1090
    iget-object v0, p0, Lcom/can/ui/CanPopWind$7;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$1200(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/TouchScreen;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/can/ui/CanPopWind$7;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {v2}, Lcom/can/ui/CanPopWind;->access$1508(Lcom/can/ui/CanPopWind;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " test\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/can/ui/draw/TouchScreen;->appendLog(Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/can/ui/CanPopWind$7;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$500(Lcom/can/ui/CanPopWind;)Lcom/can/ui/CanPopWind$UIHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/CanPopWind$7;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p0}, Lcom/can/ui/CanPopWind;->access$1600(Lcom/can/ui/CanPopWind;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcom/can/ui/CanPopWind$UIHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
