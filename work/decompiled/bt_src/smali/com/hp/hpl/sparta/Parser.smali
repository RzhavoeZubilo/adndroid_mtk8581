.class public Lcom/hp/hpl/sparta/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/hp/hpl/sparta/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/hp/hpl/sparta/Parser;->parse([C)Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/hp/hpl/sparta/Document;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v6, Lcom/hp/hpl/sparta/BuildDocument;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/BuildDocument;-><init>()V

    .line 98
    new-instance v0, Lcom/hp/hpl/sparta/ParseByteStream;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseByteStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    .line 99
    invoke-virtual {v6}, Lcom/hp/hpl/sparta/BuildDocument;->getDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;)Lcom/hp/hpl/sparta/Document;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v6, Lcom/hp/hpl/sparta/BuildDocument;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/BuildDocument;-><init>()V

    .line 90
    new-instance v0, Lcom/hp/hpl/sparta/ParseByteStream;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseByteStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    .line 91
    invoke-virtual {v6}, Lcom/hp/hpl/sparta/BuildDocument;->getDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;)Lcom/hp/hpl/sparta/Document;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v6, Lcom/hp/hpl/sparta/BuildDocument;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/BuildDocument;-><init>()V

    .line 106
    new-instance v0, Lcom/hp/hpl/sparta/ParseByteStream;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseByteStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    .line 107
    invoke-virtual {v6}, Lcom/hp/hpl/sparta/BuildDocument;->getDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;)Lcom/hp/hpl/sparta/Document;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v6, Lcom/hp/hpl/sparta/BuildDocument;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/BuildDocument;-><init>()V

    .line 40
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    .line 41
    invoke-virtual {v6}, Lcom/hp/hpl/sparta/BuildDocument;->getDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;)Lcom/hp/hpl/sparta/Document;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v6, Lcom/hp/hpl/sparta/BuildDocument;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/BuildDocument;-><init>()V

    .line 48
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    .line 49
    invoke-virtual {v6}, Lcom/hp/hpl/sparta/BuildDocument;->getDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;)Lcom/hp/hpl/sparta/Document;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v6, Lcom/hp/hpl/sparta/BuildDocument;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/BuildDocument;-><init>()V

    .line 82
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    .line 83
    invoke-virtual {v6}, Lcom/hp/hpl/sparta/BuildDocument;->getDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse([B)Lcom/hp/hpl/sparta/Document;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v6, Lcom/hp/hpl/sparta/BuildDocument;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/BuildDocument;-><init>()V

    .line 73
    new-instance v0, Lcom/hp/hpl/sparta/ParseByteStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "file:anonymous-string"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseByteStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    .line 74
    invoke-virtual {v6}, Lcom/hp/hpl/sparta/BuildDocument;->getDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse([C)Lcom/hp/hpl/sparta/Document;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v6, Lcom/hp/hpl/sparta/BuildDocument;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/BuildDocument;-><init>()V

    .line 60
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    const-string v1, "file:anonymous-string"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    .line 61
    invoke-virtual {v6}, Lcom/hp/hpl/sparta/BuildDocument;->getDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hp/hpl/sparta/Parser;->parse([CLcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/hp/hpl/sparta/ParseByteStream;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseByteStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/hp/hpl/sparta/ParseByteStream;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseByteStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/hp/hpl/sparta/ParseByteStream;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseByteStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse([BLcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/hp/hpl/sparta/ParseByteStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "file:anonymous-string"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseByteStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse([CLcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    const-string v1, "file:anonymous-string"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method
