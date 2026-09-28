.class Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;
.super Ljava/lang/Object;
.source "ChineseToPinyinResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$Field;,
        Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$ChineseToPinyinResourceHolder;
    }
.end annotation


# instance fields
.field private unicodeToHanyuPinyinTable:Lnet/sourceforge/pinyin4j/multipinyin/Trie;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->unicodeToHanyuPinyinTable:Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    .line 55
    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->initializeResource()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;-><init>()V

    return-void
.end method

.method private getHanyuPinyinRecordFromChar(C)Ljava/lang/String;
    .locals 2

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getUnicodeToHanyuPinyinTable()Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;->get(Ljava/lang/String;)Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;->getPinyin()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 148
    :goto_0
    invoke-direct {p0, p1}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->isValidRecord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method static getInstance()Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;
    .locals 1

    .line 157
    sget-object v0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$ChineseToPinyinResourceHolder;->theInstance:Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;

    return-object v0
.end method

.method private initializeResource()V
    .locals 2

    .line 66
    :try_start_0
    new-instance v0, Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    invoke-direct {v0}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;-><init>()V

    invoke-direct {p0, v0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->setUnicodeToHanyuPinyinTable(Lnet/sourceforge/pinyin4j/multipinyin/Trie;)V

    .line 67
    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getUnicodeToHanyuPinyinTable()Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    move-result-object v0

    const-string v1, "/pinyindb/unicode_to_hanyu_pinyin.txt"

    invoke-static {v1}, Lnet/sourceforge/pinyin4j/ResourceHelper;->getResourceInputStream(Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;->load(Ljava/io/InputStream;)V

    .line 69
    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getUnicodeToHanyuPinyinTable()Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    move-result-object v0

    const-string v1, "/pinyindb/multi_pinyin.txt"

    invoke-static {v1}, Lnet/sourceforge/pinyin4j/ResourceHelper;->getResourceInputStream(Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;->loadMultiPinyin(Ljava/io/InputStream;)V

    .line 72
    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getUnicodeToHanyuPinyinTable()Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;->loadMultiPinyinExtend()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private isValidRecord(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "(none0)"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setUnicodeToHanyuPinyinTable(Lnet/sourceforge/pinyin4j/multipinyin/Trie;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->unicodeToHanyuPinyinTable:Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    return-void
.end method


# virtual methods
.method getHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getHanyuPinyinRecordFromChar(C)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->parsePinyinString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getHanyuPinyinTrie(C)Lnet/sourceforge/pinyin4j/multipinyin/Trie;
    .locals 1

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getUnicodeToHanyuPinyinTable()Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;->get(Ljava/lang/String;)Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    move-result-object p1

    return-object p1
.end method

.method getUnicodeToHanyuPinyinTable()Lnet/sourceforge/pinyin4j/multipinyin/Trie;
    .locals 1

    .line 48
    iget-object v0, p0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->unicodeToHanyuPinyinTable:Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    return-object v0
.end method

.method parsePinyinString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "("

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 108
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
