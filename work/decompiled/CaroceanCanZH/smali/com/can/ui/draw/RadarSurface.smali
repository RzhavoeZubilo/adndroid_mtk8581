.class public Lcom/can/ui/draw/RadarSurface;
.super Landroid/view/SurfaceView;
.source "RadarSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/draw/RadarSurface$DrawThread;
    }
.end annotation


# static fields
.field private static mRadarInfo:Lcom/can/parser/DDef$RadarInfo;


# instance fields
.field private mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

.field private mObjMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mObjPaint:Landroid/graphics/Paint;

.field private mObjSurfaceHolder:Landroid/view/SurfaceHolder;

.field private milayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/can/ui/draw/RadarSurface;->milayoutId:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjPaint:Landroid/graphics/Paint;

    .line 33
    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    .line 34
    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 42
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/can/ui/draw/RadarSurface;->milayoutId:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjPaint:Landroid/graphics/Paint;

    .line 33
    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    .line 34
    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 48
    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 49
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjPaint:Landroid/graphics/Paint;

    .line 52
    iget-object p0, p0, Lcom/can/ui/draw/RadarSurface;->mObjSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 p1, -0x3

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/can/ui/draw/RadarSurface;)Landroid/graphics/Paint;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/can/ui/draw/RadarSurface;->mObjPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$100(Lcom/can/ui/draw/RadarSurface;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/can/ui/draw/RadarSurface;->milayoutId:I

    return p0
.end method

.method static synthetic access$200()Lcom/can/parser/DDef$RadarInfo;
    .locals 1

    .line 28
    sget-object v0, Lcom/can/ui/draw/RadarSurface;->mRadarInfo:Lcom/can/parser/DDef$RadarInfo;

    return-object v0
.end method

.method public static getRadarInfo()Lcom/can/parser/DDef$RadarInfo;
    .locals 1

    .line 230
    sget-object v0, Lcom/can/ui/draw/RadarSurface;->mRadarInfo:Lcom/can/parser/DDef$RadarInfo;

    return-object v0
.end method

.method public static setRadarInfo(Lcom/can/parser/DDef$RadarInfo;)V
    .locals 0

    .line 215
    sput-object p0, Lcom/can/ui/draw/RadarSurface;->mRadarInfo:Lcom/can/parser/DDef$RadarInfo;

    return-void
.end method


# virtual methods
.method public declared-synchronized addBitmap2Cache(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    .line 198
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/can/ui/draw/RadarSurface;->getBitmap2Cache(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearCache()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjMemoryCache:Landroid/util/LruCache;

    :cond_1
    return-void
.end method

.method public declared-synchronized getBitmap2Cache(Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 178
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 181
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setlayoutId(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/can/ui/draw/RadarSurface;->milayoutId:I

    return-void
.end method

.method public startThread()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/can/ui/draw/RadarSurface$DrawThread;

    iget-object v1, p0, Lcom/can/ui/draw/RadarSurface;->mObjSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/can/ui/draw/RadarSurface$DrawThread;-><init>(Lcom/can/ui/draw/RadarSurface;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/can/ui/draw/RadarSurface$DrawThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Lcom/can/ui/draw/RadarSurface$DrawThread;

    iget-object v1, p0, Lcom/can/ui/draw/RadarSurface;->mObjSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/can/ui/draw/RadarSurface$DrawThread;-><init>(Lcom/can/ui/draw/RadarSurface;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    .line 139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mbDraw:Z

    .line 140
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    invoke-virtual {v0}, Lcom/can/ui/draw/RadarSurface$DrawThread;->firstDraw()V

    .line 141
    iget-object p0, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface$DrawThread;->start()V

    return-void
.end method

.method public stopThread()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 155
    iput-boolean v1, v0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mbDraw:Z

    .line 156
    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    invoke-virtual {v0}, Lcom/can/ui/draw/RadarSurface$DrawThread;->interrupt()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjDrawThread:Lcom/can/ui/draw/RadarSurface$DrawThread;

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 62
    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 63
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 64
    iget-object p1, p0, Lcom/can/ui/draw/RadarSurface;->mObjSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 68
    div-int/lit8 p1, p1, 0x8

    .line 70
    new-instance v0, Lcom/can/ui/draw/RadarSurface$1;

    invoke-direct {v0, p0, p1}, Lcom/can/ui/draw/RadarSurface$1;-><init>(Lcom/can/ui/draw/RadarSurface;I)V

    iput-object v0, p0, Lcom/can/ui/draw/RadarSurface;->mObjMemoryCache:Landroid/util/LruCache;

    .line 80
    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface;->startThread()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface;->stopThread()V

    .line 94
    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface;->clearCache()V

    return-void
.end method
