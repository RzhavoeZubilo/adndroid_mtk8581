.class Lcom/can/ui/CanPopWind$1$1;
.super Ljava/lang/Thread;
.source "CanPopWind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/CanPopWind$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/can/ui/CanPopWind$1;


# direct methods
.method constructor <init>(Lcom/can/ui/CanPopWind$1;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/can/ui/CanPopWind$1$1;->this$1:Lcom/can/ui/CanPopWind$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 139
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/4 v1, 0x3

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
