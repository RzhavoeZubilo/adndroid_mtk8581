.class final Lcom/android/launcher2/LauncherModel$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher2/ApplicationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 4

    .line 2779
    iget-wide v0, p1, Lcom/android/launcher2/ApplicationInfo;->firstInstallTime:J

    iget-wide v2, p2, Lcom/android/launcher2/ApplicationInfo;->firstInstallTime:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2780
    :cond_0
    iget-wide p0, p1, Lcom/android/launcher2/ApplicationInfo;->firstInstallTime:J

    iget-wide v0, p2, Lcom/android/launcher2/ApplicationInfo;->firstInstallTime:J

    cmp-long p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2777
    check-cast p1, Lcom/android/launcher2/ApplicationInfo;

    check-cast p2, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/LauncherModel$8;->compare(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/ApplicationInfo;)I

    move-result p0

    return p0
.end method
