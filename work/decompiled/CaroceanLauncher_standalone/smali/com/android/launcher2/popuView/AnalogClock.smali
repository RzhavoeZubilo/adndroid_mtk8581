.class public Lcom/android/launcher2/popuView/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# static fields
.field static final DELAYMILLIS:I = 0x3e8


# instance fields
.field availableHeight:I

.field availableWidth:I

.field bmdDial:Landroid/graphics/drawable/BitmapDrawable;

.field bmdHour:Landroid/graphics/drawable/BitmapDrawable;

.field bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

.field bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

.field centerX:I

.field centerY:I

.field mBmpDial:Landroid/graphics/Bitmap;

.field mBmpHour:Landroid/graphics/Bitmap;

.field mBmpMinute:Landroid/graphics/Bitmap;

.field mBmpSecond:Landroid/graphics/Bitmap;

.field mHeigh:I

.field mPaint:Landroid/graphics/Paint;

.field mTempHeigh:I

.field mTempWidth:I

.field mWidth:I

.field millseconds:I

.field private sTimeZoneString:Ljava/lang/String;

.field second:I

.field tickHandler:Landroid/os/Handler;

.field private tickRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableWidth:I

    .line 44
    iput p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableHeight:I

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->second:I

    .line 47
    iput p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->millseconds:I

    .line 102
    new-instance p1, Lcom/android/launcher2/popuView/AnalogClock$1;

    invoke-direct {p1, p0}, Lcom/android/launcher2/popuView/AnalogClock$1;-><init>(Lcom/android/launcher2/popuView/AnalogClock;)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->tickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const-string p2, "GMT+8\u951b\ufffd00"

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/popuView/AnalogClock;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableWidth:I

    .line 44
    iput p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableHeight:I

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->second:I

    .line 47
    iput p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->millseconds:I

    .line 102
    new-instance p1, Lcom/android/launcher2/popuView/AnalogClock$1;

    invoke-direct {p1, p0}, Lcom/android/launcher2/popuView/AnalogClock$1;-><init>(Lcom/android/launcher2/popuView/AnalogClock;)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->tickRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object p2, p0, Lcom/android/launcher2/popuView/AnalogClock;->sTimeZoneString:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700cc

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mBmpHour:Landroid/graphics/Bitmap;

    .line 79
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/android/launcher2/popuView/AnalogClock;->mBmpHour:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdHour:Landroid/graphics/drawable/BitmapDrawable;

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700d0

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mBmpMinute:Landroid/graphics/Bitmap;

    .line 82
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/android/launcher2/popuView/AnalogClock;->mBmpMinute:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700d1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mBmpSecond:Landroid/graphics/Bitmap;

    .line 85
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/android/launcher2/popuView/AnalogClock;->mBmpSecond:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700cb

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mBmpDial:Landroid/graphics/Bitmap;

    .line 88
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/android/launcher2/popuView/AnalogClock;->mBmpDial:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdDial:Landroid/graphics/drawable/BitmapDrawable;

    .line 89
    iget-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mBmpDial:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mWidth:I

    .line 90
    iget-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mBmpDial:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mHeigh:I

    .line 92
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mPaint:Landroid/graphics/Paint;

    const p2, -0xffff01

    .line 93
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnalogClock;->run()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/popuView/AnalogClock;)Ljava/lang/Runnable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/launcher2/popuView/AnalogClock;->tickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 110
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnalogClock;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-float v1, v1

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v1, v3

    int-to-float v2, v2

    const/high16 v4, 0x42700000    # 60.0f

    div-float v4, v2, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    .line 121
    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->second:I

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x0

    if-eq v4, v6, :cond_1

    .line 122
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->second:I

    .line 123
    iput v7, p0, Lcom/android/launcher2/popuView/AnalogClock;->millseconds:I

    goto :goto_0

    .line 125
    :cond_1
    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->millseconds:I

    add-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->millseconds:I

    const/16 v6, 0x3e8

    .line 126
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->millseconds:I

    .line 129
    :goto_0
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->millseconds:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    mul-float/2addr v0, v3

    .line 133
    iget v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableWidth:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableHeight:I

    if-gtz v3, :cond_3

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnalogClock;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableWidth:I

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnalogClock;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableHeight:I

    .line 136
    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerX:I

    .line 137
    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerY:I

    .line 140
    :cond_3
    iget v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableWidth:I

    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->mWidth:I

    if-lt v3, v4, :cond_4

    iget v5, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableHeight:I

    iget v6, p0, Lcom/android/launcher2/popuView/AnalogClock;->mHeigh:I

    if-ge v5, v6, :cond_5

    :cond_4
    const/4 v7, 0x1

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 142
    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->availableHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/popuView/AnalogClock;->mHeigh:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerY:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 148
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdDial:Landroid/graphics/drawable/BitmapDrawable;

    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerX:I

    iget v5, p0, Lcom/android/launcher2/popuView/AnalogClock;->mWidth:I

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v4, v6

    iget v8, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerY:I

    iget v9, p0, Lcom/android/launcher2/popuView/AnalogClock;->mHeigh:I

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v8, v10

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-virtual {v3, v6, v10, v4, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 150
    iget-object v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdDial:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    iget-object v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdHour:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempWidth:I

    .line 153
    iget-object v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdHour:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempHeigh:I

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 155
    iget v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerY:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 156
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdHour:Landroid/graphics/drawable/BitmapDrawable;

    iget v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerX:I

    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    iget v6, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerY:I

    iget v8, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempHeigh:I

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v6, v9

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    invoke-virtual {v1, v5, v9, v3, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 158
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdHour:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 162
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempWidth:I

    .line 163
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempHeigh:I

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 165
    iget v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerX:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 166
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerX:I

    iget v3, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempWidth:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerY:I

    iget v6, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempHeigh:I

    div-int/lit8 v8, v6, 0x2

    sub-int v8, v5, v8

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v1, v4, v8, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 168
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempWidth:I

    .line 173
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempHeigh:I

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    iget v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 176
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerX:I

    iget v2, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/launcher2/popuView/AnalogClock;->centerY:I

    iget v5, p0, Lcom/android/launcher2/popuView/AnalogClock;->mTempHeigh:I

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v4, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v6, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 178
    iget-object p0, p0, Lcom/android/launcher2/popuView/AnalogClock;->bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v7, :cond_6

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popuView/AnalogClock;->tickHandler:Landroid/os/Handler;

    .line 99
    iget-object p0, p0, Lcom/android/launcher2/popuView/AnalogClock;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
