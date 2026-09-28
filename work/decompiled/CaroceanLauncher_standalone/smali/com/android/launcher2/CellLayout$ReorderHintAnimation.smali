.class Lcom/android/launcher2/CellLayout$ReorderHintAnimation;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderHintAnimation"
.end annotation


# static fields
.field private static final DURATION:I = 0x12c


# instance fields
.field a:Landroid/animation/Animator;

.field child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field final synthetic this$0:Lcom/android/launcher2/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;Landroid/view/View;IIIIII)V
    .locals 12

    move-object v0, p0

    move-object v7, p1

    .line 2326
    iput-object v7, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2327
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$500(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v6

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2328
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$500(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v1

    const/4 v8, 0x0

    aget v9, v1, v8

    .line 2329
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$500(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v1

    const/4 v10, 0x1

    aget v11, v1, v10

    .line 2330
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$500(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v6

    move-object v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2331
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$500(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v1

    aget v1, v1, v8

    .line 2332
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$500(Lcom/android/launcher2/CellLayout;)[I

    move-result-object v2

    aget v2, v2, v10

    sub-int/2addr v1, v9

    sub-int/2addr v2, v11

    const/4 v3, 0x0

    .line 2335
    iput v3, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    .line 2336
    iput v3, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    if-ne v1, v2, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    int-to-float v1, v1

    .line 2340
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    neg-float v1, v1

    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$600(Lcom/android/launcher2/CellLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    int-to-float v1, v2

    .line 2342
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    neg-float v1, v1

    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$600(Lcom/android/launcher2/CellLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    goto :goto_0

    :cond_2
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v3, v2, v1

    float-to-double v3, v3

    .line 2344
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    .line 2345
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    neg-float v1, v1

    float-to-double v5, v1

    .line 2346
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$600(Lcom/android/launcher2/CellLayout;)F

    move-result v1

    float-to-double v10, v1

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    mul-double/2addr v5, v8

    double-to-int v1, v5

    int-to-float v1, v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    .line 2347
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    neg-float v1, v1

    float-to-double v1, v1

    .line 2348
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$600(Lcom/android/launcher2/CellLayout;)F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    .line 2351
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initDeltaX:F

    .line 2352
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initDeltaY:F

    .line 2353
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalScale:F

    .line 2354
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initScale:F

    move-object v1, p2

    .line 2355
    iput-object v1, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/CellLayout$ReorderHintAnimation;)V
    .locals 0

    .line 2314
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->completeAnimationImmediately()V

    return-void
.end method

.method private cancel()V
    .locals 0

    .line 2403
    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 2404
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private completeAnimationImmediately()V
    .locals 9

    .line 2409
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2410
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2413
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 2414
    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2415
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    const/4 v3, 0x1

    new-array v4, v3, [F

    iget-object v5, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher2/CellLayout;

    .line 2416
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const-string v5, "scaleX"

    invoke-static {v2, v5, v4}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    new-array v4, v3, [F

    iget-object v5, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher2/CellLayout;

    .line 2417
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v5

    aput v5, v4, v6

    const-string v5, "scaleY"

    invoke-static {v2, v5, v4}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    new-array v5, v3, [F

    const/4 v7, 0x0

    aput v7, v5, v6

    const-string v8, "translationX"

    .line 2418
    invoke-static {v4, v8, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    new-array v3, v3, [F

    aput v7, v3, v6

    const-string v4, "translationY"

    .line 2419
    invoke-static {p0, v4, v3}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v1, v2

    .line 2415
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x96

    .line 2421
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2422
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {p0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2423
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method animate()V
    .locals 6

    .line 2359
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$700(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2360
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$700(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    .line 2361
    invoke-direct {v0}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->cancel()V

    .line 2362
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$700(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2363
    iget v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2364
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->completeAnimationImmediately()V

    return-void

    .line 2368
    :cond_0
    iget v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2371
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2372
    iput-object v1, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->a:Landroid/animation/Animator;

    .line 2373
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 2374
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v2, 0x12c

    .line 2375
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2376
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2377
    new-instance v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;-><init>(Lcom/android/launcher2/CellLayout$ReorderHintAnimation;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2390
    new-instance v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$2;-><init>(Lcom/android/launcher2/CellLayout$ReorderHintAnimation;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2398
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$700(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
