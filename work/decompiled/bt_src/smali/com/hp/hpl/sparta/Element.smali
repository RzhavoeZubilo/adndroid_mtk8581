.class public Lcom/hp/hpl/sparta/Element;
.super Lcom/hp/hpl/sparta/Node;
.source "Element.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private attributeNames_:Ljava/util/Vector;

.field private attributes_:Ljava/util/Hashtable;

.field private firstChild_:Lcom/hp/hpl/sparta/Node;

.field private lastChild_:Lcom/hp/hpl/sparta/Node;

.field private tagName_:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    const/4 v0, 0x0

    .line 467
    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    .line 473
    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    .line 477
    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    .line 478
    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    .line 479
    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    const/4 v0, 0x0

    .line 467
    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    .line 473
    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    .line 477
    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    .line 478
    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    .line 479
    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    return-void
.end method

.method private checkInvariant()V
    .locals 0

    return-void
.end method

.method private removeChildNoChecking(Lcom/hp/hpl/sparta/Node;)Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_0
    if-eqz v0, :cond_3

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object p1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    if-ne p1, v0, :cond_0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    if-ne p1, v0, :cond_1

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getPreviousSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    .line 186
    :cond_1
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->removeFromLinkedList()V

    const/4 p1, 0x0

    .line 187
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Node;->setParentNode(Lcom/hp/hpl/sparta/Element;)V

    .line 189
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Node;->setOwnerDocument(Lcom/hp/hpl/sparta/Document;)V

    const/4 p1, 0x1

    return p1

    .line 179
    :cond_2
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private replaceChild_(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/DOMException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_0
    if-eqz v0, :cond_3

    if-ne v0, p2, :cond_2

    .line 231
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    if-ne v0, p2, :cond_0

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    if-ne v0, p2, :cond_1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    .line 235
    :cond_1
    invoke-virtual {p2, p1}, Lcom/hp/hpl/sparta/Node;->replaceInLinkedList(Lcom/hp/hpl/sparta/Node;)V

    .line 238
    invoke-virtual {p1, p0}, Lcom/hp/hpl/sparta/Node;->setParentNode(Lcom/hp/hpl/sparta/Element;)V

    const/4 p1, 0x0

    .line 239
    invoke-virtual {p2, p1}, Lcom/hp/hpl/sparta/Node;->setParentNode(Lcom/hp/hpl/sparta/Element;)V

    return-void

    .line 227
    :cond_2
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_3
    new-instance p1, Lcom/hp/hpl/sparta/DOMException;

    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " in "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/hp/hpl/sparta/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method private visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    .line 276
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->isStringValue()Z

    move-result v0

    if-eq v0, p2, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "evaluates to element not string"

    goto :goto_0

    :cond_0
    const-string p2, "evaluates to string not element"

    .line 280
    :goto_0
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" evaluates to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    new-instance p2, Lcom/hp/hpl/sparta/XPathVisitor;

    invoke-direct {p2, p0, p1}, Lcom/hp/hpl/sparta/XPathVisitor;-><init>(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/XPath;)V

    return-object p2
.end method


# virtual methods
.method public appendChild(Lcom/hp/hpl/sparta/Node;)V
    .locals 1

    .line 163
    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->canHaveAsDescendent(Lcom/hp/hpl/sparta/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hp/hpl/sparta/Element;

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->appendChildNoChecking(Lcom/hp/hpl/sparta/Node;)V

    .line 165
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->notifyObservers()V

    return-void
.end method

.method appendChildNoChecking(Lcom/hp/hpl/sparta/Node;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getParentNode()Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {v0, p1}, Lcom/hp/hpl/sparta/Element;->removeChildNoChecking(Lcom/hp/hpl/sparta/Node;)Z

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Node;->insertAtEndOfLinkedList(Lcom/hp/hpl/sparta/Node;)V

    .line 150
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    .line 151
    :cond_1
    invoke-virtual {p1, p0}, Lcom/hp/hpl/sparta/Node;->setParentNode(Lcom/hp/hpl/sparta/Element;)V

    .line 153
    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    .line 154
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->getOwnerDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Node;->setOwnerDocument(Lcom/hp/hpl/sparta/Document;)V

    return-void
.end method

.method canHaveAsDescendent(Lcom/hp/hpl/sparta/Node;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->getParentNode()Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 173
    :cond_1
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Element;->canHaveAsDescendent(Lcom/hp/hpl/sparta/Node;)Z

    move-result p1

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->cloneElement(Z)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    return-object v0
.end method

.method public cloneElement(Z)Lcom/hp/hpl/sparta/Element;
    .locals 4

    .line 68
    new-instance v0, Lcom/hp/hpl/sparta/Element;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/hp/hpl/sparta/Element;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_1
    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/hpl/sparta/Node;

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    .line 74
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public cloneShallow()Lcom/hp/hpl/sparta/Element;
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->cloneElement(Z)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    return-object v0
.end method

.method protected computeHashCode()I
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    .line 442
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 443
    iget-object v3, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    .line 444
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_1
    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 448
    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 447
    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 404
    :cond_0
    instance-of v1, p1, Lcom/hp/hpl/sparta/Element;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 405
    :cond_1
    check-cast p1, Lcom/hp/hpl/sparta/Element;

    .line 406
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    iget-object v3, p1, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    .line 410
    :goto_0
    iget-object v3, p1, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 415
    :cond_5
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 416
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 417
    iget-object v4, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 419
    iget-object v5, p1, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 421
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    .line 425
    :cond_7
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    .line 426
    iget-object p1, p1, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_2
    if-eqz v1, :cond_9

    .line 428
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    .line 429
    :cond_8
    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v1

    .line 430
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object p1

    goto :goto_2

    :cond_9
    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/hp/hpl/sparta/Document;->EMPTY:Ljava/util/Enumeration;

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild()Lcom/hp/hpl/sparta/Node;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    return-object v0
.end method

.method public getLastChild()Lcom/hp/hpl/sparta/Node;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->notifyObservers()V

    return-void
.end method

.method public removeChild(Lcom/hp/hpl/sparta/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/DOMException;
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/Element;->removeChildNoChecking(Lcom/hp/hpl/sparta/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->notifyObservers()V

    return-void

    .line 203
    :cond_0
    new-instance v0, Lcom/hp/hpl/sparta/DOMException;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " in "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/hp/hpl/sparta/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/DOMException;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/hp/hpl/sparta/Element;->replaceChild_(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Node;)V

    .line 214
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->notifyObservers()V

    return-void
.end method

.method public replaceChild(Lcom/hp/hpl/sparta/Text;Lcom/hp/hpl/sparta/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/DOMException;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/hp/hpl/sparta/Element;->replaceChild_(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Node;)V

    .line 222
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->notifyObservers()V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    .line 129
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->notifyObservers()V

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-static {p1}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Element;->notifyObservers()V

    return-void
.end method

.method toString(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_0
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Node;->toString(Ljava/io/Writer;)V

    .line 250
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toXml(Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    iget-object v2, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 262
    invoke-static {p1, v2}, Lcom/hp/hpl/sparta/Element;->htmlEncode(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "\""

    .line 263
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    if-nez v0, :cond_1

    const-string v0, "/>"

    .line 266
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v0, ">"

    .line 268
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_1
    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {v1, p1}, Lcom/hp/hpl/sparta/Node;->toXml(Ljava/io/Writer;)V

    .line 269
    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v1

    goto :goto_1

    .line 271
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public xpathEnsure(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    .line 325
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 328
    :cond_0
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->getSteps()Ljava/util/Enumeration;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    sub-int/2addr v3, v2

    .line 334
    new-array v4, v3, [Lcom/hp/hpl/sparta/xpath/Step;

    .line 335
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->getSteps()Ljava/util/Enumeration;

    move-result-object v5

    :goto_1
    if-ge v1, v3, :cond_2

    .line 337
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hp/hpl/sparta/xpath/Step;

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/hpl/sparta/xpath/Step;

    if-nez v3, :cond_3

    move-object v0, p0

    goto :goto_2

    .line 344
    :cond_3
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->isAbsolute()Z

    move-result v0

    invoke-static {v0, v4}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Z[Lcom/hp/hpl/sparta/xpath/Step;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/hp/hpl/sparta/Element;->xpathEnsure(Ljava/lang/String;)Z

    .line 346
    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    .line 349
    :goto_2
    invoke-virtual {p0, v0, v1, p1}, Lcom/hp/hpl/sparta/Element;->makeMatching(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/Step;Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->appendChildNoChecking(Lcom/hp/hpl/sparta/Node;)V
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 354
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v1, p1, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 373
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/XPathVisitor;->getFirstResultElement()Lcom/hp/hpl/sparta/Element;

    move-result-object p1
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 376
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "XPath problem"

    invoke-direct {v0, v1, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public xpathSelectElements(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/XPathVisitor;->getResultEnumeration()Ljava/util/Enumeration;

    move-result-object p1
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 301
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "XPath problem"

    invoke-direct {v0, v1, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public xpathSelectString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 386
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/XPathVisitor;->getFirstResultString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 389
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "XPath problem"

    invoke-direct {v0, v1, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public xpathSelectStrings(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 310
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/XPathVisitor;->getResultEnumeration()Ljava/util/Enumeration;

    move-result-object p1
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 313
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "XPath problem"

    invoke-direct {v0, v1, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
