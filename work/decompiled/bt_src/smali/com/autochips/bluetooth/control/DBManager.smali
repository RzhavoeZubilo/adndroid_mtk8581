.class public Lcom/autochips/bluetooth/control/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "tel.db"

.field public static final DB_PATH:Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.autochips.bluetooth"


# instance fields
.field private final BUFFER_SIZE:I

.field private final MOBILE_FIELD_CITY:I

.field private final MOBILE_FIELD_MOBILE:I

.field private final MOBILE_FIELD_PROVIDER:I

.field private final MOBILE_FIELD_PROVINCE:I

.field private final TELZONE_FIELD_CITY:I

.field private final TELZONE_FIELD_PROVINCE:I

.field private final TELZONE_FIELD_TELZONE:I

.field private context:Landroid/content/Context;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field m_db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.autochips.bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/autochips/bluetooth/control/DBManager;->MOBILE_FIELD_MOBILE:I

    const/4 v1, 0x1

    .line 25
    iput v1, p0, Lcom/autochips/bluetooth/control/DBManager;->MOBILE_FIELD_PROVINCE:I

    const/4 v2, 0x2

    .line 26
    iput v2, p0, Lcom/autochips/bluetooth/control/DBManager;->MOBILE_FIELD_CITY:I

    const/4 v3, 0x3

    .line 27
    iput v3, p0, Lcom/autochips/bluetooth/control/DBManager;->MOBILE_FIELD_PROVIDER:I

    .line 28
    iput v0, p0, Lcom/autochips/bluetooth/control/DBManager;->TELZONE_FIELD_PROVINCE:I

    .line 29
    iput v1, p0, Lcom/autochips/bluetooth/control/DBManager;->TELZONE_FIELD_CITY:I

    .line 30
    iput v2, p0, Lcom/autochips/bluetooth/control/DBManager;->TELZONE_FIELD_TELZONE:I

    const v0, 0x61a80

    .line 32
    iput v0, p0, Lcom/autochips/bluetooth/control/DBManager;->BUFFER_SIZE:I

    .line 45
    iput-object p1, p0, Lcom/autochips/bluetooth/control/DBManager;->context:Landroid/content/Context;

    return-void
.end method

.method private GetSpecialTel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x14

    new-array v1, v0, [Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    .line 217
    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v3, "110"

    const-string v4, "\u516c\u5b89\u62a5\u8b66"

    invoke-direct {v2, p0, v3, v4}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "119"

    const-string v5, "\u706b\u8b66"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "114"

    const-string v5, "\u67e5\u53f7\u53f0"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "160"

    const-string v5, "160\u58f0\u8baf\u53f0"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "10000"

    const-string v5, "\u4e2d\u56fd\u7535\u4fe1\u5ba2\u670d"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "10086"

    const-string v5, "\u4e2d\u56fd\u79fb\u52a8\u5ba2\u670d"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "1008611"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "1008612"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "1008613"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "10010"

    const-string v5, "\u8054\u901a\u5ba2\u670d\u70ed\u7ebf"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "10010011"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "122"

    const-string v5, "\u4ea4\u901a\u4e8b\u6545"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "120"

    const-string v5, "\u6025\u6551\u4e2d\u5fc3"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "121"

    const-string v5, "\u5929\u6c14\u9884\u62a5"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xd

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "112"

    const-string v5, "\u7535\u8bdd\u6545\u969c"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xe

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "4008005005"

    const-string v5, "\u7ffc\u5361\u5728\u7ebf"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xf

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "4001050868"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x10

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "075787807155"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "075788303000"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x12

    aput-object v2, v1, v4

    new-instance v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;

    const-string v4, "075536860630"

    invoke-direct {v2, p0, v4, v5}, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;-><init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x13

    aput-object v2, v1, v4

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 244
    aget-object v2, v1, v3

    iget-object v2, v2, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;->tel:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    aget-object p1, v1, v3

    iget-object p1, p1, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;->desc:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    const-string v0, "Database"

    const/4 v1, 0x0

    .line 64
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 67
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v5

    const v6, 0x531000

    if-ge v5, v6, :cond_0

    .line 69
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 73
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :cond_1
    move v5, v4

    .line 75
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v5, :cond_4

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/autochips/bluetooth/control/DBManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autochips/bluetooth/base/R$raw;->tel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 79
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const v5, 0x61a80

    new-array v5, v5, [B

    .line 82
    :goto_2
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    .line 83
    invoke-virtual {v3, v5, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 86
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_4
    invoke-static {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/autochips/bluetooth/control/DBManager;->m_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v2, "IO exception"

    .line 97
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v2, "File not found"

    .line 94
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    return-object v1
.end method


# virtual methods
.method public GetTelZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/control/DBManager;->GetSpecialTel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 115
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "[0-9]*"

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v1, v5, :cond_5

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x31

    if-ne v1, v9, :cond_5

    .line 117
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 118
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 122
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 123
    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v5, :cond_3

    const/4 v9, 0x7

    .line 126
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    :cond_3
    move v9, v1

    :goto_0
    new-array v10, v6, [Ljava/lang/Object;

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v7

    const-string v1, "select * from mobile where mobile = %d or mobile = %d ;"

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 129
    iget-object v9, p0, Lcom/autochips/bluetooth/control/DBManager;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 131
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {p0, v0, v9, v10}, Lcom/autochips/bluetooth/control/DBManager;->_get_result(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    const-string v1, "0"

    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_6
    const-string v1, "+"

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 150
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_b

    .line 152
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 153
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    .line 157
    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 158
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_9

    move p1, v1

    goto :goto_1

    .line 163
    :cond_9
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_1
    new-array v2, v6, [Ljava/lang/Object;

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    const-string p1, "select * from telzone where telzone = %s or telzone = %s ;"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/autochips/bluetooth/control/DBManager;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 167
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 168
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v8}, Lcom/autochips/bluetooth/control/DBManager;->_get_result(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_b
    return-object v0
.end method

.method _get_result(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u79fb\u52a8"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u8054\u901a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p3, p2, :cond_4

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u7535\u4fe1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_0
    return-object p1
.end method

.method public closeDatabase()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/autochips/bluetooth/control/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/autochips/bluetooth/control/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public openDatabase()V
    .locals 5

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "tel.db"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/control/DBManager;->openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/control/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/autochips/bluetooth/control/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method
