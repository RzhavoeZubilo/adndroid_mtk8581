.class public Lcom/android/launcher2/popuView/SetGridView;
.super Landroid/widget/GridView;
.source "SetGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popuView/SetGridView$GridItem;
    }
.end annotation


# static fields
.field public static final BKL_HIGH:I = 0x0

.field public static final BKL_LOW:I = 0x2

.field public static final BKL_MID:I = 0x1

.field public static final BKL_OFF:I = 0x3

.field public static final BRIGHTNESS_HIGH:I = 0xf0

.field public static final BRIGHTNESS_LOW:I = 0x46

.field public static final BRIGHTNESS_MID:I = 0xb4

.field public static final BRIGHTNESS_OFF:I = -0x1

.field public static final BRIGHT_TAB:[I

.field private static final DBG_BKL:Z = true

.field public static final IMAGE_TAB:[I

.field public static final STRING_TAB:[I

.field public static final SYSTEM_REBOOT_LAUNCHER:Ljava/lang/String; = "system_reboot_launcher"

.field public static final TAG:Ljava/lang/String; = "SetGridView"

.field public static mLastStateIsOff:Z = false

.field public static mResCnt:I


# instance fields
.field fbox_image_array_top:[I

.field private fbox_name_array_top:[I

.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mParent:Landroid/widget/RelativeLayout;

.field private mTextView:Landroid/widget/TextView;

.field private mWifiAPOnOff:Z

.field pm:Landroid/os/PowerManager;

.field power:Landroid/os/IPowerManager;

.field private simperAdapter:Landroid/widget/SimpleAdapter;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 74
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/popuView/SetGridView;->BRIGHT_TAB:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 75
    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/launcher2/popuView/SetGridView;->IMAGE_TAB:[I

    new-array v0, v0, [I

    .line 79
    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/launcher2/popuView/SetGridView;->STRING_TAB:[I

    return-void

    :array_0
    .array-data 4
        0xf0
        0xb4
        0x46
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x7f0701da
        0x7f0701d7
        0x7f0701dd
    .end array-data

    :array_2
    .array-data 4
        0x7f0c003c
        0x7f0c003e
        0x7f0c003d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x7

    new-array v0, p1, [I

    .line 83
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    new-array p1, p1, [I

    .line 87
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/SetGridView;->mWifiAPOnOff:Z

    .line 105
    invoke-virtual {p0, p0}, Lcom/android/launcher2/popuView/SetGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c003b
        0x7f0c0033
        0x7f0c0041
        0x7f0c0039
        0x7f0c0032
        0x7f0c003f
        0x7f0c0040
    .end array-data

    :array_1
    .array-data 4
        0x7f0701dc
        0x7f0701c0
        0x7f0701e5
        0x7f0701ce
        0x7f0701bd
        0x7f0701df
        0x7f0701e2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x7

    new-array v0, p2, [I

    .line 83
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    new-array p2, p2, [I

    .line 87
    fill-array-data p2, :array_1

    iput-object p2, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/android/launcher2/popuView/SetGridView;->mWifiAPOnOff:Z

    .line 116
    iput-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/SetGridView;->initData(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0, p0}, Lcom/android/launcher2/popuView/SetGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    iget-object p2, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/popuView/SetGridView;->getMenuAdapter([I[I)Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/SetGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c003b
        0x7f0c0033
        0x7f0c0041
        0x7f0c0039
        0x7f0c0032
        0x7f0c003f
        0x7f0c0040
    .end array-data

    :array_1
    .array-data 4
        0x7f0701dc
        0x7f0701c0
        0x7f0701e5
        0x7f0701ce
        0x7f0701bd
        0x7f0701df
        0x7f0701e2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x7

    new-array p2, p1, [I

    .line 83
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    new-array p1, p1, [I

    .line 87
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/SetGridView;->mWifiAPOnOff:Z

    .line 130
    invoke-virtual {p0, p0}, Lcom/android/launcher2/popuView/SetGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c003b
        0x7f0c0033
        0x7f0c0041
        0x7f0c0039
        0x7f0c0032
        0x7f0c003f
        0x7f0c0040
    .end array-data

    :array_1
    .array-data 4
        0x7f0701dc
        0x7f0701c0
        0x7f0701e5
        0x7f0701ce
        0x7f0701bd
        0x7f0701df
        0x7f0701e2
    .end array-data
.end method

.method private clear(Landroid/content/Context;)V
    .locals 6

    const-string p0, "activity"

    .line 392
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 393
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 395
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 397
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 399
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pid---->>>>>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processName->> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importance-->>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 404
    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x12c

    if-le v2, v4, :cond_0

    move v2, v0

    .line 407
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 409
    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearMemory()V
    .locals 12

    .line 417
    iget-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 418
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x64

    .line 419
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 421
    iget-object v2, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/launcher2/popuView/SetGridView;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v2

    const-string v4, "persist.sys.maps"

    const-string v5, "nothing"

    .line 425
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "$$$$$$$$$$$$$$$$#$$$$$$$$$$$$"

    :cond_0
    const/4 v5, 0x0

    if-eqz v1, :cond_3

    move v6, v5

    move v7, v6

    .line 432
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 433
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 435
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v10, 0xc8

    if-le v9, v10, :cond_2

    .line 436
    iget-object v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move v9, v5

    .line 437
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_2

    .line 440
    aget-object v10, v8, v9

    const-string v11, "#"

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    goto :goto_2

    .line 442
    :cond_1
    aget-object v10, v8, v9

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v7, v5

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher2/popuView/SetGridView;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 454
    iget-object v4, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SetGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v6, 0x7f0c0038

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v5

    sub-long/2addr v0, v2

    .line 455
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 454
    invoke-virtual {p0, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 456
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getAvailMemory(Landroid/content/Context;)J
    .locals 2

    const-string p0, "activity"

    .line 461
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 462
    new-instance p1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 463
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 464
    iget-wide p0, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v0, 0x100000

    div-long/2addr p0, v0

    return-wide p0
.end method

.method private getMenuAdapter([I[I)Landroid/widget/ListAdapter;
    .locals 6

    .line 375
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 376
    :goto_0
    array-length v1, p1

    const-string v3, "itemText"

    const-string v4, "itemImage"

    if-ge v0, v1, :cond_0

    .line 377
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 378
    aget v5, p2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v4, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    new-instance p1, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    const p2, 0x7f0a0035

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->simperAdapter:Landroid/widget/SimpleAdapter;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f080045
        0x7f080046
    .end array-data
.end method

.method private setBrightnessImageResource()V
    .locals 6

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SetGridView;->GetBacklightLevel()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 164
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 165
    aget v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v0, v3, :cond_0

    aget v3, v1, v5

    if-ge v0, v3, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    const v1, 0x7f0c003b

    aput v1, v0, v2

    .line 167
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    const v0, 0x7f0701dd

    aput v0, p0, v2

    .line 168
    sput v4, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    goto :goto_0

    .line 170
    :cond_0
    aget v3, v1, v5

    if-lt v0, v3, :cond_1

    aget v3, v1, v4

    if-ge v0, v3, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    const v1, 0x7f0c003e

    aput v1, v0, v2

    .line 172
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    const v0, 0x7f0701d7

    aput v0, p0, v2

    .line 173
    sput v5, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    goto :goto_0

    .line 175
    :cond_1
    aget v1, v1, v4

    if-lt v0, v1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    const v1, 0x7f0c003c

    aput v1, v0, v2

    .line 177
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    const v0, 0x7f0701da

    aput v0, p0, v2

    .line 178
    sput v2, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
    .end array-data
.end method

.method private setWlanImageResource()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    const/4 v0, 0x1

    const v2, 0x7f0701c2

    aput v2, p0, v0

    const v0, 0x7f0701e6

    .line 150
    aput v0, p0, v1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    const v0, 0x7f0701e7

    aput v0, p0, v1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public GetBacklightLevel()I
    .locals 2

    .line 217
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public RebootSystem()Z
    .locals 3

    const/4 v0, 0x0

    .line 205
    :try_start_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->power:Landroid/os/IPowerManager;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {p0, v2, v1, v0}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    const-string v1, "SetGridView"

    const-string v2, "RemoteException when RebootSystem: "

    .line 209
    invoke-static {v1, v2, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public ResetAdapter()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/android/launcher2/popuView/SetGridView;->setWlanImageResource()V

    .line 125
    invoke-direct {p0}, Lcom/android/launcher2/popuView/SetGridView;->setBrightnessImageResource()V

    .line 126
    iget-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    iget-object v1, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/popuView/SetGridView;->getMenuAdapter([I[I)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/SetGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public SetBacklightMode()I
    .locals 8

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SetGridView;->GetBacklightLevel()I

    move-result v0

    .line 227
    sget-boolean v1, Lcom/android/launcher2/popuView/SetGridView;->mLastStateIsOff:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0xb5

    const/4 v5, 0x2

    const-string v6, "SetGridView"

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 229
    sput-boolean v3, Lcom/android/launcher2/popuView/SetGridView;->mLastStateIsOff:Z

    .line 230
    sput v7, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    const-string v0, "Last state is OFF,so change to MID..."

    .line 233
    invoke-static {v6, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    .line 237
    sput v3, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    .line 238
    sget-object v0, Lcom/android/launcher2/popuView/SetGridView;->BRIGHT_TAB:[I

    aget v0, v0, v3

    const-string v1, "Re-loop,set to HIGH..."

    .line 240
    invoke-static {v6, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    sget v1, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    if-nez v1, :cond_2

    .line 243
    sput v7, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    .line 244
    sget-object v0, Lcom/android/launcher2/popuView/SetGridView;->BRIGHT_TAB:[I

    aget v0, v0, v7

    goto :goto_0

    :cond_2
    if-ne v1, v7, :cond_3

    .line 247
    sput v5, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    .line 248
    sget-object v0, Lcom/android/launcher2/popuView/SetGridView;->BRIGHT_TAB:[I

    aget v0, v0, v5

    goto :goto_0

    :cond_3
    if-ne v1, v5, :cond_4

    .line 251
    sput v2, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    .line 252
    sget-object v0, Lcom/android/launcher2/popuView/SetGridView;->BRIGHT_TAB:[I

    aget v0, v0, v2

    .line 257
    :cond_4
    :goto_0
    sget v1, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    if-lt v1, v2, :cond_5

    .line 258
    sput v5, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    :cond_5
    const-string v1, "screen_brightness"

    if-gez v0, :cond_6

    .line 262
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v0, 0x46

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    sput-boolean v7, Lcom/android/launcher2/popuView/SetGridView;->mLastStateIsOff:Z

    const-string p0, "Jade, turn OFF BKL by Driver..."

    .line 266
    invoke-static {v6, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_6
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    :goto_1
    sget p0, Lcom/android/launcher2/popuView/SetGridView;->mResCnt:I

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public initData(Landroid/content/Context;)V
    .locals 1

    const-string v0, "wifi"

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    const-string p1, "power"

    .line 136
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->power:Landroid/os/IPowerManager;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->pm:Landroid/os/PowerManager;

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/popuView/SetGridView;->setBrightnessImageResource()V

    .line 142
    invoke-direct {p0}, Lcom/android/launcher2/popuView/SetGridView;->setBrightnessImageResource()V

    .line 143
    invoke-direct {p0}, Lcom/android/launcher2/popuView/SetGridView;->setWlanImageResource()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 184
    invoke-super {p0}, Landroid/widget/GridView;->onFinishInflate()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 276
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "   this position is "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "&&&&"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "hede"

    invoke-static {p4, p2}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->mParent:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    .line 279
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->mImageView:Landroid/widget/ImageView;

    .line 280
    iget-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->mParent:Landroid/widget/RelativeLayout;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->mTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_b

    const p1, 0x7f0701c2

    const p5, 0x7f0701e7

    const/4 v0, 0x2

    if-eq p3, p4, :cond_9

    const/4 v1, 0x4

    if-eq p3, v0, :cond_3

    if-eq p3, v1, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    const/4 p1, 0x6

    if-eq p3, p1, :cond_0

    goto/16 :goto_3

    .line 347
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SetGridView;->RebootSystem()Z

    goto/16 :goto_3

    .line 339
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/popuView/SetGridView;->clearMemory()V

    goto/16 :goto_3

    .line 307
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "&&&&&"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;)V

    .line 309
    iget-object p3, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p3

    iget-object v2, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eq p3, v0, :cond_8

    .line 310
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p3

    iget-object v2, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez p3, :cond_4

    goto :goto_1

    .line 314
    :cond_4
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p3

    iget-object v2, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x3

    if-ne p3, v3, :cond_5

    .line 316
    invoke-virtual {v2, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 317
    iget-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    aput p5, p1, v0

    goto :goto_0

    .line 320
    :cond_5
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p3

    iget-object p5, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eq p3, p4, :cond_6

    .line 321
    invoke-virtual {p5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p3

    if-ne p3, v1, :cond_7

    .line 323
    :cond_6
    iget-object p3, p0, Lcom/android/launcher2/popuView/SetGridView;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p3, p4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 324
    iget-object p3, p0, Lcom/android/launcher2/popuView/SetGridView;->mImageView:Landroid/widget/ImageView;

    const p5, 0x7f0701e6

    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    iget-object p3, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    aput p5, p3, v0

    .line 326
    aput p1, p3, p4

    .line 328
    iput-boolean p2, p0, Lcom/android/launcher2/popuView/SetGridView;->mWifiAPOnOff:Z

    .line 330
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    iget-object p2, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/popuView/SetGridView;->getMenuAdapter([I[I)Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/SetGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->simperAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_8
    :goto_1
    return-void

    .line 293
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SetGridView;->setWifiApEnabled()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 295
    iget-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    const p2, 0x7f0701c1

    aput p2, p1, p4

    .line 296
    aput p5, p1, v0

    goto :goto_2

    .line 299
    :cond_a
    iget-object p2, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    aput p1, p2, p4

    .line 302
    :goto_2
    iget-object p1, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    iget-object p2, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/popuView/SetGridView;->getMenuAdapter([I[I)Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/SetGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->simperAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 285
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SetGridView;->SetBacklightMode()I

    move-result p1

    .line 286
    iget-object p3, p0, Lcom/android/launcher2/popuView/SetGridView;->mImageView:Landroid/widget/ImageView;

    sget-object p4, Lcom/android/launcher2/popuView/SetGridView;->IMAGE_TAB:[I

    aget p5, p4, p1

    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object p3, p0, Lcom/android/launcher2/popuView/SetGridView;->mTextView:Landroid/widget/TextView;

    sget-object p5, Lcom/android/launcher2/popuView/SetGridView;->STRING_TAB:[I

    aget v0, p5, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object p3, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_name_array_top:[I

    aget p5, p5, p1

    aput p5, p3, p2

    .line 289
    iget-object p0, p0, Lcom/android/launcher2/popuView/SetGridView;->fbox_image_array_top:[I

    aget p1, p4, p1

    aput p1, p0, p2

    :goto_3
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Landroid/widget/GridView;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setWifiApEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
