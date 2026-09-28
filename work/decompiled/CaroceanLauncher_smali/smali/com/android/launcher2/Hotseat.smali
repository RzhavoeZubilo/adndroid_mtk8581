.class public Lcom/android/launcher2/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Lcom/android/launcher2/DragController$DragListener;
.implements Lcom/android/launcher2/popuView/FboxPopuWindow$OnPopuWindowListen;


# static fields
.field public static final STATE_FOCUSED:[I

.field public static final STATE_NORMAL:[I

.field public static final STATE_PRESSED:[I

.field private static final TAG:Ljava/lang/String; = "Hotseat"

.field private static className:[Ljava/lang/String;

.field public static mAllAppBt:Landroid/view/View;

.field private static mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mBluetoothBt:Landroid/widget/TextView;

.field public static mDvdBt:Landroid/widget/TextView;

.field public static mFboxBt:Landroid/widget/TextView;

.field public static mGpsBt:Landroid/widget/TextView;

.field public static mPlayerBt:Landroid/widget/TextView;

.field public static mRadioBt:Landroid/widget/TextView;

.field private static packageName:[Ljava/lang/String;


# instance fields
.field public final ICON_POSITION_ALL:I

.field public final ICON_POSITION_BLUETOOTH:I

.field public final ICON_POSITION_DVD:I

.field public final ICON_POSITION_FBOX:I

.field public final ICON_POSITION_GPS:I

.field public final ICON_POSITION_MUSIC:I

.field public final ICON_POSITION_RADIO:I

.field private final NORMAL_ALLAPPS_ICON_SUFFIX:Ljava/lang/String;

.field private final PRESSED_ALLAPPS_ICON_SUFFIX:Ljava/lang/String;

.field private iconName:[Ljava/lang/String;

.field private mAllAppsButtonRank:I

.field private mCellCountX:I

.field private mCellCountY:I

.field private mContent:Lcom/android/launcher2/CellLayout;

.field public mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

.field private mIsLandscape:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mTransposeLayoutWithOrientation:Z

.field private mapName:[Ljava/lang/String;

.field private positionName:[I

.field private titleName:[Ljava/lang/String;

.field private xContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 159
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/launcher2/Hotseat;->STATE_FOCUSED:[I

    new-array v0, v0, [I

    .line 161
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/launcher2/Hotseat;->STATE_PRESSED:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 163
    sput-object v0, Lcom/android/launcher2/Hotseat;->STATE_NORMAL:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/android/launcher2/Hotseat;->ICON_POSITION_GPS:I

    const/4 v1, 0x1

    .line 75
    iput v1, p0, Lcom/android/launcher2/Hotseat;->ICON_POSITION_MUSIC:I

    const/4 v2, 0x2

    .line 76
    iput v2, p0, Lcom/android/launcher2/Hotseat;->ICON_POSITION_ALL:I

    const/4 v3, 0x3

    .line 77
    iput v3, p0, Lcom/android/launcher2/Hotseat;->ICON_POSITION_BLUETOOTH:I

    const/4 v3, 0x4

    .line 78
    iput v3, p0, Lcom/android/launcher2/Hotseat;->ICON_POSITION_RADIO:I

    const/4 v3, -0x1

    .line 79
    iput v3, p0, Lcom/android/launcher2/Hotseat;->ICON_POSITION_DVD:I

    .line 80
    iput v3, p0, Lcom/android/launcher2/Hotseat;->ICON_POSITION_FBOX:I

    const-string v4, "_ic_allapps_pressed"

    .line 165
    iput-object v4, p0, Lcom/android/launcher2/Hotseat;->PRESSED_ALLAPPS_ICON_SUFFIX:Ljava/lang/String;

    const-string v4, "_ic_allapps"

    .line 166
    iput-object v4, p0, Lcom/android/launcher2/Hotseat;->NORMAL_ALLAPPS_ICON_SUFFIX:Ljava/lang/String;

    .line 97
    sget-object v4, Lcom/yecon/launcher1/R$styleable;->Hotseat:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 100
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    .line 101
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    const p2, 0x7f090026

    .line 102
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/Hotseat;->mAllAppsButtonRank:I

    const p2, 0x7f040005

    .line 104
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher2/Hotseat;->mTransposeLayoutWithOrientation:Z

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p2, v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    .line 107
    invoke-direct {p0, p1}, Lcom/android/launcher2/Hotseat;->setPackageIcon(Landroid/content/Context;)V

    .line 108
    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->xContext:Landroid/content/Context;

    .line 109
    new-instance p2, Lcom/android/launcher2/popuView/FboxPopuWindow;

    iget-object p3, p0, Lcom/android/launcher2/Hotseat;->xContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/launcher2/popuView/FboxPopuWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher2/Hotseat;->mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

    .line 110
    invoke-virtual {p2, p0}, Lcom/android/launcher2/popuView/FboxPopuWindow;->setListen(Lcom/android/launcher2/popuView/FboxPopuWindow$OnPopuWindowListen;)V

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sput-object p2, Lcom/android/launcher2/Hotseat;->mApps:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f020005

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->mapName:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/Launcher;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/launcher2/Hotseat;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object p0
.end method

.method private addHostView(I)V
    .locals 10

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->iconName:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v3, "drawable"

    const-string v4, "com.android.launcher"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v1, p0, Lcom/android/launcher2/Hotseat;->mAllAppsButtonRank:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const v1, 0x7f0a0004

    .line 212
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0003

    .line 215
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->titleName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_0
    new-instance v1, Lcom/android/launcher2/Hotseat$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Hotseat$1;-><init>(Lcom/android/launcher2/Hotseat;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    new-instance v1, Lcom/android/launcher2/Hotseat$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Hotseat$2;-><init>(Lcom/android/launcher2/Hotseat;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v1

    .line 260
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result v2

    .line 261
    new-instance v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v3, 0x1

    invoke-direct {v8, v1, v2, v3, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 262
    iput-boolean v3, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    .line 263
    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    .line 265
    sput-object v0, Lcom/android/launcher2/Hotseat;->mAllAppBt:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public static getAllClassName()[Ljava/lang/String;
    .locals 1

    .line 359
    sget-object v0, Lcom/android/launcher2/Hotseat;->className:[Ljava/lang/String;

    return-object v0
.end method

.method private getAllappsButtonIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 169
    invoke-static {}, Lcom/android/launcher2/Launcher;->getCurrentScene()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, p1, Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_0

    goto :goto_2

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ic_allapps_pressed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p1, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_ic_allapps"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f070213

    .line 179
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    const p0, 0x7f070212

    .line 180
    :goto_1
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 181
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 182
    sget-object v1, Lcom/android/launcher2/Hotseat;->STATE_FOCUSED:[I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 183
    sget-object v1, Lcom/android/launcher2/Hotseat;->STATE_PRESSED:[I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 184
    sget-object v0, Lcom/android/launcher2/Hotseat;->STATE_NORMAL:[I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    return-object p1
.end method

.method private hasVerticalHotseat()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/launcher2/Hotseat;->mTransposeLayoutWithOrientation:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private openFbox()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popuView/FboxPopuWindow;->setContentView(I)V

    .line 275
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popuView/FboxPopuWindow;->showPopu(Landroid/view/View;)V

    return-void
.end method

.method private setPackageIcon(Landroid/content/Context;)V
    .locals 2

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Hotseat;->packageName:[Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Hotseat;->className:[Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->iconName:[Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->positionName:[I

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f020001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->titleName:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getCellXFromOrder(I)I
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/launcher2/Hotseat;->hasVerticalHotseat()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/android/launcher2/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result p0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIsDismiss()V
    .locals 0

    return-void
.end method

.method getLayout()Lcom/android/launcher2/CellLayout;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    return-object p0
.end method

.method public getMapComName(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 1

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&&getMapComName&&&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hede"

    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object p0, Lcom/android/launcher2/Hotseat;->mApps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getOrderInHotseat(II)I
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/android/launcher2/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result p0

    sub-int/2addr p0, p2

    add-int/lit8 p1, p0, -0x1

    :cond_0
    return p1
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 0

    .line 142
    iget p0, p0, Lcom/android/launcher2/Hotseat;->mAllAppsButtonRank:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDragEnd()V
    .locals 0

    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 147
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 148
    iget v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    if-gez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    .line 149
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    if-gez v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    :cond_1
    const v0, 0x7f08004d

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    .line 152
    iget v1, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsHotseat(Z)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%%%%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hede"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    return-void
.end method

.method resetLayout()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 190
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->positionName:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 191
    invoke-direct {p0, v3}, Lcom/android/launcher2/Hotseat;->addHostView(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setup(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 116
    new-instance p1, Lcom/android/launcher2/HotseatIconKeyEventListener;

    invoke-direct {p1}, Lcom/android/launcher2/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 117
    iget-object p1, p0, Lcom/android/launcher2/Hotseat;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getDragController()Lcom/android/launcher2/DragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    return-void
.end method

.method public showHomeIcon(Z)V
    .locals 0

    return-void
.end method

.method public showPopuWindow()V
    .locals 0

    return-void
.end method

.method public testFind()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.androidcar.provider.CarProvider/carsetting/"

    .line 311
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "carid desc"

    .line 312
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 313
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "carid"

    .line 314
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public testInsert(Lcom/android/launcher2/ApplicationInfo;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "content://com.androidcar.provider.CarProvider/carsetting"

    .line 290
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 291
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 293
    invoke-virtual {p1}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object p1, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mapClass"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 296
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public testUpdate(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.androidcar.provider.CarProvider/carsetting/1"

    .line 302
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 303
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mapClass"

    const-string v2, "xxx"

    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
