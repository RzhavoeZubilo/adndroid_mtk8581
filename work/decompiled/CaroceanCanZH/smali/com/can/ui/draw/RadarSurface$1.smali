.class Lcom/can/ui/draw/RadarSurface$1;
.super Landroid/util/LruCache;
.source "RadarSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/draw/RadarSurface;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/RadarSurface;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/RadarSurface;I)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface$1;->this$0:Lcom/can/ui/draw/RadarSurface;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Integer;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 76
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    return p0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/can/ui/draw/RadarSurface$1;->sizeOf(Ljava/lang/Integer;Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method
