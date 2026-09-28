.class public Lcom/carocean/navicar/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addBMPImageHeader(I)[B
    .locals 3

    const/16 p0, 0xe

    new-array p0, p0, [B

    const/16 v0, 0x42

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    const/4 v0, 0x1

    const/16 v2, 0x4d

    aput-byte v2, p0, v0

    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, p0, v2

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, p0, v2

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, p0, v2

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    const/4 v0, 0x5

    aput-byte p1, p0, v0

    const/4 p1, 0x6

    aput-byte v1, p0, p1

    const/4 p1, 0x7

    aput-byte v1, p0, p1

    const/16 p1, 0x8

    aput-byte v1, p0, p1

    const/16 p1, 0x9

    aput-byte v1, p0, p1

    const/16 p1, 0xa

    const/16 v0, 0x36

    aput-byte v0, p0, p1

    const/16 p1, 0xb

    aput-byte v1, p0, p1

    const/16 p1, 0xc

    aput-byte v1, p0, p1

    const/16 p1, 0xd

    aput-byte v1, p0, p1

    return-object p0
.end method

.method private addBMPImageInfosHeader(II)[B
    .locals 6

    const/16 p0, 0x28

    new-array v0, p0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    aput-byte v1, v0, p0

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    shr-int/lit8 v4, p1, 0x0

    int-to-byte v4, v4

    const/4 v5, 0x4

    aput-byte v4, v0, v5

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    const/4 v5, 0x5

    aput-byte v4, v0, v5

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    const/4 v5, 0x6

    aput-byte v4, v0, v5

    const/16 v4, 0x18

    shr-int/2addr p1, v4

    int-to-byte p1, p1

    const/4 v5, 0x7

    aput-byte p1, v0, v5

    shr-int/lit8 p1, p2, 0x0

    int-to-byte p1, p1

    const/16 v5, 0x8

    aput-byte p1, v0, v5

    shr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    const/16 v5, 0x9

    aput-byte p1, v0, v5

    shr-int/lit8 p1, p2, 0x10

    int-to-byte p1, p1

    const/16 v5, 0xa

    aput-byte p1, v0, v5

    shr-int/lit8 p1, p2, 0x18

    int-to-byte p1, p1

    const/16 p2, 0xb

    aput-byte p1, v0, p2

    const/16 p1, 0xc

    aput-byte p0, v0, p1

    const/16 p1, 0xd

    aput-byte v1, v0, p1

    const/16 p1, 0xe

    aput-byte v4, v0, p1

    const/16 p1, 0xf

    aput-byte v1, v0, p1

    const/16 p1, 0x10

    aput-byte v1, v0, p1

    const/16 p1, 0x11

    aput-byte v1, v0, p1

    const/16 p1, 0x12

    aput-byte v1, v0, p1

    const/16 p1, 0x13

    aput-byte v1, v0, p1

    const/16 p1, 0x14

    aput-byte v1, v0, p1

    const/16 p1, 0x15

    aput-byte v1, v0, p1

    const/16 p1, 0x16

    aput-byte v1, v0, p1

    const/16 p1, 0x17

    aput-byte v1, v0, p1

    const/16 p1, -0x20

    aput-byte p1, v0, v4

    const/16 p1, 0x19

    aput-byte p0, v0, p1

    const/16 p0, 0x1a

    aput-byte v1, v0, p0

    const/16 p0, 0x1b

    aput-byte v1, v0, p0

    const/16 p0, 0x1c

    aput-byte v2, v0, p0

    const/16 p0, 0x1d

    aput-byte v3, v0, p0

    const/16 p0, 0x1e

    aput-byte v1, v0, p0

    const/16 p0, 0x1f

    aput-byte v1, v0, p0

    const/16 p0, 0x20

    aput-byte v1, v0, p0

    const/16 p0, 0x21

    aput-byte v1, v0, p0

    const/16 p0, 0x22

    aput-byte v1, v0, p0

    const/16 p0, 0x23

    aput-byte v1, v0, p0

    const/16 p0, 0x24

    aput-byte v1, v0, p0

    const/16 p0, 0x25

    aput-byte v1, v0, p0

    const/16 p0, 0x26

    aput-byte v1, v0, p0

    const/16 p0, 0x27

    aput-byte v1, v0, p0

    return-object v0
.end method

.method private addBMP_RGB_888([III)[B
    .locals 6

    .line 111
    array-length p0, p1

    .line 112
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    mul-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x3

    .line 113
    new-array p3, p3, [B

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt p0, p2, :cond_1

    sub-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    :goto_1
    if-gt v3, p0, :cond_0

    .line 118
    aget v4, p1, v3

    shr-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, p3, v1

    add-int/lit8 v4, v1, 0x1

    .line 119
    aget v5, p1, v3

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    add-int/lit8 v4, v1, 0x2

    .line 120
    aget v5, p1, v3

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move p0, v2

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public static getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 129
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 130
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 131
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 132
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 133
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 134
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_0

    int-to-float v4, v2

    const/high16 v5, 0x44480000    # 800.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 139
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    :goto_0
    float-to-int v2, v2

    goto :goto_1

    :cond_0
    if-ge v2, v3, :cond_1

    int-to-float v2, v3

    const/high16 v3, 0x43f00000    # 480.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 141
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 145
    :goto_2
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 147
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 148
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public saveLogoPic(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 11

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 16
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 19
    invoke-direct {p0, v10, v8, v9}, Lcom/carocean/navicar/util/BitmapUtils;->addBMP_RGB_888([III)[B

    move-result-object p1

    .line 20
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/carocean/navicar/util/BitmapUtils;->addBMPImageHeader(I)[B

    move-result-object v0

    .line 21
    invoke-direct {p0, v8, v9}, Lcom/carocean/navicar/util/BitmapUtils;->addBMPImageInfosHeader(II)[B

    move-result-object p0

    .line 23
    array-length v1, p1

    const/16 v2, 0x36

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 24
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xe

    .line 25
    array-length v3, p0

    invoke-static {p0, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    array-length p0, p1

    invoke-static {p1, v4, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 33
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 34
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 35
    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
