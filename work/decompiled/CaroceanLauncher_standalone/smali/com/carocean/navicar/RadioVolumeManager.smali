.class public Lcom/carocean/navicar/RadioVolumeManager;
.super Ljava/lang/Object;
.source "RadioVolumeManager.java"


# static fields
.field private static final SINGLE_VOLUME_TABLE_SIZE:I = 0x50

.field static final TAG:Ljava/lang/String; = "RadioVolumeManager"

.field private static mInstatnce:Lcom/carocean/navicar/RadioVolumeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/carocean/navicar/RadioVolumeManager;

    invoke-direct {v0}, Lcom/carocean/navicar/RadioVolumeManager;-><init>()V

    sput-object v0, Lcom/carocean/navicar/RadioVolumeManager;->mInstatnce:Lcom/carocean/navicar/RadioVolumeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/carocean/navicar/RadioVolumeManager;
    .locals 1

    .line 36
    sget-object v0, Lcom/carocean/navicar/RadioVolumeManager;->mInstatnce:Lcom/carocean/navicar/RadioVolumeManager;

    return-object v0
.end method


# virtual methods
.method public getVolume(Landroid/content/ContentResolver;II)I
    .locals 0
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 121
    invoke-virtual {p0, p1}, Lcom/carocean/navicar/RadioVolumeManager;->getVolumeTable(Landroid/content/ContentResolver;)[B

    move-result-object p1

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lcom/carocean/navicar/RadioVolumeManager;->getVolume([BII)I

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

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x50

    sub-int/2addr p3, v0

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    .line 130
    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    mul-int/lit16 p0, p0, 0x100

    add-int/2addr p2, v0

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p0, p1

    return p0

    .line 133
    :cond_1
    sget-object p1, Lcom/carocean/navicar/RadioVolumeManager;->TAG:Ljava/lang/String;

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
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string p0, "content://com.carocean.status.provider/status"

    const-string v0, "ST_RADIO_VOLUME_TABLE"

    .line 149
    invoke-static {p0, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    if-eqz p0, :cond_1

    .line 152
    array-length p1, p0

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 153
    :cond_1
    :goto_0
    sget-object p0, Lcom/carocean/navicar/RadioVolumeManager;->TAG:Ljava/lang/String;

    const-string p1, "Radio volume Table not initialized or initialized error. getVolumeTable fail."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v0, "ST_RADIO_VOLUME_TABLE"

    .line 91
    invoke-static {p0, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    .line 94
    array-length v0, p0

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    sget-object p0, Lcom/carocean/navicar/RadioVolumeManager;->TAG:Ljava/lang/String;

    const-string p2, "Parameters error, type should be FM or AM."

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2
    :goto_0
    const/16 p1, 0x50

    new-array v1, p1, [B

    sub-int/2addr p2, v0

    mul-int/2addr p2, p1

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, p2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 95
    :cond_3
    :goto_1
    sget-object p0, Lcom/carocean/navicar/RadioVolumeManager;->TAG:Ljava/lang/String;

    const-string p2, "Volume Table not initialized or initialized error. getVolumeTable fail."

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public setVolumeTable(Landroid/content/ContentResolver;I[B)Z
    .locals 7
    .param p1    # Landroid/content/ContentResolver;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    :cond_0
    if-eqz p3, :cond_3

    .line 49
    array-length v1, p3

    const/16 v2, 0x50

    if-ne v1, v2, :cond_3

    const-string v1, "content://com.carocean.status.provider/status"

    const-string v3, "ST_RADIO_VOLUME_TABLE"

    .line 51
    invoke-static {v1, p1, v3}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    if-eqz v4, :cond_2

    .line 54
    array-length v5, v4

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v0

    mul-int/2addr p2, v2

    .line 59
    array-length v2, p3

    invoke-static {p3, p0, v4, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-static {v1, p1, v3, v4}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 55
    :cond_2
    :goto_0
    sget-object p1, Lcom/carocean/navicar/RadioVolumeManager;->TAG:Ljava/lang/String;

    const-string p2, "Volume Table not initialized or initialized error. setVolumeTable fail."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
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

    .line 74
    array-length p0, p2

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

    const-string p0, "content://com.carocean.status.provider/status"

    const-string v0, "ST_RADIO_VOLUME_TABLE"

    .line 75
    invoke-static {p0, p1, v0, p2}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 78
    :cond_0
    sget-object p0, Lcom/carocean/navicar/RadioVolumeManager;->TAG:Ljava/lang/String;

    const-string p1, "Parameters error."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
