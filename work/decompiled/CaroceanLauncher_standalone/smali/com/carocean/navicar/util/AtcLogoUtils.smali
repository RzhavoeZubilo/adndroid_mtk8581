.class public Lcom/carocean/navicar/util/AtcLogoUtils;
.super Ljava/lang/Object;
.source "AtcLogoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carocean/navicar/util/AtcLogoUtils$LogoSetResult;,
        Lcom/carocean/navicar/util/AtcLogoUtils$LogoSetCallBack;
    }
.end annotation


# static fields
.field private static mScreenH:I

.field private static mScreenW:I

.field private static sAtcLogoUtils:Lcom/carocean/navicar/util/AtcLogoUtils;


# instance fields
.field private final BITCOUNT:I

.field private final LOGO_INDEX:I

.field private final TAG:Ljava/lang/String;

.field private mCurIndex:I

.field private mCurPhotoBitCount:I

.field private mCurPhotoH:I

.field private mCurPhotoOffset:I

.field private mCurPhotoRGBquad:[B

.field private mCurPhotoW:I

.field private mCurRawData:[B

.field private mCurRawSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AtcLogoUtils"

    .line 9
    iput-object v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->TAG:Ljava/lang/String;

    const/16 v0, 0x20

    .line 11
    iput v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->BITCOUNT:I

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->LOGO_INDEX:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AtcLogoUtils"

    .line 9
    iput-object v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->TAG:Ljava/lang/String;

    const/16 v0, 0x20

    .line 11
    iput v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->BITCOUNT:I

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->LOGO_INDEX:I

    .line 30
    sput p1, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    .line 31
    sput p2, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    return-void
.end method

.method private byte2Int([BI)I
    .locals 1

    add-int/lit8 p2, p2, -0x1

    const/4 p0, 0x0

    :goto_0
    if-ltz p2, :cond_0

    shl-int/lit8 p0, p0, 0x8

    .line 49
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p0, v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private deletePixle(Ljava/io/RandomAccessFile;J)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 150
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    div-int/lit8 v2, v1, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    move v2, v4

    .line 155
    :cond_1
    sget v1, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x3

    div-int/2addr v5, v3

    mul-int/2addr v5, v3

    mul-int/lit8 v6, v1, 0x4

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    mul-int/2addr v1, v3

    .line 156
    new-array v1, v1, [B

    const/4 v5, 0x0

    .line 158
    iput v5, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    move-wide/from16 v6, p2

    move v8, v5

    move v9, v8

    move v10, v9

    .line 162
    :goto_0
    sget v11, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    if-ge v8, v11, :cond_8

    move-object/from16 v11, p1

    .line 163
    invoke-direct {v0, v11, v6, v7}, Lcom/carocean/navicar/util/AtcLogoUtils;->getPixValue(Ljava/io/RandomAccessFile;J)[B

    move-result-object v12

    move v13, v5

    :goto_1
    if-ge v13, v3, :cond_2

    add-int/lit8 v14, v9, 0x1

    add-int/lit8 v15, v13, 0x1

    .line 166
    aget-byte v13, v12, v13

    aput-byte v13, v1, v9

    move v9, v14

    move v13, v15

    goto :goto_1

    .line 168
    :cond_2
    iget v12, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    sget v13, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    div-int v14, v12, v13

    sub-int/2addr v14, v4

    .line 169
    rem-int/2addr v12, v13

    .line 170
    iget v15, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    if-nez v15, :cond_3

    .line 171
    iget v15, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    mul-int v16, v14, v15

    div-int/lit8 v3, v16, 0x8

    int-to-long v4, v3

    add-long/2addr v6, v4

    mul-int/2addr v14, v15

    .line 172
    rem-int/lit8 v14, v14, 0x8

    iput v14, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    :cond_3
    if-eqz v12, :cond_6

    if-nez v10, :cond_4

    .line 176
    div-int v10, v13, v12

    .line 177
    iget v3, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    iget v4, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x8

    iput v3, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    if-nez v3, :cond_4

    int-to-long v3, v2

    add-long/2addr v6, v3

    .line 181
    :cond_4
    rem-int v3, v13, v12

    if-eqz v3, :cond_5

    .line 183
    div-int/2addr v13, v3

    .line 184
    rem-int v4, v8, v13

    if-nez v4, :cond_5

    mul-int/2addr v13, v3

    if-gt v8, v13, :cond_5

    add-int/lit8 v10, v10, 0x1

    :cond_5
    add-int/lit8 v10, v10, -0x1

    .line 190
    :cond_6
    iget v3, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    iget v4, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x8

    iput v3, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    if-nez v3, :cond_7

    int-to-long v3, v2

    add-long/2addr v6, v3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method private getFileHead(Ljava/io/RandomAccessFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    const-wide/16 v2, 0xa

    .line 57
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 58
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 59
    invoke-direct {p0, v1, v0}, Lcom/carocean/navicar/util/AtcLogoUtils;->byte2Int([BI)I

    move-result v2

    iput v2, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoOffset:I

    const-wide/16 v2, 0x12

    .line 61
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 63
    invoke-direct {p0, v1, v0}, Lcom/carocean/navicar/util/AtcLogoUtils;->byte2Int([BI)I

    move-result v2

    iput v2, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    .line 65
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 66
    invoke-direct {p0, v1, v0}, Lcom/carocean/navicar/util/AtcLogoUtils;->byte2Int([BI)I

    move-result v0

    iput v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoH:I

    const-wide/16 v2, 0x1c

    .line 68
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 69
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v0, 0x2

    .line 70
    invoke-direct {p0, v1, v0}, Lcom/carocean/navicar/util/AtcLogoUtils;->byte2Int([BI)I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    .line 72
    iget v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoOffset:I

    const/16 v1, 0x36

    if-eq v0, v1, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 73
    iput-object v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoRGBquad:[B

    const-wide/16 v0, 0x36

    .line 74
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 75
    iget-object p0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoRGBquad:[B

    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->read([B)I

    :cond_0
    return-void
.end method

.method public static getInstance(II)Lcom/carocean/navicar/util/AtcLogoUtils;
    .locals 1

    .line 35
    sget-object v0, Lcom/carocean/navicar/util/AtcLogoUtils;->sAtcLogoUtils:Lcom/carocean/navicar/util/AtcLogoUtils;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/carocean/navicar/util/AtcLogoUtils;

    invoke-direct {v0}, Lcom/carocean/navicar/util/AtcLogoUtils;-><init>()V

    sput-object v0, Lcom/carocean/navicar/util/AtcLogoUtils;->sAtcLogoUtils:Lcom/carocean/navicar/util/AtcLogoUtils;

    .line 37
    sput p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    .line 38
    sput p1, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    .line 40
    :cond_0
    sget-object p0, Lcom/carocean/navicar/util/AtcLogoUtils;->sAtcLogoUtils:Lcom/carocean/navicar/util/AtcLogoUtils;

    return-object p0
.end method

.method private getLine(Ljava/io/RandomAccessFile;J)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 201
    iget v2, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    add-int/lit8 v3, v2, 0x7

    div-int/lit8 v3, v3, 0x8

    .line 204
    sget v4, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x4

    div-int/2addr v5, v6

    mul-int/2addr v5, v6

    mul-int/lit8 v7, v4, 0x4

    sub-int/2addr v5, v7

    add-int v7, v4, v5

    mul-int/2addr v7, v6

    .line 205
    new-array v7, v7, [B

    .line 206
    iget v8, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    if-ge v8, v4, :cond_0

    .line 207
    invoke-direct/range {p0 .. p3}, Lcom/carocean/navicar/util/AtcLogoUtils;->insertPixle(Ljava/io/RandomAccessFile;J)[B

    move-result-object v7

    goto/16 :goto_6

    :cond_0
    if-le v8, v4, :cond_1

    .line 209
    invoke-direct/range {p0 .. p3}, Lcom/carocean/navicar/util/AtcLogoUtils;->deletePixle(Ljava/io/RandomAccessFile;J)[B

    move-result-object v7

    goto/16 :goto_6

    :cond_1
    const/4 v4, 0x0

    if-ne v2, v6, :cond_4

    move v2, v4

    move v8, v2

    .line 214
    :goto_0
    sget v9, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    const/4 v10, 0x2

    div-int/2addr v9, v10

    if-ge v2, v9, :cond_6

    move v9, v4

    :goto_1
    if-ge v9, v10, :cond_3

    mul-int v11, v2, v3

    int-to-long v11, v11

    add-long v11, p2, v11

    .line 216
    invoke-direct {p0, v1, v11, v12}, Lcom/carocean/navicar/util/AtcLogoUtils;->getPixValue(Ljava/io/RandomAccessFile;J)[B

    move-result-object v11

    move v12, v4

    :goto_2
    if-ge v12, v6, :cond_2

    add-int/lit8 v13, v8, 0x1

    add-int/lit8 v14, v12, 0x1

    .line 219
    aget-byte v12, v11, v12

    aput-byte v12, v7, v8

    move v8, v13

    move v12, v14

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v4

    move v8, v2

    .line 224
    :goto_3
    sget v9, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    if-ge v2, v9, :cond_6

    mul-int v9, v2, v3

    int-to-long v9, v9

    add-long v9, p2, v9

    .line 225
    invoke-direct {p0, v1, v9, v10}, Lcom/carocean/navicar/util/AtcLogoUtils;->getPixValue(Ljava/io/RandomAccessFile;J)[B

    move-result-object v9

    move v10, v4

    :goto_4
    if-ge v10, v6, :cond_5

    add-int/lit8 v11, v8, 0x1

    add-int/lit8 v12, v10, 0x1

    .line 228
    aget-byte v10, v9, v10

    aput-byte v10, v7, v8

    move v8, v11

    move v10, v12

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    add-int/lit8 v0, v8, 0x1

    const/4 v1, -0x1

    .line 232
    aput-byte v1, v7, v8

    add-int/lit8 v5, v5, -0x1

    move v8, v0

    goto :goto_5

    :cond_7
    :goto_6
    return-object v7
.end method

.method private getPixValue(Ljava/io/RandomAccessFile;J)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 244
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 245
    iget p2, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    const/16 p3, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p2, v5, :cond_5

    if-eq p2, v0, :cond_4

    if-eq p2, p3, :cond_3

    const/16 v6, 0x10

    if-eq p2, v6, :cond_2

    const/16 p0, 0x18

    if-eq p2, p0, :cond_1

    const/16 p0, 0x20

    if-eq p2, p0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p0, v0, [B

    .line 396
    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 399
    aget-byte p1, p0, v4

    aput-byte p1, v1, v4

    .line 400
    aget-byte p1, p0, v5

    aput-byte p1, v1, v5

    .line 401
    aget-byte p1, p0, v3

    aput-byte p1, v1, v3

    .line 402
    aget-byte p0, p0, v2

    aput-byte p0, v1, v2

    goto/16 :goto_0

    :cond_1
    new-array p0, v2, [B

    .line 367
    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 370
    aget-byte p1, p0, v4

    aput-byte p1, v1, v4

    .line 371
    aget-byte p1, p0, v5

    aput-byte p1, v1, v5

    .line 372
    aget-byte p0, p0, v3

    aput-byte p0, v1, v3

    aput-byte v4, v1, v2

    goto/16 :goto_0

    :cond_2
    new-array p2, v3, [B

    .line 343
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 346
    invoke-direct {p0, p2, v3}, Lcom/carocean/navicar/util/AtcLogoUtils;->byte2Int([BI)I

    move-result p0

    and-int/lit8 p1, p0, 0x1f

    shl-int/2addr p1, v2

    or-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    aput-byte p1, v1, v4

    and-int/lit16 p1, p0, 0x7e0

    shr-int/2addr p1, v2

    or-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v1, v5

    const p1, 0xf800

    and-int/2addr p0, p1

    shr-int/2addr p0, p3

    or-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    aput-byte v4, v1, v2

    goto :goto_0

    :cond_3
    new-array p2, v5, [B

    .line 312
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 313
    invoke-direct {p0, p2, v5}, Lcom/carocean/navicar/util/AtcLogoUtils;->byte2Int([BI)I

    move-result p1

    mul-int/2addr p1, v0

    .line 316
    iget-object p0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoRGBquad:[B

    aget-byte p2, p0, p1

    aput-byte p2, v1, v4

    add-int/lit8 p2, p1, 0x1

    .line 317
    aget-byte p2, p0, p2

    aput-byte p2, v1, v5

    add-int/2addr p1, v3

    .line 318
    aget-byte p0, p0, p1

    aput-byte p0, v1, v3

    aput-byte v4, v1, v2

    goto :goto_0

    :cond_4
    new-array p2, v5, [B

    .line 274
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 275
    aget-byte p1, p2, v4

    iget p2, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    rsub-int/lit8 v6, p2, 0x4

    shr-int/2addr p1, v6

    and-int/lit8 p1, p1, 0xf

    mul-int/2addr p1, v0

    const/16 v6, 0x3c

    .line 283
    iget-object v6, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoRGBquad:[B

    aget-byte v7, v6, p1

    aput-byte v7, v1, v4

    add-int/lit8 v7, p1, 0x1

    .line 284
    aget-byte v7, v6, v7

    aput-byte v7, v1, v5

    add-int/2addr p1, v3

    .line 285
    aget-byte p1, v6, p1

    aput-byte p1, v1, v3

    aput-byte v4, v1, v2

    add-int/2addr p2, v0

    .line 308
    rem-int/2addr p2, p3

    iput p2, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    goto :goto_0

    :cond_5
    new-array p2, v5, [B

    .line 248
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 249
    aget-byte p1, p2, v4

    iget p2, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    rsub-int/lit8 v6, p2, 0x7

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    mul-int/2addr p1, v0

    .line 252
    iget-object v0, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoRGBquad:[B

    aget-byte v6, v0, p1

    aput-byte v6, v1, v4

    add-int/lit8 v6, p1, 0x1

    .line 253
    aget-byte v6, v0, v6

    aput-byte v6, v1, v5

    add-int/2addr p1, v3

    .line 254
    aget-byte p1, v0, p1

    aput-byte p1, v1, v3

    aput-byte v4, v1, v2

    add-int/2addr p2, v5

    .line 270
    rem-int/2addr p2, p3

    iput p2, p0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    :goto_0
    return-object v1
.end method

.method private insertPixle(Ljava/io/RandomAccessFile;J)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 80
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    div-int/lit8 v2, v1, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    move v2, v4

    .line 86
    :cond_1
    sget v1, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x3

    div-int/2addr v5, v3

    mul-int/2addr v5, v3

    mul-int/lit8 v6, v1, 0x4

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    mul-int/2addr v1, v3

    .line 87
    new-array v1, v1, [B

    const/4 v6, 0x0

    .line 89
    iput v6, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    .line 92
    invoke-virtual/range {p1 .. p3}, Ljava/io/RandomAccessFile;->seek(J)V

    move v7, v6

    move v8, v7

    move v9, v8

    .line 93
    :goto_0
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    const/4 v11, -0x1

    if-ge v7, v10, :cond_c

    .line 94
    iget v12, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    const/16 v13, 0x8

    if-eq v12, v3, :cond_2

    if-ne v12, v4, :cond_3

    .line 95
    :cond_2
    div-int v14, v13, v12

    mul-int/2addr v14, v7

    iget v15, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    div-int/2addr v15, v12

    add-int/2addr v14, v15

    if-lt v14, v10, :cond_3

    goto/16 :goto_7

    :cond_3
    mul-int v10, v7, v2

    int-to-long v14, v10

    add-long v14, p2, v14

    move-object/from16 v10, p1

    .line 99
    invoke-direct {v0, v10, v14, v15}, Lcom/carocean/navicar/util/AtcLogoUtils;->getPixValue(Ljava/io/RandomAccessFile;J)[B

    move-result-object v12

    .line 102
    sget v14, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    iget v15, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    div-int v16, v14, v15

    .line 103
    rem-int/2addr v14, v15

    :goto_1
    if-eqz v16, :cond_5

    move v15, v6

    :goto_2
    if-ge v15, v3, :cond_4

    add-int/lit8 v17, v8, 0x1

    add-int/lit8 v18, v15, 0x1

    .line 107
    aget-byte v15, v12, v15

    aput-byte v15, v1, v8

    move/from16 v8, v17

    move/from16 v15, v18

    goto :goto_2

    :cond_4
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    :cond_5
    if-eqz v14, :cond_a

    if-nez v9, :cond_6

    .line 113
    iget v9, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    div-int/2addr v9, v14

    move v15, v6

    :goto_3
    if-ge v15, v3, :cond_6

    add-int/lit8 v16, v8, 0x1

    add-int/lit8 v17, v15, 0x1

    .line 116
    aget-byte v15, v12, v15

    aput-byte v15, v1, v8

    move/from16 v8, v16

    move/from16 v15, v17

    goto :goto_3

    .line 119
    :cond_6
    iget v12, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    rem-int v14, v12, v14

    if-eqz v14, :cond_9

    .line 121
    div-int/2addr v12, v14

    .line 122
    iget v15, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    if-eq v15, v3, :cond_8

    if-ne v15, v4, :cond_7

    goto :goto_5

    .line 128
    :cond_7
    rem-int v13, v7, v12

    if-nez v13, :cond_9

    mul-int/2addr v12, v14

    if-gt v7, v12, :cond_9

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 123
    :cond_8
    :goto_5
    div-int/2addr v13, v15

    mul-int/2addr v13, v7

    iget v3, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    div-int/2addr v3, v15

    add-int/2addr v13, v3

    .line 124
    rem-int v3, v13, v12

    if-nez v3, :cond_9

    mul-int/2addr v12, v14

    if-gt v13, v12, :cond_9

    goto :goto_4

    :cond_9
    :goto_6
    add-int/2addr v9, v11

    .line 135
    :cond_a
    iget v3, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    if-nez v3, :cond_b

    add-int/lit8 v7, v7, 0x1

    :cond_b
    const/4 v3, 0x4

    goto/16 :goto_0

    :cond_c
    :goto_7
    if-eqz v5, :cond_d

    add-int/lit8 v0, v8, 0x1

    .line 140
    aput-byte v11, v1, v8

    add-int/lit8 v5, v5, -0x1

    move v8, v0

    goto :goto_7

    :cond_d
    return-object v1
.end method

.method private int2byte(I)[B
    .locals 2

    const/4 p0, 0x4

    new-array p0, p0, [B

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p0, v1

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p0, v1

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p0, v1

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p0, v0

    return-object p0
.end method

.method private writeFileRawData2(Ljava/io/RandomAccessFile;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "AtcLogoUtils"

    const-string v2, "writeFileRawData2"

    .line 437
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget v2, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoOffset:I

    .line 440
    iget v3, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    div-int/lit8 v3, v3, 0x8

    .line 442
    iget v4, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    mul-int v5, v4, v3

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x4

    div-int/2addr v5, v6

    mul-int/2addr v5, v6

    mul-int/2addr v4, v3

    sub-int/2addr v5, v4

    .line 446
    sget v4, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v7, v7, 0x3

    div-int/2addr v7, v6

    mul-int/2addr v7, v6

    mul-int/lit8 v8, v4, 0x4

    sub-int/2addr v7, v8

    add-int/2addr v4, v7

    mul-int/2addr v4, v6

    .line 448
    sget v8, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    mul-int/2addr v8, v4

    iput v8, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawSize:I

    .line 449
    new-array v9, v8, [B

    iput-object v9, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    sub-int/2addr v8, v4

    .line 451
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeFileRawData2 start"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v9, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawSize:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move v9, v7

    const/4 v10, 0x0

    .line 453
    :goto_0
    iget v11, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoH:I

    if-gt v9, v11, :cond_14

    int-to-long v11, v2

    move-object/from16 v13, p1

    .line 454
    invoke-direct {v0, v13, v11, v12}, Lcom/carocean/navicar/util/AtcLogoUtils;->getLine(Ljava/io/RandomAccessFile;J)[B

    move-result-object v11

    .line 456
    iget v12, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoH:I

    sget v14, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    if-le v12, v14, :cond_6

    .line 457
    div-int v15, v12, v14

    sub-int/2addr v15, v7

    .line 458
    rem-int/2addr v12, v14

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v4, :cond_0

    .line 460
    iget-object v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    add-int v16, v8, v14

    aget-byte v17, v11, v14

    aput-byte v17, v1, v16

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    sub-int/2addr v8, v4

    add-int/2addr v9, v15

    if-eqz v12, :cond_3

    if-nez v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 468
    sget v1, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    div-int v10, v1, v12

    .line 470
    :cond_1
    sget v1, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    rem-int v11, v1, v12

    if-eqz v11, :cond_2

    .line 472
    div-int/2addr v1, v11

    .line 473
    rem-int v12, v14, v1

    if-nez v12, :cond_2

    mul-int/2addr v1, v11

    if-gt v14, v1, :cond_2

    add-int/lit8 v10, v10, 0x1

    :cond_2
    add-int/lit8 v10, v10, -0x1

    :cond_3
    add-int/2addr v15, v7

    .line 480
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    if-ne v1, v7, :cond_4

    .line 481
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x3

    div-int/2addr v1, v6

    :goto_2
    mul-int/2addr v1, v6

    :goto_3
    mul-int/2addr v1, v15

    goto/16 :goto_9

    :cond_4
    if-ne v1, v6, :cond_5

    .line 483
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    div-int/2addr v1, v6

    goto :goto_2

    .line 485
    :cond_5
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v5

    goto :goto_3

    :cond_6
    if-ge v12, v14, :cond_10

    .line 487
    div-int v1, v14, v12

    .line 488
    rem-int/2addr v14, v12

    :goto_4
    if-eqz v1, :cond_8

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v4, :cond_7

    .line 491
    iget-object v15, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    add-int v16, v8, v12

    aget-byte v17, v11, v12

    aput-byte v17, v15, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    sub-int/2addr v8, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_8
    if-eqz v14, :cond_d

    if-nez v10, :cond_a

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v4, :cond_9

    .line 499
    iget-object v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    add-int v12, v8, v1

    aget-byte v15, v11, v1

    aput-byte v15, v10, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    sub-int/2addr v8, v4

    .line 501
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoH:I

    div-int v10, v1, v14

    .line 503
    :cond_a
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoH:I

    rem-int v11, v1, v14

    if-eqz v11, :cond_c

    .line 505
    div-int v12, v1, v11

    .line 506
    rem-int/2addr v1, v11

    if-nez v1, :cond_b

    add-int/lit8 v12, v12, -0x1

    .line 508
    :cond_b
    rem-int v1, v9, v12

    if-nez v1, :cond_c

    mul-int/2addr v12, v11

    if-gt v9, v12, :cond_c

    add-int/lit8 v10, v10, 0x1

    :cond_c
    add-int/lit8 v10, v10, -0x1

    .line 514
    :cond_d
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    if-ne v1, v7, :cond_e

    .line 515
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x3

    div-int/2addr v1, v6

    goto :goto_8

    :cond_e
    if-ne v1, v6, :cond_f

    .line 517
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    div-int/2addr v1, v6

    goto :goto_8

    .line 519
    :cond_f
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v4, :cond_11

    .line 522
    iget-object v12, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    add-int v14, v8, v1

    aget-byte v15, v11, v1

    aput-byte v15, v12, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    sub-int/2addr v8, v4

    .line 524
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    if-ne v1, v7, :cond_12

    .line 525
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x3

    div-int/2addr v1, v6

    :goto_8
    mul-int/2addr v1, v6

    :goto_9
    add-int/2addr v2, v1

    goto :goto_b

    :cond_12
    if-ne v1, v6, :cond_13

    .line 527
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    div-int/2addr v1, v6

    goto :goto_8

    .line 529
    :cond_13
    iget v1, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    :goto_a
    mul-int/2addr v1, v3

    add-int/2addr v1, v5

    goto :goto_9

    :goto_b
    add-int/2addr v9, v7

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method private writeFileRawData3(Ljava/io/RandomAccessFile;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "AtcLogoUtils"

    const-string v3, "writeFileRawData3"

    .line 536
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget v3, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoOffset:I

    .line 539
    iget v4, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    div-int/lit8 v5, v4, 0x8

    .line 541
    iget v6, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    mul-int v7, v6, v5

    const/4 v8, 0x3

    add-int/2addr v7, v8

    const/4 v9, 0x4

    div-int/2addr v7, v9

    mul-int/2addr v7, v9

    mul-int/2addr v6, v5

    sub-int/2addr v7, v6

    .line 545
    sget v6, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    mul-int/lit8 v10, v6, 0x4

    add-int/2addr v10, v8

    div-int/2addr v10, v9

    mul-int/2addr v10, v9

    mul-int/lit8 v11, v6, 0x4

    sub-int/2addr v10, v11

    add-int/2addr v6, v10

    mul-int/2addr v6, v9

    .line 547
    iput v4, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurIndex:I

    const/16 v4, 0x36

    if-eq v3, v4, :cond_0

    .line 550
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The zip bmp image head offset is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoOffset:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoOffset:I

    sub-int/2addr v12, v4

    div-int/2addr v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " color!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iput v4, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoOffset:I

    .line 554
    :cond_0
    iget v4, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoOffset:I

    .line 555
    sget v11, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    mul-int/2addr v11, v6

    add-int/2addr v11, v4

    iput v11, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawSize:I

    .line 556
    new-array v11, v11, [B

    iput-object v11, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    new-array v11, v9, [B

    .line 558
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get header "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawSize:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " start"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    move v14, v12

    .line 559
    :goto_0
    iget v15, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoOffset:I

    div-int/2addr v15, v9

    const/16 v16, 0x2

    if-ge v14, v15, :cond_1

    int-to-long v8, v14

    const-wide/16 v18, 0x4

    mul-long v8, v8, v18

    .line 560
    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 561
    invoke-virtual {v1, v11}, Ljava/io/RandomAccessFile;->read([B)I

    .line 562
    iget-object v8, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    mul-int/lit8 v9, v14, 0x4

    aget-byte v18, v11, v12

    aput-byte v18, v8, v9

    add-int/lit8 v18, v9, 0x1

    const/16 v17, 0x1

    .line 563
    aget-byte v17, v11, v17

    aput-byte v17, v8, v18

    add-int/lit8 v17, v9, 0x2

    .line 564
    aget-byte v16, v11, v16

    aput-byte v16, v8, v17

    const/4 v15, 0x3

    add-int/2addr v9, v15

    .line 565
    aget-byte v16, v11, v15

    aput-byte v16, v8, v9

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x4

    goto :goto_0

    .line 567
    :cond_1
    iget-object v8, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    const/16 v9, 0x1c

    aget-byte v8, v8, v9

    const/16 v11, 0x18

    if-eq v8, v11, :cond_2

    .line 568
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The zip bmp image head bitcount is "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v14, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    aget-byte v14, v14, v9

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "!"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v8, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    aput-byte v11, v8, v9

    .line 573
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writeFileRawData start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenW:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v10, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v12

    const/4 v8, 0x1

    .line 578
    :goto_1
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoH:I

    if-gt v8, v10, :cond_17

    int-to-long v10, v3

    .line 579
    invoke-direct {v0, v1, v10, v11}, Lcom/carocean/navicar/util/AtcLogoUtils;->getLine(Ljava/io/RandomAccessFile;J)[B

    move-result-object v10

    .line 581
    iget v11, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoH:I

    sget v13, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    if-le v11, v13, :cond_9

    .line 582
    div-int v14, v11, v13

    const/16 v17, 0x1

    add-int/lit8 v14, v14, -0x1

    .line 583
    rem-int/2addr v11, v13

    move v13, v12

    :goto_2
    if-ge v13, v6, :cond_3

    .line 585
    iget-object v12, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    add-int v19, v4, v13

    aget-byte v20, v10, v13

    aput-byte v20, v12, v19

    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    sub-int/2addr v4, v6

    add-int/2addr v8, v14

    if-eqz v11, :cond_6

    if-nez v9, :cond_4

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 593
    sget v9, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    div-int/2addr v9, v11

    .line 595
    :cond_4
    sget v10, Lcom/carocean/navicar/util/AtcLogoUtils;->mScreenH:I

    rem-int v11, v10, v11

    if-eqz v11, :cond_5

    .line 597
    div-int/2addr v10, v11

    .line 598
    rem-int v12, v13, v10

    if-nez v12, :cond_5

    mul-int/2addr v10, v11

    if-gt v13, v10, :cond_5

    add-int/lit8 v9, v9, 0x1

    :cond_5
    add-int/lit8 v9, v9, -0x1

    :cond_6
    const/4 v10, 0x1

    add-int/2addr v14, v10

    .line 605
    iget v11, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    if-ne v11, v10, :cond_7

    .line 606
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x8

    const/4 v12, 0x3

    add-int/2addr v10, v12

    const/4 v13, 0x4

    div-int/2addr v10, v13

    :goto_3
    mul-int/2addr v10, v13

    :goto_4
    mul-int/2addr v10, v14

    :goto_5
    add-int/2addr v3, v10

    goto :goto_6

    :cond_7
    const/4 v12, 0x3

    const/4 v13, 0x4

    if-ne v11, v13, :cond_8

    .line 608
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    div-int/2addr v10, v13

    goto :goto_3

    .line 610
    :cond_8
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    mul-int/2addr v10, v5

    add-int/2addr v10, v7

    goto :goto_4

    :goto_6
    const/4 v10, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x4

    goto/16 :goto_d

    :cond_9
    if-ge v11, v13, :cond_13

    .line 612
    div-int v12, v13, v11

    .line 613
    rem-int/2addr v13, v11

    :goto_7
    if-eqz v12, :cond_b

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v6, :cond_a

    .line 616
    iget-object v14, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    add-int v19, v4, v11

    aget-byte v20, v10, v11

    aput-byte v20, v14, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_a
    sub-int/2addr v4, v6

    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    :cond_b
    if-eqz v13, :cond_10

    if-nez v9, :cond_d

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v6, :cond_c

    .line 624
    iget-object v11, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    add-int v12, v4, v9

    aget-byte v14, v10, v9

    aput-byte v14, v11, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_c
    sub-int/2addr v4, v6

    .line 626
    iget v9, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoH:I

    div-int/2addr v9, v13

    .line 628
    :cond_d
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoH:I

    rem-int v11, v10, v13

    if-eqz v11, :cond_f

    .line 630
    div-int v12, v10, v11

    .line 631
    rem-int/2addr v10, v11

    if-nez v10, :cond_e

    add-int/lit8 v12, v12, -0x1

    .line 633
    :cond_e
    rem-int v10, v8, v12

    if-nez v10, :cond_f

    mul-int/2addr v12, v11

    if-gt v8, v12, :cond_f

    add-int/lit8 v9, v9, 0x1

    :cond_f
    add-int/lit8 v9, v9, -0x1

    .line 639
    :cond_10
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    .line 640
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x8

    const/4 v12, 0x3

    add-int/2addr v10, v12

    const/4 v13, 0x4

    div-int/2addr v10, v13

    :goto_a
    mul-int/2addr v10, v13

    goto :goto_5

    :cond_11
    const/4 v12, 0x3

    const/4 v13, 0x4

    if-ne v10, v13, :cond_12

    .line 642
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    div-int/2addr v10, v13

    goto :goto_a

    .line 644
    :cond_12
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    mul-int/2addr v10, v5

    add-int/2addr v10, v7

    goto/16 :goto_5

    :cond_13
    const/4 v11, 0x0

    :goto_b
    if-ge v11, v6, :cond_14

    .line 647
    iget-object v12, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurRawData:[B

    add-int v13, v4, v11

    aget-byte v14, v10, v11

    aput-byte v14, v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_14
    add-int/2addr v4, v6

    .line 649
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoBitCount:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    .line 650
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x8

    const/4 v12, 0x3

    add-int/2addr v10, v12

    const/4 v13, 0x4

    div-int/2addr v10, v13

    mul-int/2addr v10, v13

    add-int/2addr v3, v10

    move v10, v11

    goto :goto_d

    :cond_15
    const/4 v12, 0x3

    const/4 v13, 0x4

    if-ne v10, v13, :cond_16

    .line 652
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    div-int/2addr v10, v13

    mul-int/2addr v10, v13

    goto :goto_c

    .line 654
    :cond_16
    iget v10, v0, Lcom/carocean/navicar/util/AtcLogoUtils;->mCurPhotoW:I

    mul-int/2addr v10, v5

    add-int/2addr v10, v7

    :goto_c
    add-int/2addr v3, v10

    const/4 v10, 0x1

    :goto_d
    add-int/2addr v8, v10

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_17
    const-string v0, "writeFileRawData end"

    .line 657
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public changeImageResolution(Ljava/lang/String;Lcom/carocean/navicar/util/AtcLogoUtils$LogoSetCallBack;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 662
    invoke-interface {p2}, Lcom/carocean/navicar/util/AtcLogoUtils$LogoSetCallBack;->onStart()V

    .line 665
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeImageResolution path = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AtcLogoUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dd if="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " of=/dev/block/by-name/logo"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " of=/dev/block/by-name/fbootlogo"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 672
    invoke-static {v0, p2}, Lcom/carocean/navicar/util/ExcutorUtils;->sudo([Ljava/lang/String;Lcom/carocean/navicar/util/AtcLogoUtils$LogoSetCallBack;)V

    return-void
.end method
