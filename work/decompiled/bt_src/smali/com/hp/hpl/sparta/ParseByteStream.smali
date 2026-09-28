.class Lcom/hp/hpl/sparta/ParseByteStream;
.super Ljava/lang/Object;
.source "ParseByteStream.java"

# interfaces
.implements Lcom/hp/hpl/sparta/ParseSource;


# instance fields
.field private parseSource_:Lcom/hp/hpl/sparta/ParseCharStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v11, "\" is not a supported encoding"

    const-string v12, "\""

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    .line 36
    sget-object v0, Lcom/hp/hpl/sparta/ParseByteStream;->DEFAULT_LOG:Lcom/hp/hpl/sparta/ParseLog;

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p3

    .line 41
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    sget v0, Lcom/hp/hpl/sparta/ParseByteStream;->MAXLOOKAHEAD:I

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 47
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-nez p4, :cond_1

    .line 49
    invoke-static {v9, v0, v2, v13}, Lcom/hp/hpl/sparta/ParseByteStream;->guessEncoding(Ljava/lang/String;[BILcom/hp/hpl/sparta/ParseLog;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    :cond_1
    move-object/from16 v14, p4

    :goto_1
    const/4 v15, 0x1

    .line 54
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->reset()V

    .line 55
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {v14}, Lcom/hp/hpl/sparta/ParseByteStream;->fixEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/hp/hpl/sparta/EncodingMismatchException; {:try_start_0 .. :try_end_0} :catch_2

    .line 58
    :try_start_1
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    iput-object v0, v1, Lcom/hp/hpl/sparta/ParseByteStream;->parseSource_:Lcom/hp/hpl/sparta/ParseCharStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/hp/hpl/sparta/EncodingMismatchException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    :catch_0
    :try_start_2
    const-string v7, "euc-jp"

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem reading with assumed encoding of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " so restarting with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0, v9, v15}, Lcom/hp/hpl/sparta/ParseLog;->note(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Lcom/hp/hpl/sparta/EncodingMismatchException; {:try_start_2 .. :try_end_2} :catch_2

    .line 68
    :try_start_3
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {v7}, Lcom/hp/hpl/sparta/ParseByteStream;->fixEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/hp/hpl/sparta/EncodingMismatchException; {:try_start_3 .. :try_end_3} :catch_2

    .line 74
    :try_start_4
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    const/4 v6, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v5, v13

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    iput-object v0, v1, Lcom/hp/hpl/sparta/ParseByteStream;->parseSource_:Lcom/hp/hpl/sparta/ParseCharStream;

    goto :goto_2

    .line 70
    :catch_1
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    move-object v3, v13

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/hp/hpl/sparta/EncodingMismatchException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    .line 78
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/EncodingMismatchException;->getDeclaredEncoding()Ljava/lang/String;

    move-result-object v7

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding declaration of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is different that assumed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " so restarting the parsing with the new encoding"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0, v9, v15}, Lcom/hp/hpl/sparta/ParseLog;->note(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->reset()V

    .line 84
    :try_start_5
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {v7}, Lcom/hp/hpl/sparta/ParseByteStream;->fixEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    .line 89
    new-instance v0, Lcom/hp/hpl/sparta/ParseCharStream;

    const/4 v6, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v5, v13

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    iput-object v0, v1, Lcom/hp/hpl/sparta/ParseByteStream;->parseSource_:Lcom/hp/hpl/sparta/ParseCharStream;

    :goto_2
    return-void

    .line 86
    :catch_3
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    move-object v3, v13

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Precondition violation: the InputStream passed to ParseByteStream must support mark"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static equals([BI)Z
    .locals 4

    const/4 v0, 0x0

    .line 162
    aget-byte v1, p0, v0

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v3

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-ne p0, p1, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method private static equals([BS)Z
    .locals 4

    const/4 v0, 0x0

    .line 167
    aget-byte v1, p0, v0

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    aget-byte p0, p0, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-ne p0, p1, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method private static fixEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UTF-8"

    :cond_0
    return-object p0
.end method

.method private static guessEncoding(Ljava/lang/String;[BILcom/hp/hpl/sparta/ParseLog;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "UTF-8"

    const/4 v3, 0x4

    if-eq p2, v3, :cond_2

    if-gtz p2, :cond_0

    const-string p2, "no characters in input"

    goto :goto_0

    .line 121
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "less than 4 characters in input: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, v0, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "\""

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 124
    :goto_0
    invoke-interface {p3, p2, p0, v1}, Lcom/hp/hpl/sparta/ParseLog;->error(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_1
    move-object p2, v2

    goto/16 :goto_3

    :cond_2
    const p2, 0xfeff

    .line 126
    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/high16 p2, -0x20000

    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const p2, 0xfffe

    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/high16 p2, -0x1010000

    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/16 p2, 0x3c

    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/high16 p2, 0x3c000000    # 0.0078125f

    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/16 p2, 0x3c00

    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/high16 p2, 0x3c0000

    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const p2, 0x3c003f

    .line 130
    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "UTF-16BE"

    goto :goto_3

    :cond_4
    const p2, 0x3c003f00

    .line 132
    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "UTF-16LE"

    goto :goto_3

    :cond_5
    const p2, 0x3c3f786d

    .line 134
    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    const p2, 0x4c6fa794    # 6.2824016E7f

    .line 136
    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BI)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "EBCDIC"

    goto :goto_3

    :cond_7
    const/4 p2, -0x2

    .line 138
    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BS)Z

    move-result p2

    if-nez p2, :cond_8

    const/16 p2, -0x101

    invoke-static {p1, p2}, Lcom/hp/hpl/sparta/ParseByteStream;->equals([BS)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_8
    const-string p2, "UTF-16"

    goto :goto_3

    :cond_9
    :goto_2
    const-string p2, "UCS-4"

    .line 143
    :goto_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/hp/hpl/sparta/ParseByteStream;->hex(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v3, p1, v1

    invoke-static {v3}, Lcom/hp/hpl/sparta/ParseByteStream;->hex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/hp/hpl/sparta/ParseByteStream;->hex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x3

    aget-byte p1, p1, v2

    invoke-static {p1}, Lcom/hp/hpl/sparta/ParseByteStream;->hex(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " deduced encoding = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p0, v1}, Lcom/hp/hpl/sparta/ParseLog;->note(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    return-object p2
.end method

.method private static hex(B)Ljava/lang/String;
    .locals 2

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseByteStream;->parseSource_:Lcom/hp/hpl/sparta/ParseCharStream;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseByteStream;->parseSource_:Lcom/hp/hpl/sparta/ParseCharStream;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/ParseCharStream;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseByteStream;->parseSource_:Lcom/hp/hpl/sparta/ParseCharStream;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/ParseCharStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
