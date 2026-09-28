.class public Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderRingAnimator"
.end annotation


# static fields
.field public static sPreviewPadding:I = -0x1

.field public static sPreviewSize:I = -0x1

.field public static sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

.field public static sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAcceptAnimator:Landroid/animation/ValueAnimator;

.field private mCellLayout:Lcom/android/launcher2/CellLayout;

.field public mCellX:I

.field public mCellY:I

.field public mFolderIcon:Lcom/android/launcher2/FolderIcon;

.field public mInnerRingDrawable:Landroid/graphics/drawable/Drawable;

.field public mInnerRingSize:F

.field private mNeutralAnimator:Landroid/animation/ValueAnimator;

.field public mOuterRingDrawable:Landroid/graphics/drawable/Drawable;

.field public mOuterRingSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderIcon;)V
    .locals 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 174
    iput-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    iput-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    iput-object p2, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 186
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07030a

    .line 187
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f070308

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-static {}, Lcom/android/launcher2/FolderIcon;->access$000()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060058

    .line 193
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    const p0, 0x7f060057

    .line 194
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 195
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    const p0, 0x7f07030b

    .line 197
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/android/launcher2/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    .line 198
    invoke-static {p0}, Lcom/android/launcher2/FolderIcon;->access$002(Z)Z

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/CellLayout;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher2/CellLayout;

    return-object p0
.end method


# virtual methods
.method public animateToAcceptState()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 206
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 209
    sget v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 210
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;-><init>(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$2;-><init>(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateToNaturalState()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 235
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    sget v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 239
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$3;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$3;-><init>(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;-><init>(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 260
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->hideFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getCell([I)V
    .locals 2

    .line 267
    iget v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 268
    iget p0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    const/4 v0, 0x1

    aput p0, p1, v0

    return-void
.end method

.method public getInnerRingSize()F
    .locals 0

    .line 286
    iget p0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    return p0
.end method

.method public getOuterRingSize()F
    .locals 0

    .line 282
    iget p0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    return p0
.end method

.method public setCell(II)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    .line 274
    iput p2, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    return-void
.end method

.method public setCellLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher2/CellLayout;

    return-void
.end method
