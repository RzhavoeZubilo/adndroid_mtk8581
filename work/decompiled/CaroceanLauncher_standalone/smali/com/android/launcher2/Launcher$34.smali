.class Lcom/android/launcher2/Launcher$34;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 5333
    iput-object p1, p0, Lcom/android/launcher2/Launcher$34;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5335
    iget-object p0, p0, Lcom/android/launcher2/Launcher$34;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    return-void
.end method
