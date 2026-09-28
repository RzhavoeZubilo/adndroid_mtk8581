.class Lcom/android/launcher2/Launcher$36;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$cling:Lcom/android/launcher2/Cling;

.field final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;Ljava/lang/String;)V
    .locals 0

    .line 5387
    iput-object p1, p0, Lcom/android/launcher2/Launcher$36;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$36;->val$cling:Lcom/android/launcher2/Cling;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$36;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5389
    iget-object p1, p0, Lcom/android/launcher2/Launcher$36;->val$cling:Lcom/android/launcher2/Cling;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Cling;->setVisibility(I)V

    .line 5390
    iget-object p1, p0, Lcom/android/launcher2/Launcher$36;->val$cling:Lcom/android/launcher2/Cling;

    invoke-virtual {p1}, Lcom/android/launcher2/Cling;->cleanup()V

    .line 5392
    new-instance p1, Lcom/android/launcher2/Launcher$36$1;

    const-string v0, "dismissClingThread"

    invoke-direct {p1, p0, v0}, Lcom/android/launcher2/Launcher$36$1;-><init>(Lcom/android/launcher2/Launcher$36;Ljava/lang/String;)V

    .line 5398
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher$36$1;->start()V

    return-void
.end method
