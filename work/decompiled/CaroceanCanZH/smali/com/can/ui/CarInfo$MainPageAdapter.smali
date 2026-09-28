.class Lcom/can/ui/CarInfo$MainPageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "CarInfo.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainPageAdapter"
.end annotation


# instance fields
.field public PageCount:I

.field private final mBmwPageLayoutIdID8:[I

.field private final mLexusPageLayoutId:[I

.field private final mLexusPageLayoutId_UI1:[I

.field private final mPageLayout:[Landroid/view/View;

.field private final mPageLayoutId:[I

.field private final mPageLayoutId_UI1:[I

.field private final mPageLayoutId_UI1_yzg:[I

.field private final mPageLayoutId_UI1_zlh:[I

.field private final mPageLayoutId_lc:[I

.field final synthetic this$0:Lcom/can/ui/CarInfo;


# direct methods
.method public constructor <init>(Lcom/can/ui/CarInfo;)V
    .locals 4

    .line 1037
    iput-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 983
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->PageCount:I

    new-array p1, v0, [I

    .line 984
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId:[I

    const/4 v0, 0x3

    new-array p1, v0, [I

    .line 989
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_lc:[I

    const/4 v0, 0x2

    new-array p1, v0, [I

    .line 995
    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1:[I

    const/4 p1, 0x7

    new-array v0, p1, [I

    .line 1001
    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1_yzg:[I

    new-array v0, p1, [I

    .line 1012
    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1_zlh:[I

    new-array v0, v1, [I

    const v2, 0x7f0b0094

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 1023
    iput-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mLexusPageLayoutId:[I

    new-array v0, v1, [I

    const v2, 0x7f0b0095

    aput v2, v0, v3

    .line 1027
    iput-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mLexusPageLayoutId_UI1:[I

    new-array v0, v1, [I

    const v2, 0x7f0b0028

    aput v2, v0, v3

    .line 1031
    iput-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mBmwPageLayoutIdID8:[I

    .line 1038
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1039
    iput v1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->PageCount:I

    goto :goto_2

    .line 1041
    :cond_2
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomerUI1()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomerUI1()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1042
    :cond_3
    const/4 p1, 0x2

    iput p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->PageCount:I

    .line 1045
    :cond_4
    const/4 p1, 0x2

    iput p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->PageCount:I

    :goto_2
    const/4 p1, 0x2

    iput p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->PageCount:I

    iget p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->PageCount:I

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0040
        0x7f0b0039
    .end array-data

    :array_1
    .array-data 4
        0x7f0b003a
        0x7f0b002a
        0x7f0b0041
    .end array-data

    :array_2
    .array-data 4
        0x7f0b0040
        0x7f0b0039
    .end array-data

    :array_3
    .array-data 4
        0x7f0b002b
        0x7f0b002d
        0x7f0b002f
        0x7f0b0031
        0x7f0b0033
        0x7f0b0035
        0x7f0b0037
    .end array-data

    :array_4
    .array-data 4
        0x7f0b002c
        0x7f0b002e
        0x7f0b0030
        0x7f0b0032
        0x7f0b0034
        0x7f0b0036
        0x7f0b0038
    .end array-data
.end method

.method private updateID8Background(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f0700e3

    goto :goto_0

    :cond_1
    const p1, 0x7f0700f5

    goto :goto_0

    :cond_2
    const p1, 0x7f0700f2

    :goto_0
    if-eqz p1, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0}, Lcom/can/ui/CarInfo;->access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v1}, Lcom/can/ui/CarInfo;->access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 1067
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object p0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    return-void
.end method

.method private updateID8MeterProgressUI(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0700e5

    const p1, 0x7f0700e4

    goto :goto_0

    :cond_1
    const v1, 0x7f0700f7

    const p1, 0x7f0700f6

    goto :goto_0

    :cond_2
    const v1, 0x7f0700f4

    const p1, 0x7f0700f3

    :goto_0
    if-eqz v1, :cond_3

    .line 1088
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0}, Lcom/can/ui/CarInfo;->access$1700(Lcom/can/ui/CarInfo;)Lcom/can/ui/view/ID8SpeedMeter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1089
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0}, Lcom/can/ui/CarInfo;->access$1700(Lcom/can/ui/CarInfo;)Lcom/can/ui/view/ID8SpeedMeter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/can/ui/view/ID8SpeedMeter;->setSpeedProgressResource(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 1091
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0}, Lcom/can/ui/CarInfo;->access$1800(Lcom/can/ui/CarInfo;)Lcom/can/ui/view/ID8SpeedMeter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1092
    iget-object p0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1800(Lcom/can/ui/CarInfo;)Lcom/can/ui/view/ID8SpeedMeter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/can/ui/view/ID8SpeedMeter;->setRpmProgressResource(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1215
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 1145
    iget p0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->PageCount:I

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiateItem, position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1172
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1173
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1_zlh:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto/16 :goto_1

    .line 1175
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomerUI1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1176
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1_yzg:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto/16 :goto_1

    .line 1177
    :cond_2
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1178
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_lc:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto/16 :goto_1

    .line 1179
    :cond_3
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomerUI1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1180
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1_zlh:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto/16 :goto_1

    .line 1182
    :cond_4
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto/16 :goto_1

    .line 1184
    :cond_5
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1185
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mBmwPageLayoutIdID8:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto/16 :goto_1

    .line 1187
    :cond_6
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1188
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_lc:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto/16 :goto_1

    .line 1190
    :cond_7
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isBmw()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1191
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1_zlh:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto/16 :goto_1

    .line 1193
    :cond_8
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto/16 :goto_1

    .line 1158
    :cond_9
    :goto_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 1159
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1160
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1_zlh:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto :goto_1

    .line 1161
    :cond_a
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomerUI1()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1162
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1_yzg:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto :goto_1

    .line 1163
    :cond_b
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomerUI1()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1164
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayoutId_UI1_zlh:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto :goto_1

    .line 1166
    :cond_c
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mLexusPageLayoutId_UI1:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    goto :goto_1

    .line 1169
    :cond_d
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    iget-object v2, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mLexusPageLayoutId:[I

    aget v4, v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, p2

    .line 1199
    :goto_1
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1200
    iget-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-ne p2, p1, :cond_f

    .line 1201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "instantiateItem, initView = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    aget-object v0, v0, p2

    invoke-static {p1, v0}, Lcom/can/ui/CarInfo;->access$1900(Lcom/can/ui/CarInfo;Landroid/view/View;)V

    .line 1203
    iget-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$000(Lcom/can/ui/CarInfo;)[B

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1204
    iget-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    const/16 v0, 0x12

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$000(Lcom/can/ui/CarInfo;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/can/ui/CarInfo;->access$900(Lcom/can/ui/CarInfo;I[B)V

    .line 1206
    :cond_e
    iget-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$200(Lcom/can/ui/CarInfo;)[B

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1207
    iget-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    const/16 v0, 0x18

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$200(Lcom/can/ui/CarInfo;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/can/ui/CarInfo;->access$900(Lcom/can/ui/CarInfo;I[B)V

    .line 1210
    :cond_f
    iget-object p0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    aget-object p0, p0, p2

    return-object p0
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
    .locals 2

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/can/ui/CarInfo;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "page"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1131
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->mPageLayout:[Landroid/view/View;

    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    aget-object p1, v0, p1

    invoke-static {v1, p1}, Lcom/can/ui/CarInfo;->access$1900(Lcom/can/ui/CarInfo;Landroid/view/View;)V

    .line 1133
    iget-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$000(Lcom/can/ui/CarInfo;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1134
    iget-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    const/16 v0, 0x12

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$000(Lcom/can/ui/CarInfo;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/can/ui/CarInfo;->access$900(Lcom/can/ui/CarInfo;I[B)V

    .line 1136
    :cond_0
    iget-object p1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$200(Lcom/can/ui/CarInfo;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1137
    iget-object p0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    const/16 p1, 0x18

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$200(Lcom/can/ui/CarInfo;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/can/ui/CarInfo;->access$900(Lcom/can/ui/CarInfo;I[B)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public snap2Left()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0}, Lcom/can/ui/CarInfo;->access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0}, Lcom/can/ui/CarInfo;->access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public snap2Right()V
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0}, Lcom/can/ui/CarInfo;->access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->PageCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v0}, Lcom/can/ui/CarInfo;->access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/CarInfo$MainPageAdapter;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {v0, p0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public updateID8Theme(I)V
    .locals 0

    .line 1049
    invoke-direct {p0, p1}, Lcom/can/ui/CarInfo$MainPageAdapter;->updateID8Background(I)V

    .line 1050
    invoke-direct {p0, p1}, Lcom/can/ui/CarInfo$MainPageAdapter;->updateID8MeterProgressUI(I)V

    return-void
.end method
