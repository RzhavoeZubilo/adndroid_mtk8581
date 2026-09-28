.class public Lcom/carocean/navicar/Navi$Status$SystemParamInfo;
.super Ljava/lang/Object;
.source "Navi.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/Navi$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemParamInfo"
.end annotation


# static fields
.field public static final GPS_MIXING_DEFAULT:I = 0x3

.field private static final serialVersionUID:J = 0x4f097fb04c9fcffL


# instance fields
.field public beep_enable:I

.field public bklight_min:I

.field public bklight_night:I

.field public bklight_normal:I

.field public bt_volume:I

.field public default_volume:[B

.field public eq_info:[I

.field public forbid_video_driving:I

.field public gis_volume:I

.field public gps_mixing:I

.field public loadsource_mode:I

.field public mcu_version:Ljava/lang/String;

.field public media_volume:I

.field public pq_info_bluelight:[I

.field public pq_info_brightness:[B

.field public pq_info_contrast:[B

.field public pq_info_dynamic_contrast:[B

.field public pq_info_enable_bluelight:[Z

.field public pq_info_gamma:[B

.field public pq_info_grass_hue:[B

.field public pq_info_grass_sat:[B

.field public pq_info_picture_mode:[B

.field public pq_info_sat:[B

.field public pq_info_sharpness:[B

.field public pq_info_skin_hue:[B

.field public pq_info_skin_sat:[B

.field public pq_info_sky_hue:[B

.field public pq_info_sky_sat:[B

.field public pq_mode:B

.field public rear_camera_mode:I

.field public system_version:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public wallpaper_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 1211
    iput v0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->gps_mixing:I

    const/16 v1, 0x66

    .line 1212
    iput v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bklight_normal:I

    const/16 v1, 0x33

    .line 1213
    iput v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bklight_night:I

    const/16 v1, 0x1f

    .line 1214
    iput v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bklight_min:I

    const/4 v1, 0x1

    .line 1215
    iput v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->beep_enable:I

    const/4 v1, 0x7

    new-array v1, v1, [B

    .line 1220
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->default_volume:[B

    const/16 v1, 0xa

    .line 1221
    iput v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->media_volume:I

    .line 1222
    iput v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bt_volume:I

    .line 1223
    iput v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->gis_volume:I

    const/4 v1, 0x0

    .line 1224
    iput v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->rear_camera_mode:I

    .line 1225
    iput v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->loadsource_mode:I

    const-string v2, "system/wallpaper0"

    .line 1230
    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->wallpaper_path:Ljava/lang/String;

    .line 1235
    iput-byte v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_mode:B

    new-array v2, v0, [B

    .line 1236
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_picture_mode:[B

    new-array v2, v0, [B

    .line 1237
    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_brightness:[B

    new-array v2, v0, [B

    .line 1238
    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_contrast:[B

    new-array v2, v0, [B

    .line 1239
    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_sat:[B

    new-array v2, v0, [B

    .line 1240
    fill-array-data v2, :array_5

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_skin_hue:[B

    new-array v2, v0, [B

    .line 1241
    fill-array-data v2, :array_6

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_skin_sat:[B

    new-array v2, v0, [B

    .line 1242
    fill-array-data v2, :array_7

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_sky_hue:[B

    new-array v2, v0, [B

    .line 1243
    fill-array-data v2, :array_8

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_sky_sat:[B

    new-array v2, v0, [B

    .line 1244
    fill-array-data v2, :array_9

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_grass_hue:[B

    new-array v2, v0, [B

    .line 1245
    fill-array-data v2, :array_a

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_grass_sat:[B

    new-array v2, v0, [B

    .line 1246
    fill-array-data v2, :array_b

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_sharpness:[B

    new-array v2, v0, [B

    .line 1247
    fill-array-data v2, :array_c

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_gamma:[B

    new-array v2, v0, [B

    .line 1248
    fill-array-data v2, :array_d

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_dynamic_contrast:[B

    new-array v2, v0, [Z

    .line 1249
    fill-array-data v2, :array_e

    iput-object v2, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_enable_bluelight:[Z

    new-array v0, v0, [I

    .line 1250
    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->pq_info_bluelight:[I

    .line 1255
    iput v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->forbid_video_driving:I

    const-string v0, "android 9.0"

    .line 1257
    iput-object v0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->system_version:Ljava/lang/String;

    const-string v0, "MCU-VERSION"

    .line 1259
    iput-object v0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->mcu_version:Ljava/lang/String;

    const-string v0, "CKX12345678"

    .line 1261
    iput-object v0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->uuid:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 1283
    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->eq_info:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x12t
        0x12t
        0x12t
        0x12t
        0x17t
        0x18t
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_3
    .array-data 1
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_4
    .array-data 1
        0x4t
        0x4t
        0x4t
    .end array-data

    :array_5
    .array-data 1
        0xct
        0xct
        0xct
    .end array-data

    :array_6
    .array-data 1
        0x6t
        0x6t
        0x6t
    .end array-data

    :array_7
    .array-data 1
        0xct
        0xct
        0xct
    .end array-data

    :array_8
    .array-data 1
        0xat
        0xat
        0xat
    .end array-data

    :array_9
    .array-data 1
        0xct
        0xct
        0xct
    .end array-data

    :array_a
    .array-data 1
        0xat
        0xat
        0xat
    .end array-data

    :array_b
    .array-data 1
        0x2t
        0x2t
        0x2t
    .end array-data

    :array_c
    .array-data 1
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 4
        0x80
        0x80
        0x80
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x7
        0x7
        0x1
        0x7
        0x2
        0x0
        0x7
        0x7
        0x7
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemParamInfo: gps_mixing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->gps_mixing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bklight_normal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bklight_normal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bklight_night = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bklight_night:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bklight_min = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bklight_min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", system_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->system_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mcu_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->mcu_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eq_info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->eq_info:[I

    .line 1294
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
