.class public final Lcom/carocean/navicar/YeconMediaStore;
.super Ljava/lang/Object;
.source "YeconMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carocean/navicar/YeconMediaStore$YeconMediaArtistColumns;,
        Lcom/carocean/navicar/YeconMediaStore$YeconMediaAlbumColumns;,
        Lcom/carocean/navicar/YeconMediaStore$YeconMediaFilesColumns;,
        Lcom/carocean/navicar/YeconMediaStore$Support;,
        Lcom/carocean/navicar/YeconMediaStore$FileType;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTION_CKX_SCAN_FILE:Ljava/lang/String; = "com.ckx.action.SCAN_FILE"

.field public static final ACTION_MEDIA_SCANNER_SCAN_DIR:Ljava/lang/String; = "yecon.intent.action.MEDIA_SCANNER_SCAN_DIR"

.field public static final ACTION_SCAN_ANALYSIS:Ljava/lang/String; = "scan_analysis"

.field public static final ACTION_SCAN_CANCEL:Ljava/lang/String; = "scan_cancel"

.field public static final ACTION_SCAN_FILE:Ljava/lang/String; = "scan_file"

.field public static final ACTION_SCAN_FINISH:Ljava/lang/String; = "scan_finish"

.field public static final ACTION_SCAN_START:Ljava/lang/String; = "scan_start"

.field public static final ACTION_YECON_MEIDA_SCANER_STATUS:Ljava/lang/String; = "yecon.intent.action.MEDIA_SCANER_STATUS"

.field public static final ALLOWS_SCANNER_APK:Z = true

.field public static final ALL_UDISK1_PATH:[Ljava/lang/String;

.field public static final ALL_UDISK2_PATH:[Ljava/lang/String;

.field private static final AUTHORITIES:Ljava/lang/String; = "com.ckx.scanner.provider.YeconMediaProvider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATABASES:[Ljava/lang/String;

.field public static final DYNAMIC_PARSE_ID3:Z

.field public static final EXTERNAL_PATH:Ljava/lang/String; = "/storage/emulated/0"

.field public static final EXTERNAL_VOLUME:Ljava/lang/String; = "external"

.field public static final EXT_SDCARD1_PATH:Ljava/lang/String; = "/storage/ext_sdcard1"

.field public static final EXT_SDCARD2_PATH:Ljava/lang/String; = "/storage/ext_sdcard2"

.field public static final FOLDER_LIST_DEEP_LEVEL:Z = false

.field public static final MEDIA_ALL_FILE:I = 0x1000

.field public static final MEDIA_DIR_FILE:I = 0x1001

.field private static final MEGA_BYTE_SIZE:I = 0x100000

.field private static final MIN_STORAGE_SIZE:I = 0xa00000

.field public static final MONSTOR_UDISK_1_DEV:Ljava/lang/String; = "udisk1dev"

.field public static final MONSTOR_UDISK_1_P:Ljava/lang/String; = "udisk1p"

.field public static final MONSTOR_UDISK_2_DEV:Ljava/lang/String; = "udisk2dev"

.field public static final MONSTOR_UDISK_2_P:Ljava/lang/String; = "udisk2p"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PATHS:Ljava/lang/String; = "paths"

.field public static final SDCARD_VOLUME1:Ljava/lang/String; = "sdcard1"

.field public static final SDCARD_VOLUME2:Ljava/lang/String; = "sdcard2"

.field public static final STORAGES:[Ljava/lang/String;

.field public static final TABLE_ALBUM:Ljava/lang/String; = "album"

.field public static final TABLE_ARTIST:Ljava/lang/String; = "artist"

.field public static final TABLE_FILES:Ljava/lang/String; = "files"

.field private static final TAG:Ljava/lang/String; = "YeconMediaStore"

.field public static final UDISK1_DEV1_P1_PATH:Ljava/lang/String; = "/storage/udisk1dev1p1"

.field public static final UDISK1_DEV1_P2_PATH:Ljava/lang/String; = "/storage/udisk1dev1p2"

.field public static final UDISK1_DEV1_PATH:Ljava/lang/String; = "/storage/udisk1dev1"

.field public static final UDISK1_DEV2_P1_PATH:Ljava/lang/String; = "/storage/udisk1dev2p1"

.field public static final UDISK1_DEV2_P2_PATH:Ljava/lang/String; = "/storage/udisk1dev2p2"

.field public static final UDISK1_DEV2_PATH:Ljava/lang/String; = "/storage/udisk1dev2"

.field public static final UDISK1_DEV3_P1_PATH:Ljava/lang/String; = "/storage/udisk1dev3p1"

.field public static final UDISK1_DEV3_P2_PATH:Ljava/lang/String; = "/storage/udisk1dev3p2"

.field public static final UDISK1_DEV3_PATH:Ljava/lang/String; = "/storage/udisk1dev3"

.field public static final UDISK1_P1_PATH:Ljava/lang/String; = "/storage/udisk1p1"

.field public static final UDISK1_P2_PATH:Ljava/lang/String; = "/storage/udisk1p2"

.field public static final UDISK1_PATH:Ljava/lang/String; = "/storage/udisk1"

.field public static final UDISK2_DEV1_P1_PATH:Ljava/lang/String; = "/storage/udisk2dev1p1"

.field public static final UDISK2_DEV1_P2_PATH:Ljava/lang/String; = "/storage/udisk2dev1p2"

.field public static final UDISK2_DEV1_PATH:Ljava/lang/String; = "/storage/udisk2dev1"

.field public static final UDISK2_DEV2_P1_PATH:Ljava/lang/String; = "/storage/udisk2dev2p1"

.field public static final UDISK2_DEV2_P2_PATH:Ljava/lang/String; = "/storage/udisk2dev2p2"

.field public static final UDISK2_DEV2_PATH:Ljava/lang/String; = "/storage/udisk2dev2"

.field public static final UDISK2_DEV3_P1_PATH:Ljava/lang/String; = "/storage/udisk2dev3p1"

.field public static final UDISK2_DEV3_P2_PATH:Ljava/lang/String; = "/storage/udisk2dev3p2"

.field public static final UDISK2_DEV3_PATH:Ljava/lang/String; = "/storage/udisk2dev3"

.field public static final UDISK2_P1_PATH:Ljava/lang/String; = "/storage/udisk2p1"

.field public static final UDISK2_P2_PATH:Ljava/lang/String; = "/storage/udisk2p2"

.field public static final UDISK2_PATH:Ljava/lang/String; = "/storage/udisk2"

.field public static final UDISK_PATH:Ljava/lang/String; = "/storage/udisk"

.field public static final UDISK_PATH_1_DEV:Ljava/lang/String; = "/storage/udisk1dev"

.field public static final UDISK_PATH_1_P:Ljava/lang/String; = "/storage/udisk1p"

.field public static final UDISK_PATH_2_DEV:Ljava/lang/String; = "/storage/udisk2dev"

.field public static final UDISK_PATH_2_P:Ljava/lang/String; = "/storage/udisk2p"

.field public static final UDISK_VOLUME1:Ljava/lang/String; = "udisk1"

.field public static final UDISK_VOLUME2:Ljava/lang/String; = "udisk2"

.field public static final URI_EXTERNAL_SCAN_STATUS:Ljava/lang/String; = "content://com.carocean.status.provider/media/external"

.field public static final URI_SDCARD1_SCAN_STATUS:Ljava/lang/String; = "content://com.carocean.status.provider/media/sdcard1"

.field public static final URI_SDCARD2_SCAN_STATUS:Ljava/lang/String; = "content://com.carocean.status.provider/media/sdcard2"

.field public static final URI_UDISK1_SCAN_STATUS:Ljava/lang/String; = "content://com.carocean.status.provider/media/udisk1"

.field public static final URI_UDISK2_SCAN_STATUS:Ljava/lang/String; = "content://com.carocean.status.provider/media/udisk2"

.field public static final VIDEO_FILE_PATH:Ljava/lang/String; = "video.file.path"

.field public static final VIDEO_LIST_TYPE:Ljava/lang/String; = "video.list.type"

.field public static final YECON_MEDIA_MOUNTED:Ljava/lang/String; = "yecon.intent.action.MEDIA_MOUNTED"


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "ro.build.zhtd.oem"

    const-string v1, "default"

    .line 36
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "motorcycle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/carocean/navicar/YeconMediaStore;->DYNAMIC_PARSE_ID3:Z

    const-string v0, "external"

    const-string v1, "sdcard1"

    const-string v2, "sdcard2"

    const-string v3, "udisk1"

    const-string v4, "udisk2"

    .line 120
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/carocean/navicar/YeconMediaStore;->DATABASES:[Ljava/lang/String;

    const-string v1, "/storage/emulated/0"

    const-string v2, "/storage/ext_sdcard1"

    const-string v3, "/storage/ext_sdcard2"

    const-string v4, "/storage/udisk1"

    const-string v5, "/storage/udisk1dev1"

    const-string v6, "/storage/udisk1dev2"

    const-string v7, "/storage/udisk1p1"

    const-string v8, "/storage/udisk1p2"

    const-string v9, "/storage/udisk1dev1p1"

    const-string v10, "/storage/udisk1dev1p2"

    const-string v11, "/storage/udisk1dev2p1"

    const-string v12, "/storage/udisk1dev2p2"

    const-string v13, "/storage/udisk1dev3p1"

    const-string v14, "/storage/udisk1dev3p2"

    const-string v15, "/storage/udisk1dev3"

    const-string v16, "/storage/udisk2"

    const-string v17, "/storage/udisk2dev1"

    const-string v18, "/storage/udisk2dev2"

    const-string v19, "/storage/udisk2dev3"

    const-string v20, "/storage/udisk2p1"

    const-string v21, "/storage/udisk2p2"

    const-string v22, "/storage/udisk2dev1p1"

    const-string v23, "/storage/udisk2dev1p2"

    const-string v24, "/storage/udisk2dev2p1"

    const-string v25, "/storage/udisk2dev2p2"

    const-string v26, "/storage/udisk2dev3p1"

    const-string v27, "/storage/udisk2dev3p2"

    .line 177
    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/carocean/navicar/YeconMediaStore;->STORAGES:[Ljava/lang/String;

    const-string v1, "/storage/udisk1"

    const-string v2, "/storage/udisk1dev1"

    const-string v3, "/storage/udisk1dev2"

    const-string v4, "/storage/udisk1p1"

    const-string v5, "/storage/udisk1p2"

    const-string v6, "/storage/udisk1dev1p1"

    const-string v7, "/storage/udisk1dev1p2"

    const-string v8, "/storage/udisk1dev2p1"

    const-string v9, "/storage/udisk1dev2p2"

    const-string v10, "/storage/udisk1dev3p1"

    const-string v11, "/storage/udisk1dev3p2"

    const-string v12, "/storage/udisk1dev3"

    .line 211
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/carocean/navicar/YeconMediaStore;->ALL_UDISK1_PATH:[Ljava/lang/String;

    const-string v1, "/storage/udisk2"

    const-string v2, "/storage/udisk2dev1"

    const-string v3, "/storage/udisk2dev2"

    const-string v4, "/storage/udisk2p1"

    const-string v5, "/storage/udisk2p2"

    const-string v6, "/storage/udisk2dev1p1"

    const-string v7, "/storage/udisk2dev1p2"

    const-string v8, "/storage/udisk2dev2p1"

    const-string v9, "/storage/udisk2dev2p2"

    const-string v10, "/storage/udisk2dev3p1"

    const-string v11, "/storage/udisk2dev3p2"

    const-string v12, "/storage/udisk2dev3"

    .line 229
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/carocean/navicar/YeconMediaStore;->ALL_UDISK2_PATH:[Ljava/lang/String;

    const-string v0, "content://com.ckx.scanner.provider.YeconMediaProvider/"

    .line 401
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/carocean/navicar/YeconMediaStore;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Conver2Database(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/storage/udisk1"

    .line 676
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "udisk1"

    goto :goto_0

    :cond_0
    const-string v0, "/storage/udisk2"

    .line 678
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "udisk2"

    goto :goto_0

    :cond_1
    const-string v0, "/storage/emulated/0"

    .line 680
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "external"

    goto :goto_0

    :cond_2
    const-string v0, "/storage/ext_sdcard1"

    .line 682
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "sdcard1"

    goto :goto_0

    :cond_3
    const-string v0, "/storage/ext_sdcard2"

    .line 684
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "sdcard2"

    goto :goto_0

    .line 687
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDBFile unknown path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "YeconMediaStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static Convert2Storage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "/storage/udisk2"

    const-string v1, "/storage/udisk1"

    const-string v2, "/storage/ext_sdcard2"

    const-string v3, "/storage/ext_sdcard1"

    if-eqz p0, :cond_4

    const-string v4, "external"

    .line 695
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "/storage/emulated/0"

    goto :goto_0

    .line 697
    :cond_0
    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 703
    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static bitmapToString([B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 771
    :try_start_0
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 772
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 775
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static checkStorageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    invoke-static {p1}, Lcom/carocean/navicar/YeconMediaStore;->getDiskStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mounted"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getContent(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/carocean/navicar/YeconMediaStore;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getDiskStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 297
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 300
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 305
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 306
    invoke-static {v1}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 307
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_3

    .line 308
    invoke-static {v1}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_0
    const-string v1, "YeconMediaStore"

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDiskStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " status:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    goto :goto_1

    .line 311
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 313
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getStorageMountedPaths(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    const-string v1, "storage"

    .line 354
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 355
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p0

    .line 356
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 357
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStorageMountedPaths: isRemovable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "YeconMediaStore"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "mounted"

    .line 359
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    :cond_1
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getStoragePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "/storage/ext_sdcard1"

    .line 715
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "/storage/emulated/0"

    const-string v4, "/storage/ext_sdcard2"

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    const-string v1, "/storage/udisk1"

    .line 719
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v4, 0xf

    const-string v5, "/"

    if-eqz v1, :cond_4

    .line 722
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    .line 724
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_4
    const-string v1, "/storage/udisk2"

    .line 728
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 731
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    .line 733
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 737
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    move-object v0, v3

    :cond_6
    :goto_1
    return-object v0
.end method

.method public static hasStorageExist()Z
    .locals 6

    .line 340
    sget-object v0, Lcom/carocean/navicar/YeconMediaStore;->STORAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 341
    invoke-static {v4}, Lcom/carocean/navicar/YeconMediaStore;->getDiskStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static hasStorageExist([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 326
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 327
    invoke-static {v3}, Lcom/carocean/navicar/YeconMediaStore;->getDiskStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static isExist(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 370
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupport(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "/storage/ext_sdcard1"

    .line 262
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "/storage/ext_sdcard2"

    .line 264
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const-string v1, "/storage/udisk1"

    .line 266
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p0, 0x8

    goto :goto_0

    :cond_3
    const-string v1, "/storage/udisk2"

    .line 268
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p0, 0x10

    goto :goto_0

    :cond_4
    const-string v1, "/storage/emulated/0"

    .line 270
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    move p0, v2

    :goto_0
    if-eqz p0, :cond_5

    move v0, v2

    :cond_5
    return v0
.end method

.method public static stringToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 751
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 752
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 753
    array-length v1, p0

    if-lez v1, :cond_0

    .line 754
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 758
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
