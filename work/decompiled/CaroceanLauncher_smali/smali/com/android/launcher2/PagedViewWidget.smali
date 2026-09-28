.class public Lcom/android/launcher2/PagedViewWidget;
.super Landroid/widget/LinearLayout;
.source "PagedViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;,
        Lcom/android/launcher2/PagedViewWidget$ShortPressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PagedViewWidgetLayout"

.field private static sDeletePreviewsWhenDetachedFromWindow:Z = true

.field static sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;


# instance fields
.field private mDimensionsFormatString:Ljava/lang/String;

.field mIsAppWidget:Z

.field private final mOriginalImagePadding:Landroid/graphics/Rect;

.field mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

.field mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

.field mShortPressTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    .line 45
    iput-object p2, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressTriggered:Z

    .line 49
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0c0141

    .line 63
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewWidget;->setWillNotDraw(Z)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewWidget;->setClipToPadding(Z)V

    return-void
.end method

.method private checkForShortPress()V
    .locals 3

    .line 200
    sget-object v0, Lcom/android/launcher2/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;-><init>(Lcom/android/launcher2/PagedViewWidget;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    const-wide/16 v1, 0x78

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedViewWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private cleanUpShortPress()V
    .locals 1

    .line 217
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->removeShortPressCallback()V

    .line 218
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressTriggered:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0, p0}, Lcom/android/launcher2/PagedViewWidget$ShortPressListener;->cleanUpShortPress(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressTriggered:Z

    :cond_1
    return-void
.end method

.method private removeShortPressCallback()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static resetShortPressTarget()V
    .locals 1

    const/4 v0, 0x0

    .line 227
    sput-object v0, Lcom/android/launcher2/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;

    return-void
.end method

.method public static setDeletePreviewsWhenDetachedFromWindow(Z)V
    .locals 0

    .line 81
    sput-boolean p0, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[I)V
    .locals 3

    .line 104
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyFromAppWidgetProviderInfo: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedViewWidgetLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsAppWidget:Z

    const v1, 0x7f0800ca

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, -0x1

    if-le p2, v2, :cond_1

    .line 111
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 113
    :cond_1
    iget-object p2, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const p2, 0x7f0800c9

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 115
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800c8

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 118
    aget v1, p3, p2

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 119
    aget p3, p3, v0

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 120
    iget-object p0, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 3

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsAppWidget:Z

    .line 126
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 127
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyFromResolveInfo: info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", label = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PagedViewWidgetLayout"

    invoke-static {v1, p2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const p2, 0x7f0800ca

    .line 131
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 132
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const p2, 0x7f0800c9

    .line 133
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 134
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800c8

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 137
    iget-object p0, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method applyPreview(Lcom/android/launcher2/FastBitmapDrawable;I)V
    .locals 2

    const p2, 0x7f0800ca

    .line 161
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher2/PagedViewWidgetImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p2, Lcom/android/launcher2/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 164
    invoke-virtual {p2, p1}, Lcom/android/launcher2/PagedViewWidgetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-boolean v1, p0, Lcom/android/launcher2/PagedViewWidget;->mIsAppWidget:Z

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getPreviewSize()[I

    move-result-object v1

    .line 168
    aget v0, v1, v0

    invoke-virtual {p1}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 169
    iget-object p1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/android/launcher2/PagedViewWidgetImageView;->setPadding(IIII)V

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 174
    invoke-virtual {p2, p0}, Lcom/android/launcher2/PagedViewWidgetImageView;->setAlpha(F)V

    const/4 p0, 0x1

    .line 175
    iput-boolean p0, p2, Lcom/android/launcher2/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    :cond_1
    return-void
.end method

.method public getPreviewSize()[I
    .locals 6

    const v0, 0x7f0800ca

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 144
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 145
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 147
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 148
    aget v2, v1, v3

    if-lez v2, :cond_0

    aget v2, v1, v4

    if-gtz v2, :cond_1

    .line 149
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreviewSize: maxSize[0] = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxSize[1] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", i.getWidth() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", i.getHeight() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mOriginalImagePadding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PagedViewWidgetLayout"

    .line 149
    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 87
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow: this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedViewWidgetLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    sget-boolean v0, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0800ca

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    .line 93
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FastBitmapDrawable;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0800ca

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 75
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 76
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 232
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->cleanUpShortPress()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->cleanUpShortPress()V

    goto :goto_0

    .line 239
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->checkForShortPress()V

    :goto_0
    return v0
.end method

.method setShortPressListener(Lcom/android/launcher2/PagedViewWidget$ShortPressListener;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    return-void
.end method
