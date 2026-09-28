.class Lcom/hp/hpl/sparta/ParseCharStream;
.super Ljava/lang/Object;
.source "ParseCharStream.java"

# interfaces
.implements Lcom/hp/hpl/sparta/ParseSource;


# static fields
.field private static final BEGIN_CDATA:[C

.field private static final BEGIN_ETAG:[C

.field private static final CHARREF_BEGIN:[C

.field private static final COMMENT_BEGIN:[C

.field private static final COMMENT_END:[C

.field private static final DEBUG:Z = true

.field private static final DOCTYPE_BEGIN:[C

.field private static final ENCODING:[C

.field private static final END_CDATA:[C

.field private static final END_EMPTYTAG:[C

.field private static final ENTITY_BEGIN:[C

.field public static final HISTORY_LENGTH:I = 0x64

.field private static final H_DEBUG:Z = false

.field private static final IS_NAME_CHAR:[Z

.field private static final MARKUPDECL_BEGIN:[C

.field private static final MAX_COMMON_CHAR:I = 0x80

.field private static final NAME_PUNCT_CHARS:[C

.field private static final NDATA:[C

.field private static final PI_BEGIN:[C

.field private static final PUBLIC:[C

.field private static final QU_END:[C

.field private static final SYSTEM:[C

.field private static final TMP_BUF_SIZE:I = 0xff

.field private static final VERSION:[C

.field private static final VERSIONNUM_PUNC_CHARS:[C

.field private static final XML_BEGIN:[C


# instance fields
.field private final CBUF_SIZE:I

.field private final cbuf_:[C

.field private ch_:I

.field private curPos_:I

.field private docTypeName_:Ljava/lang/String;

.field private final encoding_:Ljava/lang/String;

.field private endPos_:I

.field private final entities_:Ljava/util/Hashtable;

.field private eos_:Z

.field private final handler_:Lcom/hp/hpl/sparta/ParseHandler;

.field private final history_:Lcom/hp/hpl/sparta/CharCircBuffer;

.field private isExternalDtd_:Z

.field private lineNumber_:I

.field private final log_:Lcom/hp/hpl/sparta/ParseLog;

.field private final pes_:Ljava/util/Hashtable;

.field private final reader_:Ljava/io/Reader;

.field private systemId_:Ljava/lang/String;

.field private final tmpBuf_:[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [C

    .line 281
    fill-array-data v1, :array_0

    sput-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->NAME_PUNCT_CHARS:[C

    const/16 v1, 0x80

    new-array v2, v1, [Z

    .line 294
    sput-object v2, Lcom/hp/hpl/sparta/ParseCharStream;->IS_NAME_CHAR:[Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 297
    sget-object v3, Lcom/hp/hpl/sparta/ParseCharStream;->IS_NAME_CHAR:[Z

    invoke-static {v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isNameChar(C)Z

    move-result v4

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_0

    :cond_0
    const-string v1, "<!--"

    .line 437
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_BEGIN:[C

    const-string v1, "-->"

    .line 438
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_END:[C

    const-string v1, "<?"

    .line 456
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->PI_BEGIN:[C

    const-string v1, "?>"

    .line 457
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->QU_END:[C

    const-string v1, "<!DOCTYPE"

    .line 484
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->DOCTYPE_BEGIN:[C

    const-string v1, "<?xml"

    .line 490
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->XML_BEGIN:[C

    const-string v1, "encoding"

    .line 512
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->ENCODING:[C

    const-string v1, "version"

    .line 533
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->VERSION:[C

    new-array v0, v0, [C

    .line 555
    fill-array-data v0, :array_1

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->VERSIONNUM_PUNC_CHARS:[C

    const-string v0, "<!"

    .line 621
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->MARKUPDECL_BEGIN:[C

    const-string v0, "&#"

    .line 648
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->CHARREF_BEGIN:[C

    const-string v0, "<!ENTITY"

    .line 738
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENTITY_BEGIN:[C

    const-string v0, "NDATA"

    .line 739
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->NDATA:[C

    const-string v0, "SYSTEM"

    .line 789
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->SYSTEM:[C

    const-string v0, "PUBLIC"

    .line 790
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PUBLIC:[C

    const-string v0, "<![CDATA["

    .line 874
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_CDATA:[C

    const-string v0, "]]>"

    .line 875
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->END_CDATA:[C

    const-string v0, "/>"

    .line 979
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->END_EMPTYTAG:[C

    const-string v0, "</"

    .line 1014
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_ETAG:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2es
        0x2ds
        0x5fs
        0x3as
    .end array-data

    :array_1
    .array-data 2
        0x5fs
        0x2es
        0x3as
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1076
    iput-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->docTypeName_:Ljava/lang/String;

    .line 1083
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    .line 1084
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->pes_:Ljava/util/Hashtable;

    const/4 v2, -0x2

    .line 1087
    iput v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    const/4 v2, 0x0

    .line 1088
    iput-boolean v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->isExternalDtd_:Z

    const/16 v3, 0x400

    .line 1097
    iput v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->CBUF_SIZE:I

    .line 1099
    iput v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    .line 1100
    iput v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    .line 1101
    iput-boolean v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->eos_:Z

    const/16 v4, 0xff

    new-array v4, v4, [C

    .line 1105
    iput-object v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    const/4 v4, -0x1

    .line 1108
    iput v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->lineNumber_:I

    const/4 v4, 0x1

    .line 50
    iput v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->lineNumber_:I

    .line 55
    iput-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->history_:Lcom/hp/hpl/sparta/CharCircBuffer;

    if-nez p4, :cond_0

    .line 57
    sget-object p4, Lcom/hp/hpl/sparta/ParseCharStream;->DEFAULT_LOG:Lcom/hp/hpl/sparta/ParseLog;

    :cond_0
    iput-object p4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    if-nez p5, :cond_1

    move-object p5, v0

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lcom/hp/hpl/sparta/ParseCharStream;->encoding_:Ljava/lang/String;

    const-string p5, "lt"

    const-string v5, "<"

    .line 61
    invoke-virtual {v1, p5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "gt"

    const-string v5, ">"

    .line 62
    invoke-virtual {v1, p5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "amp"

    const-string v5, "&"

    .line 63
    invoke-virtual {v1, p5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "apos"

    const-string v5, "\'"

    .line 64
    invoke-virtual {v1, p5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "quot"

    const-string v5, "\""

    .line 65
    invoke-virtual {v1, p5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 70
    iput-object p3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    .line 71
    iput v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    .line 72
    array-length p2, p3

    iput p2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    .line 73
    iput-boolean v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->eos_:Z

    .line 74
    iput-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->reader_:Ljava/io/Reader;

    goto :goto_1

    .line 76
    :cond_2
    iput-object p2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->reader_:Ljava/io/Reader;

    new-array p2, v3, [C

    .line 77
    iput-object p2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    .line 78
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    .line 81
    :goto_1
    iput-object p1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    .line 85
    invoke-interface {p6, p0}, Lcom/hp/hpl/sparta/ParseHandler;->setParseSource(Lcom/hp/hpl/sparta/ParseSource;)V

    .line 91
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readProlog()V

    .line 93
    invoke-interface {p6}, Lcom/hp/hpl/sparta/ParseHandler;->startDocument()V

    .line 95
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readElement()Lcom/hp/hpl/sparta/Element;

    move-result-object p1

    .line 98
    iget-object p2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->docTypeName_:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DOCTYPE name \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->docTypeName_:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\" not same as tag name, \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" of root element"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result p3

    invoke-interface {p4, p1, p2, p3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isMisc()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 102
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readMisc()V

    goto :goto_2

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->reader_:Ljava/io/Reader;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    .line 118
    :cond_5
    iget-object p1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {p1}, Lcom/hp/hpl/sparta/ParseHandler;->endDocument()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method private fillBuf()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-boolean v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->eos_:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 148
    :cond_0
    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    array-length v3, v2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->reader_:Ljava/io/Reader;

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->eos_:Z

    return v1

    .line 159
    :cond_2
    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    return v0
.end method

.method private fillBuf(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-boolean v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->eos_:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    array-length v0, v0

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    if-ge v0, p1, :cond_2

    move p1, v2

    .line 168
    :goto_0
    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    add-int v3, v0, p1

    iget v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    if-ge v3, v4, :cond_1

    .line 169
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    add-int/2addr v0, p1

    aget-char v0, v3, v0

    aput-char v0, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v4, v0

    .line 171
    iput v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    .line 172
    iput v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    move v2, v4

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result p1

    if-ne p1, v1, :cond_4

    if-nez v2, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    add-int/2addr v2, p1

    return v2
.end method

.method private isCdSect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_CDATA:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private final isChar(C)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    if-lt v0, v1, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hp/hpl/sparta/ParseException;

    const-string v0, "unexpected end of expression."

    invoke-direct {p1, p0, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final isChar(CC)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v0, v0, v1

    if-eq v0, p1, :cond_1

    if-ne v0, p2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private final isChar(CCCC)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v0, v0, v1

    if-eq v0, p1, :cond_1

    if-eq v0, p2, :cond_1

    if-eq v0, p3, :cond_1

    if-ne v0, p4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private final isComment()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private isDeclSep()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPeReference()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isDocTypeDecl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->DOCTYPE_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private isETag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1030
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_ETAG:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private isEncodingDecl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENCODING:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private isEntityDecl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENTITY_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private final isEntityValue()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x27

    const/16 v1, 0x22

    .line 403
    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(CC)Z

    move-result v0

    return v0
.end method

.method private static isExtender(C)Z
    .locals 1

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x387

    if-eq p0, v0, :cond_0

    const/16 v0, 0x640

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe46

    if-eq p0, v0, :cond_0

    const/16 v0, 0xec6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3005

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x3031
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30fc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isExternalId()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->SYSTEM:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PUBLIC:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static final isIn(C[C)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 265
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 266
    aget-char v2, p1, v1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static isLetter(C)Z
    .locals 1

    .line 301
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMisc()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isComment()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPi()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNameChar()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->peekChar()C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 288
    sget-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->IS_NAME_CHAR:[Z

    aget-boolean v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isNameChar(C)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static isNameChar(C)Z
    .locals 1

    .line 309
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->NAME_PUNCT_CHARS:[C

    invoke-static {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isIn(C[C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isExtender(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isPeReference()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x25

    .line 735
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    return v0
.end method

.method private final isPi()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PI_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private final isReference()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x26

    .line 688
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    return v0
.end method

.method private final isS()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/16 v1, 0x9

    const/16 v2, 0xd

    const/16 v3, 0xa

    .line 278
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(CCCC)Z

    move-result v0

    return v0
.end method

.method private final isSymbol([C)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    array-length v0, p1

    .line 839
    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    .line 840
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf(I)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 p1, -0x1

    .line 841
    iput p1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    return v2

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    add-int/lit8 v4, v3, -0x1

    aget-char v1, v1, v4

    iput v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    .line 847
    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v3, v1

    if-ge v3, v0, :cond_1

    return v2

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 852
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    aget-char v4, p1, v1

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private isVersionNumChar()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->peekChar()C

    move-result v0

    .line 559
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x61

    if-gt v1, v0, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_3

    :cond_0
    const/16 v1, 0x5a

    if-gt v1, v0, :cond_1

    if-le v0, v1, :cond_3

    :cond_1
    sget-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->VERSIONNUM_PUNC_CHARS:[C

    invoke-static {v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isIn(C[C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isXmlDecl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->XML_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private final peekChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    if-lt v0, v1, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v0, v0, v1

    return v0
.end method

.method private readAttValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x27

    const/16 v1, 0x22

    .line 862
    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(CC)C

    move-result v0

    .line 863
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 864
    :goto_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 865
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isReference()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 866
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readReference()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 868
    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 870
    :cond_1
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    .line 871
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readAttribute(Lcom/hp/hpl/sparta/Element;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1004
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1005
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEq()V

    .line 1006
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readAttValue()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1009
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contains attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "more than once"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1011
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readCdSect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_CDATA:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 913
    :goto_0
    sget-object v3, Lcom/hp/hpl/sparta/ParseCharStream;->END_CDATA:[C

    invoke-direct {p0, v3}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_1

    if-nez v1, :cond_0

    .line 916
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 917
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v1, v3, v0, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 919
    :cond_0
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v1, v3, v0, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_1
    move v2, v0

    .line 922
    :cond_1
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v5

    aput-char v5, v3, v2

    move v2, v4

    goto :goto_0

    .line 924
    :cond_2
    invoke-direct {p0, v3}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    if-eqz v1, :cond_3

    .line 927
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v1, v3, v0, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 928
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 929
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    array-length v3, v1

    invoke-interface {v2, v1, v0, v3}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    goto :goto_2

    .line 931
    :cond_3
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-interface {v1, v3, v0, v2}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    :goto_2
    return-void
.end method

.method private final readChar()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    if-lt v0, v1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v2, v0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->lineNumber_:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->lineNumber_:I

    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 201
    iput v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v0, v0, v1

    return v0
.end method

.method private final readChar(CC)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    if-eq v0, p1, :cond_1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    const/4 p1, 0x1

    aput-char p2, v2, p1

    invoke-direct {v1, p0, v0, v2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;C[C)V

    throw v1

    :cond_1
    :goto_0
    return v0
.end method

.method private final readChar(CCCC)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    if-eq v0, p1, :cond_1

    if-eq v0, p2, :cond_1

    if-eq v0, p3, :cond_1

    if-ne v0, p4, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const/4 v2, 0x4

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    const/4 p1, 0x1

    aput-char p2, v2, p1

    const/4 p1, 0x2

    aput-char p3, v2, p1

    const/4 p1, 0x3

    aput-char p4, v2, p1

    invoke-direct {v1, p0, v0, v2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;C[C)V

    throw v1

    :cond_1
    :goto_0
    return v0
.end method

.method private final readChar(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 213
    :cond_0
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v1, p0, v0, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;CC)V

    throw v1
.end method

.method private readCharRef()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->CHARREF_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    const/16 v0, 0x78

    .line 655
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/16 v4, 0x3b

    .line 660
    invoke-direct {p0, v4}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v5

    const/16 v6, 0x20

    if-nez v5, :cond_2

    .line 661
    iget-object v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v7

    aput-char v7, v4, v3

    const/16 v3, 0xff

    if-lt v5, v3, :cond_1

    .line 663
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v2

    const-string v3, "Tmp buffer overflow on readCharRef"

    invoke-interface {v0, v3, v1, v2}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    return v6

    :cond_1
    move v3, v5

    goto :goto_1

    .line 667
    :cond_2
    invoke-direct {p0, v4}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    .line 668
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-direct {v4, v5, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 670
    :try_start_0
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v0, v0

    return v0

    .line 672
    :catch_0
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not a valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v0, v1, :cond_3

    const-string v0, "hexadecimal"

    goto :goto_2

    :cond_3
    const-string v0, "decimal"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    return v6
.end method

.method private final readComment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    .line 447
    :goto_0
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_END:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0

    .line 449
    :cond_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    return-void
.end method

.method private readContent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPossibleCharData()V

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_6

    .line 1044
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isETag()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    goto :goto_1

    .line 1046
    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isReference()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1048
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readReference()[C

    move-result-object v1

    .line 1049
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    goto :goto_1

    .line 1050
    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isCdSect()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1051
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readCdSect()V

    goto :goto_1

    .line 1054
    :cond_3
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPi()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1055
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPi()V

    goto :goto_1

    .line 1056
    :cond_4
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isComment()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1057
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readComment()V

    goto :goto_1

    :cond_5
    const/16 v1, 0x3c

    .line 1058
    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readElement()Lcom/hp/hpl/sparta/Element;

    .line 1064
    :goto_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPossibleCharData()V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private readDeclSep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPeReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPeReference()Ljava/lang/String;

    goto :goto_0

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :goto_0
    return-void
.end method

.method private readDocTypeDecl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->DOCTYPE_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    .line 581
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 582
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->docTypeName_:Ljava/lang/String;

    .line 583
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    const/16 v1, 0x3e

    const/16 v2, 0x5b

    if-eqz v0, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 586
    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 588
    iput-boolean v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->isExternalDtd_:Z

    .line 589
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readExternalId()Ljava/lang/String;

    .line 591
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 595
    :cond_0
    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    :goto_0
    const/16 v0, 0x5d

    .line 597
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 598
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isDeclSep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readDeclSep()V

    goto :goto_0

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readMarkupDecl()V

    goto :goto_0

    .line 603
    :cond_2
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    .line 604
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 606
    :cond_3
    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-void
.end method

.method private readETag(Lcom/hp/hpl/sparta/Element;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1018
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_ETAG:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    .line 1019
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end tag ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") does not match begin tag ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1025
    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_1
    const/16 p1, 0x3e

    .line 1026
    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-void
.end method

.method private final readElement()Lcom/hp/hpl/sparta/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    new-instance v0, Lcom/hp/hpl/sparta/Element;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/Element;-><init>()V

    .line 959
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEmptyElementTagOrSTag(Lcom/hp/hpl/sparta/Element;)Z

    move-result v1

    .line 961
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {v2, v0}, Lcom/hp/hpl/sparta/ParseHandler;->startElement(Lcom/hp/hpl/sparta/Element;)V

    if-eqz v1, :cond_0

    .line 964
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readContent()V

    .line 966
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readETag(Lcom/hp/hpl/sparta/Element;)V

    .line 969
    :cond_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {v1, v0}, Lcom/hp/hpl/sparta/ParseHandler;->endElement(Lcom/hp/hpl/sparta/Element;)V

    return-object v0
.end method

.method private readEmptyElementTagOrSTag(Lcom/hp/hpl/sparta/Element;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3c

    .line 986
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    .line 987
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Element;->setTagName(Ljava/lang/String;)V

    .line 988
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    const/16 v1, 0x3e

    if-eqz v0, :cond_1

    .line 989
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    const/16 v0, 0x2f

    .line 990
    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(CC)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/ParseCharStream;->readAttribute(Lcom/hp/hpl/sparta/Element;)V

    goto :goto_0

    .line 992
    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 993
    :cond_2
    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 995
    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    goto :goto_1

    .line 997
    :cond_3
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->END_EMPTYTAG:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    :goto_1
    return p1
.end method

.method private readEncodingDecl()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENCODING:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    .line 524
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEq()V

    const/16 v0, 0x27

    const/16 v1, 0x22

    .line 525
    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(CC)C

    move-result v0

    .line 526
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 527
    :goto_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 529
    :cond_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readEntityDecl()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENTITY_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    .line 750
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    const/16 v0, 0x25

    .line 751
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    .line 753
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 754
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 757
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isEntityValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEntityValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 760
    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readExternalId()Ljava/lang/String;

    move-result-object v1

    .line 761
    :goto_0
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->pes_:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 763
    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 766
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isEntityValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEntityValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 768
    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isExternalId()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 769
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readExternalId()Ljava/lang/String;

    move-result-object v1

    .line 770
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 771
    :cond_3
    sget-object v2, Lcom/hp/hpl/sparta/ParseCharStream;->NDATA:[C

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 772
    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    .line 773
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 774
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    .line 779
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :goto_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_5
    const/16 v0, 0x3e

    .line 782
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-void

    .line 777
    :cond_6
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting double-quote, \"PUBLIC\" or \"SYSTEM\" while reading entity declaration"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0
.end method

.method private readEntityRef()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x26

    .line 694
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    .line 695
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 700
    iget-boolean v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->isExternalDtd_:Z

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; not found -- possibly defined in external DTD)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No declaration of &"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    const-string v1, ""

    :cond_1
    const/16 v0, 0x3b

    .line 706
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-object v1
.end method

.method private final readEntityValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x27

    const/16 v1, 0x22

    .line 388
    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(CC)C

    move-result v0

    .line 389
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 390
    :goto_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 391
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPeReference()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPeReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isReference()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readReference()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 398
    :cond_2
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    .line 399
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final readEq()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_0
    const/16 v0, 0x3d

    .line 551
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    .line 552
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_1
    return-void
.end method

.method private readExternalId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 797
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->SYSTEM:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    goto :goto_0

    .line 799
    :cond_0
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PUBLIC:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    .line 801
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 802
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPubidLiteral()V

    .line 805
    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 806
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSystemLiteral()V

    const-string v0, "(WARNING: external ID not read)"

    return-object v0

    .line 804
    :cond_1
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting \"SYSTEM\" or \"PUBLIC\" while reading external ID"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0
.end method

.method private readMarkupDecl()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPi()V

    goto :goto_2

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isComment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readComment()V

    goto :goto_2

    .line 631
    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isEntityDecl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEntityDecl()V

    goto :goto_2

    .line 633
    :cond_2
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->MARKUPDECL_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_0
    const/16 v0, 0x3e

    .line 634
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v0, 0x27

    const/16 v1, 0x22

    .line 635
    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(CC)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 636
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    .line 637
    :goto_1
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 638
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_1

    .line 639
    :cond_3
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    goto :goto_0

    .line 641
    :cond_4
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0

    .line 643
    :cond_5
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    :goto_2
    return-void

    .line 645
    :cond_6
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting processing instruction, comment, or \"<!\""

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0
.end method

.method private readMisc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isComment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readComment()V

    goto :goto_0

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPi()V

    goto :goto_0

    .line 431
    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :goto_0
    return-void

    .line 434
    :cond_2
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting comment or processing instruction or space"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0
.end method

.method private final readName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readNameStartChar()C

    move-result v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isNameChar()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xff

    if-lt v0, v3, :cond_1

    if-nez v1, :cond_0

    .line 353
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 354
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_1
    move v0, v2

    .line 359
    :cond_1
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v5

    aput-char v5, v3, v0

    move v0, v4

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 362
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-direct {v1, v3, v2, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 365
    :cond_3
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readNameStartChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    .line 373
    invoke-static {v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const-string v2, "letter, underscore, colon"

    invoke-direct {v1, p0, v0, v2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;CLjava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return v0
.end method

.method private readPeReference()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x25

    .line 722
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    .line 723
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->pes_:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No declaration of %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, ""

    :cond_0
    const/16 v0, 0x3b

    .line 730
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-object v1
.end method

.method private final readPi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PI_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    .line 463
    :goto_0
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->QU_END:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0

    .line 465
    :cond_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    return-void
.end method

.method private readPossibleCharData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    const/16 v2, 0x3c

    .line 886
    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x26

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/hp/hpl/sparta/ParseCharStream;->END_CDATA:[C

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 888
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v3

    aput-char v3, v2, v1

    .line 891
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    aget-char v2, v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->peekChar()C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v3

    aput-char v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    .line 895
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-interface {v1, v3, v0, v2}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    .line 899
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-interface {v2, v3, v0, v1}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    :cond_3
    return-void
.end method

.method private readProlog()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isXmlDecl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readXmlDecl()V

    .line 475
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isMisc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readMisc()V

    goto :goto_0

    .line 477
    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isDocTypeDecl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readDocTypeDecl()V

    .line 479
    :goto_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isMisc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readMisc()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final readPubidLiteral()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSystemLiteral()V

    return-void
.end method

.method private final readReference()[C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->CHARREF_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 682
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readCharRef()C

    move-result v2

    aput-char v2, v0, v1

    return-object v0

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEntityRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method private final readS()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/16 v1, 0x9

    const/16 v2, 0xd

    const/16 v3, 0xa

    .line 272
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(CCCC)C

    .line 273
    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(CCCC)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final readSymbol([C)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    array-length v0, p1

    .line 816
    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v1, v2

    const-string v2, "end of XML file"

    if-ge v1, v0, :cond_1

    .line 817
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf(I)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 818
    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    .line 819
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v0, p0, v2, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;[C)V

    throw v0

    .line 822
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    add-int/lit8 v4, v3, -0x1

    aget-char v1, v1, v4

    iput v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    .line 824
    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v3, v1

    if-lt v3, v0, :cond_4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 830
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    aget-char v3, p1, v1

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 831
    :cond_2
    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, p0, v2, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;[C)V

    throw v1

    .line 834
    :cond_3
    iget p1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    return-void

    .line 824
    :cond_4
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v0, p0, v2, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;[C)V

    throw v0
.end method

.method private final readSystemLiteral()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    .line 409
    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->peekChar()C

    move-result v1

    if-eq v1, v0, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0

    .line 411
    :cond_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-void
.end method

.method private readVersionInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 540
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->VERSION:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    .line 541
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEq()V

    const/16 v0, 0x27

    const/16 v1, 0x22

    .line 543
    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(CC)C

    move-result v0

    .line 544
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readVersionNum()V

    .line 545
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-void
.end method

.method private readVersionNum()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    .line 566
    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isVersionNumChar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readXmlDecl()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->XML_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    .line 495
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readVersionInfo()V

    .line 496
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isEncodingDecl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEncodingDecl()Ljava/lang/String;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->encoding_:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->encoding_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 500
    :cond_1
    new-instance v1, Lcom/hp/hpl/sparta/EncodingMismatchException;

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->encoding_:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/hp/hpl/sparta/EncodingMismatchException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_2
    :goto_0
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->QU_END:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 504
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0

    .line 505
    :cond_3
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    return-void
.end method


# virtual methods
.method final getHistory()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method getLastCharRead()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->lineNumber_:I

    return v0
.end method

.method getLog()Lcom/hp/hpl/sparta/ParseLog;
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    return-object v0
.end method
