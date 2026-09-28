.class Lcom/android/launcher2/LauncherModel$LoaderTask$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher2/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0

    .line 1789
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)I
    .locals 8

    .line 1792
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result p0

    .line 1793
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v0

    mul-int/2addr v0, p0

    mul-int/lit8 v1, v0, 0x3

    .line 1796
    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iget v1, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    mul-int/2addr v1, v0

    int-to-long v6, v1

    add-long/2addr v2, v6

    iget v1, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    mul-int/2addr v1, p0

    int-to-long v6, v1

    add-long/2addr v2, v6

    iget p1, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    int-to-long v6, p1

    add-long/2addr v2, v6

    .line 1798
    iget-wide v6, p2, Lcom/android/launcher2/ItemInfo;->container:J

    mul-long/2addr v6, v4

    iget p1, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    mul-int/2addr p1, v0

    int-to-long v0, p1

    add-long/2addr v6, v0

    iget p1, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    mul-int/2addr p1, p0

    int-to-long p0, p1

    add-long/2addr v6, p0

    iget p0, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    int-to-long p0, p0

    add-long/2addr v6, p0

    sub-long/2addr v2, v6

    long-to-int p0, v2

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1789
    check-cast p1, Lcom/android/launcher2/ItemInfo;

    check-cast p2, Lcom/android/launcher2/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;->compare(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)I

    move-result p0

    return p0
.end method
