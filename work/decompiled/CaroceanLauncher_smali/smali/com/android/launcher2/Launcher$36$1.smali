.class Lcom/android/launcher2/Launcher$36$1;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$36;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$36;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$36;Ljava/lang/String;)V
    .locals 0

    .line 5392
    iput-object p1, p0, Lcom/android/launcher2/Launcher$36$1;->this$1:Lcom/android/launcher2/Launcher$36;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5394
    iget-object v0, p0, Lcom/android/launcher2/Launcher$36$1;->this$1:Lcom/android/launcher2/Launcher$36;

    iget-object v0, v0, Lcom/android/launcher2/Launcher$36;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$4900(Lcom/android/launcher2/Launcher;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5395
    iget-object p0, p0, Lcom/android/launcher2/Launcher$36$1;->this$1:Lcom/android/launcher2/Launcher$36;

    iget-object p0, p0, Lcom/android/launcher2/Launcher$36;->val$flag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5396
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
