.class Lcom/android/launcher2/FloatWindowService$1;
.super Ljava/lang/Object;
.source "FloatWindowService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FloatWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FloatWindowService;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FloatWindowService;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 113
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher2/FloatWindowService;->access$002(Lcom/android/launcher2/FloatWindowService;F)F

    .line 114
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher2/FloatWindowService;->access$102(Lcom/android/launcher2/FloatWindowService;F)F

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-static {p1}, Lcom/android/launcher2/FloatWindowService;->access$1000(Lcom/android/launcher2/FloatWindowService;)V

    goto :goto_1

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-static {p1, v1}, Lcom/android/launcher2/FloatWindowService;->access$402(Lcom/android/launcher2/FloatWindowService;Z)Z

    .line 125
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-static {p1}, Lcom/android/launcher2/FloatWindowService;->access$700(Lcom/android/launcher2/FloatWindowService;)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v2, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    iget-wide v2, v2, Lcom/android/launcher2/FloatWindowService;->m_tiemcheck:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0xc8

    cmp-long p1, p1, v2

    if-gez p1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-static {p1}, Lcom/android/launcher2/FloatWindowService;->access$800(Lcom/android/launcher2/FloatWindowService;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->playSoundEffect(I)V

    .line 131
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-static {p1}, Lcom/android/launcher2/FloatWindowService;->access$900(Lcom/android/launcher2/FloatWindowService;)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/launcher2/FloatWindowService;->access$602(Lcom/android/launcher2/FloatWindowService;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/launcher2/FloatWindowService;->access$502(Lcom/android/launcher2/FloatWindowService;F)F

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-static {p1}, Lcom/android/launcher2/FloatWindowService;->access$1000(Lcom/android/launcher2/FloatWindowService;)V

    goto :goto_1

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-static {p1}, Lcom/android/launcher2/FloatWindowService;->access$300(Lcom/android/launcher2/FloatWindowService;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/launcher2/FloatWindowService;->access$202(Lcom/android/launcher2/FloatWindowService;I)I

    .line 118
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-static {p1, v0}, Lcom/android/launcher2/FloatWindowService;->access$402(Lcom/android/launcher2/FloatWindowService;Z)Z

    .line 119
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/android/launcher2/FloatWindowService;->access$502(Lcom/android/launcher2/FloatWindowService;F)F

    .line 120
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/android/launcher2/FloatWindowService;->access$602(Lcom/android/launcher2/FloatWindowService;F)F

    .line 121
    iget-object p1, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/launcher2/FloatWindowService;->m_tiemcheck:J

    .line 141
    :goto_1
    iget-object p0, p0, Lcom/android/launcher2/FloatWindowService$1;->this$0:Lcom/android/launcher2/FloatWindowService;

    invoke-static {p0}, Lcom/android/launcher2/FloatWindowService;->access$400(Lcom/android/launcher2/FloatWindowService;)Z

    move-result p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v1
.end method
