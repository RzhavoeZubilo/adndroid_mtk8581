.class public Lcom/carocean/navicar/util/ZHTDOEMManager;
.super Ljava/lang/Object;
.source "ZHTDOEMManager.java"


# static fields
.field public static final BASE_CUSTOM_ID:Ljava/lang/String; = "K2_000_00_00"

.field public static final DZSJ_CUSTOM_ID:Ljava/lang/String; = "DZSJ_01"

.field public static final JLY_CUSTOM_ID:Ljava/lang/String; = "JLY_01"

.field public static final KLD_CUSTOM_ID:Ljava/lang/String; = "KLD"

.field public static final LC_CUSTOM_ID:Ljava/lang/String; = "K2_000_00_01"

.field public static final LFE_CUSTOM_ID:Ljava/lang/String; = "LFE"

.field public static final MRW_CUSTOM_ID:Ljava/lang/String; = "MRW_01"

.field private static final TAG:Ljava/lang/String; = "ZHTDOEMManager"

.field public static final YZG_CUSTOM_ID:Ljava/lang/String; = "YZG_01"

.field public static final YZG_CUSTOM_ID2:Ljava/lang/String; = "YZG_02"

.field public static final ZLH_CUSTOM_ID:Ljava/lang/String; = "ZLH"

.field private static chiptyp:Ljava/lang/String; = "sc310k"

.field private static customId:Ljava/lang/String; = "K2_000_00_00"

.field private static gmsEnable:Z = false

.field private static isInit:Z = false

.field private static mDensityDpi:I = 0xf0

.field private static mDisplayHeight:I = 0x2d0

.field private static mDisplayWidth:I = 0x780

.field private static mRotation:I = 0x0

.field private static oemName:Ljava/lang/String; = "bmw"

.field private static final test:Z = false

.field private static uiTheme:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureID8()Z
    .locals 2

    .line 287
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isBmw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getChipType()Ljava/lang/String;
    .locals 2

    .line 186
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 187
    sget-object v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->chiptyp:Ljava/lang/String;

    const-string v1, "sc310k"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "8581"

    return-object v0

    .line 189
    :cond_0
    sget-object v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->chiptyp:Ljava/lang/String;

    const-string v1, "sc665s"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "6125"

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private static getCustomerID()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 114
    sget-object v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->customId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDisplayHeight()I
    .locals 1

    .line 291
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 292
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    return v0
.end method

.method public static getDisplayWidth()I
    .locals 1

    .line 296
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 297
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    return v0
.end method

.method private static getOEM()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 65
    sget-object v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->oemName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUIThemeSubid()I
    .locals 2

    .line 181
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    const-string v0, "persist.sys.ui_theme_sub"

    const/4 v1, 0x1

    .line 182
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUIThemeid()I
    .locals 1

    .line 174
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 175
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isJLYCustomer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isBenz()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 177
    :cond_0
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->uiTheme:I

    return v0
.end method

.method public static gmsEnable()Z
    .locals 1

    .line 282
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 283
    sget-boolean v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->gmsEnable:Z

    return v0
.end method

.method public static hasTable()Z
    .locals 4

    .line 261
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 263
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isAudi()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isBenz()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isVolvo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 264
    :cond_1
    :goto_0
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v2, 0x780

    if-ge v0, v2, :cond_5

    .line 265
    sget v2, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_2

    const/16 v3, 0x500

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x2d0

    if-eq v2, v3, :cond_3

    const/16 v3, 0x258

    if-ne v2, v3, :cond_4

    :cond_3
    const/16 v2, 0x640

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method private static initParams()V
    .locals 4

    .line 40
    sget-boolean v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->isInit:Z

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 42
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 43
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    .line 44
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    .line 45
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const-string v1, "persist.sys.ui_theme"

    const/4 v2, 0x1

    .line 46
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/carocean/navicar/util/ZHTDOEMManager;->uiTheme:I

    const-string v1, "persist.sys.custom_id"

    const-string v3, "K2_000_00_00"

    .line 47
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/carocean/navicar/util/ZHTDOEMManager;->customId:Ljava/lang/String;

    const-string v1, "ro.build.chip.type"

    const-string v3, "sc310k"

    .line 48
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/carocean/navicar/util/ZHTDOEMManager;->chiptyp:Ljava/lang/String;

    const-string v1, "ro.build.zhtd.oem"

    const-string v3, "bmw"

    .line 49
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/carocean/navicar/util/ZHTDOEMManager;->oemName:Ljava/lang/String;

    const-string v1, "ro.build.gms.enable"

    .line 50
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/carocean/navicar/util/ZHTDOEMManager;->gmsEnable:Z

    .line 51
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    sput v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mRotation:I

    .line 52
    sput-boolean v2, Lcom/carocean/navicar/util/ZHTDOEMManager;->isInit:Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initParams: mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDensityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZHTDOEMManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initParams: uiTheme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/carocean/navicar/util/ZHTDOEMManager;->uiTheme:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",customId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/carocean/navicar/util/ZHTDOEMManager;->customId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",chiptyp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/carocean/navicar/util/ZHTDOEMManager;->chiptyp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/carocean/navicar/util/ZHTDOEMManager;->mRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static is1024x460And160dpi()Z
    .locals 2

    .line 252
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 253
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is1024x600And160dpi()Z
    .locals 2

    .line 247
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 248
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is1280x480And160dpi()Z
    .locals 2

    .line 242
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 243
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is1280x640And160dpi()Z
    .locals 2

    .line 237
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 238
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x280

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is1280x720And240dpi()Z
    .locals 2

    .line 232
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 233
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is1600x600And240dpi()Z
    .locals 2

    .line 227
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 228
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x640

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is1600x720And240dpi()Z
    .locals 2

    .line 222
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 223
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x640

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is1920x1080And240dpi()Z
    .locals 2

    .line 197
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 198
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x438

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is1920x720And240dpi()Z
    .locals 2

    .line 207
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 208
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is1920x720And240dpiR90()Z
    .locals 3

    .line 212
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 213
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/4 v1, 0x1

    const/16 v2, 0x780

    if-ne v0, v2, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v2, 0x2d0

    if-ne v0, v2, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mRotation:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static is1920x860And240dpi()Z
    .locals 2

    .line 202
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 203
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x35c

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is1920x932And240dpi()Z
    .locals 2

    .line 217
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 218
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayWidth:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDisplayHeight:I

    const/16 v1, 0x3a4

    if-ne v0, v1, :cond_0

    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is240dpi()Z
    .locals 2

    .line 256
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 257
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->mDensityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAudi()Z
    .locals 2

    .line 81
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBenz()Z
    .locals 2

    .line 77
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "benz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBmw()Z
    .locals 2

    .line 85
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bmw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDZSJCustomer()Z
    .locals 2

    .line 157
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DZSJ_01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGl8()Z
    .locals 2

    .line 101
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gl8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHQH5()Z
    .locals 2

    .line 105
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hqh5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJLYCustomer()Z
    .locals 2

    .line 153
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JLY_01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKDLK()Z
    .locals 2

    .line 69
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kdlk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKLDCustomer()Z
    .locals 2

    .line 161
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KLD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLCCustomer()Z
    .locals 2

    .line 117
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K2_000_00_01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLCCustomerTheme1()Z
    .locals 2

    .line 149
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K2_000_00_01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isLFECustomer()Z
    .locals 2

    .line 165
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LFE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLRTheme_01()Z
    .locals 2

    .line 169
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->initParams()V

    .line 170
    sget v0, Lcom/carocean/navicar/util/ZHTDOEMManager;->uiTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1920x720And240dpi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1920x1080And240dpi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLandRover()Z
    .locals 2

    .line 89
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LandRover"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLexus()Z
    .locals 2

    .line 73
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lexus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMRWCustomer()Z
    .locals 2

    .line 133
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRW_01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMotorcycle()Z
    .locals 2

    .line 93
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "motorcycle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPublicCustomer()Z
    .locals 2

    .line 121
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K2_000_00_00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTOYOTACROWN()Z
    .locals 2

    .line 97
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVolvo()Z
    .locals 2

    .line 109
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getOEM()Ljava/lang/String;

    move-result-object v0

    const-string v1, "volvo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isYZGCustomer()Z
    .locals 2

    .line 137
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YZG_01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isYZGCustomer1()Z
    .locals 2

    .line 141
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YZG_02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isYZGCustomerUI1()Z
    .locals 3

    .line 145
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "YZG_01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isZLHCustomer()Z
    .locals 2

    .line 125
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isZLHCustomerUI1()Z
    .locals 3

    .line 129
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZLH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static testOEM()Ljava/lang/String;
    .locals 1

    const-string v0, "bmw"

    return-object v0
.end method
