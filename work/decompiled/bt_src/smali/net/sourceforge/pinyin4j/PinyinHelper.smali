.class public Lnet/sourceforge/pinyin4j/PinyinHelper;
.super Ljava/lang/Object;
.source "PinyinHelper.java"


# static fields
.field private static final ARR_EMPTY:[Ljava/lang/String;

.field private static final EMPTY:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 31
    sput-object v0, Lnet/sourceforge/pinyin4j/PinyinHelper;->ARR_EMPTY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToGwoyeuRomatzyhStringArray(C)[Ljava/lang/String;
    .locals 3

    .line 221
    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 224
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 226
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 227
    aget-object v2, p0, v1

    invoke-static {v2}, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhTranslator;->convertHanyuPinyinToGwoyeuRomatzyh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 234
    :cond_1
    sget-object p0, Lnet/sourceforge/pinyin4j/PinyinHelper;->ARR_EMPTY:[Ljava/lang/String;

    return-object p0
.end method

.method private static convertToTargetPinyinStringArray(CLnet/sourceforge/pinyin4j/PinyinRomanizationType;)[Ljava/lang/String;
    .locals 4

    .line 184
    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 187
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 189
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 190
    aget-object v2, p0, v1

    sget-object v3, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->HANYU_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-static {v2, v3, p1}, Lnet/sourceforge/pinyin4j/PinyinRomanizationTranslator;->convertRomanizationSystem(Ljava/lang/String;Lnet/sourceforge/pinyin4j/PinyinRomanizationType;Lnet/sourceforge/pinyin4j/PinyinRomanizationType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 198
    :cond_1
    sget-object p0, Lnet/sourceforge/pinyin4j/PinyinHelper;->ARR_EMPTY:[Ljava/lang/String;

    return-object p0
.end method

.method private static getFormattedHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 100
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 101
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lnet/sourceforge/pinyin4j/PinyinFormatter;->formatHanyuPinyin(Ljava/lang/String;Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 107
    :cond_1
    sget-object p0, Lnet/sourceforge/pinyin4j/PinyinHelper;->ARR_EMPTY:[Ljava/lang/String;

    return-object p0
.end method

.method private static getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    .line 117
    invoke-static {}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getInstance()Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toGwoyeuRomatzyhStringArray(C)[Ljava/lang/String;
    .locals 0

    .line 211
    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->convertToGwoyeuRomatzyhStringArray(C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHanYuPinyinString(Ljava/lang/String;Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    .line 259
    invoke-static {}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getInstance()Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    .line 264
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_9

    const/4 v4, 0x0

    .line 266
    aget-char v5, p0, v3

    .line 267
    invoke-virtual {v0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getUnicodeToHanyuPinyinTable()Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    move-result-object v6

    move v7, v3

    move v8, v7

    .line 271
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-virtual {v6, v5}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;->get(Ljava/lang/String;)Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 274
    invoke-virtual {v5}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;->getPinyin()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 275
    invoke-virtual {v5}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;->getPinyin()Ljava/lang/String;

    move-result-object v4

    move v8, v7

    .line 278
    :cond_1
    invoke-virtual {v5}, Lnet/sourceforge/pinyin4j/multipinyin/Trie;->getNextTire()Lnet/sourceforge/pinyin4j/multipinyin/Trie;

    move-result-object v5

    :cond_2
    move-object v6, v5

    add-int/lit8 v7, v7, 0x1

    .line 281
    array-length v5, p0

    if-ge v7, v5, :cond_3

    .line 282
    aget-char v5, p0, v7

    if-nez v6, :cond_0

    :cond_3
    if-nez v4, :cond_4

    if-eqz p3, :cond_8

    .line 288
    aget-char v3, p0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 290
    :cond_4
    invoke-virtual {v0, v4}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->parsePinyinString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    move v5, v2

    .line 292
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_8

    .line 293
    aget-object v6, v4, v5

    invoke-static {v6, p1}, Lnet/sourceforge/pinyin4j/PinyinFormatter;->formatHanyuPinyin(Ljava/lang/String;Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    array-length v6, p0

    if-lt v7, v6, :cond_5

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_6

    if-eq v3, v8, :cond_6

    .line 296
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-ne v3, v8, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v3, v8, 0x1

    goto :goto_0

    .line 305
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 0

    .line 54
    invoke-static {p0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getUnformattedHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    .line 82
    invoke-static {p0, p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->getFormattedHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toMPS2PinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    .line 157
    sget-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->MPS2_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-static {p0, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->convertToTargetPinyinStringArray(CLnet/sourceforge/pinyin4j/PinyinRomanizationType;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTongyongPinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    .line 130
    sget-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->TONGYONG_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-static {p0, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->convertToTargetPinyinStringArray(CLnet/sourceforge/pinyin4j/PinyinRomanizationType;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toWadeGilesPinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    .line 143
    sget-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->WADEGILES_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-static {p0, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->convertToTargetPinyinStringArray(CLnet/sourceforge/pinyin4j/PinyinRomanizationType;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toYalePinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    .line 170
    sget-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->YALE_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-static {p0, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->convertToTargetPinyinStringArray(CLnet/sourceforge/pinyin4j/PinyinRomanizationType;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
