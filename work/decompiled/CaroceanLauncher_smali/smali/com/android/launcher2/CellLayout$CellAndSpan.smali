.class Lcom/android/launcher2/CellLayout$CellAndSpan;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellAndSpan"
.end annotation


# instance fields
.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/android/launcher2/CellLayout;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0

    .line 2746
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/CellLayout;IIII)V
    .locals 0

    .line 2756
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2757
    iput p2, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 2758
    iput p3, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 2759
    iput p4, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    .line 2760
    iput p5, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    return-void
.end method


# virtual methods
.method public copy(Lcom/android/launcher2/CellLayout$CellAndSpan;)V
    .locals 1

    .line 2750
    iget v0, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iput v0, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 2751
    iget v0, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iput v0, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 2752
    iget v0, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iput v0, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    .line 2753
    iget p0, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iput p0, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
