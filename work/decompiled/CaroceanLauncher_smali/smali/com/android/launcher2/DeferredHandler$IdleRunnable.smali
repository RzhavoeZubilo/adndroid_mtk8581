.class Lcom/android/launcher2/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/launcher2/DeferredHandler;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeferredHandler;Ljava/lang/Runnable;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/launcher2/DeferredHandler$IdleRunnable;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/android/launcher2/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/launcher2/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
