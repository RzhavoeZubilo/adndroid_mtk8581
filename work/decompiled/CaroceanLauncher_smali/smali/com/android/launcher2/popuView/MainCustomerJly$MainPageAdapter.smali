.class public Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MainCustomerJly.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/MainCustomerJly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainPageAdapter"
.end annotation


# instance fields
.field public PageCount:I

.field public PageItemCount:I

.field private final jly_bmw_app_res:[I

.field private final jly_bmw_bt_res:[I

.field private final jly_bmw_car_res:[I

.field private final jly_bmw_carinfo_res:[I

.field private final jly_bmw_music_res:[I

.field private final jly_bmw_navi_res:[I

.field private final jly_bmw_video_res:[I

.field private final jly_bmw_zlink_res:[I

.field mBTConnected:Z

.field private mBTText:Landroid/widget/TextView;

.field private mIEText:Landroid/widget/TextView;

.field public mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

.field private mMainPageIconsId:[[I

.field private final mMainPageIconsId_n:[[I

.field private final mMainPageIconsView:[[Landroid/view/View;

.field private mMainPageLayoutId:[I

.field private final mMainPageLayoutId_n:[I

.field private mSelectIndex:I

.field final synthetic this$0:Lcom/android/launcher2/popuView/MainCustomerJly;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V
    .locals 7

    .line 997
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x4

    .line 906
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    const/4 v1, 0x2

    .line 907
    iput v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageCount:I

    new-array v2, v1, [I

    .line 908
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageLayoutId_n:[I

    new-array v3, v1, [[I

    new-array v4, v0, [I

    .line 912
    fill-array-data v4, :array_1

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_2

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsId_n:[[I

    .line 917
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageLayoutId:[I

    .line 918
    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsId:[[I

    new-array v1, v1, [[Landroid/view/View;

    new-array v2, v0, [Landroid/view/View;

    aput-object v2, v1, v5

    new-array v0, v0, [Landroid/view/View;

    aput-object v0, v1, v6

    .line 920
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    const/4 v0, -0x1

    .line 925
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    .line 947
    iput-boolean v5, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mBTConnected:Z

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1263
    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_zlink_res:[I

    new-array v1, v0, [I

    .line 1264
    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_navi_res:[I

    new-array v1, v0, [I

    .line 1265
    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_music_res:[I

    new-array v1, v0, [I

    .line 1266
    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_bt_res:[I

    new-array v1, v0, [I

    .line 1267
    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_video_res:[I

    new-array v1, v0, [I

    .line 1268
    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_carinfo_res:[I

    new-array v1, v0, [I

    .line 1269
    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_app_res:[I

    new-array v0, v0, [I

    .line 1270
    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_car_res:[I

    .line 998
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper;

    invoke-direct {v0, v6}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 999
    invoke-virtual {v0, v5}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectMode(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    new-instance v1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;Lcom/android/launcher2/popuView/MainCustomerJly;)V

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a003c
        0x7f0a003d
    .end array-data

    :array_1
    .array-data 4
        0x7f080092
        0x7f080075
        0x7f08006d
        0x7f08005c
    .end array-data

    :array_2
    .array-data 4
        0x7f080090
        0x7f08005f
        0x7f08005a
        0x7f080071
    .end array-data

    :array_3
    .array-data 4
        0x7f070290
        0x7f0702c4
        0x7f0702aa
    .end array-data

    :array_4
    .array-data 4
        0x7f07028a
        0x7f0702be
        0x7f0702a4
    .end array-data

    :array_5
    .array-data 4
        0x7f070287
        0x7f0702bb
        0x7f0702a1
    .end array-data

    :array_6
    .array-data 4
        0x7f07027c
        0x7f0702b0
        0x7f070296
    .end array-data

    :array_7
    .array-data 4
        0x7f07028d
        0x7f0702c1
        0x7f0702a7
    .end array-data

    :array_8
    .array-data 4
        0x7f070282
        0x7f0702b6
        0x7f07029c
    .end array-data

    :array_9
    .array-data 4
        0x7f070279
        0x7f0702ad
        0x7f070293
    .end array-data

    :array_a
    .array-data 4
        0x7f07027f
        0x7f0702b3
        0x7f070299
    .end array-data
.end method

.method static synthetic access$400(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;)I
    .locals 0

    .line 905
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;I)I
    .locals 0

    .line 905
    iput p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    return p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1159
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 1080
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageCount:I

    return p0
.end method

.method public getIndexFromView(Landroid/view/View;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    .line 933
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    move v3, v0

    .line 934
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 935
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-ne p1, v4, :cond_0

    .line 936
    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    mul-int/2addr v1, v2

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

    .line 1260
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    return p0
.end method

.method public handlerKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1198
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .line 1090
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

    .line 1091
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageLayoutId_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageLayoutId:[I

    .line 1092
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsId_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsId:[[I

    .line 1093
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageLayoutId:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1095
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsId:[[I

    aget-object v4, v3, p2

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 1096
    aget-object v3, v3, p2

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1098
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v4, v4, p2

    aput-object v3, v4, v2

    .line 1099
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080071

    if-ne v4, v5, :cond_0

    .line 1101
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1103
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v4, v1}, Lcom/carocean/navicar/MMIKeyHelper;->getSectorSize(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 1104
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget v5, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    iget v6, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageCount:I

    mul-int/2addr v5, v6

    invoke-virtual {v4, v1, v5}, Lcom/carocean/navicar/MMIKeyHelper;->initSectorSize(II)V

    .line 1106
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    mul-int/2addr v6, p2

    add-int/2addr v6, v2

    invoke-virtual {v4, v3, v5, v1, v6}, Lcom/carocean/navicar/MMIKeyHelper;->fillView(Landroid/view/View;III)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1109
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->updateUiTheme()V

    const v2, 0x7f08006a

    .line 1114
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 1116
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mIEText:Landroid/widget/TextView;

    .line 1117
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->updateIEText()V

    :cond_4
    const v2, 0x7f08007c

    .line 1119
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    const-string v3, "ro.release.car_play"

    .line 1121
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0c007a

    .line 1122
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    const v1, 0x7f080073

    .line 1125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1127
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1002(Lcom/android/launcher2/popuView/MainCustomerJly;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1128
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/popuView/MainCustomerJly;->updateCarIcon(I)V

    :cond_6
    const v1, 0x7f08005d

    .line 1130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 1132
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mBTText:Landroid/widget/TextView;

    .line 1133
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/uitl/Utils;->isBTConnected(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->updateBluetooth(Z)V

    .line 1136
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1137
    iget p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageCount:I

    add-int/lit8 p1, p1, -0x1

    if-lt p2, p1, :cond_8

    .line 1138
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1400(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;

    move-result-object p1

    new-instance p2, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$2;

    invoke-direct {p2, p0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$2;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
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

    .line 1210
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1500(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/widget/EdgeEffect;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1600(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/widget/EdgeEffect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1211
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1500(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/widget/EdgeEffect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 1212
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1600(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/widget/EdgeEffect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 1213
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1500(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/widget/EdgeEffect;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1214
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1600(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/widget/EdgeEffect;

    move-result-object p0

    invoke-virtual {p0, p2, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 1221
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    div-int/2addr v0, v1

    .line 1222
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

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-nez p1, :cond_1

    .line 1224
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 1225
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v4}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$800(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1227
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$800(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1229
    :cond_1
    iget v6, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageCount:I

    sub-int/2addr v6, v5

    if-ne p1, v6, :cond_3

    .line 1230
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v6

    if-eq v6, v5, :cond_2

    .line 1231
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v4}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1233
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1236
    :cond_3
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v1

    if-eq v1, v5, :cond_5

    .line 1237
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$800(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1238
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$800(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1241
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1244
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$800(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_0
    if-eq v0, p1, :cond_8

    .line 1248
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1700(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getmMMIKeyRegion()I

    move-result v0

    if-eq v0, v5, :cond_7

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-eq v0, v5, :cond_8

    .line 1249
    :cond_7
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    mul-int/2addr v0, p1

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageSelected: index="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-virtual {p0, v0, v3, v3}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->setSelectViewByIndex(IZZ)V

    .line 1253
    :cond_8
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 1254
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageCount:I

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->setPageIndex(II)V

    :cond_9
    return-void
.end method

.method public release()V
    .locals 0

    .line 994
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0}, Lcom/carocean/navicar/MMIKeyHelper;->clear()V

    return-void
.end method

.method public setSelectView(IZZ)V
    .locals 8

    .line 1164
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

    .line 1165
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsId:[[I

    array-length v5, v5

    if-ge v3, v5, :cond_3

    move v5, v0

    .line 1166
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsId:[[I

    aget-object v7, v6, v3

    array-length v7, v7

    if-ge v5, v7, :cond_1

    .line 1167
    aget-object v6, v6, v3

    aget v6, v6, v5

    if-ne p1, v6, :cond_0

    .line 1169
    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    mul-int/2addr v2, v3

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

    .line 1176
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

    .line 1178
    iput v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    .line 1179
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    rem-int/2addr v2, v1

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    if-eqz p2, :cond_4

    .line 1181
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$700(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v4, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_4
    return-void
.end method

.method public setSelectViewByIndex(IZZ)V
    .locals 4

    .line 1187
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

    .line 1189
    iput p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    .line 1190
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    div-int v3, p1, v2

    aget-object v1, v1, v3

    rem-int/2addr p1, v2

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 1192
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$700(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    div-int/2addr p2, p0

    invoke-virtual {p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public snap2Left()V
    .locals 5

    .line 983
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    div-int/2addr v0, v1

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v0, v1

    .line 986
    iput v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    .line 987
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v4, v4, v0

    rem-int/2addr v2, v1

    aget-object v1, v4, v2

    invoke-virtual {v3, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 988
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$700(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public snap2Right()V
    .locals 6

    .line 972
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    div-int/2addr v0, v1

    .line 973
    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    add-int/2addr v0, v3

    mul-int v2, v0, v1

    .line 975
    iput v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mSelectIndex:I

    .line 976
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v5, v5, v0

    rem-int/2addr v2, v1

    aget-object v1, v5, v2

    invoke-virtual {v4, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 977
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$700(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public update360Icon()V
    .locals 0

    return-void
.end method

.method public final updateBluetooth(Z)V
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mBTText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v1, 0x7f0c0067

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0068

    .line 953
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 955
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mBTConnected:Z

    return-void
.end method

.method public updateIEText()V
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mIEText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$600(Lcom/android/launcher2/popuView/MainCustomerJly;)I

    move-result v0

    if-lez v0, :cond_0

    .line 963
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mIEText:Landroid/widget/TextView;

    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 965
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mIEText:Landroid/widget/TextView;

    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateUiTheme()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1273
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsId_n:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 1274
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsId:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1275
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v4, v3, v1

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 1276
    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    .line 1278
    :sswitch_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_zlink_res:[I

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeSubid()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 1290
    :sswitch_1
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_video_res:[I

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeSubid()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1281
    :sswitch_2
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_navi_res:[I

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeSubid()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1299
    :sswitch_3
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_car_res:[I

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeSubid()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1284
    :sswitch_4
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_music_res:[I

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeSubid()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1293
    :sswitch_5
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_carinfo_res:[I

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeSubid()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1287
    :sswitch_6
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_bt_res:[I

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeSubid()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1296
    :sswitch_7
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->jly_bmw_app_res:[I

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeSubid()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08005a -> :sswitch_7
        0x7f08005c -> :sswitch_6
        0x7f08005f -> :sswitch_5
        0x7f08006d -> :sswitch_4
        0x7f080071 -> :sswitch_3
        0x7f080075 -> :sswitch_2
        0x7f080090 -> :sswitch_1
        0x7f080092 -> :sswitch_0
    .end sparse-switch
.end method
