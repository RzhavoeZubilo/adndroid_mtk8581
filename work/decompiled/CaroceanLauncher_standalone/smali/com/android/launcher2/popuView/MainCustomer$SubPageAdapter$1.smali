.class Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;
.super Ljava/lang/Object;
.source "MainCustomer.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;-><init>(Lcom/android/launcher2/popuView/MainCustomer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

.field final synthetic val$this$0:Lcom/android/launcher2/popuView/MainCustomer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 0

    .line 2060
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    iput-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->val$this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(Landroid/view/View;)V
    .locals 0

    .line 2121
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->onClick(Landroid/view/View;)V

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

    .line 2138
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$200(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->snap2Right()V

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

    .line 2129
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$200(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->snap2Left()V

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

    .line 2072
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->getIndexFromView(Landroid/view/View;)I

    move-result p2

    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectChanged , index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_4

    .line 2075
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3200(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p2, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0, p2}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3202(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;I)I

    .line 2077
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$3300(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3200(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {p2, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2079
    :cond_0
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->getSelectIndex()I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3200(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 2080
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3200(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->setSelectViewByIndex(IZZ)V

    .line 2083
    :cond_1
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3200(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)I

    move-result p2

    if-ltz p2, :cond_4

    .line 2084
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3200(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)I

    move-result p2

    div-int/lit8 p2, p2, 0x5

    .line 2085
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3400(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_4

    .line 2086
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3200(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_2

    .line 2088
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3400(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p2

    const v1, 0x7f0701bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2089
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v2}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3500(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)[[I

    move-result-object v2

    aget-object v2, v2, p2

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    .line 2090
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3400(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p2

    const v1, 0x7f0701ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2092
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3400(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p2

    const v1, 0x7f0701b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2095
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3400(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2096
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v2}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3600(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2097
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2098
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$3400(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)[Landroid/widget/ImageView;

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
