.class public Lcom/android/launcher2/uitl/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# instance fields
.field public cityname:Ljava/lang/String;

.field public code:I

.field public condition:Ljava/lang/String;

.field public currentTemp:Ljava/lang/String;

.field public highTemp:Ljava/lang/String;

.field public imageDrawable:Landroid/graphics/drawable/Drawable;

.field public lowTemp:Ljava/lang/String;

.field public pm25:Ljava/lang/String;

.field public quality:Ljava/lang/String;

.field public unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/android/launcher2/uitl/Weather;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/android/launcher2/uitl/Weather;->code:I

    .line 68
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->highTemp:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->lowTemp:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->currentTemp:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->condition:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->cityname:Ljava/lang/String;

    .line 73
    iput v0, p0, Lcom/android/launcher2/uitl/Weather;->code:I

    .line 74
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setCurrentTempC(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->currentTemp:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTempF(Ljava/lang/String;)V
    .locals 3

    .line 33
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v1, 0x42000000    # 32.0f

    sub-float/2addr p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->currentTemp:Ljava/lang/String;

    return-void
.end method

.method public setHighTempC(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->highTemp:Ljava/lang/String;

    return-void
.end method

.method public setHighTempF(Ljava/lang/String;)V
    .locals 3

    .line 12
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v1, 0x42000000    # 32.0f

    sub-float/2addr p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->highTemp:Ljava/lang/String;

    return-void
.end method

.method public setLowTempC(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->lowTemp:Ljava/lang/String;

    return-void
.end method

.method public setLowTempF(Ljava/lang/String;)V
    .locals 3

    .line 21
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v1, 0x42000000    # 32.0f

    sub-float/2addr p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->lowTemp:Ljava/lang/String;

    return-void
.end method

.method public setPM25(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    return-void
.end method

.method public wClone(Lcom/android/launcher2/uitl/Weather;)V
    .locals 1

    .line 79
    iget v0, p1, Lcom/android/launcher2/uitl/Weather;->code:I

    iput v0, p0, Lcom/android/launcher2/uitl/Weather;->code:I

    .line 80
    iget-object v0, p1, Lcom/android/launcher2/uitl/Weather;->condition:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/uitl/Weather;->condition:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/android/launcher2/uitl/Weather;->currentTemp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/uitl/Weather;->currentTemp:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/android/launcher2/uitl/Weather;->highTemp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/uitl/Weather;->highTemp:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/android/launcher2/uitl/Weather;->lowTemp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/uitl/Weather;->lowTemp:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/android/launcher2/uitl/Weather;->imageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/uitl/Weather;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v0, p1, Lcom/android/launcher2/uitl/Weather;->unit:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/uitl/Weather;->unit:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/android/launcher2/uitl/Weather;->cityname:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/uitl/Weather;->cityname:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    .line 88
    iget-object p1, p1, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    return-void
.end method
