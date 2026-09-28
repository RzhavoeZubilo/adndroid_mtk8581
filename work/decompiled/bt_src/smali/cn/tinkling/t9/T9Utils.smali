.class public final Lcn/tinkling/t9/T9Utils;
.super Ljava/lang/Object;
.source "T9Utils.java"


# static fields
.field private static final BIT_SET_POOL:Lcn/tinkling/t9/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/tinkling/t9/Pool<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final PINYIN_T9_MAP:[C

.field private static final STRING_BUILDER_POOL:Lcn/tinkling/t9/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/tinkling/t9/Pool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public static final T9_KEYS_DIVIDER:C = ';'

.field private static final VALID_T9_KEYS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xe

    new-array v0, v0, [C

    .line 15
    fill-array-data v0, :array_0

    sput-object v0, Lcn/tinkling/t9/T9Utils;->VALID_T9_KEYS:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    .line 20
    fill-array-data v0, :array_1

    sput-object v0, Lcn/tinkling/t9/T9Utils;->PINYIN_T9_MAP:[C

    .line 31
    new-instance v0, Lcn/tinkling/t9/Pool;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcn/tinkling/t9/Pool;-><init>(I)V

    sput-object v0, Lcn/tinkling/t9/T9Utils;->STRING_BUILDER_POOL:Lcn/tinkling/t9/Pool;

    .line 32
    new-instance v0, Lcn/tinkling/t9/Pool;

    invoke-direct {v0, v1}, Lcn/tinkling/t9/Pool;-><init>(I)V

    sput-object v0, Lcn/tinkling/t9/T9Utils;->BIT_SET_POOL:Lcn/tinkling/t9/Pool;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2cs
        0x2as
        0x23s
    .end array-data

    :array_1
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildT9Key(Ljava/lang/String;Lcn/tinkling/t9/PinyinProvider;)Ljava/lang/String;
    .locals 10

    .line 305
    invoke-static {}, Lcn/tinkling/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_6

    .line 310
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-lt v5, v6, :cond_5

    const/16 v6, 0x250

    if-lt v5, v6, :cond_5

    const/16 v6, 0x1e00

    if-gt v6, v5, :cond_0

    const/16 v6, 0x1eff

    if-ge v5, v6, :cond_0

    goto :goto_3

    .line 316
    :cond_0
    invoke-interface {p1, v5}, Lcn/tinkling/t9/PinyinProvider;->getPinyin(C)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 317
    array-length v6, v5

    if-nez v6, :cond_1

    goto :goto_2

    .line 319
    :cond_1
    array-length v6, v5

    if-ne v6, v4, :cond_2

    .line 320
    aget-object v4, v5, v2

    invoke-static {v4}, Lcn/tinkling/t9/T9Utils;->convertPinyinToT9Key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/tinkling/t9/T9Utils;->insertT9Key(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_4

    .line 322
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {}, Lcn/tinkling/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 326
    array-length v7, v5

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v5, v8

    .line 327
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 328
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {v9}, Lcn/tinkling/t9/T9Utils;->convertPinyinToT9Key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcn/tinkling/t9/T9Utils;->insertT9Key(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 332
    :cond_3
    invoke-static {v6}, Lcn/tinkling/t9/T9Utils;->recycleStringBuilder(Ljava/lang/StringBuilder;)V

    goto :goto_4

    :cond_4
    :goto_2
    const-string v4, " "

    .line 318
    invoke-static {v0, v4}, Lcn/tinkling/t9/T9Utils;->insertT9Key(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_4

    .line 313
    :cond_5
    :goto_3
    invoke-static {v5}, Lcn/tinkling/t9/T9Utils;->formatCharToT9(C)C

    move-result v4

    invoke-static {v4}, Lcn/tinkling/t9/T9Utils;->convertDigitToInitial(C)C

    move-result v4

    .line 314
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/tinkling/t9/T9Utils;->insertT9Key(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 339
    invoke-static {v0}, Lcn/tinkling/t9/T9Utils;->recycleStringBuilder(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method public static buildT9Key(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/tinkling/t9/PinyinToken;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-static {}, Lcn/tinkling/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/tinkling/t9/PinyinToken;

    const/4 v2, 0x2

    .line 244
    iget v3, v1, Lcn/tinkling/t9/PinyinToken;->type:I

    if-ne v2, v3, :cond_0

    .line 245
    iget-object v1, v1, Lcn/tinkling/t9/PinyinToken;->target:Ljava/lang/String;

    invoke-static {v1}, Lcn/tinkling/t9/T9Utils;->formatPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, v1, Lcn/tinkling/t9/PinyinToken;->target:Ljava/lang/String;

    invoke-static {v1}, Lcn/tinkling/t9/T9Utils;->formatNonPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/tinkling/t9/T9Utils;->convertToT9Key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-static {v0}, Lcn/tinkling/t9/T9Utils;->recycleStringBuilder(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method static convertDigitToInitial(C)C
    .locals 0

    add-int/lit8 p0, p0, -0x23

    add-int/lit8 p0, p0, 0x43

    int-to-char p0, p0

    return p0
.end method

.method public static convertIndexToT9Key(I)C
    .locals 1

    .line 120
    sget-object v0, Lcn/tinkling/t9/T9Utils;->VALID_T9_KEYS:[C

    aget-char p0, v0, p0

    return p0
.end method

.method private static convertPinyinToT9Key(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_6

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 261
    :cond_0
    invoke-static {}, Lcn/tinkling/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 263
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 264
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-gt v4, v3, :cond_1

    const/16 v4, 0x5a

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x61

    if-gt v4, v3, :cond_4

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_4

    .line 266
    :cond_2
    invoke-static {v3}, Lcn/tinkling/t9/T9Utils;->formatCharToT9(C)C

    move-result v3

    if-nez v2, :cond_3

    .line 268
    invoke-static {v3}, Lcn/tinkling/t9/T9Utils;->convertDigitToInitial(C)C

    move-result v3

    .line 271
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 p0, 0x20

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-static {v0}, Lcn/tinkling/t9/T9Utils;->recycleStringBuilder(Ljava/lang/StringBuilder;)V

    return-object p0

    :cond_6
    :goto_1
    const-string p0, " "

    return-object p0
.end method

.method public static convertT9CharToIndex(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 145
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "INVALID T9 SEARCH CHARACTER"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0xb

    return p0

    :pswitch_1
    const/16 p0, 0xa

    return p0

    :pswitch_2
    const/16 p0, 0xc

    return p0

    :cond_1
    const/16 p0, 0xd

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static convertToT9Key(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 168
    invoke-static {}, Lcn/tinkling/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 172
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 173
    invoke-static {v5}, Lcn/tinkling/t9/T9Utils;->formatCharToT9(C)C

    move-result v6

    if-nez v6, :cond_0

    move v6, v2

    goto :goto_2

    .line 177
    :cond_0
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v3, :cond_3

    .line 178
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 181
    invoke-static {v6}, Lcn/tinkling/t9/T9Utils;->convertDigitToInitial(C)C

    move-result v6

    goto :goto_2

    .line 182
    :cond_2
    invoke-static {v5}, Lcn/tinkling/t9/T9Utils;->isValidT9Key(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 183
    invoke-static {v6}, Lcn/tinkling/t9/T9Utils;->convertDigitToInitial(C)C

    move-result v6

    goto :goto_2

    .line 179
    :cond_3
    :goto_1
    invoke-static {v6}, Lcn/tinkling/t9/T9Utils;->convertDigitToInitial(C)C

    move-result v6

    .line 185
    :cond_4
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 189
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-static {v0}, Lcn/tinkling/t9/T9Utils;->recycleStringBuilder(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method public static formatCharToT9(C)C
    .locals 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_0

    .line 157
    sget-object v1, Lcn/tinkling/t9/T9Utils;->PINYIN_T9_MAP:[C

    sub-int/2addr p0, v0

    aget-char p0, v1, p0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    .line 159
    sget-object v1, Lcn/tinkling/t9/T9Utils;->PINYIN_T9_MAP:[C

    sub-int/2addr p0, v0

    aget-char p0, v1, p0

    return p0

    .line 160
    :cond_1
    invoke-static {p0}, Lcn/tinkling/t9/T9Utils;->isValidT9Key(C)Z

    move-result v0

    if-eqz v0, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static formatNonPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 214
    invoke-static {}, Lcn/tinkling/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 218
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 219
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 222
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-static {v0}, Lcn/tinkling/t9/T9Utils;->recycleStringBuilder(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method static formatPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 195
    invoke-static {}, Lcn/tinkling/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-nez v2, :cond_0

    .line 201
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    goto :goto_1

    .line 203
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 205
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-static {v0}, Lcn/tinkling/t9/T9Utils;->recycleStringBuilder(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method static getReusableBitSet()Ljava/util/BitSet;
    .locals 1

    .line 50
    sget-object v0, Lcn/tinkling/t9/T9Utils;->BIT_SET_POOL:Lcn/tinkling/t9/Pool;

    invoke-virtual {v0}, Lcn/tinkling/t9/Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    :goto_0
    return-object v0
.end method

.method static getReusableStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 39
    sget-object v0, Lcn/tinkling/t9/T9Utils;->STRING_BUILDER_POOL:Lcn/tinkling/t9/Pool;

    invoke-virtual {v0}, Lcn/tinkling/t9/Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    return-object v0
.end method

.method static getWordsCount(Ljava/lang/String;II)I
    .locals 4

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, v0, -0x1

    :cond_0
    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, p1, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 96
    invoke-static {v2}, Lcn/tinkling/t9/T9Utils;->isInitial(C)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static insertT9Key(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/16 v1, 0x3b

    .line 289
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 290
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static isInitial(C)Z
    .locals 1

    const/16 v0, 0x43

    if-lt p0, v0, :cond_0

    const/16 v0, 0x59

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidT9Key(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isValidT9Key(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 76
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 78
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcn/tinkling/t9/T9Utils;->isValidT9Key(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static recycleBitSet(Ljava/util/BitSet;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljava/util/BitSet;->clear()V

    .line 56
    sget-object v0, Lcn/tinkling/t9/T9Utils;->BIT_SET_POOL:Lcn/tinkling/t9/Pool;

    invoke-virtual {v0, p0}, Lcn/tinkling/t9/Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method static recycleStringBuilder(Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    sget-object v0, Lcn/tinkling/t9/T9Utils;->STRING_BUILDER_POOL:Lcn/tinkling/t9/Pool;

    invoke-virtual {v0, p0}, Lcn/tinkling/t9/Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method
