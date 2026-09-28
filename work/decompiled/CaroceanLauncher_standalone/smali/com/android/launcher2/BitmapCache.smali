.class Lcom/android/launcher2/BitmapCache;
.super Lcom/android/launcher2/WeakReferenceThreadLocal;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher2/WeakReferenceThreadLocal<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Lcom/android/launcher2/WeakReferenceThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 242
    invoke-virtual {p0}, Lcom/android/launcher2/BitmapCache;->initialValue()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
