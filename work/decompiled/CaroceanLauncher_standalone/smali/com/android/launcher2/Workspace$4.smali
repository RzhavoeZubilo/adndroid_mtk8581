.class Lcom/android/launcher2/Workspace$4;
.super Lcom/android/launcher2/LauncherAnimatorUpdateListener;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$cl:Lcom/android/launcher2/CellLayout;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;I)V
    .locals 0

    .line 1788
    iput-object p1, p0, Lcom/android/launcher2/Workspace$4;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$4;->val$cl:Lcom/android/launcher2/CellLayout;

    iput p3, p0, Lcom/android/launcher2/Workspace$4;->val$i:I

    invoke-direct {p0}, Lcom/android/launcher2/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .locals 3

    .line 1790
    iget-object v0, p0, Lcom/android/launcher2/Workspace$4;->val$cl:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$4;->this$0:Lcom/android/launcher2/Workspace;

    .line 1791
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)[F

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/Workspace$4;->val$i:I

    aget v1, v1, v2

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher2/Workspace$4;->this$0:Lcom/android/launcher2/Workspace;

    .line 1792
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)[F

    move-result-object v1

    iget p0, p0, Lcom/android/launcher2/Workspace$4;->val$i:I

    aget p0, v1, p0

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    .line 1790
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    return-void
.end method
