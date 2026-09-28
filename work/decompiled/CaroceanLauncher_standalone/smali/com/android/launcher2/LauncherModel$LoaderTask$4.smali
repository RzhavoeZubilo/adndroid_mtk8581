.class Lcom/android/launcher2/LauncherModel$LoaderTask$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$chunkSize:I

.field final synthetic val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

.field final synthetic val$start:I

.field final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V
    .locals 0

    .line 1818
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;->val$workspaceItems:Ljava/util/ArrayList;

    iput p4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;->val$start:I

    iput p5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;->val$chunkSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1821
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1823
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;->val$workspaceItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;->val$start:I

    iget p0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;->val$chunkSize:I

    add-int/2addr p0, v2

    invoke-interface {v0, v1, v2, p0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;II)V

    :cond_0
    return-void
.end method
