.class Lcom/hp/hpl/sparta/CharCircBuffer;
.super Ljava/lang/Object;
.source "CharCircBuffer.java"


# instance fields
.field private final buf_:[I

.field private enabled_:Z

.field private next_:I

.field private total_:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    .line 76
    iput v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    .line 26
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    return-void
.end method

.method private addRaw(I)V
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    iget v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 48
    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    .line 49
    iget p1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    :cond_0
    return-void
.end method


# virtual methods
.method addChar(C)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/CharCircBuffer;->addRaw(I)V

    return-void
.end method

.method addInt(I)V
    .locals 1

    const/high16 v0, 0x10000

    add-int/2addr p1, v0

    .line 38
    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/CharCircBuffer;->addRaw(I)V

    return-void
.end method

.method addString(Ljava/lang/String;)V
    .locals 3

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 55
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/hp/hpl/sparta/CharCircBuffer;->addChar(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method disable()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    return-void
.end method

.method enable()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0xb

    div-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 62
    iget v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    iget-object v2, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    array-length v2, v2

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 64
    iget v3, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    add-int/2addr v3, v2

    array-length v4, v1

    rem-int/2addr v3, v4

    .line 65
    aget v1, v1, v3

    const/high16 v3, 0x10000

    if-ge v1, v3, :cond_1

    int-to-char v1, v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v3

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
