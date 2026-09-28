.class Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MainCustomer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/MainCustomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubPageAdapter"
.end annotation


# static fields
.field public static final PageCount:I = 0x2

.field public static final PageItemCount:I = 0x5


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

.field private mSubPageHightLightOffSet:I

.field final synthetic this$0:Lcom/android/launcher2/popuView/MainCustomer;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 8

    .line 2057
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2035
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageLayoutId_n:[I

    new-array v2, v0, [[I

    const/4 v3, 0x5

    new-array v4, v3, [I

    .line 2039
    fill-array-data v4, :array_1

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    const/4 v6, 0x1

    aput-object v4, v2, v6

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsId_n:[[I

    new-array v4, v0, [[Landroid/view/View;

    new-array v7, v3, [Landroid/view/View;

    aput-object v7, v4, v5

    new-array v3, v3, [Landroid/view/View;

    aput-object v3, v4, v6

    .line 2044
    iput-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    .line 2048
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageLayoutId:[I

    .line 2049
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsId:[[I

    const/4 v1, -0x1

    .line 2051
    iput v1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 2053
    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSubPageHightLight:[Landroid/widget/ImageView;

    .line 2055
    iput v5, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSubPageHightLightOffSet:I

    .line 2058
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper;

    invoke-direct {v0, v6}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 2059
    invoke-virtual {v0, v5}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectMode(I)V

    .line 2060
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    new-instance v1, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$1;-><init>(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;Lcom/android/launcher2/popuView/MainCustomer;)V

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0030
        0x7f0a0031
    .end array-data

    :array_1
    .array-data 4
        0x7f080075
        0x7f08006d
        0x7f080090
        0x7f08005c
        0x7f08007b
    .end array-data

    :array_2
    .array-data 4
        0x7f08005a
        0x7f080071
        0x7f08005f
        0x7f080084
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)Lcom/carocean/navicar/MMIKeyHelper;
    .locals 0

    .line 2032
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)I
    .locals 0

    .line 2032
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    return p0
.end method

.method static synthetic access$3202(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;I)I
    .locals 0

    .line 2032
    iput p1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)[Landroid/widget/ImageView;
    .locals 0

    .line 2032
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSubPageHightLight:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)[[I
    .locals 0

    .line 2032
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsId_n:[[I

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)I
    .locals 0

    .line 2032
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSubPageHightLightOffSet:I

    return p0
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 2399
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public enableID8Animator()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

    .line 2213
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    move v3, v0

    .line 2214
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 2215
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-ne p1, v4, :cond_0

    mul-int/lit8 v1, v2, 0x5

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

    .line 2208
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    return p0
.end method

.method public handlerKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 2403
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .line 2327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiateItem, position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageLayoutId_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageLayoutId:[I

    .line 2330
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsId_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsId:[[I

    .line 2331
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_1

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1920x720And240dpi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2333
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1280x480And160dpi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2334
    iput v1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSubPageHightLightOffSet:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0xf

    .line 2332
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSubPageHightLightOffSet:I

    .line 2337
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageLayoutId:[I

    aget v2, v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2338
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSubPageHightLight:[Landroid/widget/ImageView;

    const v3, 0x7f0800ad

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, p2

    const/4 v2, 0x0

    move v3, v2

    .line 2340
    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsId:[[I

    aget-object v5, v4, p2

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 2341
    aget-object v4, v4, p2

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2343
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    aget-object v5, v5, p2

    aput-object v4, v5, v3

    .line 2344
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2345
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v5, v2}, Lcom/carocean/navicar/MMIKeyHelper;->getSectorSize(I)I

    move-result v5

    if-nez v5, :cond_3

    .line 2346
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v5, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->initSectorSize(II)V

    .line 2348
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    mul-int/lit8 v6, p2, 0x5

    add-int/2addr v6, v3

    const/4 v7, 0x5

    invoke-virtual {v5, v4, v7, v2, v6}, Lcom/carocean/navicar/MMIKeyHelper;->fillView(Landroid/view/View;III)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const v1, 0x7f08006a

    .line 2356
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 2358
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mIEText:Landroid/widget/TextView;

    .line 2359
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->updateIEText()V

    :cond_6
    const v1, 0x7f080066

    .line 2362
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    .line 2364
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    :cond_7
    const v1, 0x7f080068

    .line 2366
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 2368
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    :cond_8
    const v1, 0x7f080067

    .line 2370
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 2372
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    .line 2374
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->update360Icon()V

    const v1, 0x7f08007c

    .line 2376
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_a

    const-string v3, "ro.release.car_play"

    .line 2378
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f0c007a

    .line 2379
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2383
    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    if-lt p2, p1, :cond_b

    .line 2385
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2300(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$UIHandler;

    move-result-object p1

    new-instance p2, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$2;

    invoke-direct {p2, p0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$2;-><init>(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/launcher2/popuView/MainCustomer$UIHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
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

    .line 2269
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    div-int/lit8 v0, v0, 0x5

    .line 2270
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

    const-string v2, "MainCustomer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p1, :cond_0

    mul-int/lit8 p1, p1, 0x5

    .line 2272
    iput p1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    .line 2273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageSelected: mSelectIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    iget p1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->setSelectViewByIndex(IZZ)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 2251
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0}, Lcom/carocean/navicar/MMIKeyHelper;->clear()V

    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setSelectView(IZZ)V
    .locals 8

    .line 2280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, -0x1

    move v3, v0

    move v4, v3

    .line 2281
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsId:[[I

    array-length v5, v5

    if-ge v3, v5, :cond_3

    move v5, v0

    .line 2282
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsId:[[I

    aget-object v7, v6, v3

    array-length v7, v7

    if-ge v5, v7, :cond_1

    .line 2283
    aget-object v6, v6, v3

    aget v6, v6, v5

    if-ne p1, v6, :cond_0

    mul-int/lit8 v2, v3, 0x5

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

    .line 2292
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

    .line 2294
    iput v2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    .line 2295
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    aget-object v0, v0, v4

    rem-int/lit8 v2, v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    if-eqz p2, :cond_4

    .line 2297
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$3300(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v4, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_4
    return-void
.end method

.method public setSelectViewByIndex(IZZ)V
    .locals 3

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectViewByIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    .line 2305
    iput p1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    .line 2306
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    div-int/lit8 v2, p1, 0x5

    aget-object v1, v1, v2

    rem-int/lit8 p1, p1, 0x5

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 2308
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$3300(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    div-int/lit8 p0, p0, 0x5

    invoke-virtual {p1, p0, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public snap2Left()V
    .locals 4

    .line 2240
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    div-int/lit8 v0, v0, 0x5

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v1, v0, 0x5

    .line 2243
    iput v1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    .line 2244
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v0

    rem-int/lit8 v1, v1, 0x5

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 2245
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$3300(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public snap2Right()V
    .locals 5

    .line 2229
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    div-int/lit8 v0, v0, 0x5

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v1

    mul-int/lit8 v2, v0, 0x5

    .line 2232
    iput v2, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mSelectIndex:I

    .line 2233
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mPageIconsView:[[Landroid/view/View;

    aget-object v4, v4, v0

    rem-int/lit8 v2, v2, 0x5

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 2234
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$3300(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public update360Icon()V
    .locals 9

    .line 2149
    sget v0, Lcom/android/launcher2/LauncherApplication;->m360Type:I

    const v1, 0x7f0c0057

    const v2, 0x7f0700b9

    const v3, 0x7f0700ae

    if-nez v0, :cond_6

    .line 2150
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const-string v0, "persist.sys.dvr_cvbs"

    const/4 v4, 0x0

    .line 2151
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v5, 0x7f0c00a6

    const v6, 0x7f0c00a5

    const v7, 0x7f0700bc

    const-string v8, "com.txznet.webchat"

    if-nez v0, :cond_3

    const-string v0, "persist.sys.front_camera"

    .line 2152
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2153
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2156
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v7, 0x7f0700c3

    :goto_0
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2157
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2158
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 2163
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2164
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    const v2, 0x7f0c0083

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2165
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 2170
    :cond_3
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2171
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2174
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2175
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2176
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 2180
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2181
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2182
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_2
    return-void

    .line 2188
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrIcon:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 2189
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2190
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    const v2, 0x7f0c0062

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2191
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public updateID8Theme(I)V
    .locals 0

    return-void
.end method

.method public updateIEText()V
    .locals 1

    .line 2197
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mIEText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2198
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer;->access$1300(Lcom/android/launcher2/popuView/MainCustomer;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2199
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mIEText:Landroid/widget/TextView;

    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2201
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->mIEText:Landroid/widget/TextView;

    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method
