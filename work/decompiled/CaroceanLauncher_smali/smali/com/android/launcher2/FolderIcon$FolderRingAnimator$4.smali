.class Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget-object p1, p1, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz p1, :cond_0

    .line 253
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget-object p0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-static {p0}, Lcom/android/launcher2/FolderIcon;->access$200(Lcom/android/launcher2/FolderIcon;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
