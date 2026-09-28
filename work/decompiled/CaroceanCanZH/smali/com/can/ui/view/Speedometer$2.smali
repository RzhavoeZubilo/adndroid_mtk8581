.class Lcom/can/ui/view/Speedometer$2;
.super Ljava/lang/Object;
.source "Speedometer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/view/Speedometer;->setSpeed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/view/Speedometer;


# direct methods
.method constructor <init>(Lcom/can/ui/view/Speedometer;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/can/ui/view/Speedometer$2;->this$0:Lcom/can/ui/view/Speedometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/can/ui/view/Speedometer$2;->this$0:Lcom/can/ui/view/Speedometer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/can/ui/view/Speedometer;->access$002(Lcom/can/ui/view/Speedometer;F)F

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate mSpeedDrawing="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/can/ui/view/Speedometer$2;->this$0:Lcom/can/ui/view/Speedometer;

    invoke-static {v0}, Lcom/can/ui/view/Speedometer;->access$000(Lcom/can/ui/view/Speedometer;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Speedometer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object p0, p0, Lcom/can/ui/view/Speedometer$2;->this$0:Lcom/can/ui/view/Speedometer;

    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->invalidate()V

    return-void
.end method
