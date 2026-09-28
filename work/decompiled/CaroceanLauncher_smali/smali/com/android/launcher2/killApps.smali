.class public Lcom/android/launcher2/killApps;
.super Ljava/lang/Object;
.source "killApps.java"


# static fields
.field public static BACKGROUND_WHITE_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MAP_PKG_NAME_LIST:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "killApps"

.field static final killOneWhiteList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "com.yecon.launcher1"

    const-string v1, "com.can.activity"

    const-string v2, "com.autonavi.amapauto"

    const-string v3, "com.yecon.fmradio"

    const-string v4, "com.ckx.music"

    const-string v5, "com.ckx.video"

    const-string v6, "cn.kuwo.kwmusiccar"

    const-string v7, "cn.kuwo.kwmusiccas"

    const-string v8, "com.wedrive.android.welink"

    const-string v9, "com.didi365.miudrive.navi"

    const-string v10, "com.yecon.meminfo"

    const-string v11, "com.autochips.bluetooth"

    const-string v12, "com.ankai.cardvr"

    const-string v13, "com.carocean.settings"

    const-string v14, "com.hcn.mcuupgrade"

    const-string v15, "net.easyconn"

    const-string v16, "com.txznet.music"

    const-string v17, "com.tencent.qqmusic"

    const-string v18, "com.kugou.android"

    const-string v19, "com.autochips.carplayapp"

    const-string v20, "com.ivicar.avm"

    const-string v21, "com.android.permissioncontroller"

    const-string v22, "com.txznet.smartadapter"

    const-string v23, "com.txznet.txz"

    const-string v24, "com.txznet.aipal"

    const-string v25, "com.zjinnova.zlink"

    const-string v26, "com.spotify.music"

    const-string v27, "com.huawei.hicar"

    .line 14
    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/killApps;->killOneWhiteList:[Ljava/lang/String;

    const-string v1, "navi"

    const-string v2, "mapbarmap"

    const-string v3, "sygic"

    const-string v4, "cld"

    const-string v5, "migo"

    const-string v6, "obile.mainframe"

    const-string v7, "map"

    const-string v8, "igo"

    const-string v9, "papago"

    const-string v10, "kingwaytek"

    const-string v11, "com.waze"

    .line 45
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/killApps;->MAP_PKG_NAME_LIST:[Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/killApps;->BACKGROUND_WHITE_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static killOneProcess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, ""

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "activity"

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    move v1, v0

    .line 63
    :goto_0
    sget-object v2, Lcom/android/launcher2/killApps;->killOneWhiteList:[Ljava/lang/String;

    array-length v3, v2

    const-string v4, "killApps"

    if-ge v1, v3, :cond_3

    .line 64
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launcher2---do not kill this whitelist app, name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_3
    :goto_1
    sget-object v1, Lcom/android/launcher2/killApps;->MAP_PKG_NAME_LIST:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 70
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launcher2---do not kill this map app, name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_5
    sget-object v0, Lcom/android/launcher2/killApps;->BACKGROUND_WHITE_LIST:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launcher2---do not kill this BACKGROUND_WHITE_LIST app, name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    if-eqz p0, :cond_7

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launcher2---has killed, name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method
