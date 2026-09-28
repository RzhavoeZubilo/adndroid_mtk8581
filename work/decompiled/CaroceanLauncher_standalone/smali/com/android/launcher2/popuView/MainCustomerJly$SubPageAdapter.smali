.class Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MainCustomerJly.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/MainCustomerJly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubPageAdapter"
.end annotation


# static fields
.field public static final PageCount:I = 0x2

.field public static final PageItemCount:I = 0x6


# instance fields
.field private mDvrIcon:Landroid/view/View;

.field private mDvrText:Landroid/widget/TextView;

.field private mDvrTitle:Landroid/widget/TextView;

.field private mIEText:Landroid/widget/TextView;

.field private mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

.field private mPageIconsId:[[I

.field private final mPageIconsId_n:[[I

.field private final mPageIconsView:[[Landroid/view/View;

.field private mPageLayoutId:[I

.field private final mPageLayoutId_n:[I

.field private mSelectIndex:I

.field private mSubPageHightLight:[Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/launcher2/popuView/MainCustomerJly;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V
    .locals 8

    .line 1332
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1311
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageLayoutId_n:[I

    new-array v2, v0, [[I

    const/4 v3, 0x6

    new-array v4, v3, [I

    .line 1315
    fill-array-data v4, :array_1

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    const/4 v6, 0x1

    aput-object v4, v2, v6

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsId_n:[[I

    new-array v4, v0, [[Landroid/view/View;

    new-array v7, v3, [Landroid/view/View;

    aput-object v7, v4, v5

    new-array v3, v3, [Landroid/view/View;

    aput-object v3, v4, v6

    .line 1320
    iput-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    .line 1324
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageLayoutId:[I

    .line 1325
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsId:[[I

    const/4 v1, -0x1

    .line 1327
    iput v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 1329
    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSubPageHightLight:[Landroid/widget/ImageView;

    .line 1333
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper;

    invoke-direct {v0, v6}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 1334
    invoke-virtual {v0, v5}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectMode(I)V

    .line 1335
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    new-instance v1, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$1;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;Lcom/android/launcher2/popuView/MainCustomerJly;)V

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0030
        0x7f0a0031
    .end array-data

    :array_1
    .array-data 4
        0x7f080075
        0x7f080069
        0x7f08007b
        0x7f08005b
        0x7f08006d
        0x7f080090
    .end array-data

    :array_2
    .array-data 4
        0x7f08005c
        0x7f080066
        0x7f08005a
        0x7f080071
        0x7f08005f
        0x7f080084
    .end array-data
.end method

.method static synthetic access$1800(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)I
    .locals 0

    .line 1308
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    return p0
.end method

.method static synthetic access$1802(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;I)I
    .locals 0

    .line 1308
    iput p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)[Landroid/widget/ImageView;
    .locals 0

    .line 1308
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSubPageHightLight:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)Lcom/carocean/navicar/MMIKeyHelper;
    .locals 0

    .line 1308
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1665
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getIndexFromView(Landroid/view/View;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    .line 1488
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    move v3, v0

    .line 1489
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 1490
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-ne p1, v4, :cond_0

    mul-int/lit8 v1, v2, 0x6

    add-int/2addr v1, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ltz v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return v1
.end method

.method public getSelectIndex()I
    .locals 0

    .line 1483
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    return p0
.end method

.method public handlerKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1669
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiateItem, position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomerJly"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageLayoutId_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageLayoutId:[I

    .line 1605
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsId_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsId:[[I

    .line 1607
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageLayoutId:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1608
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSubPageHightLight:[Landroid/widget/ImageView;

    const v2, 0x7f0800ad

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v1, p2

    const/4 v1, 0x0

    move v2, v1

    .line 1610
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsId:[[I

    aget-object v4, v3, p2

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 1611
    aget-object v3, v3, p2

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1613
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    aget-object v4, v4, p2

    aput-object v3, v4, v2

    .line 1614
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1615
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v4, v1}, Lcom/carocean/navicar/MMIKeyHelper;->getSectorSize(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 1616
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/16 v5, 0xc

    invoke-virtual {v4, v1, v5}, Lcom/carocean/navicar/MMIKeyHelper;->initSectorSize(II)V

    .line 1618
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v5, 0x5

    mul-int/lit8 v6, p2, 0x6

    add-int/2addr v6, v2

    invoke-virtual {v4, v3, v5, v1, v6}, Lcom/carocean/navicar/MMIKeyHelper;->fillView(Landroid/view/View;III)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v2, 0x7f08006a

    .line 1626
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 1628
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mIEText:Landroid/widget/TextView;

    .line 1629
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->updateIEText()V

    .line 1632
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageLayoutId:[I

    aget v2, v2, p2

    const v3, 0x7f0a0031

    if-ne v2, v3, :cond_4

    const v2, 0x7f080066

    .line 1634
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    const v2, 0x7f080068

    .line 1636
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    const v2, 0x7f080067

    .line 1638
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    .line 1639
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->update360Icon()V

    :cond_4
    const v2, 0x7f08007c

    .line 1642
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    const-string v3, "ro.release.car_play"

    .line 1644
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0c007a

    .line 1645
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1649
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    if-lt p2, p1, :cond_6

    .line 1651
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1400(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;

    move-result-object p1

    new-instance p2, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$2;

    invoke-direct {p2, p0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter$2;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1544
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    div-int/lit8 v0, v0, 0x6

    .line 1545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected: page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainCustomerJly"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p1, :cond_0

    mul-int/lit8 p1, p1, 0x6

    .line 1547
    iput p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    .line 1548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageSelected: mSelectIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->setSelectViewByIndex(IZZ)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 1526
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0}, Lcom/carocean/navicar/MMIKeyHelper;->clear()V

    return-void
.end method

.method public setSelectView(IZZ)V
    .locals 8

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomerJly"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, -0x1

    move v3, v0

    move v4, v3

    .line 1556
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsId:[[I

    array-length v5, v5

    if-ge v3, v5, :cond_3

    move v5, v0

    .line 1557
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsId:[[I

    aget-object v7, v6, v3

    array-length v7, v7

    if-ge v5, v7, :cond_1

    .line 1558
    aget-object v6, v6, v3

    aget v6, v6, v5

    if-ne p1, v6, :cond_0

    mul-int/lit8 v2, v3, 0x6

    add-int/2addr v2, v5

    move v4, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ltz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1567
    :cond_3
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSelectView: got index="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " page="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_4

    .line 1569
    iput v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    .line 1570
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    aget-object v0, v0, v4

    rem-int/lit8 v2, v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    if-eqz p2, :cond_4

    .line 1572
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v4, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_4
    return-void
.end method

.method public setSelectViewByIndex(IZZ)V
    .locals 3

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectViewByIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomerJly"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    .line 1580
    iput p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    .line 1581
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    div-int/lit8 v2, p1, 0x6

    aget-object v1, v1, v2

    rem-int/lit8 p1, p1, 0x6

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 1583
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    div-int/lit8 p0, p0, 0x6

    invoke-virtual {p1, p0, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public snap2Left()V
    .locals 4

    .line 1515
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    div-int/lit8 v0, v0, 0x6

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v1, v0, 0x6

    .line 1518
    iput v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    .line 1519
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v0

    rem-int/lit8 v1, v1, 0x6

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 1520
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public snap2Right()V
    .locals 5

    .line 1504
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    div-int/lit8 v0, v0, 0x6

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v1

    mul-int/lit8 v2, v0, 0x6

    .line 1507
    iput v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mSelectIndex:I

    .line 1508
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    aget-object v4, v4, v0

    rem-int/lit8 v2, v2, 0x6

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 1509
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public update360Icon()V
    .locals 9

    .line 1424
    sget v0, Lcom/android/launcher2/LauncherApplication;->m360Type:I

    const v1, 0x7f0c0057

    const v2, 0x7f0700b9

    const v3, 0x7f0700ae

    if-nez v0, :cond_6

    .line 1425
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const-string v0, "persist.sys.dvr_cvbs"

    const/4 v4, 0x0

    .line 1426
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v5, 0x7f0c00a6

    const v6, 0x7f0c00a5

    const v7, 0x7f0700bc

    const-string v8, "com.txznet.webchat"

    if-nez v0, :cond_3

    const-string v0, "persist.sys.front_camera"

    .line 1427
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1428
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1431
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v7, 0x7f0700c3

    :goto_0
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1432
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1433
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1439
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    const v2, 0x7f0c0083

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1440
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 1445
    :cond_3
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1446
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1449
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1450
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1451
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1455
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1456
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1457
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_2
    return-void

    .line 1463
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 1464
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1465
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    const v2, 0x7f0c0062

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1466
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    return-void
.end method

.method public updateIEText()V
    .locals 1

    .line 1472
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mIEText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$600(Lcom/android/launcher2/popuView/MainCustomerJly;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1474
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mIEText:Landroid/widget/TextView;

    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1476
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->mIEText:Landroid/widget/TextView;

    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method
