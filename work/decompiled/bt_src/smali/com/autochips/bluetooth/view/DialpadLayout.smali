.class public Lcom/autochips/bluetooth/view/DialpadLayout;
.super Landroid/widget/FrameLayout;
.source "DialpadLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/view/DialpadLayout$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialpadLayout"


# instance fields
.field private BIG_R:F

.field private CENTER_X:I

.field private CENTER_Y:I

.field private final FIRST_ANGLE:F

.field private final ITEM_COUNT:I

.field private final SMALL_R:F

.field private mCallback:Lcom/autochips/bluetooth/view/DialpadLayout$Callback;

.field mCenterIcon:Landroid/widget/ImageView;

.field private mCenterText:Landroid/widget/TextView;

.field private mCurIndex:I

.field private mItemAngles:[F

.field private mItemChars:[C

.field private mLastX:F

.field private mPointer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xf

    .line 16
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->ITEM_COUNT:I

    const v0, 0x41de6666    # 27.8f

    .line 18
    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->FIRST_ANGLE:F

    const/high16 v0, 0x42da0000    # 109.0f

    .line 20
    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->SMALL_R:F

    new-array v0, p1, [F

    .line 21
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemAngles:[F

    new-array p1, p1, [C

    .line 38
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemChars:[C

    const/high16 p1, -0x40800000    # -1.0f

    .line 102
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mLastX:F

    const/4 p1, 0x5

    .line 183
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x41ac8f5c    # 21.57f
        0x42323333    # 44.55f
        0x42870f5c    # 67.53f
        0x42b5051f    # 90.51f
        0x42df0000    # 111.5f
        0x43057ae1    # 133.48f
        0x431d75c3    # 157.46f
        0x433670a4    # 182.44f
        0x434d6b85    # 205.42f
        0x43676666    # 231.4f
        0x4381b0a4    # 259.38f
        0x438d8148    # 283.01f
        0x439a7eb8    # 308.99f
        0x43a77c29    # 334.97f
    .end array-data

    :array_1
    .array-data 2
        0x2as
        0x23s
        0x63s
        0x64s
        0x2bs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xf

    .line 16
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->ITEM_COUNT:I

    const p2, 0x41de6666    # 27.8f

    .line 18
    iput p2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->FIRST_ANGLE:F

    const/high16 p2, 0x42da0000    # 109.0f

    .line 20
    iput p2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->SMALL_R:F

    new-array p2, p1, [F

    .line 21
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemAngles:[F

    new-array p1, p1, [C

    .line 38
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemChars:[C

    const/high16 p1, -0x40800000    # -1.0f

    .line 102
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mLastX:F

    const/4 p1, 0x5

    .line 183
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x41ac8f5c    # 21.57f
        0x42323333    # 44.55f
        0x42870f5c    # 67.53f
        0x42b5051f    # 90.51f
        0x42df0000    # 111.5f
        0x43057ae1    # 133.48f
        0x431d75c3    # 157.46f
        0x433670a4    # 182.44f
        0x434d6b85    # 205.42f
        0x43676666    # 231.4f
        0x4381b0a4    # 259.38f
        0x438d8148    # 283.01f
        0x439a7eb8    # 308.99f
        0x43a77c29    # 334.97f
    .end array-data

    :array_1
    .array-data 2
        0x2as
        0x23s
        0x63s
        0x64s
        0x2bs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xf

    .line 16
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->ITEM_COUNT:I

    const p2, 0x41de6666    # 27.8f

    .line 18
    iput p2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->FIRST_ANGLE:F

    const/high16 p2, 0x42da0000    # 109.0f

    .line 20
    iput p2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->SMALL_R:F

    new-array p2, p1, [F

    .line 21
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemAngles:[F

    new-array p1, p1, [C

    .line 38
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemChars:[C

    const/high16 p1, -0x40800000    # -1.0f

    .line 102
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mLastX:F

    const/4 p1, 0x5

    .line 183
    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x41ac8f5c    # 21.57f
        0x42323333    # 44.55f
        0x42870f5c    # 67.53f
        0x42b5051f    # 90.51f
        0x42df0000    # 111.5f
        0x43057ae1    # 133.48f
        0x431d75c3    # 157.46f
        0x433670a4    # 182.44f
        0x434d6b85    # 205.42f
        0x43676666    # 231.4f
        0x4381b0a4    # 259.38f
        0x438d8148    # 283.01f
        0x439a7eb8    # 308.99f
        0x43a77c29    # 334.97f
    .end array-data

    :array_1
    .array-data 2
        0x2as
        0x23s
        0x63s
        0x64s
        0x2bs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method private point2index(I)V
    .locals 3

    if-ltz p1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemChars:[C

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mPointer:Landroid/view/View;

    iget-object v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemAngles:[F

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    if-ne p1, v0, :cond_1

    .line 190
    iget-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCenterText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCenterIcon:Landroid/widget/ImageView;

    const v0, 0x7f07015d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 195
    iget-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCenterText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCenterIcon:Landroid/widget/ImageView;

    const v0, 0x7f07015c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCenterIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCenterText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemChars:[C

    aget-char p1, v1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurChar()C
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemChars:[C

    iget v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    aget-char v0, v0, v1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0800f1

    .line 89
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/view/DialpadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mPointer:Landroid/view/View;

    const v0, 0x7f0800ee

    .line 90
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/view/DialpadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCenterIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0800ef

    .line 94
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/view/DialpadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCenterText:Landroid/widget/TextView;

    const/4 v0, 0x5

    .line 98
    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    .line 99
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/view/DialpadLayout;->point2index(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "DialpadLayout"

    const-string v1, "onTouchEvent"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_9

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mLastX:F

    .line 110
    iget v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_X:I

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/DialpadLayout;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_X:I

    .line 112
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/DialpadLayout;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_Y:I

    .line 113
    iget v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_X:I

    int-to-float v1, v1

    iput v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->BIG_R:F

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CENTER_X CENTER_Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_Y:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_X:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    .line 121
    iget v2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->BIG_R:F

    mul-float/2addr v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_a

    const v2, 0x4639a400    # 11881.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_Y:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_X:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v4

    double-to-float v1, v1

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_Y:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v5, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_X:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    :goto_0
    add-float/2addr v1, v4

    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_Y:I

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v5, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_X:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_Y:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    const/high16 v4, 0x43870000    # 270.0f

    if-gez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v5, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_X:I

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_Y:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->CENTER_X:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_8

    goto :goto_0

    .line 138
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "angle:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    move v0, p1

    .line 140
    :goto_2
    iget-object v2, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemAngles:[F

    array-length v4, v2

    if-ge v0, v4, :cond_a

    .line 141
    aget v4, v2, v0

    const v5, 0x41de6666    # 27.8f

    add-float/2addr v4, v5

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v4, v6

    .line 142
    array-length v7, v2

    sub-int/2addr v7, v3

    if-ne v0, v7, :cond_4

    .line 143
    aget v2, v2, p1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v0, 0x1

    .line 146
    aget v2, v2, v7

    :goto_3
    add-float/2addr v2, v5

    rem-float/2addr v2, v6

    cmpg-float v5, v2, v4

    if-gez v5, :cond_6

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_5

    cmpg-float v2, v1, v2

    if-gez v2, :cond_7

    .line 151
    :cond_5
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/view/DialpadLayout;->point2index(I)V

    .line 152
    iget-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCallback:Lcom/autochips/bluetooth/view/DialpadLayout$Callback;

    if-eqz p1, :cond_a

    .line 153
    iget-object v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemChars:[C

    aget-char v0, v1, v0

    invoke-interface {p1, v0}, Lcom/autochips/bluetooth/view/DialpadLayout$Callback;->onEnter(C)V

    goto :goto_4

    :cond_6
    cmpl-float v4, v1, v4

    if-lez v4, :cond_7

    cmpg-float v2, v1, v2

    if-gez v2, :cond_7

    .line 160
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/view/DialpadLayout;->point2index(I)V

    .line 161
    iget-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCallback:Lcom/autochips/bluetooth/view/DialpadLayout$Callback;

    if-eqz p1, :cond_a

    .line 162
    iget-object v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemChars:[C

    aget-char v0, v1, v0

    invoke-interface {p1, v0}, Lcom/autochips/bluetooth/view/DialpadLayout$Callback;->onEnter(C)V

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return v3

    .line 170
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mLastX:F

    :cond_a
    :goto_4
    return v3
.end method

.method public pointBackward()V
    .locals 1

    .line 214
    iget v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    if-gez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemChars:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    .line 218
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/view/DialpadLayout;->point2index(I)V

    return-void
.end method

.method public pointForward()V
    .locals 2

    .line 206
    iget v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    .line 207
    iget-object v1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mItemChars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    .line 210
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCurIndex:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/view/DialpadLayout;->point2index(I)V

    return-void
.end method

.method public setCallback(Lcom/autochips/bluetooth/view/DialpadLayout$Callback;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mCallback:Lcom/autochips/bluetooth/view/DialpadLayout$Callback;

    return-void
.end method

.method public showPoint(Z)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/autochips/bluetooth/view/DialpadLayout;->mPointer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
