.class public Lcom/carocean/navicar/NaviUtil;
.super Ljava/lang/Object;
.source "NaviUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carocean/navicar/NaviUtil$DateTimeUtils;,
        Lcom/carocean/navicar/NaviUtil$HexUtils;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "NaviUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cmdEQEffect(Landroid/content/Context;[Ljava/lang/Integer;)V
    .locals 2

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 567
    new-instance p1, Landroid/content/Intent;

    const-string v1, "navi.intent.action.ACTION_SETTINGS_PQ"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "CMD_CODE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "com.carocean.settings"

    .line 569
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static fileIsExists(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 657
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static getAudioFocusMask(Landroid/content/Context;)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_BLACKOUT_MASK"

    const/4 v2, 0x0

    .line 292
    invoke-static {v0, p0, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getBeepMask(Landroid/content/Context;)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.carocean.status.provider/status"

    const-string v1, "ST_SYSTEM_PARAM_INFO"

    .line 323
    invoke-static {v0, p0, v1}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-nez p0, :cond_0

    .line 327
    sget-object p0, Lcom/carocean/navicar/NaviUtil;->TAG:Ljava/lang/String;

    const-string v0, "ST_SYSTEM_PARAM_INFO not initialized."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 331
    :cond_0
    iget p0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->beep_enable:I

    return p0
.end method

.method public static getBlackoutMask(Landroid/content/Context;)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_BLACKOUT_MASK"

    const/4 v2, 0x0

    .line 274
    invoke-static {v0, p0, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMotoAutoAdjustBrightnessMask(Landroid/content/Context;)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_MOTO_AUTO_ADJUST_BRIGHTNESS_MASK"

    const/4 v2, 0x0

    .line 335
    invoke-static {v0, p0, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMuteMask(Landroid/content/Context;)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_MUTE_MASK"

    const/4 v2, 0x0

    .line 204
    invoke-static {v0, p0, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPartNumber()Ljava/lang/String;
    .locals 1

    .line 604
    sget-object v0, Lcom/carocean/navicar/Navi$Common;->PART_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/carocean/navicar/NaviUtil;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    sget-object v0, Lcom/carocean/navicar/Navi$Common;->PART_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/carocean/navicar/NaviUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 1

    .line 592
    sget-object v0, Lcom/carocean/navicar/Navi$Common;->UUID_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/carocean/navicar/NaviUtil;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    sget-object v0, Lcom/carocean/navicar/Navi$Common;->UUID_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/carocean/navicar/NaviUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getUnmuteTransientMask(Landroid/content/Context;)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_UNMUTE_TRANSIENT_MASK"

    const/4 v2, 0x0

    .line 257
    invoke-static {v0, p0, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isAppForeground(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "activity"

    .line 530
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 532
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 533
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 534
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 535
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v3
.end method

.method public static isVolumeMute(Landroid/content/Context;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 214
    invoke-static {p0}, Lcom/carocean/navicar/NaviUtil;->getMuteMask(Landroid/content/Context;)I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static launchPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-static {p0, p1, v0}, Lcom/carocean/navicar/NaviUtil;->launchPackage(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static launchPackage(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 176
    :cond_0
    sget-object v0, Lcom/carocean/navicar/NaviUtil;->TAG:Ljava/lang/String;

    const-string v1, "launchPackage(): Invalid parameters, it could not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const/high16 p1, 0x10000000

    .line 181
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_2

    const p1, 0xffeb00

    const-string p2, "CMD_CODE"

    .line 184
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :cond_3
    sget-object p0, Lcom/carocean/navicar/NaviUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launchPackage(): Launch package fail. package name = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static loadBackgroundWhiteList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    sget-object v1, Lcom/carocean/navicar/Navi$Common;->BACKGROUND_WHITE_LIST_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/carocean/navicar/NaviUtil;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 672
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Lcom/carocean/navicar/Navi$Common;->BACKGROUND_WHITE_LIST_FILE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 682
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 678
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 682
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 684
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 682
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 684
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 687
    :cond_1
    :goto_3
    throw v0

    :cond_2
    :goto_4
    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 617
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 619
    new-array p0, p0, [B

    .line 620
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 621
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 622
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 626
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 624
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static sendCmdToPackage(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "CMD_CODE"

    .line 159
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendKeyDownUpSync(I)V
    .locals 1

    const/16 v0, 0x1002

    .line 54
    invoke-static {p0, v0}, Lcom/carocean/navicar/NaviUtil;->sendKeyDownUpSync(II)V

    return-void
.end method

.method public static sendKeyDownUpSync(II)V
    .locals 1

    .line 67
    new-instance v0, Lcom/carocean/navicar/NaviUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/carocean/navicar/NaviUtil$1;-><init>(II)V

    .line 83
    invoke-virtual {v0}, Lcom/carocean/navicar/NaviUtil$1;->start()V

    return-void
.end method

.method public static sendKeySync(IIZ)V
    .locals 1

    .line 98
    new-instance v0, Lcom/carocean/navicar/NaviUtil$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/carocean/navicar/NaviUtil$2;-><init>(ZII)V

    .line 110
    invoke-virtual {v0}, Lcom/carocean/navicar/NaviUtil$2;->start()V

    return-void
.end method

.method public static sendSimuMCUKey(Landroid/content/Context;II)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "navi.intent.action.ACTION_MONITOR_CENTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CMD_CODE"

    const v2, 0xff01

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MCU_KEY_VALUE"

    .line 123
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "MCU_KEY_PARAM"

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.carocean.monitorcenter"

    .line 125
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setAudioFocusMask(Landroid/content/Context;IZ)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "SYS_AUDIOFOCUS_MASK"

    .line 287
    invoke-static {p0, v0, p1, p2}, Lcom/carocean/navicar/NaviUtil;->setSysStatusMask(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setBeepMask(Landroid/content/Context;IZ)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/status"

    const-string v2, "ST_SYSTEM_PARAM_INFO"

    .line 304
    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-nez v0, :cond_0

    .line 308
    sget-object p0, Lcom/carocean/navicar/NaviUtil;->TAG:Ljava/lang/String;

    const-string p1, "ST_SYSTEM_PARAM_INFO not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 313
    iget p2, v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->beep_enable:I

    or-int/2addr p1, p2

    iput p1, v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->beep_enable:I

    goto :goto_0

    .line 315
    :cond_1
    iget p2, v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->beep_enable:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->beep_enable:I

    .line 318
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v1, p0, v2, v0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setBlackoutMask(Landroid/content/Context;IZ)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "SYS_BLACKOUT_MASK"

    .line 269
    invoke-static {p0, v0, p1, p2}, Lcom/carocean/navicar/NaviUtil;->setSysStatusMask(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setMotoAutoAdjustBrightnessMask(Landroid/content/Context;I)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_MOTO_AUTO_ADJUST_BRIGHTNESS_MASK"

    .line 340
    invoke-static {v0, p0, v1, p1}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static setMuteMask(Landroid/content/Context;IZ)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "SYS_MUTE_MASK"

    .line 200
    invoke-static {p0, v0, p1, p2}, Lcom/carocean/navicar/NaviUtil;->setSysStatusMask(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setPartNumber(Ljava/lang/String;)V
    .locals 1

    .line 599
    sget-object v0, Lcom/carocean/navicar/Navi$Common;->PART_FILE:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/carocean/navicar/NaviUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static setSysStatusMask(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const/4 v2, 0x0

    .line 353
    invoke-static {v1, v0, p1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p3, :cond_0

    or-int/2addr p2, v0

    goto :goto_0

    :cond_0
    not-int p2, p2

    and-int/2addr p2, v0

    .line 361
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 360
    invoke-static {v1, p0, p1, p2}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static setUUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 578
    sget-object v0, Lcom/carocean/navicar/Navi$Common;->UUID_FILE:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/carocean/navicar/NaviUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 579
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adayo_uuid_key"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/status"

    const-string v2, "ST_SYSTEM_PARAM_INFO"

    .line 580
    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-eqz v0, :cond_0

    .line 584
    iput-object p1, v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->uuid:Ljava/lang/String;

    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v1, p0, v2, v0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setUnmuteTransientMask(Landroid/content/Context;IZ)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "SYS_UNMUTE_TRANSIENT_MASK"

    .line 253
    invoke-static {p0, v0, p1, p2}, Lcom/carocean/navicar/NaviUtil;->setSysStatusMask(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setVolumeMuteMask(Landroid/content/Context;ZZ)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_MUTE_MASK"

    const/4 v3, 0x0

    .line 225
    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x11

    :goto_0
    if-eqz p2, :cond_1

    const/high16 p2, -0x80000000

    or-int/2addr p1, p2

    goto :goto_1

    :cond_1
    const p2, 0x7fffffff

    and-int/2addr p1, p2

    .line 240
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 239
    invoke-static {v1, p0, v2, p1}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 242
    sget-object p0, Lcom/carocean/navicar/NaviUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mute flag = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static toIntArray(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 139
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 141
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [I

    :cond_1
    return-object v2
.end method

.method public static writeBackgroundWhiteList(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 695
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/carocean/navicar/Navi$Common;->BACKGROUND_WHITE_LIST_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 698
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 700
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x0

    .line 705
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 706
    :try_start_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 707
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_2

    .line 710
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 717
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move v2, v1

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    .line 712
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_2

    .line 717
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 719
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    return v2

    :goto_5
    if-eqz v3, :cond_3

    .line 717
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 719
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 723
    :cond_3
    :goto_6
    throw p0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 640
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 642
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 643
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    .line 644
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 649
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 647
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
