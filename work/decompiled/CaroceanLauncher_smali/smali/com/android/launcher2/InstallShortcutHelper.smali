.class public Lcom/android/launcher2/InstallShortcutHelper;
.super Ljava/lang/Object;
.source "InstallShortcutHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InstallShortcutHelper"

.field private static sInstallingCount:I = 0x0

.field private static sInstallingShortcut:Z = false

.field private static sSuccessCount:I


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

.method public static decreaseInstallingCount(Landroid/content/Context;I)V
    .locals 2

    .line 59
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decreaseInstallingCount: decreaseCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sInstallingCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sInstallingShortcut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallShortcutHelper"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    sub-int/2addr v0, p1

    sput v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    .line 66
    invoke-static {p0}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseUpdate(Landroid/content/Context;)V

    return-void
.end method

.method public static decreaseInstallingCount(Landroid/content/Context;Z)V
    .locals 2

    .line 43
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decreaseInstallingCount: sInstallingCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sInstallingShortcut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallShortcutHelper"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    if-eqz p1, :cond_1

    .line 50
    sget p1, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    .line 53
    :cond_1
    invoke-static {p0}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseUpdate(Landroid/content/Context;)V

    return-void
.end method

.method private static decreaseUpdate(Landroid/content/Context;)V
    .locals 3

    .line 71
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "InstallShortcutHelper"

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decreaseUpdate: sInstallingCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sSuccessCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    if-gtz v0, :cond_2

    .line 77
    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "decreaseUpdate: triggerLoadingDatabaseManually"

    .line 78
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/LauncherApplication;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->triggerLoadingDatabaseManually()V

    goto :goto_0

    :cond_1
    const-string p0, "decreaseUpdate: all failed, and reset sInstallingShortcut"

    .line 84
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sput-boolean v2, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    .line 87
    :goto_0
    sput v2, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    .line 88
    sput v2, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    .line 91
    :cond_2
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decreaseUpdate: sInstallingShortcut="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static increaseInstallingCount(I)V
    .locals 1

    .line 30
    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    add-int/2addr v0, p0

    sput v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    if-lez v0, :cond_0

    const/4 p0, 0x1

    .line 32
    sput-boolean p0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    .line 34
    :cond_0
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "increaseInstallingCount: sInstallingCount = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", sInstallingShortcut="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InstallShortcutHelper"

    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static isInstallingShortcut()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    return v0
.end method

.method public static setInstallingShortcut(Z)V
    .locals 1

    .line 17
    sput-boolean p0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    .line 18
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setInstallingShortcut: sInstallingShortcut="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InstallShortcutHelper"

    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
