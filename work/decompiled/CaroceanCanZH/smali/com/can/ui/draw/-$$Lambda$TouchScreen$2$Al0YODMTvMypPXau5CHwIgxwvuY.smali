.class public final synthetic Lcom/can/ui/draw/-$$Lambda$TouchScreen$2$Al0YODMTvMypPXau5CHwIgxwvuY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/can/ui/draw/TouchScreen$2;


# direct methods
.method public synthetic constructor <init>(Lcom/can/ui/draw/TouchScreen$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/can/ui/draw/-$$Lambda$TouchScreen$2$Al0YODMTvMypPXau5CHwIgxwvuY;->f$0:Lcom/can/ui/draw/TouchScreen$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/can/ui/draw/-$$Lambda$TouchScreen$2$Al0YODMTvMypPXau5CHwIgxwvuY;->f$0:Lcom/can/ui/draw/TouchScreen$2;

    invoke-virtual {p0}, Lcom/can/ui/draw/TouchScreen$2;->lambda$onReceive$0$TouchScreen$2()V

    return-void
.end method
