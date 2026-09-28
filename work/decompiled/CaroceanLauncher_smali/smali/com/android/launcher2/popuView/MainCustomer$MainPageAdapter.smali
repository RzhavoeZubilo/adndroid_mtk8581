.class public Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MainCustomer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/MainCustomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainPageAdapter"
.end annotation


# instance fields
.field public PageCount:I

.field public PageItemCount:I

.field private final bmw_id8_add_res:[I

.field private final bmw_id8_bt_res:[I

.field private final bmw_id8_car_res:[I

.field private final bmw_id8_carinfo_res:[I

.field private final bmw_id8_down_select_res:[I

.field private final bmw_id8_music_res:[I

.field private final bmw_id8_navi_res:[I

.field private final bmw_id8_settings_res:[I

.field private final bmw_id8_theme_res:[I

.field private final bmw_id8_title_color:[I

.field private final bmw_id8_up_select_res:[I

.field private final bmw_id8_video_res:[I

.field private dfone:Ljava/text/DecimalFormat;

.field mBTConnected:Z

.field private mBTText:Landroid/widget/TextView;

.field private mCanOil:Landroid/widget/TextView;

.field private mCanParking:Landroid/widget/TextView;

.field private mCanSafe:Landroid/widget/TextView;

.field private mCanTmp:Landroid/widget/TextView;

.field private mDvrIcon:Landroid/view/View;

.field private mDvrText:Landroid/widget/TextView;

.field private mDvrTitle:Landroid/widget/TextView;

.field private final mID8MainPageIconsView:[[Landroid/view/View;

.field private final mID8MainPageTitlesView:[[Landroid/widget/TextView;

.field private mIEText:Landroid/widget/TextView;

.field public mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

.field private mMainAdd:Landroid/view/View;

.field private mMainAddDel:Landroid/widget/ImageView;

.field private mMainAddSrcImg:Landroid/widget/ImageView;

.field private mMainAddTitle:Landroid/widget/TextView;

.field private mMainPageIconsId:[[I

.field private final mMainPageIconsId_id8_n:[[I

.field private final mMainPageIconsId_n:[[I

.field private final mMainPageIconsId_new_lc_n:[[I

.field private final mMainPageIconsId_new_lfe_n:[[I

.field private final mMainPageIconsId_new_mrw_n:[[I

.field private final mMainPageIconsId_new_n:[[I

.field private final mMainPageIconsId_new_yzg_n:[[I

.field private final mMainPageIconsId_new_zlh_n:[[I

.field private final mMainPageIconsView:[[Landroid/view/View;

.field private mMainPageLayoutId:[I

.field private final mMainPageLayoutId_id8_n:[I

.field private final mMainPageLayoutId_n:[I

.field private final mMainPageLayoutId_new_lc_n:[I

.field private final mMainPageLayoutId_new_lfe_n:[I

.field private final mMainPageLayoutId_new_mrw_n:[I

.field private final mMainPageLayoutId_new_n:[I

.field private final mMainPageLayoutId_new_yzg_n:[I

.field private final mMainPageLayoutId_new_zlh_n:[I

.field private final mMainPageTitlesId_id8_n:[[I

.field private mSelectIndex:I

.field final synthetic this$0:Lcom/android/launcher2/popuView/MainCustomer;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 8

    .line 1409
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1136
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_n:[I

    new-array v2, v0, [[I

    new-array v3, v0, [I

    .line 1141
    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v0, [I

    fill-array-data v3, :array_2

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v3, v0, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_n:[[I

    new-array v3, v0, [I

    .line 1147
    fill-array-data v3, :array_4

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_lfe_n:[I

    new-array v3, v0, [[I

    new-array v7, v0, [I

    .line 1152
    fill-array-data v7, :array_5

    aput-object v7, v3, v4

    new-array v7, v0, [I

    fill-array-data v7, :array_6

    aput-object v7, v3, v5

    new-array v7, v0, [I

    fill-array-data v7, :array_7

    aput-object v7, v3, v6

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_lfe_n:[[I

    new-array v3, v0, [I

    .line 1158
    fill-array-data v3, :array_8

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_n:[I

    new-array v3, v0, [[I

    new-array v7, v0, [I

    .line 1163
    fill-array-data v7, :array_9

    aput-object v7, v3, v4

    new-array v7, v0, [I

    fill-array-data v7, :array_a

    aput-object v7, v3, v5

    new-array v7, v0, [I

    fill-array-data v7, :array_b

    aput-object v7, v3, v6

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_n:[[I

    new-array v3, v0, [I

    .line 1169
    fill-array-data v3, :array_c

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_zlh_n:[I

    new-array v3, v0, [[I

    new-array v7, v0, [I

    .line 1175
    fill-array-data v7, :array_d

    aput-object v7, v3, v4

    new-array v7, v0, [I

    fill-array-data v7, :array_e

    aput-object v7, v3, v5

    new-array v7, v0, [I

    fill-array-data v7, :array_f

    aput-object v7, v3, v6

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_zlh_n:[[I

    new-array v3, v0, [I

    .line 1181
    fill-array-data v3, :array_10

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_mrw_n:[I

    new-array v3, v0, [[I

    new-array v7, v0, [I

    .line 1186
    fill-array-data v7, :array_11

    aput-object v7, v3, v4

    new-array v7, v0, [I

    fill-array-data v7, :array_12

    aput-object v7, v3, v5

    new-array v7, v0, [I

    fill-array-data v7, :array_13

    aput-object v7, v3, v6

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_mrw_n:[[I

    new-array v3, v0, [I

    .line 1192
    fill-array-data v3, :array_14

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_yzg_n:[I

    new-array v3, v0, [[I

    new-array v7, v6, [I

    .line 1197
    fill-array-data v7, :array_15

    aput-object v7, v3, v4

    new-array v7, v6, [I

    fill-array-data v7, :array_16

    aput-object v7, v3, v5

    new-array v7, v6, [I

    fill-array-data v7, :array_17

    aput-object v7, v3, v6

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_yzg_n:[[I

    new-array v3, v0, [I

    .line 1203
    fill-array-data v3, :array_18

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_lc_n:[I

    new-array v3, v0, [[I

    new-array v7, v0, [I

    .line 1208
    fill-array-data v7, :array_19

    aput-object v7, v3, v4

    new-array v7, v0, [I

    fill-array-data v7, :array_1a

    aput-object v7, v3, v5

    new-array v7, v0, [I

    fill-array-data v7, :array_1b

    aput-object v7, v3, v6

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_lc_n:[[I

    new-array v3, v0, [I

    .line 1214
    fill-array-data v3, :array_1c

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_id8_n:[I

    new-array v3, v0, [[I

    new-array v7, v0, [I

    .line 1219
    fill-array-data v7, :array_1d

    aput-object v7, v3, v4

    new-array v7, v0, [I

    fill-array-data v7, :array_1e

    aput-object v7, v3, v5

    new-array v7, v0, [I

    fill-array-data v7, :array_1f

    aput-object v7, v3, v6

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_id8_n:[[I

    new-array v3, v0, [[I

    new-array v7, v0, [I

    .line 1225
    fill-array-data v7, :array_20

    aput-object v7, v3, v4

    new-array v7, v0, [I

    fill-array-data v7, :array_21

    aput-object v7, v3, v5

    new-array v7, v0, [I

    fill-array-data v7, :array_22

    aput-object v7, v3, v6

    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageTitlesId_id8_n:[[I

    .line 1231
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId:[I

    .line 1232
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    const/4 v1, 0x4

    new-array v2, v1, [[Landroid/view/View;

    new-array v3, v0, [Landroid/view/View;

    aput-object v3, v2, v4

    new-array v3, v0, [Landroid/view/View;

    aput-object v3, v2, v5

    new-array v3, v0, [Landroid/view/View;

    aput-object v3, v2, v6

    new-array v3, v0, [Landroid/view/View;

    aput-object v3, v2, v0

    .line 1234
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    new-array v2, v0, [[Landroid/view/View;

    new-array v3, v0, [Landroid/view/View;

    aput-object v3, v2, v4

    new-array v3, v0, [Landroid/view/View;

    aput-object v3, v2, v5

    new-array v3, v0, [Landroid/view/View;

    aput-object v3, v2, v6

    .line 1241
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    new-array v2, v0, [[Landroid/widget/TextView;

    new-array v3, v0, [Landroid/widget/TextView;

    aput-object v3, v2, v4

    new-array v3, v0, [Landroid/widget/TextView;

    aput-object v3, v2, v5

    new-array v3, v0, [Landroid/widget/TextView;

    aput-object v3, v2, v6

    .line 1247
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageTitlesView:[[Landroid/widget/TextView;

    const/4 v2, -0x1

    .line 1253
    iput v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    .line 1351
    iput-boolean v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mBTConnected:Z

    .line 1850
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->dfone:Ljava/text/DecimalFormat;

    new-array v2, v1, [I

    .line 1918
    fill-array-data v2, :array_23

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_navi_res:[I

    new-array v2, v1, [I

    .line 1919
    fill-array-data v2, :array_24

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_music_res:[I

    new-array v2, v1, [I

    .line 1920
    fill-array-data v2, :array_25

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_bt_res:[I

    new-array v2, v1, [I

    .line 1921
    fill-array-data v2, :array_26

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_video_res:[I

    new-array v2, v1, [I

    .line 1922
    fill-array-data v2, :array_27

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_car_res:[I

    new-array v2, v1, [I

    .line 1923
    fill-array-data v2, :array_28

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_settings_res:[I

    new-array v2, v1, [I

    .line 1924
    fill-array-data v2, :array_29

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_theme_res:[I

    new-array v2, v1, [I

    .line 1925
    fill-array-data v2, :array_2a

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_carinfo_res:[I

    new-array v2, v1, [I

    .line 1926
    fill-array-data v2, :array_2b

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_add_res:[I

    new-array v2, v1, [I

    .line 1927
    fill-array-data v2, :array_2c

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_up_select_res:[I

    new-array v2, v1, [I

    .line 1928
    fill-array-data v2, :array_2d

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_down_select_res:[I

    new-array v1, v1, [I

    .line 1978
    fill-array-data v1, :array_2e

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_title_color:[I

    .line 1410
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v1

    if-eq v5, v1, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1417
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1418
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    .line 1419
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageCount:I

    goto :goto_2

    .line 1421
    :cond_1
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    .line 1422
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageCount:I

    goto :goto_2

    .line 1411
    :cond_2
    :goto_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1412
    iput v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    goto :goto_1

    .line 1414
    :cond_3
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    .line 1416
    :goto_1
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageCount:I

    .line 1425
    :goto_2
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper;

    invoke-direct {v0, v5}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 1426
    invoke-virtual {v0, v4}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectMode(I)V

    .line 1427
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    new-instance v1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;-><init>(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;Lcom/android/launcher2/popuView/MainCustomer;)V

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0027
        0x7f0a002a
        0x7f0a002d
    .end array-data

    :array_1
    .array-data 4
        0x7f080075
        0x7f08006d
        0x7f080090
    .end array-data

    :array_2
    .array-data 4
        0x7f08005c
        0x7f08007b
        0x7f08005a
    .end array-data

    :array_3
    .array-data 4
        0x7f080071
        0x7f08005f
        0x7f080084
    .end array-data

    :array_4
    .array-data 4
        0x7f0a0018
        0x7f0a001d
        0x7f0a0023
    .end array-data

    :array_5
    .array-data 4
        0x7f080075
        0x7f08005c
        0x7f08006d
    .end array-data

    :array_6
    .array-data 4
        0x7f080090
        0x7f08005a
        0x7f08007b
    .end array-data

    :array_7
    .array-data 4
        0x7f080071
        0x7f08005f
        0x7f080084
    .end array-data

    :array_8
    .array-data 4
        0x7f0a0016
        0x7f0a001b
        0x7f0a0021
    .end array-data

    :array_9
    .array-data 4
        0x7f080075
        0x7f08006d
        0x7f08005c
    .end array-data

    :array_a
    .array-data 4
        0x7f080071
        0x7f08005a
        0x7f08005f
    .end array-data

    :array_b
    .array-data 4
        0x7f080090
        0x7f080084
        0x7f080092
    .end array-data

    :array_c
    .array-data 4
        0x7f0a0016
        0x7f0a0020
        0x7f0a0021
    .end array-data

    :array_d
    .array-data 4
        0x7f080075
        0x7f08006d
        0x7f08005c
    .end array-data

    :array_e
    .array-data 4
        0x7f080071
        0x7f08005a
        0x7f08005f
    .end array-data

    :array_f
    .array-data 4
        0x7f080090
        0x7f080084
        0x7f080092
    .end array-data

    :array_10
    .array-data 4
        0x7f0a0019
        0x7f0a001e
        0x7f0a0024
    .end array-data

    :array_11
    .array-data 4
        0x7f080075
        0x7f08006d
        0x7f08005c
    .end array-data

    :array_12
    .array-data 4
        0x7f080071
        0x7f08005a
        0x7f08005f
    .end array-data

    :array_13
    .array-data 4
        0x7f080090
        0x7f080084
        0x7f080092
    .end array-data

    :array_14
    .array-data 4
        0x7f0a001a
        0x7f0a001f
        0x7f0a0025
    .end array-data

    :array_15
    .array-data 4
        0x7f080075
        0x7f08005c
    .end array-data

    :array_16
    .array-data 4
        0x7f08006d
        0x7f080090
    .end array-data

    :array_17
    .array-data 4
        0x7f080071
        0x7f08005f
    .end array-data

    :array_18
    .array-data 4
        0x7f0a0017
        0x7f0a001c
        0x7f0a0022
    .end array-data

    :array_19
    .array-data 4
        0x7f080075
        0x7f08006d
        0x7f08005c
    .end array-data

    :array_1a
    .array-data 4
        0x7f080090
        0x7f080069
        0x7f080084
    .end array-data

    :array_1b
    .array-data 4
        0x7f080071
        0x7f08005a
        0x7f08005f
    .end array-data

    :array_1c
    .array-data 4
        0x7f0a0013
        0x7f0a0014
        0x7f0a0015
    .end array-data

    :array_1d
    .array-data 4
        0x7f080075
        0x7f08006d
        0x7f08005c
    .end array-data

    :array_1e
    .array-data 4
        0x7f080090
        0x7f080071
        0x7f080084
    .end array-data

    :array_1f
    .array-data 4
        0x7f080087
        0x7f08005f
        0x7f080056
    .end array-data

    :array_20
    .array-data 4
        0x7f080076
        0x7f080070
        0x7f08005e
    .end array-data

    :array_21
    .array-data 4
        0x7f080091
        0x7f080074
        0x7f080085
    .end array-data

    :array_22
    .array-data 4
        0x7f08008f
        0x7f080063
        0x7f080059
    .end array-data

    :array_23
    .array-data 4
        0x7f07003c
        0x7f07003c
        0x7f07005c
        0x7f07001f
    .end array-data

    :array_24
    .array-data 4
        0x7f070039
        0x7f070039
        0x7f07005a
        0x7f07001d
    .end array-data

    :array_25
    .array-data 4
        0x7f07002f
        0x7f07002f
        0x7f070056
        0x7f070019
    .end array-data

    :array_26
    .array-data 4
        0x7f070043
        0x7f070043
        0x7f070061
        0x7f070024
    .end array-data

    :array_27
    .array-data 4
        0x7f07003b
        0x7f07003b
        0x7f07005b
        0x7f07001e
    .end array-data

    :array_28
    .array-data 4
        0x7f07003f
        0x7f07003f
        0x7f07005d
        0x7f070020
    .end array-data

    :array_29
    .array-data 4
        0x7f070040
        0x7f070040
        0x7f07005e
        0x7f070021
    .end array-data

    :array_2a
    .array-data 4
        0x7f070031
        0x7f070031
        0x7f070057
        0x7f07001a
    .end array-data

    :array_2b
    .array-data 4
        0x7f07002c
        0x7f07002c
        0x7f070055
        0x7f070018
    .end array-data

    :array_2c
    .array-data 4
        0x7f070042
        0x7f070042
        0x7f070060
        0x7f070023
    .end array-data

    :array_2d
    .array-data 4
        0x7f070038
        0x7f070038
        0x7f070059
        0x7f07001c
    .end array-data

    :array_2e
    .array-data 4
        0x7f050004
        0x7f050004
        0x7f050005
        0x7f050002
    .end array-data
.end method

.method static synthetic access$1200(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)V
    .locals 0

    .line 1133
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8AddViewInfo()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)I
    .locals 0

    .line 1133
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;I)I
    .locals 0

    .line 1133
    iput p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    return p1
.end method

.method private updateID8AddViewInfo()V
    .locals 5

    .line 1698
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer;->access$1100(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "id8.page.add.componentname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1700
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1100(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "id8.page.add1.componentname"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1702
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1703
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v2}, Lcom/android/launcher2/popuView/MainCustomer;->access$2400(Lcom/android/launcher2/popuView/MainCustomer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/android/launcher2/popuView/MainCustomer;->access$2500(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/List;Ljava/lang/String;)Lcom/android/launcher2/ApplicationInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 1705
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1706
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v2}, Lcom/android/launcher2/popuView/MainCustomer;->access$2400(Lcom/android/launcher2/popuView/MainCustomer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2500(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/List;Ljava/lang/String;)Lcom/android/launcher2/ApplicationInfo;

    .line 1709
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainAdd:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1710
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1713
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainAddTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    .line 1714
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v2}, Lcom/android/launcher2/popuView/MainCustomer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c005a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainAddSrcImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    if-nez v0, :cond_5

    goto :goto_2

    .line 1718
    :cond_5
    iget-object v3, v0, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1719
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainAddSrcImg:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1722
    :cond_7
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainAddDel:Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v2, v4

    .line 1723
    :goto_4
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private updateID8BackgroundRes(I)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1931
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 1932
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v4, v3, v1

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 1933
    aget-object v3, v3, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 1934
    iget v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    div-int v5, v3, v4

    .line 1935
    rem-int/2addr v3, v4

    const/4 v4, 0x1

    if-ltz v5, :cond_0

    if-ltz v3, :cond_0

    .line 1936
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v6}, Lcom/android/launcher2/popuView/MainCustomer;->access$2800(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getmMMIKeyRegion()I

    move-result v6

    if-ne v6, v4, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v5

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v7, v7, v1

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1937
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    invoke-virtual {v6, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1939
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    .line 1950
    :sswitch_0
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_video_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 1959
    :sswitch_1
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_theme_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1956
    :sswitch_2
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_settings_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1941
    :sswitch_3
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_navi_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1953
    :sswitch_4
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_car_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1944
    :sswitch_5
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_music_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1962
    :sswitch_6
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_carinfo_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1947
    :sswitch_7
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_bt_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1965
    :sswitch_8
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_add_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1968
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    check-cast v6, Lcom/android/launcher2/popuView/AnimationFrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_up_select_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->setAnimaUpSelectResource(I)V

    .line 1969
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    check-cast v6, Lcom/android/launcher2/popuView/AnimationFrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_down_select_res:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->setAnimaDownSelectResource(I)V

    if-ltz v5, :cond_1

    if-ltz v3, :cond_1

    .line 1970
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v6}, Lcom/android/launcher2/popuView/MainCustomer;->access$2800(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getmMMIKeyRegion()I

    move-result v6

    if-ne v6, v4, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v5, v6, v5

    aget-object v3, v5, v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 1971
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080056 -> :sswitch_8
        0x7f08005c -> :sswitch_7
        0x7f08005f -> :sswitch_6
        0x7f08006d -> :sswitch_5
        0x7f080071 -> :sswitch_4
        0x7f080075 -> :sswitch_3
        0x7f080084 -> :sswitch_2
        0x7f080087 -> :sswitch_1
        0x7f080090 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateID8ThemeText(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f0c009c

    goto :goto_0

    :cond_1
    const p1, 0x7f0c009f

    goto :goto_0

    :cond_2
    const p1, 0x7f0c009e

    :goto_0
    if-eqz p1, :cond_3

    .line 2004
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer;->access$1900(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2005
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$1900(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method private updateID8TitleColor(I)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1981
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageTitlesId_id8_n:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 1982
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageTitlesId_id8_n:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1983
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageTitlesView:[[Landroid/widget/TextView;

    aget-object v4, v3, v1

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 1984
    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v4}, Lcom/android/launcher2/popuView/MainCustomer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->bmw_id8_title_color:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2022
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$3000(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/ArrayList;)V

    .line 2023
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8AddViewInfo()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1729
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public enableID8Animator()Z
    .locals 3

    .line 1776
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    div-int v2, v0, v1

    .line 1777
    rem-int/2addr v0, v1

    const/4 v1, 0x1

    if-ltz v2, :cond_0

    if-ltz v0, :cond_0

    .line 1779
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object p0, p0, v2

    aget-object p0, p0, v0

    check-cast p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->setEnableAnimator(Z)V

    :cond_0
    return v1
.end method

.method public getCount()I
    .locals 0

    .line 1507
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageCount:I

    return p0
.end method

.method public getIndexFromView(Landroid/view/View;)I
    .locals 6

    .line 1262
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    move v0, v1

    .line 1263
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    move v3, v1

    .line 1264
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 1265
    aget-object v4, v4, v0

    aget-object v4, v4, v3

    if-ne p1, v4, :cond_0

    .line 1266
    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ltz v2, :cond_2

    goto :goto_6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1275
    :goto_3
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    move v3, v1

    .line 1276
    :goto_4
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 1277
    aget-object v4, v4, v0

    aget-object v4, v4, v3

    if-ne p1, v4, :cond_4

    .line 1278
    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    if-ltz v2, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_6
    return v2
.end method

.method public getSelectIndex()I
    .locals 0

    .line 1847
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    return p0
.end method

.method public handlerKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1785
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .line 1517
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

    .line 1519
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1520
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_mrw_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId:[I

    .line 1522
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_mrw_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    goto :goto_0

    .line 1523
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1524
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_yzg_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId:[I

    .line 1525
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_yzg_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    goto :goto_0

    .line 1526
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1527
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_lc_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId:[I

    .line 1528
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_lc_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    goto :goto_0

    .line 1529
    :cond_2
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1530
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_zlh_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId:[I

    .line 1531
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_zlh_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    goto :goto_0

    .line 1533
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId:[I

    .line 1534
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    goto :goto_0

    .line 1536
    :cond_4
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1537
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_id8_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId:[I

    .line 1538
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_id8_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    goto :goto_0

    .line 1539
    :cond_5
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLFECustomer()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1540
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_new_lfe_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId:[I

    .line 1541
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_new_lfe_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    goto :goto_0

    .line 1543
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId_n:[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId:[I

    .line 1544
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId_n:[[I

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    .line 1547
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageLayoutId:[I

    aget v2, v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 1549
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    aget-object v5, v4, p2

    array-length v5, v5

    const v6, 0x7f080071

    if-ge v3, v5, :cond_c

    .line 1550
    aget-object v4, v4, p2

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1552
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1553
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v5, v5, p2

    aput-object v4, v5, v3

    .line 1554
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageTitlesId_id8_n:[[I

    aget-object v5, v5, p2

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_8

    .line 1556
    iget-object v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageTitlesView:[[Landroid/widget/TextView;

    aget-object v7, v7, p2

    aput-object v5, v7, v3

    goto :goto_2

    .line 1559
    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v5, v5, p2

    aput-object v4, v5, v3

    .line 1561
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1562
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v6, :cond_9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomer()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1563
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1565
    :cond_9
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v5, v2}, Lcom/carocean/navicar/MMIKeyHelper;->getSectorSize(I)I

    move-result v5

    if-nez v5, :cond_a

    .line 1566
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    iget v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageCount:I

    mul-int/2addr v6, v7

    invoke-virtual {v5, v2, v6}, Lcom/carocean/navicar/MMIKeyHelper;->initSectorSize(II)V

    .line 1568
    :cond_a
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v6, 0x5

    iget v7, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    mul-int/2addr v7, p2

    add-int/2addr v7, v3

    invoke-virtual {v5, v4, v6, v2, v7}, Lcom/carocean/navicar/MMIKeyHelper;->fillView(Landroid/view/View;III)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_c
    const v3, 0x7f08006a

    .line 1576
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_d

    .line 1578
    iput-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mIEText:Landroid/widget/TextView;

    .line 1579
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateIEText()V

    :cond_d
    const v3, 0x7f08007c

    .line 1581
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_e

    const-string v4, "ro.release.car_play"

    .line 1583
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    const v4, 0x7f0c007a

    .line 1584
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1587
    :cond_e
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1589
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v4, v3}, Lcom/android/launcher2/popuView/MainCustomer;->access$1602(Lcom/android/launcher2/popuView/MainCustomer;Landroid/view/View;)Landroid/view/View;

    .line 1590
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/popuView/MainCustomer;->updateCarIcon(Z)V

    :cond_f
    const v2, 0x7f08005d

    .line 1593
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_10

    .line 1595
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mBTText:Landroid/widget/TextView;

    .line 1596
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v2}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/uitl/Utils;->isBTConnected(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateBluetooth(Z)V

    :cond_10
    const v2, 0x7f080064

    .line 1599
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_11

    .line 1601
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanTmp:Landroid/widget/TextView;

    :cond_11
    const v2, 0x7f080060

    .line 1603
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_12

    .line 1605
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanOil:Landroid/widget/TextView;

    :cond_12
    const v2, 0x7f080062

    .line 1607
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_13

    .line 1609
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanSafe:Landroid/widget/TextView;

    :cond_13
    const v2, 0x7f080061

    .line 1611
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_14

    .line 1613
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanParking:Landroid/widget/TextView;

    :cond_14
    const v2, 0x7f08006f

    .line 1616
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_15

    .line 1618
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v3, v2}, Lcom/android/launcher2/popuView/MainCustomer;->access$1702(Lcom/android/launcher2/popuView/MainCustomer;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_15
    const v2, 0x7f08006e

    .line 1620
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_16

    .line 1622
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v3, v2}, Lcom/android/launcher2/popuView/MainCustomer;->access$1802(Lcom/android/launcher2/popuView/MainCustomer;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_16
    const v2, 0x7f08008e

    .line 1625
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_17

    .line 1627
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v3, v2}, Lcom/android/launcher2/popuView/MainCustomer;->access$1902(Lcom/android/launcher2/popuView/MainCustomer;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_17
    const v2, 0x7f080066

    .line 1630
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_18

    .line 1632
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrIcon:Landroid/view/View;

    :cond_18
    const v2, 0x7f080068

    .line 1634
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_19

    .line 1636
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    :cond_19
    const v2, 0x7f080067

    .line 1638
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1a

    .line 1640
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrText:Landroid/widget/TextView;

    .line 1642
    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->update360Icon()V

    const v2, 0x7f080072

    .line 1644
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1b

    .line 1646
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iput-object v2, v3, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageBmwCar:Landroid/widget/ImageView;

    const/16 v2, 0x9

    const-string v3, "persist.sys.car.flag.index"

    .line 1647
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1648
    invoke-virtual {p0, v2}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateMainPageBmwCar(I)V

    :cond_1b
    const v2, 0x7f080059

    .line 1651
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1c

    .line 1653
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainAddTitle:Landroid/widget/TextView;

    :cond_1c
    const v2, 0x7f080058

    .line 1655
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1d

    .line 1657
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainAddSrcImg:Landroid/widget/ImageView;

    :cond_1d
    const v2, 0x7f080057

    .line 1659
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1e

    .line 1661
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainAddDel:Landroid/widget/ImageView;

    .line 1662
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    const v2, 0x7f080056

    .line 1664
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1666
    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainAdd:Landroid/view/View;

    .line 1667
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8AddViewInfo()V

    .line 1670
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1671
    iget p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageCount:I

    sub-int/2addr p1, v1

    if-lt p2, p1, :cond_20

    .line 1672
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2300(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$UIHandler;

    move-result-object p1

    new-instance p2, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;

    invoke-direct {p2, p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;-><init>(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/launcher2/popuView/MainCustomer$UIHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
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

    .line 1797
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2600(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/EdgeEffect;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2700(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/EdgeEffect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1798
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2600(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/EdgeEffect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 1799
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2700(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/EdgeEffect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 1800
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2600(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/EdgeEffect;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1801
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$2700(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/EdgeEffect;

    move-result-object p0

    invoke-virtual {p0, p2, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 1808
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    div-int/2addr v0, v1

    .line 1809
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

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez p1, :cond_1

    .line 1811
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v6

    if-nez v6, :cond_0

    .line 1812
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v5}, Lcom/android/launcher2/popuView/MainCustomer;->access$1400(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1814
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1400(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1816
    :cond_1
    iget v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageCount:I

    sub-int/2addr v6, v3

    if-ne p1, v6, :cond_3

    .line 1817
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v6

    if-nez v6, :cond_2

    .line 1818
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v5}, Lcom/android/launcher2/popuView/MainCustomer;->access$1500(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1820
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1500(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1823
    :cond_3
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v1

    if-nez v1, :cond_5

    .line 1824
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1400(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1825
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1400(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1827
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1500(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1828
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1500(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1831
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1500(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1832
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1400(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_0
    if-eq v0, p1, :cond_8

    .line 1835
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer;->access$2800(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getmMMIKeyRegion()I

    move-result v0

    if-eq v0, v3, :cond_7

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-nez v0, :cond_8

    .line 1836
    :cond_7
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    mul-int/2addr v0, p1

    .line 1837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageSelected: index="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->setSelectViewByIndex(IZZ)V

    .line 1840
    :cond_8
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-eq v0, v3, :cond_9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 1841
    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageCount:I

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher2/popuView/MainCustomer;->setPageIndex(II)V

    :cond_a
    return-void
.end method

.method public release()V
    .locals 0

    .line 1406
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0}, Lcom/carocean/navicar/MMIKeyHelper;->clear()V

    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2027
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$3100(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/ArrayList;)V

    .line 2028
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8AddViewInfo()V

    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2017
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2402(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2018
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8AddViewInfo()V

    return-void
.end method

.method public setSelectView(IZZ)V
    .locals 8

    .line 1734
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

    .line 1735
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    array-length v5, v5

    if-ge v3, v5, :cond_3

    move v5, v0

    .line 1736
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsId:[[I

    aget-object v7, v6, v3

    array-length v7, v7

    if-ge v5, v7, :cond_1

    .line 1737
    aget-object v6, v6, v3

    aget v6, v6, v5

    if-ne p1, v6, :cond_0

    .line 1739
    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

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

    .line 1746
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

    if-ltz v2, :cond_5

    .line 1748
    iput v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    .line 1749
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1750
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    goto :goto_4

    .line 1752
    :cond_4
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    :goto_4
    if-eqz p2, :cond_5

    .line 1755
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$800(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v4, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_5
    return-void
.end method

.method public setSelectViewByIndex(IZZ)V
    .locals 4

    .line 1761
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

    if-ltz p1, :cond_1

    .line 1763
    iput p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    .line 1764
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1765
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    div-int v3, v1, v2

    aget-object v0, v0, v3

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    goto :goto_0

    .line 1767
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    div-int v3, v1, v2

    aget-object v0, v0, v3

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 1770
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$800(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    div-int/2addr p2, p0

    invoke-virtual {p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public snap2Left()V
    .locals 5

    .line 1391
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    div-int/2addr v0, v1

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v1, v0

    .line 1394
    iput v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    .line 1395
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    goto :goto_0

    .line 1398
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 1400
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$800(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public snap2Right()V
    .locals 6

    .line 1376
    iget v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    div-int/2addr v0, v1

    .line 1377
    iget v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    add-int/2addr v0, v3

    mul-int/2addr v1, v0

    .line 1379
    iput v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    .line 1380
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1381
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mID8MainPageIconsView:[[Landroid/view/View;

    aget-object v2, v2, v0

    iget v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    rem-int/2addr v4, v5

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    goto :goto_0

    .line 1383
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMainPageIconsView:[[Landroid/view/View;

    aget-object v2, v2, v0

    iget v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mSelectIndex:I

    iget v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    rem-int/2addr v4, v5

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 1385
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$800(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public update360Icon()V
    .locals 9

    .line 1306
    sget v0, Lcom/android/launcher2/LauncherApplication;->m360Type:I

    const v1, 0x7f0c0057

    const v2, 0x7f070077

    const v3, 0x7f07006c

    if-nez v0, :cond_6

    .line 1307
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrIcon:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const-string v0, "persist.sys.dvr_cvbs"

    const/4 v4, 0x0

    .line 1308
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v5, 0x7f0c00a6

    const v6, 0x7f0c00a5

    const v7, 0x7f07007a

    const-string v8, "com.txznet.webchat"

    if-nez v0, :cond_3

    const-string v0, "persist.sys.front_camera"

    .line 1309
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1313
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v7, 0x7f0700a2

    :goto_0
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1314
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1315
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1321
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    const v2, 0x7f0c0083

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1322
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 1326
    :cond_3
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1327
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1330
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1331
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1332
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 1336
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrIcon:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1337
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1338
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrText:Landroid/widget/TextView;

    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    return-void

    .line 1344
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrIcon:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrText:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 1345
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1346
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrTitle:Landroid/widget/TextView;

    const v2, 0x7f0c0062

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1347
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mDvrText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2011
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2900(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/ArrayList;)V

    .line 2012
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$3000(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/ArrayList;)V

    .line 2013
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8AddViewInfo()V

    return-void
.end method

.method public final updateBluetooth(Z)V
    .locals 2

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBluetooth connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBTText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mBTText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-boolean v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mBTConnected:Z

    if-eq v0, p1, :cond_2

    .line 1356
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mBTText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v1, 0x7f0c0067

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0068

    .line 1357
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1359
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mBTConnected:Z

    :cond_2
    return-void
.end method

.method public updateCarInfo(I[B)V
    .locals 8

    const/16 v0, 0x12

    const-string v1, "%s%s"

    const/4 v2, 0x1

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq p1, v0, :cond_5

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    goto/16 :goto_7

    .line 1896
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1, p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$602(Lcom/android/launcher2/popuView/MainCustomer;[B)[B

    .line 1897
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanOil:Landroid/widget/TextView;

    if-eqz p1, :cond_10

    .line 1898
    aget-byte p2, p2, v5

    and-int/2addr p2, v3

    int-to-float p2, p2

    const/high16 v0, 0x43000000    # 128.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    .line 1900
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$300(Lcom/android/launcher2/popuView/MainCustomer;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x3e872b02    # 0.264f

    mul-float/2addr p2, p1

    .line 1903
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanOil:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->dfone:Ljava/text/DecimalFormat;

    float-to-double v6, p2

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$300(Lcom/android/launcher2/popuView/MainCustomer;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Gal"

    goto :goto_0

    :cond_2
    const-string p0, "L"

    :goto_0
    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1905
    :cond_3
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$300(Lcom/android/launcher2/popuView/MainCustomer;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "0Gal"

    goto :goto_1

    :cond_4
    const-string p0, "0L"

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1855
    :cond_5
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1, p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$502(Lcom/android/launcher2/popuView/MainCustomer;[B)[B

    .line 1856
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanTmp:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/4 p1, 0x5

    .line 1857
    aget-byte p1, p2, p1

    and-int/2addr p1, v3

    add-int/lit8 v0, p1, -0x50

    int-to-float v0, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    .line 1859
    iget-object v6, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v6}, Lcom/android/launcher2/popuView/MainCustomer;->access$400(Lcom/android/launcher2/popuView/MainCustomer;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/high16 v6, 0x42000000    # 32.0f

    const v7, 0x3fe66666    # 1.8f

    mul-float/2addr v0, v7

    add-float/2addr v0, v6

    :cond_6
    if-eq p1, v3, :cond_7

    .line 1864
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->dfone:Ljava/text/DecimalFormat;

    float-to-double v6, v0

    invoke-virtual {p1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    const-string p1, "--.-"

    .line 1866
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanTmp:Landroid/widget/TextView;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$400(Lcom/android/launcher2/popuView/MainCustomer;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "\u2109"

    goto :goto_3

    :cond_8
    const-string p1, " \u2103"

    :goto_3
    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1868
    :cond_9
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanSafe:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    .line 1869
    aget-byte p1, p2, v5

    and-int/lit8 p1, p1, 0x4

    const-string v0, ""

    if-eqz p1, :cond_c

    .line 1871
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1872
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanSafe:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1874
    :cond_a
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanSafe:Landroid/widget/TextView;

    const v0, 0x7f0c006f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1876
    :goto_4
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanSafe:Landroid/widget/TextView;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v4, 0x8

    :cond_b
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 1878
    :cond_c
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1879
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanSafe:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1881
    :cond_d
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanSafe:Landroid/widget/TextView;

    const v0, 0x7f0c0070

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1883
    :goto_5
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanSafe:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1886
    :cond_e
    :goto_6
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mCanParking:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    .line 1887
    aget-byte p1, p2, v5

    and-int/2addr p1, v2

    if-eqz p1, :cond_f

    const p1, 0x7f0c006d

    .line 1889
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    :cond_f
    const p1, 0x7f0c006e

    .line 1891
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_10
    :goto_7
    return-void
.end method

.method public updateID8Theme(I)V
    .locals 0

    .line 1913
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8BackgroundRes(I)V

    .line 1914
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8TitleColor(I)V

    .line 1915
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8ThemeText(I)V

    return-void
.end method

.method public updateIEText()V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mIEText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer;->access$1300(Lcom/android/launcher2/popuView/MainCustomer;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1367
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mIEText:Landroid/widget/TextView;

    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1369
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mIEText:Landroid/widget/TextView;

    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateMainPageBmwCar(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer;->mCarFlagId:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1294
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer;->mCarFlagId:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 1296
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageBmwCar:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1297
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageBmwCar:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mCarFlagId:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method
