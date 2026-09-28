.class public Lcom/android/launcher2/WallpaperChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;,
        Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;,
        Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;
    }
.end annotation


# static fields
.field private static final EMBEDDED_KEY:Ljava/lang/String; = "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

.field private static final TAG:Ljava/lang/String; = "WallpaperChooserDialogFragment"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEmbedded:Z

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperDrawable:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    new-instance v0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-direct {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/WallpaperChooserDialogFragment;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/launcher2/WallpaperChooserDialogFragment;Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    return-object p1
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 6

    .line 233
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 234
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    const-string v3, "drawable"

    .line 235
    invoke-virtual {p1, v2, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_small"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cancelLoader()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->cancel(Z)Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    :cond_0
    return-void
.end method

.method private findWallpapers()V
    .locals 3

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-direct {p0, v0, v2, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    const/high16 v1, 0x7f020000

    .line 229
    invoke-direct {p0, v0, v2, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    return-void
.end method

.method public static newInstance()Lcom/android/launcher2/WallpaperChooserDialogFragment;
    .locals 2

    .line 67
    new-instance v0, Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;-><init>()V

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->setCancelable(Z)V

    return-object v0
.end method

.method private selectWallpaper(I)V
    .locals 3

    .line 183
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "WallpaperChooserDialogFragment"

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectWallpaper: position = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", this = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "wallpaper"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 189
    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 p1, -0x1

    .line 191
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set wallpaper: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->isInLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    .line 80
    :goto_0
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: savedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mEmbedded = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperChooserDialogFragment"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 140
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: savedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperChooserDialogFragment"

    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->findWallpapers()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 151
    sget-boolean p3, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p3, :cond_0

    .line 152
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateView: mEmbedded = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", container = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WallpaperChooserDialogFragment"

    invoke-static {v0, p3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 161
    iget-boolean p3, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    if-eqz p3, :cond_1

    const p3, 0x7f0a0061

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 163
    iget-object p2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f08002c

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Gallery;

    .line 166
    invoke-virtual {p2, v0}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 167
    invoke-virtual {p2, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 168
    new-instance p3, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const p3, 0x7f0800aa

    .line 170
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 171
    new-instance v0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 112
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 113
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy: mLoader = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperChooserDialogFragment"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->cancelLoader()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 104
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperChooserDialogFragment"

    const-string v1, "onDetach."

    .line 105
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->cancelLoader()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .line 127
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDismiss: activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperChooserDialogFragment"

    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p3}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object p2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p1, p2, :cond_0

    .line 208
    iget-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->cancel()V

    .line 210
    :cond_0
    new-instance p1, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-direct {p1, p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    const/4 p4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, p4

    invoke-virtual {p1, p2}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 88
    iget-boolean v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    const-string v1, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState: outState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mEmbedded = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperChooserDialogFragment"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
