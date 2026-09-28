.class Lcom/android/launcher2/Launcher$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$cl:Lcom/android/launcher2/CellLayout;

.field final synthetic val$fi:Lcom/android/launcher2/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/FolderIcon;)V
    .locals 0

    .line 3540
    iput-object p1, p0, Lcom/android/launcher2/Launcher$18;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$18;->val$cl:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$18;->val$fi:Lcom/android/launcher2/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3543
    iget-object p1, p0, Lcom/android/launcher2/Launcher$18;->val$cl:Lcom/android/launcher2/CellLayout;

    if-eqz p1, :cond_0

    .line 3544
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->clearFolderLeaveBehind()V

    .line 3546
    iget-object p1, p0, Lcom/android/launcher2/Launcher$18;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher2/Launcher$18;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$3700(Lcom/android/launcher2/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 3547
    iget-object p0, p0, Lcom/android/launcher2/Launcher$18;->val$fi:Lcom/android/launcher2/FolderIcon;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIcon;->setVisibility(I)V

    :cond_0
    return-void
.end method
