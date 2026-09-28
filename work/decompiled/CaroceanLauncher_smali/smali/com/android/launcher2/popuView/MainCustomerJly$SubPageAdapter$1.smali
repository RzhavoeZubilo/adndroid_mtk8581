.class Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;
.super Ljava/lang/Object;
.source "MainCustomerJly.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

.field final synthetic val$this$0:Lcom/android/launcher2/popuView/MainCustomerJly;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;Lcom/android/launcher2/popuView/MainCustomerJly;)V
    .locals 0

    .line 1335
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    iput-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->val$this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(Landroid/view/View;)V
    .locals 0

    .line 1396
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onMenuDown(II)V
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1413
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$200(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->snap2Right()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMenuUp(II)V
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1404
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$200(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->snap2Left()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMenuUpEnd()V
    .locals 0

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_4

    .line 1347
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->getIndexFromView(Landroid/view/View;)I

    move-result p2

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectChanged , index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomerJly"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_4

    .line 1350
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$1800(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p2, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0, p2}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$1802(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;I)I

    .line 1352
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$1800(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    invoke-virtual {p2, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 1354
    :cond_0
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->getSelectIndex()I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$1800(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 1355
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$1800(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->setSelectViewByIndex(IZZ)V

    .line 1358
    :cond_1
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$1800(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)I

    move-result p2

    if-ltz p2, :cond_4

    .line 1359
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$1800(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)I

    move-result p2

    div-int/lit8 p2, p2, 0x6

    .line 1360
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$2000(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_4

    .line 1361
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$1800(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$2000(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p2

    const v1, 0x7f0701bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1365
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$2000(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p2

    const v1, 0x7f0701ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1367
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$2000(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p2

    const v1, 0x7f0701b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1370
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$2000(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1371
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1372
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1373
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$2000(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method
