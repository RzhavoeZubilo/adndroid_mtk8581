.class public Lcom/android/launcher2/popuView/CompassManager;
.super Ljava/lang/Object;
.source "CompassManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CompassManager"

.field private static final TEST_VIEWS:Z = false


# instance fields
.field private final MSG_ON_LOCATION_CHANGED:I

.field private final MSG_ON_PROVIDER_ENABLED:I

.field private final MSG_TEST_VIEWS:I

.field private lastBearing:F

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private onCompassManagerCallback:Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;

.field private testBearing:F

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popuView/CompassManager;->views:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/launcher2/popuView/CompassManager;->lastBearing:F

    iput v0, p0, Lcom/android/launcher2/popuView/CompassManager;->testBearing:F

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/android/launcher2/popuView/CompassManager;->MSG_TEST_VIEWS:I

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/android/launcher2/popuView/CompassManager;->MSG_ON_LOCATION_CHANGED:I

    const/4 v0, 0x2

    .line 33
    iput v0, p0, Lcom/android/launcher2/popuView/CompassManager;->MSG_ON_PROVIDER_ENABLED:I

    .line 34
    new-instance v0, Lcom/android/launcher2/popuView/CompassManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/CompassManager$1;-><init>(Lcom/android/launcher2/popuView/CompassManager;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/CompassManager;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/android/launcher2/popuView/CompassManager$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/CompassManager$2;-><init>(Lcom/android/launcher2/popuView/CompassManager;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/CompassManager;->locationListener:Landroid/location/LocationListener;

    .line 72
    iput-object p1, p0, Lcom/android/launcher2/popuView/CompassManager;->mContext:Landroid/content/Context;

    const-string v0, "location"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/launcher2/popuView/CompassManager;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/popuView/CompassManager;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/launcher2/popuView/CompassManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher2/popuView/CompassManager;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/launcher2/popuView/CompassManager;->testBearing:F

    return p0
.end method

.method static synthetic access$102(Lcom/android/launcher2/popuView/CompassManager;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/android/launcher2/popuView/CompassManager;->testBearing:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/popuView/CompassManager;F)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/CompassManager;->updataCompassViews(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/popuView/CompassManager;Landroid/location/Location;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/CompassManager;->updateViews(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/popuView/CompassManager;)Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/launcher2/popuView/CompassManager;->onCompassManagerCallback:Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher2/popuView/CompassManager;)Landroid/location/LocationManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/launcher2/popuView/CompassManager;->locationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method private updataCompassViews(F)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x43b40000    # 360.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/popuView/CompassManager;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 89
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/android/launcher2/popuView/CompassManager;->lastBearing:F

    neg-float v2, v1

    neg-float v3, p1

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x1f4

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 96
    iget-object v1, p0, Lcom/android/launcher2/popuView/CompassManager;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 98
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 100
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 107
    :cond_1
    iput p1, p0, Lcom/android/launcher2/popuView/CompassManager;->lastBearing:F

    :cond_2
    return-void
.end method

.method private updateViews(Landroid/location/Location;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/CompassManager;->updataCompassViews(F)V

    goto :goto_0

    :cond_0
    const-string p0, "CompassManager"

    const-string p1, "location is null"

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addCompassView(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p0, p0, Lcom/android/launcher2/popuView/CompassManager;->views:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCallback(Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/launcher2/popuView/CompassManager;->onCompassManagerCallback:Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;

    return-void
.end method

.method public start()V
    .locals 7

    .line 121
    iget-object v0, p0, Lcom/android/launcher2/popuView/CompassManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 122
    invoke-direct {p0, v0}, Lcom/android/launcher2/popuView/CompassManager;->updateViews(Landroid/location/Location;)V

    .line 123
    iget-object v1, p0, Lcom/android/launcher2/popuView/CompassManager;->locationManager:Landroid/location/LocationManager;

    iget-object v6, p0, Lcom/android/launcher2/popuView/CompassManager;->locationListener:Landroid/location/LocationListener;

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/launcher2/popuView/CompassManager;->locationManager:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/android/launcher2/popuView/CompassManager;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
