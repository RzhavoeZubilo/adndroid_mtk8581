.class public Lcom/hp/hpl/sparta/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"


# static fields
.field private static final ASSERTION:I

.field private static cache_:Ljava/util/Hashtable;


# instance fields
.field private absolute_:Z

.field private steps_:Ljava/util/Stack;

.field private string_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 216
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/xpath/XPath;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    .line 48
    :try_start_0
    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->string_:Ljava/lang/String;

    .line 49
    new-instance p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;

    invoke-direct {p1, p2}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;-><init>(Ljava/io/Reader;)V

    const/16 p2, 0x2f

    .line 50
    invoke-virtual {p1, p2}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ordinaryChar(C)V

    const/16 v0, 0x2e

    .line 51
    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ordinaryChar(C)V

    const/16 v0, 0x3a

    .line 52
    invoke-virtual {p1, v0, v0}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->wordChars(CC)V

    const/16 v0, 0x5f

    .line 53
    invoke-virtual {p1, v0, v0}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->wordChars(CC)V

    .line 56
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_0

    .line 57
    iput-boolean v1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    .line 58
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move v0, v1

    goto :goto_0

    .line 64
    :cond_0
    iput-boolean v2, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    :cond_1
    move v0, v2

    .line 68
    :goto_0
    iget-object v3, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    new-instance v4, Lcom/hp/hpl/sparta/xpath/Step;

    invoke-direct {v4, p0, v0, p1}, Lcom/hp/hpl/sparta/xpath/Step;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;ZLcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_1
    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v0, p2, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 74
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 78
    :goto_2
    iget-object v3, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    new-instance v4, Lcom/hp/hpl/sparta/xpath/Step;

    invoke-direct {v4, p0, v0, p1}, Lcom/hp/hpl/sparta/xpath/Step;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;ZLcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 82
    :cond_3
    iget p2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    return-void

    .line 83
    :cond_4
    new-instance p2, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v0, "at end of XPATH expression"

    const-string v1, "end of expression"

    invoke-direct {p2, p0, v0, p1, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 85
    new-instance p2, Lcom/hp/hpl/sparta/xpath/XPathException;

    invoke-direct {p2, p0, p1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/Exception;)V

    throw p2
.end method

.method private constructor <init>(Z[Lcom/hp/hpl/sparta/xpath/Step;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 33
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iput-boolean p1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->string_:Ljava/lang/String;

    return-void
.end method

.method private generateString()Ljava/lang/String;
    .locals 5

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->elements()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/hpl/sparta/xpath/Step;

    if-eqz v2, :cond_0

    .line 101
    iget-boolean v2, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x2f

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v3}, Lcom/hp/hpl/sparta/xpath/Step;->isMultiLevel()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    :cond_1
    invoke-virtual {v3}, Lcom/hp/hpl/sparta/xpath/Step;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    monitor-enter v0

    .line 181
    :try_start_0
    sget-object v1, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/hpl/sparta/xpath/XPath;

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Lcom/hp/hpl/sparta/xpath/XPath;

    invoke-direct {v1, p0}, Lcom/hp/hpl/sparta/xpath/XPath;-><init>(Ljava/lang/String;)V

    .line 184
    sget-object v2, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static get(Z[Lcom/hp/hpl/sparta/xpath/Step;)Lcom/hp/hpl/sparta/xpath/XPath;
    .locals 2

    .line 193
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPath;

    invoke-direct {v0, p0, p1}, Lcom/hp/hpl/sparta/xpath/XPath;-><init>(Z[Lcom/hp/hpl/sparta/xpath/Step;)V

    .line 194
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object p0

    .line 195
    sget-object p1, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    monitor-enter p1

    .line 196
    :try_start_0
    sget-object v1, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/hpl/sparta/xpath/XPath;

    if-nez v1, :cond_0

    .line 198
    sget-object v1, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    monitor-exit p1

    return-object v0

    .line 201
    :cond_0
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception p0

    .line 203
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isStringValue(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-static {p0}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/xpath/XPath;->isStringValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    new-array v1, v0, [Lcom/hp/hpl/sparta/xpath/Step;

    .line 156
    iget-object v2, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->elements()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 158
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hp/hpl/sparta/xpath/Step;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPath;

    iget-boolean v2, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    invoke-direct {v0, v2, v1}, Lcom/hp/hpl/sparta/xpath/XPath;-><init>(Z[Lcom/hp/hpl/sparta/xpath/Step;)V

    return-object v0
.end method

.method public getIndexingAttrName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    .line 132
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/Step;->getPredicate()Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    move-result-object v0

    .line 133
    instance-of v1, v0, Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;->getAttrName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "has no indexing attribute name (must end with predicate of the form [@attrName]"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw v0
.end method

.method public getIndexingAttrNameOfEquals()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    .line 145
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/Step;->getPredicate()Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    move-result-object v0

    .line 146
    instance-of v1, v0, Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;->getAttrName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSteps()Ljava/util/Enumeration;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    return v0
.end method

.method public isStringValue()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    .line 120
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/Step;->isStringValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->string_:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/xpath/XPath;->generateString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->string_:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->string_:Ljava/lang/String;

    return-object v0
.end method
