.class Lcom/android/launcher2/AppsCustomizeTabHost$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsCustomizeTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizeTabHost$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 308
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    iget-object p1, p1, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 309
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 303
    iget-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    iget-object p1, p1, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 304
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method
