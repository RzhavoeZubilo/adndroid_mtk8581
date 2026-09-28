.class public Lcom/android/launcher2/uitl/Function;
.super Ljava/lang/Object;
.source "Function.java"


# static fields
.field public static final ALLAPP_ACTIVITY:Ljava/lang/String; = "com.yecon.carsetting.AllAppActivity"

.field public static final CALENDAR_ACTIVITY:Ljava/lang/String; = "com.yecon.carsetting.Calendar"

.field public static final CAR_SETTING_TOUCHCALIBRATION_ACTIVITY:Ljava/lang/String; = "com.yecon.carsetting.TouchCalibrationMainActivity"

.field public static final CHROME_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"

.field public static final CHROME_START_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.chrome.Main"

.field public static final DVR_PACKAGE_NAME:Ljava/lang/String; = "com.anwensoft.cardvr"

.field public static final DVR_START_ACTIVITY:Ljava/lang/String; = "com.anwensoft.cardvr.ui.MainActivity"

.field public static final EASYLINK_PACKAGE_NAME:Ljava/lang/String; = "net.easyconn"

.field public static final EASYLINK_PROXY_PACKAGE_NAME:Ljava/lang/String; = "com.yecon.carsetting"

.field public static final EASYLINK_PROXY_START_ACTIVITY:Ljava/lang/String; = "com.yecon.carsetting.PhoneLinkActivity"

.field public static final EASYLINK_START_ACTIVITY:Ljava/lang/String; = "net.easyconn.WelcomeActivity"

.field private static final TAG:Ljava/lang/String; = "Function"

.field public static final USER_GUIDE_ACTIVITY:Ljava/lang/String; = "com.yecon.carsetting.UserGuideActivity"

.field public static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.txznet.webchat"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 119
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static onAUX()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x5e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x6

    aput-byte v3, v0, v1

    const-string v1, "persist.sys.host_type"

    .line 166
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 168
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public static onBT(Landroid/content/Context;)V
    .locals 3

    const-string v0, "persist.sys.original_bt"

    const/4 v1, 0x0

    .line 38
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "persist.sys.lt9211.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/android/launcher2/uitl/Function;->startOriginalBT()V

    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.autochips.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_skip_extra

    const-string v1, "BTFragmentId"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_skip_extra
    .line 40
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/Function;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    :goto_1
    return-void
.end method

.method public static onCalibartion(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onCarInfo(Landroid/content/Context;)V
    .locals 3

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.can.activity"

    const-string v2, "com.can.ui.CarInfo"

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/Function;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static onCarMedia(Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-static {}, Lcom/android/launcher2/uitl/Function;->startCarMedia()V

    return-void
.end method

.method public static onCarlife(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onChrome(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 34
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/Function;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static onLCDvr(Landroid/content/Context;)V
    .locals 3

    const/4 p0, 0x4

    new-array v0, p0, [B

    const/16 v1, -0x5e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    const-string p0, "persist.sys.host_type"

    .line 157
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-byte p0, p0

    const/4 v1, 0x2

    aput-byte p0, v0, v1

    const/4 p0, 0x3

    aput-byte v2, v0, p0

    .line 159
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public static onMusic(Landroid/content/Context;)V
    .locals 2

    const-string v0, "persist.sys.music_package"

    const-string v1, "com.ckx.music"

    .line 47
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/Function;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static onNavigation(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "persist.sys.navi_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/Function;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static onRadio(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onSetDatetime(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onSetWeatherCity(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onSettings(Landroid/content/Context;)V
    .locals 3

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.carocean.settings"

    const-string v2, "com.carocean.settings.CustomSettingActivity"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/Function;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static onVideo(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.ckx.video"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/Function;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static onZLink(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.zjinnova.zlink"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/Function;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static openRear360()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x5e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x5

    aput-byte v3, v0, v1

    const-string v1, "persist.sys.host_type"

    .line 175
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 177
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-static {p0, p1, v0}, Lcom/android/launcher2/uitl/Function;->startActivity(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0

    return p0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/high16 p2, 0x10000000

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static startCarMedia()V
    .locals 5

    const-string v0, "persist.sys.lt9211.enable"

    const/4 v1, 0x0

    .line 128
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    aput-byte v2, v0, v2

    const-string v2, "persist.sys.host_type"

    .line 132
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 133
    sget-object v1, Lcom/android/launcher2/uitl/Function;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send host type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.carocean.rearcamera"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "navi.intent.action.ACTION_ORIGINAL_CAMERA"

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xffeb01

    const-string v2, "CMD_CODE"

    .line 139
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private static startOriginalBT()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x5e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v1, v0, v1

    const-string v3, "persist.sys.host_type"

    .line 148
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 150
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method
