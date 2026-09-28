.class public Lcom/android/launcher2/uitl/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static DEBUG:Z = true

.field public static DEBUG_DRAG:Z = false

.field public static DEBUG_DRAW:Z = true

.field public static DEBUG_KEY:Z = true

.field public static DEBUG_LAYOUT:Z = true

.field public static DEBUG_LOADER:Z = true

.field public static DEBUG_MOTION:Z = true

.field public static DEBUG_PERFORMANCE:Z = false

.field public static DEBUG_SURFACEWIDGET:Z = false

.field public static DEBUG_UNREAD:Z = false

.field public static TAG:Ljava/lang/String; = "hede"

.field public static isDebug:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/android/launcher2/uitl/L;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/android/launcher2/uitl/L;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 25
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/android/launcher2/uitl/L;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/android/launcher2/uitl/L;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
