.class Lcom/android/launcher2/Launcher$22;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$startAnimRunnable:Ljava/lang/Runnable;

.field final synthetic val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/popuView/AppsCustomizeFrame;Ljava/lang/Runnable;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .line 3990
    iput-object p1, p0, Lcom/android/launcher2/Launcher$22;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$22;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$22;->val$startAnimRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/launcher2/Launcher$22;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 3992
    iget-object v0, p0, Lcom/android/launcher2/Launcher$22;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$22;->val$startAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 3993
    iget-object v0, p0, Lcom/android/launcher2/Launcher$22;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
