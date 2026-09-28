.class public final Lcom/android/launcher2/uitl/LauncherLog;
.super Ljava/lang/Object;
.source "LauncherLog.java"


# static fields
.field static final DEBUG:Z = true

.field public static final DEBUG_AUTOTESTCASE:Z = true

.field static final DEBUG_DRAG:Z = true

.field static final DEBUG_DRAW:Z = false

.field static final DEBUG_KEY:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_LOADER:Z = true

.field static final DEBUG_MOTION:Z = true

.field static final DEBUG_PERFORMANCE:Z = true

.field static final DEBUG_SURFACEWIDGET:Z = true

.field static final DEBUG_UNREAD:Z = true

.field private static final INSTANCE:Lcom/android/launcher2/uitl/LauncherLog;

.field private static final MODULE_NAME:Ljava/lang/String; = "Launcher"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/android/launcher2/uitl/LauncherLog;

    invoke-direct {v0}, Lcom/android/launcher2/uitl/LauncherLog;-><init>()V

    sput-object v0, Lcom/android/launcher2/uitl/LauncherLog;->INSTANCE:Lcom/android/launcher2/uitl/LauncherLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/android/launcher2/uitl/LauncherLog;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/launcher2/uitl/LauncherLog;->INSTANCE:Lcom/android/launcher2/uitl/LauncherLog;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
