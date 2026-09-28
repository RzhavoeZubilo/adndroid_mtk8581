.class public abstract Lcom/hp/hpl/sparta/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private annotation_:Ljava/lang/Object;

.field private doc_:Lcom/hp/hpl/sparta/Document;

.field private hash_:I

.field private nextSibling_:Lcom/hp/hpl/sparta/Node;

.field private parentNode_:Lcom/hp/hpl/sparta/Element;

.field private previousSibling_:Lcom/hp/hpl/sparta/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->doc_:Lcom/hp/hpl/sparta/Document;

    .line 431
    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->parentNode_:Lcom/hp/hpl/sparta/Element;

    .line 436
    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    .line 441
    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    .line 442
    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->annotation_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 444
    iput v0, p0, Lcom/hp/hpl/sparta/Node;->hash_:I

    return-void
.end method

.method protected static htmlEncode(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_7

    .line 378
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x22

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_3

    const/16 v4, 0x26

    if-eq v3, v4, :cond_2

    const/16 v4, 0x27

    if-eq v3, v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "&#39;"

    goto :goto_1

    :cond_2
    const-string v3, "&amp;"

    goto :goto_1

    :cond_3
    const-string v3, "&gt;"

    goto :goto_1

    :cond_4
    const-string v3, "&lt;"

    goto :goto_1

    :cond_5
    const-string v3, "&quot;"

    :goto_1
    if-eqz v3, :cond_6

    sub-int v4, v1, v2

    .line 404
    invoke-virtual {p0, p1, v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 405
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    if-ge v2, v0, :cond_8

    sub-int/2addr v0, v2

    .line 409
    invoke-virtual {p0, p1, v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_8
    return-void
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method protected abstract computeHashCode()I
.end method

.method public getAnnotation()Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->annotation_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNextSibling()Lcom/hp/hpl/sparta/Node;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    return-object v0
.end method

.method public getOwnerDocument()Lcom/hp/hpl/sparta/Document;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->doc_:Lcom/hp/hpl/sparta/Document;

    return-object v0
.end method

.method public getParentNode()Lcom/hp/hpl/sparta/Element;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->parentNode_:Lcom/hp/hpl/sparta/Element;

    return-object v0
.end method

.method public getPreviousSibling()Lcom/hp/hpl/sparta/Node;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/hp/hpl/sparta/Node;->hash_:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->computeHashCode()I

    move-result v0

    iput v0, p0, Lcom/hp/hpl/sparta/Node;->hash_:I

    .line 420
    :cond_0
    iget v0, p0, Lcom/hp/hpl/sparta/Node;->hash_:I

    return v0
.end method

.method insertAtEndOfLinkedList(Lcom/hp/hpl/sparta/Node;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    if-eqz p1, :cond_0

    .line 75
    iput-object p0, p1, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    :cond_0
    return-void
.end method

.method makeMatching(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/Step;Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    .line 263
    invoke-virtual {p2}, Lcom/hp/hpl/sparta/xpath/Step;->getNodeTest()Lcom/hp/hpl/sparta/xpath/NodeTest;

    move-result-object v0

    .line 264
    instance-of v1, v0, Lcom/hp/hpl/sparta/xpath/ElementTest;

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Lcom/hp/hpl/sparta/xpath/ElementTest;

    .line 268
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/ElementTest;->getTagName()Ljava/lang/String;

    move-result-object v6

    .line 270
    new-instance v0, Lcom/hp/hpl/sparta/Element;

    invoke-direct {v0, v6}, Lcom/hp/hpl/sparta/Element;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Lcom/hp/hpl/sparta/xpath/Step;->getPredicate()Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    move-result-object p2

    .line 274
    new-instance v7, Lcom/hp/hpl/sparta/Node$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/hp/hpl/sparta/Node$1;-><init>(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/Element;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Lcom/hp/hpl/sparta/xpath/BooleanExpr;->accept(Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;)V

    return-object v0

    .line 265
    :cond_0
    new-instance p1, Lcom/hp/hpl/sparta/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\" in \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\" is not an element test"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method notifyObservers()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/hp/hpl/sparta/Node;->hash_:I

    .line 29
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->doc_:Lcom/hp/hpl/sparta/Document;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Document;->notifyObservers()V

    :cond_0
    return-void
.end method

.method removeFromLinkedList()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    iput-object v1, v0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    if-eqz v1, :cond_1

    iput-object v0, v1, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    :cond_1
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    .line 82
    iput-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    return-void
.end method

.method replaceInLinkedList(Lcom/hp/hpl/sparta/Node;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    .line 88
    :cond_1
    iput-object v0, p1, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    .line 89
    iget-object v0, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p1, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->nextSibling_:Lcom/hp/hpl/sparta/Node;

    .line 91
    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->previousSibling_:Lcom/hp/hpl/sparta/Node;

    return-void
.end method

.method public setAnnotation(Ljava/lang/Object;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->annotation_:Ljava/lang/Object;

    return-void
.end method

.method setOwnerDocument(Lcom/hp/hpl/sparta/Document;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->doc_:Lcom/hp/hpl/sparta/Document;

    return-void
.end method

.method setParentNode(Lcom/hp/hpl/sparta/Element;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/hp/hpl/sparta/Node;->parentNode_:Lcom/hp/hpl/sparta/Element;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 356
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 357
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 358
    invoke-virtual {p0, v1}, Lcom/hp/hpl/sparta/Node;->toString(Ljava/io/Writer;)V

    .line 359
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 360
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 362
    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract toString(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toXml()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/hp/hpl/sparta/Node;->toXml(Ljava/io/Writer;)V

    .line 100
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 101
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method abstract toXml(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public abstract xpathSelectElements(Ljava/lang/String;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public abstract xpathSelectString(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public abstract xpathSelectStrings(Ljava/lang/String;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public xpathSetStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const-string v0, "Xpath expression \""

    const/16 v1, 0x2f

    .line 178
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text()"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x40

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    new-instance p2, Lcom/hp/hpl/sparta/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last step of Xpath expression \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" is not \"text()\" and does not start with a \'@\'. It starts with a \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v4, :cond_4

    add-int/lit8 v1, v1, 0x2

    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    invoke-virtual {p0, v5}, Lcom/hp/hpl/sparta/Node;->xpathSelectElements(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 190
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 191
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hp/hpl/sparta/Element;

    .line 192
    invoke-virtual {v4, v1}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 194
    invoke-virtual {v4, v1, p2}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    goto :goto_1

    .line 187
    :cond_3
    new-instance p2, Lcom/hp/hpl/sparta/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" specifies zero-length attribute name\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 199
    :cond_4
    invoke-virtual {p0, v5}, Lcom/hp/hpl/sparta/Node;->xpathSelectElements(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 200
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    .line 201
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 202
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hp/hpl/sparta/Element;

    .line 211
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 212
    invoke-virtual {v4}, Lcom/hp/hpl/sparta/Element;->getFirstChild()Lcom/hp/hpl/sparta/Node;

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_7

    .line 213
    instance-of v8, v7, Lcom/hp/hpl/sparta/Text;

    if-eqz v8, :cond_6

    .line 215
    move-object v8, v7

    check-cast v8, Lcom/hp/hpl/sparta/Text;

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 212
    :cond_6
    invoke-virtual {v7}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v7

    goto :goto_3

    .line 218
    :cond_7
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_8

    .line 221
    new-instance v5, Lcom/hp/hpl/sparta/Text;

    invoke-direct {v5, p2}, Lcom/hp/hpl/sparta/Text;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v5}, Lcom/hp/hpl/sparta/Text;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 223
    invoke-virtual {v4, v5}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    move v2, v6

    goto :goto_2

    .line 231
    :cond_8
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hp/hpl/sparta/Text;

    .line 232
    invoke-virtual {v7}, Lcom/hp/hpl/sparta/Text;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 233
    invoke-virtual {v5, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 234
    invoke-virtual {v7, p2}, Lcom/hp/hpl/sparta/Text;->setData(Ljava/lang/String;)V

    move v2, v6

    :cond_9
    move v7, v3

    .line 241
    :goto_4
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 242
    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/hpl/sparta/Text;

    .line 243
    invoke-virtual {v4, v2}, Lcom/hp/hpl/sparta/Element;->removeChild(Lcom/hp/hpl/sparta/Node;)V
    :try_end_0
    .catch Lcom/hp/hpl/sparta/DOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    move v2, v6

    goto :goto_4

    :cond_a
    move v3, v2

    :cond_b
    return v3

    .line 256
    :catch_0
    new-instance p2, Lcom/hp/hpl/sparta/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" is not in the form \"xpathExpression/@attributeName\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 254
    new-instance p2, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assertion failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2
.end method
