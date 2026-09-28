.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 630
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    add-int/2addr p1, p2

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    .line 633
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 634
    instance-of v2, v1, Lcom/android/launcher2/BubbleTextView;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/android/launcher2/FolderIcon;

    if-eqz v2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    .line 79
    instance-of v0, p0, Landroid/widget/TabHost;

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    .line 82
    :cond_0
    check-cast p0, Landroid/widget/TabHost;

    return-object p0
.end method

.method private static getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 0

    .line 124
    check-cast p0, Lcom/android/launcher2/PagedView;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 125
    instance-of p1, p0, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    :cond_0
    return-object p0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .locals 0

    .line 593
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 594
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    return-object p0
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 604
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result p0

    .line 605
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 606
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 608
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    :cond_0
    new-instance p1, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {p1, p0}, Lcom/android/launcher2/FocusHelper$1;-><init>(I)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 11

    .line 659
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p1

    .line 660
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 661
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result p0

    .line 662
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int v2, v1, p3

    if-ltz v2, :cond_7

    if-ge v2, p0, :cond_7

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    .line 667
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v2, -0x1

    if-gez p3, :cond_0

    move v3, v2

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    move v4, v2

    :goto_1
    if-eq p2, v3, :cond_6

    .line 670
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 671
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 672
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-gez p3, :cond_1

    if-ge v9, v1, :cond_2

    goto :goto_2

    :cond_1
    if-le v9, v1, :cond_2

    :goto_2
    move v7, v8

    :cond_2
    if-eqz v7, :cond_4

    .line 673
    instance-of v7, v5, Lcom/android/launcher2/BubbleTextView;

    if-nez v7, :cond_3

    instance-of v5, v5, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_4

    .line 675
    :cond_3
    iget v5, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v7, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr v5, v7

    int-to-double v7, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget v5, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    .line 676
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v7, v5

    .line 675
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    cmpg-float v6, v5, p0

    if-gez v6, :cond_4

    move v4, p2

    move p0, v5

    :cond_4
    if-gt p2, v3, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_6
    if-le v4, v2, :cond_7

    .line 689
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 0

    .line 643
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p0

    .line 644
    invoke-static {p0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 648
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p0

    .line 649
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p0, p1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 290
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    const-string v3, "FocusHelper"

    if-eqz v2, :cond_0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAppsCustomizeKeyEvent: v = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", keyCode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", event = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", parent = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-static {v3, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    .line 295
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    if-eqz v2, :cond_1

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 297
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 298
    move-object v6, v5

    check-cast v6, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v7

    .line 299
    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v6

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 302
    move-object v5, v2

    check-cast v5, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v7

    .line 303
    invoke-virtual {v5}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v6

    move-object v5, v2

    .line 308
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PagedView;

    .line 311
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 312
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 313
    invoke-virtual {v8, v5}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v5

    .line 314
    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v11

    .line 316
    rem-int v12, v9, v7

    .line 317
    div-int v13, v9, v7

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v15, 0x1

    if-eq v4, v15, :cond_2

    move v4, v15

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const/16 v14, 0x42

    if-eq v1, v14, :cond_c

    const/16 v14, 0x5c

    if-eq v1, v14, :cond_a

    const/16 v14, 0x5d

    if-eq v1, v14, :cond_8

    const/16 v14, 0x7a

    if-eq v1, v14, :cond_7

    const/16 v14, 0x7b

    if-eq v1, v14, :cond_6

    packed-switch v1, :pswitch_data_0

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v4, :cond_5

    sub-int/2addr v10, v15

    if-ge v9, v10, :cond_3

    add-int/2addr v9, v15

    .line 353
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_3

    :cond_3
    sub-int/2addr v11, v15

    if-ge v5, v11, :cond_5

    add-int/2addr v5, v15

    .line 356
    invoke-static {v8, v5}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 358
    invoke-virtual {v8, v5}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    const/4 v1, 0x0

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 361
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "handleAppsCustomizeKeyEvent requestFocus 2 failed."

    .line 362
    invoke-static {v3, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    if-eqz v4, :cond_5

    if-lez v9, :cond_4

    sub-int/2addr v9, v15

    .line 331
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_4
    if-lez v5, :cond_5

    sub-int/2addr v5, v15

    .line 334
    invoke-static {v8, v5}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 336
    invoke-virtual {v8, v5}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 337
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 339
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "handleAppsCustomizeKeyEvent requestFocus 1 failed."

    .line 340
    invoke-static {v3, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    if-eqz v4, :cond_5

    sub-int/2addr v6, v15

    if-ge v13, v6, :cond_5

    sub-int/2addr v10, v15

    add-int/2addr v13, v15

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 389
    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 390
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "handleAppsCustomizeKeyEvent requestFocus 4 failed."

    .line 391
    invoke-static {v3, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    if-eqz v4, :cond_5

    if-lez v13, :cond_5

    sub-int/2addr v13, v15

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 376
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "handleAppsCustomizeKeyEvent requestFocus 3 failed."

    .line 377
    invoke-static {v3, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    move v14, v15

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_5

    sub-int/2addr v10, v15

    .line 450
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_5

    const/4 v0, 0x0

    .line 443
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_8
    if-eqz v4, :cond_5

    sub-int/2addr v11, v15

    if-ge v5, v11, :cond_9

    add-int/2addr v5, v15

    .line 428
    invoke-static {v8, v5}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 430
    invoke-virtual {v8, v5}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    const/4 v1, 0x0

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 432
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_9
    sub-int/2addr v10, v15

    .line 435
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_5

    if-lez v5, :cond_b

    sub-int/2addr v5, v15

    .line 411
    invoke-static {v8, v5}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 413
    invoke-virtual {v8, v5}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    const/4 v1, 0x0

    .line 414
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 415
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    .line 418
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_c
    :pswitch_4
    if-eqz v4, :cond_5

    .line 401
    check-cast v8, Landroid/view/View$OnClickListener;

    .line 402
    invoke-interface {v8, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_3

    :goto_4
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 93
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    const/16 v1, 0x14

    if-eq p1, v1, :cond_2

    const/16 p0, 0x16

    if-eq p1, p0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :cond_2
    :goto_1
    return p2
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 859
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    if-eqz v0, :cond_0

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFolderKeyEvent: v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusHelper"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 864
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 865
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Folder;

    .line 866
    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 868
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    move p2, v4

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    const/16 v5, 0x7a

    const/4 v6, -0x1

    if-eq p1, v5, :cond_6

    const/16 v5, 0x7b

    if-eq p1, v5, :cond_5

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p2, :cond_4

    .line 885
    invoke-static {v1, v0, p0, v4}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 887
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 889
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_4

    .line 875
    invoke-static {v1, v0, p0, v6}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 877
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :pswitch_2
    if-eqz p2, :cond_4

    .line 907
    invoke-static {v1, v0, p0, v4}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 909
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 911
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :pswitch_3
    if-eqz p2, :cond_4

    .line 897
    invoke-static {v1, v0, p0, v6}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 899
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_4
    :goto_1
    move v3, v4

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_4

    .line 930
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p0

    .line 929
    invoke-static {v1, v0, p0, v6}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 932
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_4

    .line 919
    invoke-static {v1, v0, v6, v4}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 921
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 5

    .line 523
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHotseatButtonKeyEvent: v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FocusHelper"

    invoke-static {v0, p3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 529
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0800cb

    .line 530
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Workspace;

    .line 531
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 532
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 533
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    .line 539
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    move p2, v4

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p2, :cond_4

    sub-int/2addr v1, v4

    if-ge p0, v1, :cond_2

    add-int/2addr p0, v4

    .line 558
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_2
    add-int/2addr v2, v4

    .line 560
    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_4

    if-lez p0, :cond_3

    sub-int/2addr p0, v4

    .line 547
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v4

    .line 549
    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    :cond_4
    :goto_1
    :pswitch_2
    move v3, v4

    goto :goto_2

    :pswitch_3
    if-eqz p2, :cond_4

    .line 568
    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/CellLayout;

    .line 569
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object p1

    const/4 p2, -0x1

    .line 570
    invoke-static {p0, p1, p2, v4}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 572
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 574
    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_1

    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 699
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    if-eqz v0, :cond_0

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIconKeyEvent: v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusHelper"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 705
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 706
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace;

    .line 707
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0800a3

    .line 708
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f080030

    .line 709
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 710
    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 711
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 713
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq p2, v8, :cond_1

    move p2, v8

    goto :goto_0

    :cond_1
    move p2, v7

    :goto_0
    const/16 v9, 0x5c

    const/4 v10, -0x1

    if-eq p1, v9, :cond_e

    const/16 v9, 0x5d

    if-eq p1, v9, :cond_b

    const/16 v9, 0x7a

    if-eq p1, v9, :cond_a

    const/16 v9, 0x7b

    if-eq p1, v9, :cond_9

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p2, :cond_6

    .line 742
    invoke-static {v1, v0, p0, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 744
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_2
    sub-int/2addr v6, v8

    if-ge v5, v6, :cond_6

    add-int/2addr v5, v8

    .line 747
    invoke-static {v2, v5}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object p0

    .line 748
    invoke-static {v1, p0, v10, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 750
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 753
    :cond_3
    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_6

    .line 720
    invoke-static {v1, v0, p0, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 722
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_4
    if-lez v5, :cond_6

    sub-int/2addr v5, v8

    .line 725
    invoke-static {v2, v5}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object p0

    .line 727
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p1

    .line 726
    invoke-static {v1, p0, p1, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 729
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 732
    :cond_5
    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    :cond_6
    :goto_1
    move v7, v8

    goto/16 :goto_2

    :pswitch_2
    if-eqz p2, :cond_11

    .line 775
    invoke-static {v1, v0, p0, v8}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 777
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_11

    .line 780
    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestFocus()Z

    goto/16 :goto_2

    :pswitch_3
    if-eqz p2, :cond_11

    .line 763
    invoke-static {v1, v0, p0, v10}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 765
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 768
    :cond_8
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto/16 :goto_2

    :cond_9
    if-eqz p2, :cond_6

    .line 843
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p0

    .line 842
    invoke-static {v1, v0, p0, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 845
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_a
    if-eqz p2, :cond_6

    .line 832
    invoke-static {v1, v0, v10, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 834
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_b
    if-eqz p2, :cond_6

    sub-int/2addr v6, v8

    if-ge v5, v6, :cond_d

    add-int/2addr v5, v8

    .line 811
    invoke-static {v2, v5}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object p0

    .line 812
    invoke-static {v1, p0, v10, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 814
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 817
    :cond_c
    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_1

    .line 821
    :cond_d
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p0

    .line 820
    invoke-static {v1, v0, p0, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 823
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_e
    if-eqz p2, :cond_6

    if-lez v5, :cond_10

    sub-int/2addr v5, v8

    .line 789
    invoke-static {v2, v5}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object p0

    .line 790
    invoke-static {v1, p0, v10, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 792
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 795
    :cond_f
    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_1

    .line 798
    :cond_10
    invoke-static {v1, v0, v10, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 800
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    :cond_11
    :goto_2
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static handlePagedViewGridLayoutWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 137
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    if-eqz v2, :cond_0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePagedViewGridLayoutWidgetKeyEvent: w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FocusHelper"

    invoke-static {v4, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 142
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    .line 143
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedView;

    .line 144
    invoke-static {v4}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 145
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    .line 146
    invoke-virtual {v2, v0}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 147
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v7

    .line 148
    invoke-virtual {v4, v2}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v8

    .line 149
    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v9

    .line 150
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v10

    .line 151
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v11

    .line 152
    rem-int v12, v6, v10

    .line 153
    div-int v13, v6, v10

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v15, 0x1

    if-eq v3, v15, :cond_1

    move v3, v15

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/16 v16, 0x0

    const/16 v14, 0x42

    if-eq v1, v14, :cond_e

    const/16 v14, 0x5c

    if-eq v1, v14, :cond_b

    const/16 v14, 0x5d

    if-eq v1, v14, :cond_8

    const/16 v14, 0x7a

    if-eq v1, v14, :cond_7

    const/16 v14, 0x7b

    if-eq v1, v14, :cond_6

    packed-switch v1, :pswitch_data_0

    const/4 v14, 0x0

    goto/16 :goto_5

    :pswitch_0
    if-eqz v3, :cond_5

    sub-int/2addr v7, v15

    if-ge v6, v7, :cond_2

    add-int/2addr v6, v15

    .line 184
    invoke-virtual {v2, v6}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_2

    :cond_2
    sub-int/2addr v9, v15

    if-ge v8, v9, :cond_5

    add-int/2addr v8, v15

    .line 187
    invoke-static {v4, v8}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :pswitch_1
    if-eqz v3, :cond_5

    if-lez v6, :cond_3

    sub-int/2addr v6, v15

    .line 167
    invoke-virtual {v2, v6}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_3
    if-lez v8, :cond_5

    sub-int/2addr v8, v15

    .line 170
    invoke-static {v4, v8}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 172
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :pswitch_2
    if-eqz v3, :cond_5

    sub-int/2addr v11, v15

    if-ge v13, v11, :cond_5

    sub-int/2addr v7, v15

    add-int/2addr v13, v15

    mul-int/2addr v13, v10

    add-int/2addr v13, v12

    .line 214
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 215
    invoke-virtual {v2, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :pswitch_3
    if-eqz v3, :cond_5

    if-lez v13, :cond_4

    sub-int/2addr v13, v15

    mul-int/2addr v13, v10

    add-int/2addr v13, v12

    .line 202
    invoke-virtual {v2, v13}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 205
    :cond_4
    invoke-virtual {v5}, Landroid/widget/TabWidget;->requestFocus()Z

    :cond_5
    :goto_2
    move v14, v15

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_5

    sub-int/2addr v7, v15

    .line 273
    invoke-virtual {v2, v7}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_5

    const/4 v0, 0x0

    .line 265
    invoke-virtual {v2, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_5

    sub-int/2addr v9, v15

    if-ge v8, v9, :cond_9

    add-int/2addr v8, v15

    .line 251
    invoke-static {v4, v8}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    goto :goto_3

    :cond_9
    sub-int/2addr v7, v15

    .line 256
    invoke-virtual {v2, v7}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    :cond_a
    :goto_3
    if-eqz v16, :cond_5

    .line 258
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_b
    if-eqz v3, :cond_5

    if-lez v8, :cond_c

    sub-int/2addr v8, v15

    .line 235
    invoke-static {v4, v8}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    .line 240
    invoke-virtual {v2, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    :cond_d
    :goto_4
    if-eqz v16, :cond_5

    .line 242
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_e
    :pswitch_4
    if-eqz v3, :cond_5

    .line 225
    check-cast v4, Landroid/view/View$OnClickListener;

    .line 226
    invoke-interface {v4, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2

    :goto_5
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 463
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 471
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, p2

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
