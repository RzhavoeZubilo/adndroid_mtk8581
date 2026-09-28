.class public Lcom/hp/hpl/sparta/xpath/Step;
.super Ljava/lang/Object;
.source "Step.java"


# static fields
.field public static DOT:Lcom/hp/hpl/sparta/xpath/Step;


# instance fields
.field private final multiLevel_:Z

.field private final nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

.field private final predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/hp/hpl/sparta/xpath/Step;

    sget-object v1, Lcom/hp/hpl/sparta/xpath/ThisNodeTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/ThisNodeTest;

    sget-object v2, Lcom/hp/hpl/sparta/xpath/TrueExpr;->INSTANCE:Lcom/hp/hpl/sparta/xpath/TrueExpr;

    invoke-direct {v0, v1, v2}, Lcom/hp/hpl/sparta/xpath/Step;-><init>(Lcom/hp/hpl/sparta/xpath/NodeTest;Lcom/hp/hpl/sparta/xpath/BooleanExpr;)V

    sput-object v0, Lcom/hp/hpl/sparta/xpath/Step;->DOT:Lcom/hp/hpl/sparta/xpath/Step;

    return-void
.end method

.method constructor <init>(Lcom/hp/hpl/sparta/xpath/NodeTest;Lcom/hp/hpl/sparta/xpath/BooleanExpr;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    .line 30
    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/hp/hpl/sparta/xpath/Step;->multiLevel_:Z

    return-void
.end method

.method constructor <init>(Lcom/hp/hpl/sparta/xpath/XPath;ZLcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->multiLevel_:Z

    .line 41
    iget p2, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    const/4 v0, -0x3

    if-eq p2, v0, :cond_5

    const/16 v1, 0x2a

    if-eq p2, v1, :cond_4

    const/16 v1, 0x2e

    if-eq p2, v1, :cond_2

    const/16 v1, 0x40

    if-ne p2, v1, :cond_1

    .line 54
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 56
    new-instance p2, Lcom/hp/hpl/sparta/xpath/AttrTest;

    iget-object v0, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/hp/hpl/sparta/xpath/AttrTest;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_0

    .line 55
    :cond_0
    new-instance p2, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v0, "after @ in node test"

    const-string v1, "name"

    invoke-direct {p2, p1, v0, p3, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw p2

    .line 67
    :cond_1
    new-instance p2, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v0, "at begininning of step"

    const-string v1, "\'.\' or \'*\' or name"

    invoke-direct {p2, p1, v0, p3, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw p2

    .line 43
    :cond_2
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 44
    sget-object p2, Lcom/hp/hpl/sparta/xpath/ParentNodeTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/ParentNodeTest;

    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->pushBack()V

    .line 47
    sget-object p2, Lcom/hp/hpl/sparta/xpath/ThisNodeTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/ThisNodeTest;

    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_0

    .line 51
    :cond_4
    sget-object p2, Lcom/hp/hpl/sparta/xpath/AllElementTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/AllElementTest;

    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_0

    .line 59
    :cond_5
    iget-object p2, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 60
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result p2

    const/16 v0, 0x28

    if-ne p2, v0, :cond_6

    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result p2

    const/16 v0, 0x29

    if-ne p2, v0, :cond_6

    .line 62
    sget-object p2, Lcom/hp/hpl/sparta/xpath/TextTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/TextTest;

    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_0

    .line 61
    :cond_6
    new-instance p2, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v0, "after text"

    const-string v1, "()"

    invoke-direct {p2, p1, v0, p3, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw p2

    .line 64
    :cond_7
    new-instance p2, Lcom/hp/hpl/sparta/xpath/ElementTest;

    iget-object v0, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/hp/hpl/sparta/xpath/ElementTest;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    .line 69
    :goto_0
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result p2

    const/16 v0, 0x5b

    if-ne p2, v0, :cond_9

    .line 70
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    .line 72
    invoke-static {p1, p3}, Lcom/hp/hpl/sparta/xpath/ExprFactory;->createExpr(Lcom/hp/hpl/sparta/xpath/XPath;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    move-result-object p2

    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    .line 74
    iget p2, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    const/16 v0, 0x5d

    if-ne p2, v0, :cond_8

    .line 76
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    goto :goto_1

    .line 75
    :cond_8
    new-instance p2, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v0, "after predicate expression"

    const-string v1, "]"

    invoke-direct {p2, p1, v0, p3, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw p2

    .line 78
    :cond_9
    sget-object p1, Lcom/hp/hpl/sparta/xpath/TrueExpr;->INSTANCE:Lcom/hp/hpl/sparta/xpath/TrueExpr;

    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/Step;->predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    :goto_1
    return-void
.end method


# virtual methods
.method public getNodeTest()Lcom/hp/hpl/sparta/xpath/NodeTest;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    return-object v0
.end method

.method public getPredicate()Lcom/hp/hpl/sparta/xpath/BooleanExpr;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    return-object v0
.end method

.method public isMultiLevel()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->multiLevel_:Z

    return v0
.end method

.method public isStringValue()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/NodeTest;->isStringValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/Step;->predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
