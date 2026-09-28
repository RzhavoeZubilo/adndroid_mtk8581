.class public Lcom/carocean/navicar/VolumeManager;
.super Ljava/lang/Object;
.source "VolumeManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "VolumeManager"

.field public static final VOLUME_LEVELS:I = 0x28

.field public static final VOLUME_TYPE_A2DP:I = 0x3

.field public static final VOLUME_TYPE_AM:I = 0x2

.field public static final VOLUME_TYPE_AUX:I = 0x6

.field public static final VOLUME_TYPE_BT:I = 0x5

.field public static final VOLUME_TYPE_FM:I = 0x1

.field public static final VOLUME_TYPE_GIS:I = 0x4

.field public static final VOLUME_TYPE_MAX:I = 0x7

.field public static final VOLUME_TYPE_MEDIA:I

.field private static mInstance:Lcom/carocean/navicar/VolumeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/carocean/navicar/VolumeManager;

    invoke-direct {v0}, Lcom/carocean/navicar/VolumeManager;-><init>()V

    sput-object v0, Lcom/carocean/navicar/VolumeManager;->mInstance:Lcom/carocean/navicar/VolumeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/carocean/navicar/VolumeManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/carocean/navicar/VolumeManager;->mInstance:Lcom/carocean/navicar/VolumeManager;

    return-object v0
.end method


# virtual methods
.method public getDefaultVolume(Landroid/content/ContentResolver;I)I
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-ltz p2, :cond_0

    const/4 p0, 0x5

    if-gt p2, p0, :cond_0

    const-string p0, "content://com.carocean.status.provider/status"

    const-string v0, "ST_SYSTEM_PARAM_INFO"

    .line 215
    invoke-static {p0, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-eqz p0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->default_volume:[B

    aget-byte p0, p0, p2

    return p0

    .line 222
    :cond_0
    sget-object p0, Lcom/carocean/navicar/VolumeManager;->TAG:Ljava/lang/String;

    const-string p1, "getDefaultVolume(): invalid parameters, type must be 0 ~ 5."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultVolume(Landroid/content/ContentResolver;)[B
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string p0, "content://com.carocean.status.provider/status"

    const-string v0, "ST_DEFAULT_VOLUME_LEVEL"

    .line 233
    invoke-static {p0, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string v0, "ST_SYSTEM_PARAM_INFO"

    .line 236
    invoke-static {p0, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-eqz p0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->default_volume:[B

    return-object p0

    .line 242
    :cond_0
    sget-object p0, Lcom/carocean/navicar/VolumeManager;->TAG:Ljava/lang/String;

    const-string p1, "getDefaultVolume(): return null, maybe default volume level not set."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVolume(Landroid/content/ContentResolver;II)I
    .locals 0
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 131
    invoke-virtual {p0, p1}, Lcom/carocean/navicar/VolumeManager;->getVolumeTable(Landroid/content/ContentResolver;)[B

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/carocean/navicar/VolumeManager;->getVolume([BII)I

    move-result p0

    return p0
.end method

.method public getVolume([BII)I
    .locals 2
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-lt p3, v0, :cond_1

    const/16 v1, 0x28

    if-gt p3, v1, :cond_1

    mul-int/2addr p2, v1

    add-int/2addr p2, p3

    sub-int/2addr p2, v0

    .line 140
    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 142
    :cond_1
    sget-object p1, Lcom/carocean/navicar/VolumeManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVolume(): invalid parameter, vol level = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method public getVolumeTable(Landroid/content/ContentResolver;)[B
    .locals 2
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string p0, "content://com.carocean.status.provider/status"

    const-string v0, "ST_VOLUME_TABLE"

    .line 158
    invoke-static {p0, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    if-eqz p0, :cond_1

    .line 161
    array-length p1, p0

    const/16 v0, 0x118

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    .line 163
    sget-object p0, Lcom/carocean/navicar/VolumeManager;->TAG:Ljava/lang/String;

    const-string p1, "Volume Table not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    :cond_2
    sget-object p1, Lcom/carocean/navicar/VolumeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume Table initialized error. volumeTable length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVolumeTable(Landroid/content/ContentResolver;I)[B
    .locals 2
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string p0, "content://com.carocean.status.provider/status"

    const-string v0, "ST_VOLUME_TABLE"

    .line 98
    invoke-static {p0, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    if-eqz p0, :cond_1

    .line 101
    array-length p1, p0

    const/16 v0, 0x118

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x28

    new-array v0, p1, [B

    mul-int/2addr p2, p1

    const/4 v1, 0x0

    .line 107
    invoke-static {p0, p2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 102
    :cond_1
    :goto_0
    sget-object p0, Lcom/carocean/navicar/VolumeManager;->TAG:Ljava/lang/String;

    const-string p1, "Volume Table not initialized or initialized error. getVolumeTable fail."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public setDefaultVolume(Landroid/content/ContentResolver;[B)V
    .locals 4
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p2, :cond_2

    .line 190
    array-length p0, p2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "content://com.carocean.status.provider/status"

    const-string v0, "ST_SYSTEM_PARAM_INFO"

    .line 196
    invoke-static {p0, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-eqz p0, :cond_1

    .line 198
    iget-object v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->default_volume:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p2, "content://com.carocean.status.provider/sys"

    .line 199
    invoke-static {p2, p1, v0, p0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_1
    sget-object p0, Lcom/carocean/navicar/VolumeManager;->TAG:Ljava/lang/String;

    const-string p1, "setDefaultVolumeLevel() fail, ST_SYSTEM_PARAM_INFO not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 191
    :cond_2
    :goto_1
    sget-object p0, Lcom/carocean/navicar/VolumeManager;->TAG:Ljava/lang/String;

    const-string p1, "setDefaultVolumeLevel() fail, invalid parameters."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setGPSMixing(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string p0, "content://com.carocean.status.provider/status"

    const-string v0, "ST_SYSTEM_PARAM_INFO"

    .line 175
    invoke-static {p0, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-eqz p0, :cond_0

    .line 177
    iput p2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->gps_mixing:I

    const-string p2, "content://com.carocean.status.provider/sys"

    .line 178
    invoke-static {p2, p1, v0, p0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    :cond_0
    sget-object p0, Lcom/carocean/navicar/VolumeManager;->TAG:Ljava/lang/String;

    const-string p1, "setGPSMixing() fail, ST_SYSTEM_PARAM_INFO not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setVolumeTable(Landroid/content/ContentResolver;I[B)Z
    .locals 6
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-ltz p2, :cond_2

    const/4 v0, 0x7

    if-ge p2, v0, :cond_2

    if-eqz p3, :cond_2

    .line 57
    array-length v0, p3

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    const-string v0, "content://com.carocean.status.provider/status"

    const-string v2, "ST_VOLUME_TABLE"

    .line 59
    invoke-static {v0, p1, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    if-eqz v3, :cond_1

    .line 62
    array-length v4, v3

    const/16 v5, 0x118

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p2, v1

    .line 67
    array-length v1, p3

    invoke-static {p3, p0, v3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    invoke-static {v0, p1, v2, v3}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 63
    :cond_1
    :goto_0
    sget-object p1, Lcom/carocean/navicar/VolumeManager;->TAG:Ljava/lang/String;

    const-string p2, "Volume Table not initialized or initialized error. setVolumeTable fail."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method public setVolumeTable(Landroid/content/ContentResolver;[B)Z
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 82
    array-length p0, p2

    const/16 v0, 0x118

    if-ne p0, v0, :cond_0

    const-string p0, "content://com.carocean.status.provider/status"

    const-string v0, "ST_VOLUME_TABLE"

    .line 83
    invoke-static {p0, p1, v0, p2}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
