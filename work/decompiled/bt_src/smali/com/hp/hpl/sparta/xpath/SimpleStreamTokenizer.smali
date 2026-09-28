.class public Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;
.super Ljava/lang/Object;
.source "SimpleStreamTokenizer.java"


# static fields
.field private static final QUOTE:I = -0x6

.field public static final TT_EOF:I = -0x1

.field public static final TT_NUMBER:I = -0x2

.field public static final TT_WORD:I = -0x3

.field private static final WHITESPACE:I = -0x5


# instance fields
.field private final buf_:Ljava/lang/StringBuffer;

.field private final charType_:[I

.field private inQuote_:C

.field private nextType_:I

.field public nval:I

.field private pushedBack_:Z

.field private final reader_:Ljava/io/Reader;

.field public sval:Ljava/lang/String;

.field public ttype:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 25
    iput v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    .line 26
    iput v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nval:I

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->buf_:Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 34
    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->charType_:[I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->pushedBack_:Z

    .line 36
    iput-char v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->inQuote_:C

    .line 55
    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->reader_:Ljava/io/Reader;

    .line 56
    :goto_0
    iget-object p1, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->charType_:[I

    array-length v1, p1

    if-ge v0, v1, :cond_6

    const/16 v1, 0x41

    if-gt v1, v0, :cond_0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x61

    if-gt v1, v0, :cond_1

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v1, -0x3

    .line 58
    aput v1, p1, v0

    goto :goto_1

    :cond_3
    const/16 v1, 0x30

    if-gt v1, v0, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    const/4 v1, -0x2

    .line 60
    aput v1, p1, v0

    goto :goto_1

    :cond_4
    if-ltz v0, :cond_5

    const/16 v1, 0x20

    if-gt v0, v1, :cond_5

    const/4 v1, -0x5

    .line 62
    aput v1, p1, v0

    goto :goto_1

    .line 64
    :cond_5
    aput v0, p1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    .line 66
    :cond_6
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    return-void
.end method


# virtual methods
.method public nextToken()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->pushedBack_:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    iput-boolean v1, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->pushedBack_:Z

    .line 83
    iget v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    return v0

    .line 85
    :cond_0
    iget v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextType_:I

    iput v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    :cond_1
    move v0, v1

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->reader_:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 94
    iget-char v4, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->inQuote_:C

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unterminated quote"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_4
    iget-object v4, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->charType_:[I

    aget v4, v4, v2

    .line 98
    :goto_0
    iget-char v5, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->inQuote_:C

    const/4 v6, -0x5

    const/4 v7, 0x1

    if-nez v5, :cond_5

    if-ne v4, v6, :cond_5

    move v8, v7

    goto :goto_1

    :cond_5
    move v8, v1

    :goto_1
    if-nez v0, :cond_7

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v7

    :goto_3
    if-nez v8, :cond_2

    const/16 v8, 0x22

    const/16 v9, 0x27

    if-eq v4, v9, :cond_8

    if-ne v4, v8, :cond_a

    :cond_8
    if-nez v5, :cond_9

    int-to-char v5, v4

    .line 104
    iput-char v5, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->inQuote_:C

    goto :goto_4

    :cond_9
    if-ne v5, v4, :cond_a

    .line 106
    iput-char v1, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->inQuote_:C

    .line 109
    :cond_a
    :goto_4
    iget-char v5, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->inQuote_:C

    if-eqz v5, :cond_b

    move v4, v5

    :cond_b
    if-nez v0, :cond_e

    .line 110
    iget v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-lt v0, v3, :cond_c

    if-eq v0, v9, :cond_c

    if-ne v0, v8, :cond_e

    :cond_c
    if-eq v0, v4, :cond_d

    goto :goto_5

    :cond_d
    move v0, v1

    goto :goto_6

    :cond_e
    :goto_5
    move v0, v7

    :goto_6
    const/4 v3, -0x2

    const/4 v5, -0x3

    if-eqz v0, :cond_13

    .line 114
    iget v10, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v10, v5, :cond_11

    if-eq v10, v3, :cond_10

    if-eq v10, v8, :cond_f

    if-eq v10, v9, :cond_f

    goto :goto_7

    .line 121
    :cond_f
    iget-object v10, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->buf_:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->buf_:Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    .line 122
    iget-object v7, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->buf_:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_7

    .line 125
    :cond_10
    iget-object v7, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->buf_:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nval:I

    .line 126
    iget-object v7, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->buf_:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_7

    .line 116
    :cond_11
    iget-object v7, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->buf_:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    .line 117
    iget-object v7, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->buf_:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_7
    if-eq v4, v6, :cond_13

    const/4 v6, -0x6

    if-ne v4, v6, :cond_12

    move v6, v2

    goto :goto_8

    :cond_12
    move v6, v4

    .line 131
    :goto_8
    iput v6, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextType_:I

    :cond_13
    if-eq v4, v5, :cond_14

    if-eq v4, v3, :cond_14

    if-eq v4, v8, :cond_14

    if-eq v4, v9, :cond_14

    goto :goto_9

    .line 139
    :cond_14
    iget-object v3, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->buf_:Ljava/lang/StringBuffer;

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_9
    if-eqz v0, :cond_1

    .line 144
    iget v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    return v0
.end method

.method public ordinaryChar(C)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->charType_:[I

    aput p1, v0, p1

    return-void
.end method

.method public pushBack()V
    .locals 1

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->pushedBack_:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    iget v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_3

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x27

    const-string v2, "\'"

    if-eq v0, v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "(EOF)"

    return-object v0

    .line 41
    :cond_2
    iget v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nval:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wordChars(CC)V
    .locals 2

    :goto_0
    if-gt p1, p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->charType_:[I

    const/4 v1, -0x3

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    int-to-char p1, p1

    goto :goto_0

    :cond_0
    return-void
.end method
