.class Lcom/android/launcher2/Launcher$32;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->bindAllApplications(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$apps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .line 5158
    iput-object p1, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$32;->val$apps:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5160
    iget-object v0, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$4400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5161
    iget-object v0, p0, Lcom/android/launcher2/Launcher$32;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$4400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher2/Launcher$32;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppsCustomizePagedView;->setApps(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
