.class public Lcom/hp/hpl/sparta/xpath/ExprFactory;
.super Ljava/lang/Object;
.source "ExprFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createExpr(Lcom/hp/hpl/sparta/xpath/XPath;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)Lcom/hp/hpl/sparta/xpath/BooleanExpr;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    const-string v1, "right hand side of !="

    const-string v2, "right hand side of equals"

    const-string v3, "="

    const-string v4, "after !"

    const/16 v5, 0x21

    const-string v6, "at beginning of expression"

    const/4 v7, -0x3

    const/16 v8, 0x3d

    const-string v9, "quoted string"

    const/16 v10, 0x27

    const/16 v11, 0x22

    if-eq v0, v7, :cond_f

    const/4 v12, -0x2

    if-eq v0, v12, :cond_e

    const/16 v13, 0x40

    if-ne v0, v13, :cond_d

    .line 42
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 44
    iget-object v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v6

    if-eq v6, v5, :cond_8

    const-string v1, "quoted string or number"

    packed-switch v6, :pswitch_data_0

    .line 91
    new-instance p0, Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 69
    :pswitch_0
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 70
    iget v2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v2, v11, :cond_2

    iget v2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v2, v10, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget v2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v2, v12, :cond_1

    .line 75
    iget p0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nval:I

    goto :goto_1

    .line 77
    :cond_1
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v2, "right hand side of greater-than"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 79
    :goto_1
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 80
    new-instance p1, Lcom/hp/hpl/sparta/xpath/AttrGreaterExpr;

    invoke-direct {p1, v0, p0}, Lcom/hp/hpl/sparta/xpath/AttrGreaterExpr;-><init>(Ljava/lang/String;I)V

    return-object p1

    .line 49
    :pswitch_1
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 50
    iget v1, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v1, v11, :cond_4

    iget v1, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v1, v10, :cond_3

    goto :goto_2

    .line 51
    :cond_3
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    invoke-direct {v0, p0, v2, p1, v9}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_4
    :goto_2
    iget-object p0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 54
    new-instance p1, Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;

    invoke-direct {p1, v0, p0}, Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 56
    :pswitch_2
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 57
    iget v2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v2, v11, :cond_7

    iget v2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v2, v10, :cond_5

    goto :goto_3

    .line 61
    :cond_5
    iget v2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v2, v12, :cond_6

    .line 62
    iget p0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nval:I

    goto :goto_4

    .line 64
    :cond_6
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v2, "right hand side of less-than"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_7
    :goto_3
    iget-object p0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 66
    :goto_4
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 67
    new-instance p1, Lcom/hp/hpl/sparta/xpath/AttrLessExpr;

    invoke-direct {p1, v0, p0}, Lcom/hp/hpl/sparta/xpath/AttrLessExpr;-><init>(Ljava/lang/String;I)V

    return-object p1

    .line 82
    :cond_8
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 83
    iget v2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v2, v8, :cond_b

    .line 84
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 85
    iget v2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v2, v11, :cond_a

    iget v2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v2, v10, :cond_9

    goto :goto_5

    .line 86
    :cond_9
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    invoke-direct {v0, p0, v1, p1, v9}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_a
    :goto_5
    iget-object p0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 89
    new-instance p1, Lcom/hp/hpl/sparta/xpath/AttrNotEqualsExpr;

    invoke-direct {p1, v0, p0}, Lcom/hp/hpl/sparta/xpath/AttrNotEqualsExpr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 83
    :cond_b
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    invoke-direct {v0, p0, v4, p1, v3}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_c
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after @"

    const-string v2, "name"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_d
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "@, number, or text()"

    invoke-direct {v0, p0, v6, p1, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_e
    iget p0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nval:I

    .line 37
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 38
    new-instance p1, Lcom/hp/hpl/sparta/xpath/PositionEqualsExpr;

    invoke-direct {p1, p0}, Lcom/hp/hpl/sparta/xpath/PositionEqualsExpr;-><init>(I)V

    return-object p1

    .line 94
    :cond_f
    iget-object v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    const-string v7, "text"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 97
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/16 v6, 0x28

    if-ne v0, v6, :cond_18

    .line 98
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/16 v6, 0x29

    if-ne v0, v6, :cond_17

    .line 100
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    if-eq v0, v5, :cond_13

    if-eq v0, v8, :cond_10

    .line 118
    sget-object p0, Lcom/hp/hpl/sparta/xpath/TextExistsExpr;->INSTANCE:Lcom/hp/hpl/sparta/xpath/TextExistsExpr;

    return-object p0

    .line 102
    :cond_10
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 103
    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v11, :cond_12

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v0, v10, :cond_11

    goto :goto_6

    .line 104
    :cond_11
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    invoke-direct {v0, p0, v2, p1, v9}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_12
    :goto_6
    iget-object p0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 107
    new-instance p1, Lcom/hp/hpl/sparta/xpath/TextEqualsExpr;

    invoke-direct {p1, p0}, Lcom/hp/hpl/sparta/xpath/TextEqualsExpr;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 109
    :cond_13
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 110
    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v0, v8, :cond_16

    .line 111
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 112
    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v11, :cond_15

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v0, v10, :cond_14

    goto :goto_7

    .line 113
    :cond_14
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    invoke-direct {v0, p0, v1, p1, v9}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_15
    :goto_7
    iget-object p0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 116
    new-instance p1, Lcom/hp/hpl/sparta/xpath/TextNotEqualsExpr;

    invoke-direct {p1, p0}, Lcom/hp/hpl/sparta/xpath/TextNotEqualsExpr;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 110
    :cond_16
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    invoke-direct {v0, p0, v4, p1, v3}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_17
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after text("

    const-string v2, ")"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_18
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after text"

    const-string v2, "("

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_19
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "text()"

    invoke-direct {v0, p0, v6, p1, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
