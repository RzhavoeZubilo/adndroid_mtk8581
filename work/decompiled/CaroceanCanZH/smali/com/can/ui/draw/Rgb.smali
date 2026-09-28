.class public Lcom/can/ui/draw/Rgb;
.super Landroid/widget/RelativeLayout;
.source "Rgb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/can/assist/CanContant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/draw/Rgb$OnRGBlistener;
    }
.end annotation


# static fields
.field private static final MSG_DLG_FINISH:I = 0x65

.field private static final MSG_VALUE_SET:I = 0x64

.field private static bStartTracking:Z = false

.field private static fileName:Ljava/lang/String; = "/sys/devices/platform/image_sensor/reg_status"

.field private static finishTimeOut:I = 0x1388

.field private static rgb_value:[[I

.field private static rgb_value_def:[[I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRGBlistener:Lcom/can/ui/draw/Rgb$OnRGBlistener;

.field private mRgbCloseBtn:Landroid/widget/Button;

.field private mRgbResetBtn:Landroid/widget/Button;

.field private mType:I

.field private seekBar:[Landroid/widget/SeekBar;

.field private textView:[Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 40
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    sput-object v1, Lcom/can/ui/draw/Rgb;->rgb_value:[[I

    new-array v0, v0, [[I

    new-array v1, v2, [I

    .line 42
    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/can/ui/draw/Rgb;->rgb_value_def:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x82
        0x82
        0x0
        0x9b
    .end array-data

    :array_1
    .array-data 4
        0x82
        0x82
        0x0
        0x9b
    .end array-data

    :array_2
    .array-data 4
        0x82
        0x82
        0x0
        0x9b
    .end array-data

    :array_3
    .array-data 4
        0x82
        0x82
        0x0
        0x9b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/can/ui/draw/Rgb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/can/ui/draw/Rgb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x4

    new-array p2, p1, [Landroid/widget/SeekBar;

    .line 34
    iput-object p2, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    new-array p1, p1, [Landroid/widget/TextView;

    .line 35
    iput-object p1, p0, Lcom/can/ui/draw/Rgb;->textView:[Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/can/ui/draw/Rgb;->mRGBlistener:Lcom/can/ui/draw/Rgb$OnRGBlistener;

    const/4 p1, 0x1

    .line 37
    iput p1, p0, Lcom/can/ui/draw/Rgb;->mType:I

    .line 210
    new-instance p1, Lcom/can/ui/draw/Rgb$2;

    invoke-direct {p1, p0}, Lcom/can/ui/draw/Rgb$2;-><init>(Lcom/can/ui/draw/Rgb;)V

    iput-object p1, p0, Lcom/can/ui/draw/Rgb;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/can/ui/draw/Rgb;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/can/ui/draw/Rgb;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/can/ui/draw/Rgb;)Lcom/can/ui/draw/Rgb$OnRGBlistener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/can/ui/draw/Rgb;->mRGBlistener:Lcom/can/ui/draw/Rgb$OnRGBlistener;

    return-object p0
.end method

.method private finishCancel()V
    .locals 1

    .line 231
    sget v0, Lcom/can/ui/draw/Rgb;->finishTimeOut:I

    if-lez v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/can/ui/draw/Rgb;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private finishLater()V
    .locals 4

    .line 224
    sget v0, Lcom/can/ui/draw/Rgb;->finishTimeOut:I

    if-lez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object p0, p0, Lcom/can/ui/draw/Rgb;->mHandler:Landroid/os/Handler;

    sget v0, Lcom/can/ui/draw/Rgb;->finishTimeOut:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 72
    :goto_0
    sget-object v2, Lcom/can/ui/draw/Rgb;->PERSYS_RGB_VIDEO:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 73
    :goto_1
    sget-object v3, Lcom/can/ui/draw/Rgb;->PERSYS_RGB_VIDEO:[[Ljava/lang/String;

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 74
    sget-object v3, Lcom/can/ui/draw/Rgb;->rgb_value:[[I

    aget-object v3, v3, v1

    sget-object v4, Lcom/can/ui/draw/Rgb;->PERSYS_RGB_VIDEO:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    sget-object v5, Lcom/can/ui/draw/Rgb;->rgb_value:[[I

    aget-object v5, v5, v1

    aget v5, v5, v2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    :goto_2
    sget-object v1, Lcom/can/ui/draw/Rgb;->PERSYS_RGB_VIDEO_DEF:[[Ljava/lang/String;

    iget v2, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 79
    sget-object v1, Lcom/can/ui/draw/Rgb;->rgb_value_def:[[I

    aget-object v1, v1, v2

    sget-object v2, Lcom/can/ui/draw/Rgb;->PERSYS_RGB_VIDEO_DEF:[[Ljava/lang/String;

    iget v3, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    sget-object v4, Lcom/can/ui/draw/Rgb;->rgb_value_def:[[I

    aget-object v3, v4, v3

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f0806fe

    .line 86
    invoke-virtual {p0, v0}, Lcom/can/ui/draw/Rgb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/can/ui/draw/Rgb;->mRgbResetBtn:Landroid/widget/Button;

    const v0, 0x7f0806ff

    .line 87
    invoke-virtual {p0, v0}, Lcom/can/ui/draw/Rgb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/can/ui/draw/Rgb;->mRgbCloseBtn:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->mRgbResetBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->mRgbCloseBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    const v1, 0x7f080713

    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Rgb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 92
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    const v1, 0x7f080714

    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Rgb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 93
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    const v1, 0x7f080715

    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Rgb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 94
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    const v1, 0x7f080716

    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Rgb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 95
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    aget-object v0, v0, v2

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 96
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 97
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 98
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 100
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->textView:[Landroid/widget/TextView;

    const v1, 0x7f080793

    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Rgb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 101
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->textView:[Landroid/widget/TextView;

    const v1, 0x7f080795

    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Rgb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v3

    .line 102
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->textView:[Landroid/widget/TextView;

    const v1, 0x7f080796

    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Rgb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v4

    .line 103
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->textView:[Landroid/widget/TextView;

    const v1, 0x7f08079a

    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Rgb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v5

    move v0, v2

    .line 105
    :goto_0
    sget-object v1, Lcom/can/ui/draw/Rgb;->rgb_value:[[I

    iget v3, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v4, v1, v3

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    aget-object v1, v1, v3

    aget v1, v1, v0

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 107
    iget-object v1, p0, Lcom/can/ui/draw/Rgb;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v3, Lcom/can/ui/draw/Rgb;->rgb_value:[[I

    iget v4, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 111
    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private resetRGB()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 237
    :goto_0
    sget-object v2, Lcom/can/ui/draw/Rgb;->rgb_value_def:[[I

    iget v3, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v4, v2, v3

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 238
    sget-object v2, Lcom/can/ui/draw/Rgb;->PERSYS_RGB_VIDEO:[[Ljava/lang/String;

    iget v3, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/can/ui/draw/Rgb;->rgb_value_def:[[I

    iget v5, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v4, v4, v5

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    aget-object v2, v2, v1

    sget-object v3, Lcom/can/ui/draw/Rgb;->rgb_value_def:[[I

    iget v4, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v3, v3, v4

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 241
    iget-object v2, p0, Lcom/can/ui/draw/Rgb;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    sget-object v3, Lcom/can/ui/draw/Rgb;->rgb_value_def:[[I

    iget v4, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v3, v3, v4

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    aget-object v1, v2, v3

    aget v0, v1, v0

    invoke-direct {p0, v0}, Lcom/can/ui/draw/Rgb;->setBrightNess(I)V

    .line 244
    sget-object v0, Lcom/can/ui/draw/Rgb;->rgb_value_def:[[I

    iget v1, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/can/ui/draw/Rgb;->setContrast(I)V

    .line 245
    sget-object v0, Lcom/can/ui/draw/Rgb;->rgb_value_def:[[I

    iget v1, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/can/ui/draw/Rgb;->setHue(I)V

    .line 246
    sget-object v0, Lcom/can/ui/draw/Rgb;->rgb_value_def:[[I

    iget v1, p0, Lcom/can/ui/draw/Rgb;->mType:I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/can/ui/draw/Rgb;->setSaturation(I)V

    return-void
.end method

.method private sendMessage(I)V
    .locals 6

    .line 198
    new-instance v1, Lcom/can/ui/draw/Rgb$1;

    invoke-direct {v1, p0, p1}, Lcom/can/ui/draw/Rgb$1;-><init>(Lcom/can/ui/draw/Rgb;I)V

    .line 207
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private setBrightNess(I)V
    .locals 2

    .line 304
    sget-object p0, Lcom/can/ui/draw/Rgb;->fileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "9,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/can/ui/draw/Rgb;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setContrast(I)V
    .locals 2

    .line 308
    sget-object p0, Lcom/can/ui/draw/Rgb;->fileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "12,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/can/ui/draw/Rgb;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setHue(I)V
    .locals 2

    .line 312
    sget-object p0, Lcom/can/ui/draw/Rgb;->fileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "11,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/can/ui/draw/Rgb;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSaturation(I)V
    .locals 2

    .line 316
    sget-object p0, Lcom/can/ui/draw/Rgb;->fileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "10,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/can/ui/draw/Rgb;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showRGBEffect(IIIZ)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->seekBar:[Landroid/widget/SeekBar;

    aget-object v0, v0, p2

    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 251
    iget-object v0, p0, Lcom/can/ui/draw/Rgb;->textView:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    sget-boolean v0, Lcom/can/ui/draw/Rgb;->bStartTracking:Z

    if-nez v0, :cond_0

    if-eqz p4, :cond_5

    .line 254
    :cond_0
    sget-object p4, Lcom/can/ui/draw/Rgb;->PERSYS_RGB_VIDEO:[[Ljava/lang/String;

    aget-object p1, p4, p1

    aget-object p1, p1, p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-direct {p0, p3}, Lcom/can/ui/draw/Rgb;->setSaturation(I)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-direct {p0, p3}, Lcom/can/ui/draw/Rgb;->setHue(I)V

    goto :goto_0

    .line 261
    :cond_3
    invoke-direct {p0, p3}, Lcom/can/ui/draw/Rgb;->setContrast(I)V

    goto :goto_0

    .line 258
    :cond_4
    invoke-direct {p0, p3}, Lcom/can/ui/draw/Rgb;->setBrightNess(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static writeData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 294
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 297
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 299
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0806fe

    if-ne v0, v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/can/ui/draw/Rgb;->resetRGB()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0806ff

    if-ne p1, v0, :cond_1

    .line 128
    iget-object p0, p0, Lcom/can/ui/draw/Rgb;->mRGBlistener:Lcom/can/ui/draw/Rgb$OnRGBlistener;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 129
    invoke-interface {p0, p1}, Lcom/can/ui/draw/Rgb$OnRGBlistener;->onShow(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 117
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 118
    invoke-direct {p0}, Lcom/can/ui/draw/Rgb;->initData()V

    .line 119
    invoke-direct {p0}, Lcom/can/ui/draw/Rgb;->initView()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    iget p1, p0, Lcom/can/ui/draw/Rgb;->mType:I

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/can/ui/draw/Rgb;->showRGBEffect(IIIZ)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget p1, p0, Lcom/can/ui/draw/Rgb;->mType:I

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/can/ui/draw/Rgb;->showRGBEffect(IIIZ)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget p1, p0, Lcom/can/ui/draw/Rgb;->mType:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/can/ui/draw/Rgb;->showRGBEffect(IIIZ)V

    goto :goto_0

    .line 139
    :pswitch_3
    iget p1, p0, Lcom/can/ui/draw/Rgb;->mType:I

    invoke-direct {p0, p1, p3, p2, p3}, Lcom/can/ui/draw/Rgb;->showRGBEffect(IIIZ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080713
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 158
    sput-boolean p1, Lcom/can/ui/draw/Rgb;->bStartTracking:Z

    .line 159
    invoke-direct {p0}, Lcom/can/ui/draw/Rgb;->finishCancel()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x0

    .line 165
    sput-boolean p1, Lcom/can/ui/draw/Rgb;->bStartTracking:Z

    .line 166
    invoke-direct {p0}, Lcom/can/ui/draw/Rgb;->finishLater()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/Rgb;->timer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 188
    iget-object p1, p0, Lcom/can/ui/draw/Rgb;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    invoke-direct {p0}, Lcom/can/ui/draw/Rgb;->finishLater()V

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/can/ui/draw/Rgb;->finishCancel()V

    .line 183
    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iput-object p2, p0, Lcom/can/ui/draw/Rgb;->timer:Ljava/util/Timer;

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/can/ui/draw/Rgb;->sendMessage(I)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/can/ui/draw/Rgb;->finishLater()V

    .line 173
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setRGBlistener(Lcom/can/ui/draw/Rgb$OnRGBlistener;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/can/ui/draw/Rgb;->mRGBlistener:Lcom/can/ui/draw/Rgb$OnRGBlistener;

    return-void
.end method
