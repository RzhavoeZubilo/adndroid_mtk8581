.class Lcom/android/launcher2/AppsCustomizeTabHost$3;
.super Ljava/lang/Object;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

.field final synthetic val$duration:I

.field final synthetic val$type:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;I)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$type:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    iput p3, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 243
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 244
    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 252
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getVisiblePages([I)V

    const/4 v2, 0x0

    .line 253
    aget v3, v1, v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    aget v3, v1, v5

    if-ne v3, v4, :cond_1

    .line 255
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$300(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    return-void

    .line 258
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 259
    aget v4, v1, v2

    :goto_0
    aget v6, v1, v5

    if-gt v4, v6, :cond_2

    .line 260
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v6}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v4}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizePagedView;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 271
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v1, :cond_6

    .line 272
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 273
    instance-of v7, v6, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v7, :cond_3

    .line 274
    move-object v7, v6

    check-cast v7, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/PagedViewCellLayout;->resetChildrenOnKeyListeners()V

    goto :goto_2

    .line 275
    :cond_3
    instance-of v7, v6, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v7, :cond_4

    .line 276
    move-object v7, v6

    check-cast v7, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/PagedViewGridLayout;->resetChildrenOnKeyListeners()V

    .line 278
    :cond_4
    :goto_2
    invoke-static {v2}, Lcom/android/launcher2/PagedViewWidget;->setDeletePreviewsWhenDetachedFromWindow(Z)V

    .line 279
    sget-boolean v7, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTabChanged before remove view: i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", child = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAppsCustomizePane = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 281
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AppsCustomizeTabHost"

    .line 280
    invoke-static {v8, v7}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v7}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher2/AppsCustomizePagedView;->removeView(Landroid/view/View;)V

    .line 285
    invoke-static {v5}, Lcom/android/launcher2/PagedViewWidget;->setDeletePreviewsWhenDetachedFromWindow(Z)V

    .line 286
    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v7}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 287
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v4}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 288
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 289
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 290
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v4, v7, v8, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 291
    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v7}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 295
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$500(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    .line 296
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$type:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-static {v1, v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$600(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 299
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-array v3, v5, [F

    const/4 v6, 0x0

    aput v6, v3, v2

    const-string v6, "alpha"

    invoke-static {v1, v6, v3}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 300
    new-instance v3, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v3

    new-array v7, v5, [F

    aput v4, v7, v2

    invoke-static {v3, v6, v7}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 313
    new-instance v4, Lcom/android/launcher2/AppsCustomizeTabHost$3$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AppsCustomizeTabHost$3$2;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v2

    aput-object v3, v0, v5

    .line 321
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 322
    iget v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$duration:I

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 323
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    new-instance v1, Lcom/android/launcher2/AppsCustomizeTabHost$3$3;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher2/AppsCustomizeTabHost$3$3;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 245
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$300(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    return-void
.end method
