.class Lcom/can/platforms/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/platforms/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/platforms/CrashHandler;


# direct methods
.method constructor <init>(Lcom/can/platforms/CrashHandler;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/can/platforms/CrashHandler$1;->this$0:Lcom/can/platforms/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 88
    iget-object p0, p0, Lcom/can/platforms/CrashHandler$1;->this$0:Lcom/can/platforms/CrashHandler;

    invoke-static {p0}, Lcom/can/platforms/CrashHandler;->access$100(Lcom/can/platforms/CrashHandler;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "\u5f88\u62b1\u6b49,CAN\u7a0b\u5e8f\u51fa\u73b0\u5f02\u5e38,\u5373\u5c06\u9000\u51fa."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 89
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
