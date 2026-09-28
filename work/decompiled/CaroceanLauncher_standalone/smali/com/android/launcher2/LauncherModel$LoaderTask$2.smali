.class Lcom/android/launcher2/LauncherModel$LoaderTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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

    .line 1710
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$2;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)I
    .locals 2

    .line 1713
    iget-wide p0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    iget-wide v0, p2, Lcom/android/launcher2/ItemInfo;->container:J

    sub-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1710
    check-cast p1, Lcom/android/launcher2/ItemInfo;

    check-cast p2, Lcom/android/launcher2/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/LauncherModel$LoaderTask$2;->compare(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)I

    move-result p0

    return p0
.end method
