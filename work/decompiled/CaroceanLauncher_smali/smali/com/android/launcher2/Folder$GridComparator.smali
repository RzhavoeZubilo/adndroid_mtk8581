.class Lcom/android/launcher2/Folder$GridComparator;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher2/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mNumCols:I

.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Folder;I)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/android/launcher2/Folder$GridComparator;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput p2, p0, Lcom/android/launcher2/Folder$GridComparator;->mNumCols:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/ShortcutInfo;)I
    .locals 2

    .line 341
    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    iget v1, p0, Lcom/android/launcher2/Folder$GridComparator;->mNumCols:I

    mul-int/2addr v0, v1

    iget p1, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    add-int/2addr v0, p1

    .line 342
    iget p1, p2, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    iget p0, p0, Lcom/android/launcher2/Folder$GridComparator;->mNumCols:I

    mul-int/2addr p1, p0

    iget p0, p2, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    add-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 333
    check-cast p1, Lcom/android/launcher2/ShortcutInfo;

    check-cast p2, Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Folder$GridComparator;->compare(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/ShortcutInfo;)I

    move-result p0

    return p0
.end method
