.class public Lcom/android/launcher2/Cling;
.super Landroid/widget/FrameLayout;
.source "Cling.java"


# static fields
.field static final ALLAPPS_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.allapps.dismissed"

.field private static ALLAPPS_LANDSCAPE:Ljava/lang/String; = "all_apps_landscape"

.field private static ALLAPPS_LARGE:Ljava/lang/String; = "all_apps_large"

.field private static ALLAPPS_PORTRAIT:Ljava/lang/String; = "all_apps_portrait"

.field static final FOLDER_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.folder.dismissed"

.field private static FOLDER_LANDSCAPE:Ljava/lang/String; = "folder_landscape"

.field private static FOLDER_LARGE:Ljava/lang/String; = "folder_large"

.field private static FOLDER_PORTRAIT:Ljava/lang/String; = "folder_portrait"

.field static final WORKSPACE_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.workspace.dismissed"

.field private static WORKSPACE_CUSTOM:Ljava/lang/String; = "workspace_custom"

.field private static WORKSPACE_LANDSCAPE:Ljava/lang/String; = "workspace_landscape"

.field private static WORKSPACE_LARGE:Ljava/lang/String; = "workspace_large"

.field private static WORKSPACE_PORTRAIT:Ljava/lang/String; = "workspace_portrait"


# instance fields
.field private mAppIconSize:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mButtonBarHeight:I

.field private mDrawIdentifier:Ljava/lang/String;

.field private mErasePaint:Landroid/graphics/Paint;

.field private mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

.field private mIsInitialized:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPositionData:[I

.field private mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

.field private mPunchThroughGraphicCenterRadius:I

.field private mRevealRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    sget-object v0, Lcom/yecon/launcher1/R$styleable;->Cling:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Cling;->setClickable(Z)V

    return-void
.end method

.method private getPunchThroughPositions()[I
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v3

    aput v4, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredHeight()I

    move-result v2

    iget p0, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    div-int/2addr p0, v3

    sub-int/2addr v2, p0

    aput v2, v0, v1

    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [I

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v3

    aput v4, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredHeight()I

    move-result p0

    add-int/lit8 p0, p0, -0x1e

    aput p0, v0, v1

    return-object v0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v0

    const/high16 v4, 0x41700000    # 15.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    new-array v3, v3, [I

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, v4

    aput p0, v3, v2

    aput v0, v3, v1

    return-object v3

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/Cling;->ALLAPPS_LARGE:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-array p0, v3, [I

    .line 148
    fill-array-data p0, :array_0

    return-object p0

    .line 146
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/Cling;->mPositionData:[I

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method cleanup()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 124
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 125
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 206
    iget-boolean v0, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    if-eqz v0, :cond_e

    .line 207
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/android/launcher2/Cling;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_7

    .line 217
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->ALLAPPS_LARGE:Ljava/lang/String;

    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->FOLDER_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->FOLDER_LANDSCAPE:Ljava/lang/String;

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->FOLDER_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 230
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->WORKSPACE_CUSTOM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 231
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 227
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 224
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 220
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 234
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 235
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_8
    const/high16 v2, -0x67000000

    .line 238
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 243
    :goto_4
    iget v2, p0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    iget v4, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphicCenterRadius:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 244
    iget-object v4, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 245
    iget-object v5, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 248
    invoke-direct {p0}, Lcom/android/launcher2/Cling;->getPunchThroughPositions()[I

    move-result-object v5

    const/4 v6, -0x1

    move v7, v6

    move v8, v7

    .line 249
    :goto_5
    array-length v9, v5

    if-ge v3, v9, :cond_a

    .line 250
    aget v7, v5, v3

    add-int/lit8 v8, v3, 0x1

    .line 251
    aget v8, v5, v8

    if-le v7, v6, :cond_9

    if-le v8, v6, :cond_9

    int-to-float v9, v7

    int-to-float v10, v8

    .line 253
    iget v11, p0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    iget-object v12, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 254
    iget-object v9, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v10, v4, 0x2

    sub-int v11, v7, v10

    div-int/lit8 v12, v2, 0x2

    sub-int v13, v8, v12

    add-int/2addr v10, v7

    add-int/2addr v12, v8

    invoke-virtual {v9, v11, v13, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 255
    iget-object v9, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    .line 260
    :cond_a
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->ALLAPPS_LARGE:Ljava/lang/String;

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 263
    :cond_b
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_c

    .line 264
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 266
    :cond_c
    iget v2, p0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    div-int/lit8 v2, v2, 0x4

    .line 267
    iget-object v3, p0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    add-int v4, v7, v2

    add-int v5, v8, v2

    .line 268
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v7, v6

    add-int/2addr v7, v2

    iget-object v6, p0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 269
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v8, v6

    add-int/2addr v8, v2

    .line 267
    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 273
    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 0

    .line 153
    invoke-virtual {p0, p0, p1}, Lcom/android/launcher2/Cling;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 158
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDrawIdentifier()Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method init(Lcom/android/launcher2/Launcher;[I)V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    if-nez v0, :cond_4

    .line 93
    iput-object p1, p0, Lcom/android/launcher2/Cling;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 94
    iput-object p2, p0, Lcom/android/launcher2/Cling;->mPositionData:[I

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c9

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f06003f

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphicCenterRadius:I

    .line 101
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060003

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    goto :goto_2

    .line 104
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f060004

    goto :goto_0

    :cond_2
    const p2, 0x7f060007

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    goto :goto_2

    :cond_3
    :goto_1
    const p2, 0x7f060005

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    :goto_2
    const p2, 0x7f06008e

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    const p2, 0x7f060028

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    .line 113
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    .line 114
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 115
    iget-object p1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    const p2, 0xffffff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object p1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    :cond_4
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher2/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher2/Cling;->ALLAPPS_LARGE:Ljava/lang/String;

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object p1, Lcom/android/launcher2/Cling;->WORKSPACE_CUSTOM:Ljava/lang/String;

    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 174
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/Cling;->ALLAPPS_LARGE:Ljava/lang/String;

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/Cling;->FOLDER_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/Cling;->FOLDER_LANDSCAPE:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/Cling;->FOLDER_LARGE:Ljava/lang/String;

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/Cling;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    .line 181
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/Cling;->getPunchThroughPositions()[I

    move-result-object v0

    move v2, v1

    .line 182
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aget v4, v0, v2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-int/lit8 v8, v2, 0x1

    aget v8, v0, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 183
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 185
    iget v5, p0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    float-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
