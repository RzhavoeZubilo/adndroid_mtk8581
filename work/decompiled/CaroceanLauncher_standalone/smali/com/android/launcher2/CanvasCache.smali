.class Lcom/android/launcher2/CanvasCache;
.super Lcom/android/launcher2/WeakReferenceThreadLocal;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher2/WeakReferenceThreadLocal<",
        "Landroid/graphics/Canvas;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/android/launcher2/WeakReferenceThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Canvas;
    .locals 0

    .line 231
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher2/CanvasCache;->initialValue()Landroid/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method
