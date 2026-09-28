.class Lcom/android/launcher2/LauncherModel$LoaderTask$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$currentScreen:I

.field final synthetic val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;I)V
    .locals 0

    .line 1940
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$8;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$8;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$8;->val$currentScreen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1942
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$8;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$8;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1944
    iget p0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$8;->val$currentScreen:I

    invoke-interface {v0, p0}, Lcom/android/launcher2/LauncherModel$Callbacks;->onPageBoundSynchronously(I)V

    :cond_0
    return-void
.end method
