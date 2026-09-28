.class public Lcom/hp/hpl/sparta/xpath/TextNotEqualsExpr;
.super Lcom/hp/hpl/sparta/xpath/TextCompareExpr;
.source "TextNotEqualsExpr.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/xpath/TextCompareExpr;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    .line 29
    invoke-interface {p1, p0}, Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;->visit(Lcom/hp/hpl/sparta/xpath/TextNotEqualsExpr;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "!="

    .line 33
    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/xpath/TextNotEqualsExpr;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
