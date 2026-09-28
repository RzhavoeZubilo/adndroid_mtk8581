.class public Lcom/android/launcher2/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x1

.field private static mTmpRect:Landroid/graphics/Rect;


# instance fields
.field final BACKGROUND_PADDING:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mBottomTouchRegionAdjustment:I

.field private mCellLayout:Lcom/android/launcher2/CellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field mDirectionVector:[I

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field mLastDirectionVector:[I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTopTouchRegionAdjustment:I

.field private mTouchTargetWidth:I

.field private mWidgetPaddingBottom:I

.field private mWidgetPaddingLeft:I

.field private mWidgetPaddingRight:I

.field private mWidgetPaddingTop:I

.field private mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragLayer;)V
    .locals 3

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 57
    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 59
    iput-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    new-array v2, v1, [I

    .line 60
    iput-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/16 v2, 0x96

    .line 62
    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->SNAP_DURATION:I

    const/16 v2, 0x18

    .line 63
    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    const/4 v2, 0x0

    .line 64
    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    const v2, 0x3f28f5c3    # 0.66f

    .line 65
    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    .line 80
    move-object v2, p1

    check-cast v2, Lcom/android/launcher2/Launcher;

    iput-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 81
    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    .line 82
    iput-object p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 83
    invoke-virtual {p2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p3

    iget p3, p3, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    .line 84
    iput-object p4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const p3, 0x7f0800cb

    .line 85
    invoke-virtual {p4, p3}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/launcher2/Workspace;

    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 87
    invoke-virtual {p2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p3

    .line 88
    iget-object p4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {p4, p3}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object p3

    .line 89
    aget p4, p3, v0

    iput p4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    const/4 p4, 0x1

    .line 90
    aget p3, p3, p4

    iput p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    const p3, 0x7f070381

    .line 92
    invoke-virtual {p0, p3}, Lcom/android/launcher2/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 93
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 96
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v0, 0x7f070383

    .line 97
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v2, 0x13

    invoke-direct {p3, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v2, 0x7f070384

    .line 103
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {p3, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 106
    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v2, 0x7f070385

    .line 109
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x31

    invoke-direct {p3, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 112
    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v2, 0x7f070382

    .line 115
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x51

    invoke-direct {p3, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 p3, 0x0

    .line 120
    invoke-static {p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 122
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    .line 123
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    .line 124
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iput p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    .line 125
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    .line 127
    iget p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    const/16 p2, 0x8

    if-ne p1, p4, :cond_0

    .line 128
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41c00000    # 24.0f

    mul-float/2addr p1, p2

    float-to-double p1, p1

    .line 136
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/2addr p1, v1

    .line 137
    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 142
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object p0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    return-void
.end method

.method static getWidgetSizeRanges(Lcom/android/launcher2/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    if-nez p3, :cond_0

    .line 349
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    const/4 v0, 0x0

    .line 351
    invoke-static {p0, v0}, Lcom/android/launcher2/Workspace;->getCellLayoutMetrics(Lcom/android/launcher2/Launcher;I)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    .line 352
    invoke-static {p0, v1}, Lcom/android/launcher2/Workspace;->getCellLayoutMetrics(Lcom/android/launcher2/Launcher;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 356
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 357
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 358
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 359
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v2, p1

    add-int/lit8 v5, p1, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, p0

    float-to-int v2, v2

    mul-int/2addr v3, p2

    add-int/lit8 v4, p2, -0x1

    mul-int/2addr v0, v4

    add-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, p0

    float-to-int v0, v0

    .line 364
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 365
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 366
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 367
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr p1, v3

    mul-int/2addr v5, v7

    add-int/2addr p1, v5

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p1, p1

    mul-int/2addr p2, v6

    mul-int/2addr v4, v1

    add-int/2addr p2, v4

    int-to-float p2, p2

    div-float/2addr p2, p0

    float-to-int p0, p2

    .line 370
    invoke-virtual {p3, p1, v0, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p3
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 227
    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v2

    add-int/2addr v1, v2

    .line 228
    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v3

    add-int/2addr v2, v3

    .line 230
    iget v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    iget v4, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int/2addr v3, v4

    .line 231
    iget v4, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    iget v5, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int/2addr v4, v5

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 233
    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    int-to-float v1, v4

    mul-float/2addr v1, v5

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 234
    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 241
    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v2

    .line 242
    iget-object v4, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v4

    .line 244
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f28f5c3    # 0.66f

    cmpl-float v5, v5, v6

    const/4 v7, 0x0

    if-lez v5, :cond_0

    .line 245
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v7

    .line 247
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 248
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    if-nez p1, :cond_2

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    return-void

    .line 254
    :cond_2
    iget-object v5, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 256
    iget v5, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 257
    iget v6, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 258
    iget-boolean v8, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v8, :cond_3

    iget v8, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_2

    :cond_3
    iget v8, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 259
    :goto_2
    iget-boolean v10, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v10, :cond_4

    iget v10, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_3

    :cond_4
    iget v10, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 266
    :goto_3
    iget-boolean v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v11, :cond_5

    neg-int v2, v8

    .line 267
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 268
    iget v11, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v11, v12

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v3, v3, -0x1

    .line 270
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 271
    iget v11, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    neg-int v11, v3

    goto :goto_4

    .line 274
    :cond_5
    iget-boolean v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v11, :cond_6

    add-int v11, v8, v5

    sub-int/2addr v2, v11

    .line 275
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 276
    iget v3, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v3, v11

    neg-int v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v11, v3

    move v2, v7

    goto :goto_4

    :cond_6
    move v2, v7

    move v11, v2

    .line 280
    :goto_4
    iget-boolean v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v12, :cond_7

    neg-int v4, v10

    .line 281
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 282
    iget v12, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v1, v1, -0x1

    .line 284
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 285
    iget v12, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v12, v13

    neg-int v12, v12

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v12, v1

    goto :goto_5

    .line 287
    :cond_7
    iget-boolean v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v12, :cond_8

    add-int v12, v10, v6

    sub-int/2addr v4, v12

    .line 288
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 289
    iget v4, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v4, v12

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v12, v1

    move v4, v7

    goto :goto_5

    :cond_8
    move v4, v7

    move v12, v4

    .line 293
    :goto_5
    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    aput v7, v13, v7

    const/4 v14, 0x1

    .line 294
    aput v7, v13, v14

    .line 296
    iget-boolean v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    const/16 v16, -0x1

    if-nez v15, :cond_9

    iget-boolean v14, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v14, :cond_b

    :cond_9
    add-int/2addr v5, v3

    add-int/2addr v8, v2

    if-eqz v11, :cond_b

    if-eqz v15, :cond_a

    move/from16 v2, v16

    goto :goto_6

    :cond_a
    const/4 v2, 0x1

    .line 300
    :goto_6
    aput v2, v13, v7

    :cond_b
    move v14, v5

    move v15, v8

    .line 304
    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v2, :cond_c

    iget-boolean v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v3, :cond_e

    :cond_c
    add-int/2addr v6, v1

    add-int/2addr v10, v4

    if-eqz v12, :cond_e

    const/4 v1, 0x1

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    const/16 v16, 0x1

    .line 308
    :goto_7
    aput v16, v13, v1

    :cond_e
    move v8, v10

    move v10, v6

    if-nez p1, :cond_f

    if-nez v12, :cond_f

    if-nez v11, :cond_f

    return-void

    :cond_f
    if-eqz p1, :cond_10

    .line 317
    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v2, v1, v7

    aput v2, v13, v7

    const/4 v2, 0x1

    .line 318
    aget v1, v1, v2

    aput v1, v13, v2

    goto :goto_8

    :cond_10
    const/4 v2, 0x1

    .line 320
    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v3, v13, v7

    aput v3, v1, v7

    .line 321
    aget v3, v13, v2

    aput v3, v1, v2

    .line 324
    :goto_8
    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move v2, v15

    move v3, v8

    move v4, v14

    move v5, v10

    move-object v7, v13

    move v13, v8

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 326
    iput v15, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 327
    iput v13, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    .line 328
    iput v14, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 329
    iput v10, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 330
    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 331
    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v11

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    if-nez p1, :cond_11

    .line 333
    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v1, v2, v14, v10}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 336
    :cond_11
    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->requestLayout()V

    return-void
.end method

.method static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V
    .locals 6

    .line 342
    sget-object v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher2/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 343
    sget-object p1, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sget-object p1, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sget-object p1, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sget-object p1, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    return-void
.end method

.method private visualizeResizeForDelta(IIZ)V
    .locals 1

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 203
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 205
    iget-boolean p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz p2, :cond_0

    .line 206
    iget p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 207
    iget p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    goto :goto_0

    .line 208
    :cond_0
    iget-boolean p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz p2, :cond_1

    .line 209
    iget p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 212
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p2, :cond_2

    .line 213
    iget p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 214
    iget p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    goto :goto_1

    .line 215
    :cond_2
    iget-boolean p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p2, :cond_3

    .line 216
    iget p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 219
    :cond_3
    :goto_1
    invoke-direct {p0, p3}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 6

    .line 146
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 149
    :goto_1
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v4, :cond_2

    if-eqz v1, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_3

    if-eqz v1, :cond_3

    move p1, v3

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    iput-boolean p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 151
    iget p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr v5, p1

    if-ge p2, v5, :cond_4

    if-eqz v0, :cond_4

    move p1, v3

    goto :goto_4

    :cond_4
    move p1, v2

    :goto_4
    iput-boolean p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr p1, v1

    if-le p2, p1, :cond_5

    if-eqz v0, :cond_5

    move p1, v3

    goto :goto_5

    :cond_5
    move p1, v2

    :goto_5
    iput-boolean p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 155
    iget-boolean p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez p2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    move v2, v3

    .line 158
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getTop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    if-eqz v2, :cond_c

    .line 164
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    move p2, v0

    goto :goto_6

    :cond_8
    move p2, v1

    :goto_6
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 165
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz p2, :cond_9

    move p2, v0

    goto :goto_7

    :cond_9
    move p2, v1

    :goto_7
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 166
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p2, :cond_a

    move p2, v0

    goto :goto_8

    :cond_a
    move p2, v1

    :goto_8
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 167
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p0, :cond_b

    goto :goto_9

    :cond_b
    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_c
    return v2
.end method

.method public commitResize()V
    .locals 1

    const/4 v0, 0x1

    .line 379
    invoke-direct {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 380
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method

.method public onTouchUp()V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v2

    add-int/2addr v1, v2

    .line 387
    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaXAddOn:I

    .line 388
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaYAddOn:I

    const/4 v0, 0x0

    .line 389
    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 390
    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 392
    new-instance v0, Lcom/android/launcher2/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public snapToWidget(Z)V
    .locals 12

    .line 401
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 402
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 403
    invoke-virtual {v2}, Lcom/android/launcher2/DragLayer;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    .line 404
    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 405
    invoke-virtual {v3}, Lcom/android/launcher2/DragLayer;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    .line 407
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    sub-int/2addr v3, v4

    .line 409
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getHeight()I

    move-result v4

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    sub-int/2addr v4, v6

    .line 412
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    add-int/2addr v6, v1

    .line 413
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTop()I

    move-result v1

    iget v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v1, v7

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-gez v1, :cond_0

    neg-int v7, v1

    .line 420
    iput v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    .line 422
    :cond_0
    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    :goto_0
    add-int v7, v1, v4

    .line 424
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v8}, Lcom/android/launcher2/DragLayer;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 426
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v8}, Lcom/android/launcher2/DragLayer;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v7, v7

    iput v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    .line 428
    :cond_1
    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    .line 432
    iput v3, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 433
    iput v4, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 434
    iput v6, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 435
    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 436
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 437
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 438
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 439
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    goto/16 :goto_3

    :cond_2
    new-array p1, v5, [I

    .line 442
    iget v8, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    aput v8, p1, v2

    const/4 v8, 0x1

    aput v3, p1, v8

    const-string v3, "width"

    invoke-static {v3, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v3, v5, [I

    .line 443
    iget v9, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    aput v9, v3, v2

    aput v4, v3, v8

    const-string v4, "height"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v5, [I

    .line 445
    iget v9, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    aput v9, v4, v2

    aput v6, v4, v8

    const-string v6, "x"

    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v6, v5, [I

    .line 446
    iget v9, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    aput v9, v6, v2

    aput v1, v6, v8

    const-string v1, "y"

    invoke-static {v1, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v6, 0x4

    new-array v9, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v9, v2

    aput-object v3, v9, v8

    aput-object v4, v9, v5

    const/4 p1, 0x3

    aput-object v1, v9, p1

    .line 447
    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    new-array v3, v8, [F

    aput v7, v3, v2

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 449
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    new-array v9, v8, [F

    aput v7, v9, v2

    invoke-static {v3, v4, v9}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 450
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    new-array v10, v8, [F

    aput v7, v10, v2

    invoke-static {v9, v4, v10}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 451
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    new-array v11, v8, [F

    aput v7, v11, v2

    invoke-static {v10, v4, v11}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 452
    new-instance v7, Lcom/android/launcher2/AppWidgetResizeFrame$2;

    invoke-direct {v7, p0}, Lcom/android/launcher2/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 457
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v7

    .line 458
    iget p0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    if-ne p0, v5, :cond_3

    new-array p0, p1, [Landroid/animation/Animator;

    aput-object v0, p0, v2

    aput-object v9, p0, v8

    aput-object v4, p0, v5

    .line 459
    invoke-virtual {v7, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_3
    if-ne p0, v8, :cond_4

    new-array p0, p1, [Landroid/animation/Animator;

    aput-object v0, p0, v2

    aput-object v1, p0, v8

    aput-object v3, p0, v5

    .line 461
    invoke-virtual {v7, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_4
    const/4 p0, 0x5

    new-array p0, p0, [Landroid/animation/Animator;

    aput-object v0, p0, v2

    aput-object v1, p0, v8

    aput-object v3, p0, v5

    aput-object v9, p0, p1

    aput-object v4, p0, v6

    .line 463
    invoke-virtual {v7, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    const-wide/16 p0, 0x96

    .line 466
    invoke-virtual {v7, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 467
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    :goto_3
    return-void
.end method

.method public updateDeltas(II)V
    .locals 3

    .line 177
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 179
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 182
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 185
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p1, :cond_2

    .line 186
    iget p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    neg-int p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 187
    iget p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1

    .line 188
    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p1, :cond_3

    .line 189
    iget-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {p1}, Lcom/android/launcher2/DragLayer;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 190
    iget p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int p2, p2

    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    :cond_3
    :goto_1
    return-void
.end method

.method public visualizeResizeForDelta(II)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(IIZ)V

    return-void
.end method
