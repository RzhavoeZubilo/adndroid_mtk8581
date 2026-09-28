.class public Lcom/autochips/bluetooth/view/DialpadCallingLayout;
.super Landroid/widget/FrameLayout;
.source "DialpadCallingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/view/DialpadCallingLayout$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialpadCallingLayout"


# instance fields
.field private BIG_R:F

.field private CENTER_X:I

.field private CENTER_Y:I

.field private final FIRST_ANGLE:F

.field private final ITEM_COUNT:I

.field private final SMALL_R:F

.field private mCallback:Lcom/autochips/bluetooth/view/DialpadCallingLayout$Callback;

.field private mCenterText:Landroid/widget/TextView;

.field private mCurIndex:I

.field private mItemChars:[C

.field private mLastX:F

.field private mPointer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xc

    .line 15
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->ITEM_COUNT:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 17
    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->FIRST_ANGLE:F

    const/high16 v0, 0x42da0000    # 109.0f

    .line 19
    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->SMALL_R:F

    new-array p1, p1, [C

    .line 37
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mItemChars:[C

    const/high16 p1, -0x40800000    # -1.0f

    .line 99
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mLastX:F

    const/4 p1, 0x3

    .line 162
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    return-void

    :array_0
    .array-data 2
        0x39s
        0x2as
        0x23s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xc

    .line 15
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->ITEM_COUNT:I

    const/high16 p2, 0x41f00000    # 30.0f

    .line 17
    iput p2, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->FIRST_ANGLE:F

    const/high16 p2, 0x42da0000    # 109.0f

    .line 19
    iput p2, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->SMALL_R:F

    new-array p1, p1, [C

    .line 37
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mItemChars:[C

    const/high16 p1, -0x40800000    # -1.0f

    .line 99
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mLastX:F

    const/4 p1, 0x3

    .line 162
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    return-void

    :array_0
    .array-data 2
        0x39s
        0x2as
        0x23s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xc

    .line 15
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->ITEM_COUNT:I

    const/high16 p2, 0x41f00000    # 30.0f

    .line 17
    iput p2, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->FIRST_ANGLE:F

    const/high16 p2, 0x42da0000    # 109.0f

    .line 19
    iput p2, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->SMALL_R:F

    new-array p1, p1, [C

    .line 37
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mItemChars:[C

    const/high16 p1, -0x40800000    # -1.0f

    .line 99
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mLastX:F

    const/4 p1, 0x3

    .line 162
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    return-void

    :array_0
    .array-data 2
        0x39s
        0x2as
        0x23s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
    .end array-data
.end method

.method private point2index(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mItemChars:[C

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mPointer:Landroid/view/View;

    mul-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurChar()C
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mItemChars:[C

    iget v1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    aget-char v0, v0, v1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0800f1

    .line 86
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mPointer:Landroid/view/View;

    const v0, 0x7f0800ef

    .line 91
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCenterText:Landroid/widget/TextView;

    const/4 v0, 0x3

    .line 95
    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    .line 96
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->point2index(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "DialpadCallingLayout"

    const-string v1, "onTouchEvent"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v1, :cond_6

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mLastX:F

    .line 107
    iget v1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_X:I

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v3

    iput v1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_X:I

    .line 109
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v3

    iput v1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_Y:I

    .line 110
    iget v1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_X:I

    int-to-float v1, v1

    iput v1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->BIG_R:F

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CENTER_X CENTER_Y: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_X:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_Y:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_Y:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_X:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v1, v1

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    .line 118
    iget v3, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->BIG_R:F

    mul-float/2addr v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_7

    const v3, 0x4639a400    # 11881.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_Y:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_X:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float v1, v3

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_Y:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_X:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :goto_0
    add-float/2addr v1, v4

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_Y:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_X:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_Y:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    const/high16 v4, 0x43870000    # 270.0f

    if-gez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_X:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_Y:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v3, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->CENTER_X:I

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_5

    goto :goto_0

    .line 135
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "angle:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 137
    :goto_2
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mItemChars:[C

    array-length v0, v0

    if-ge p1, v0, :cond_7

    mul-int/lit8 v0, p1, 0x1e

    int-to-float v0, v0

    const/high16 v3, 0x41f00000    # 30.0f

    add-float/2addr v0, v3

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v0, v4

    cmpl-float v4, v1, v0

    if-lez v4, :cond_4

    add-float/2addr v0, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    .line 140
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->point2index(I)V

    .line 141
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCallback:Lcom/autochips/bluetooth/view/DialpadCallingLayout$Callback;

    if-eqz v0, :cond_7

    .line 142
    iget-object v1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mItemChars:[C

    aget-char p1, v1, p1

    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/view/DialpadCallingLayout$Callback;->onEnter(C)V

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return v2

    .line 149
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mLastX:F

    :cond_7
    :goto_3
    return v2
.end method

.method public pointBackward()V
    .locals 1

    .line 194
    iget v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    if-gez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mItemChars:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    .line 198
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->point2index(I)V

    return-void
.end method

.method public pointForward()V
    .locals 2

    .line 186
    iget v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    .line 187
    iget-object v1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mItemChars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    .line 190
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCurIndex:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->point2index(I)V

    return-void
.end method

.method public setCallback(Lcom/autochips/bluetooth/view/DialpadCallingLayout$Callback;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mCallback:Lcom/autochips/bluetooth/view/DialpadCallingLayout$Callback;

    return-void
.end method

.method public showPoint(Z)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->mPointer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
