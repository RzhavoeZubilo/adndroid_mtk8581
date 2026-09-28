.class public final Lcn/tinkling/t9/T9Matcher;
.super Ljava/lang/Object;
.source "T9Matcher.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMatchInfo(Lcn/tinkling/t9/T9MatchInfo;)Lcn/tinkling/t9/T9MatchInfo;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Lcn/tinkling/t9/T9MatchInfo;

    invoke-direct {v0}, Lcn/tinkling/t9/T9MatchInfo;-><init>()V

    .line 223
    invoke-virtual {p0, v0}, Lcn/tinkling/t9/T9MatchInfo;->setNext(Lcn/tinkling/t9/T9MatchInfo;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static matches(Ljava/lang/String;C)Lcn/tinkling/t9/T9MatchInfo;
    .locals 3

    .line 27
    new-instance v0, Lcn/tinkling/t9/T9MatchInfo;

    invoke-direct {v0}, Lcn/tinkling/t9/T9MatchInfo;-><init>()V

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-static {p1}, Lcn/tinkling/t9/T9Utils;->convertDigitToInitial(C)C

    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 34
    invoke-static {p0, v1, p1}, Lcn/tinkling/t9/T9Utils;->getWordsCount(Ljava/lang/String;II)I

    move-result p0

    .line 35
    invoke-virtual {v0, p0, v2}, Lcn/tinkling/t9/T9MatchInfo;->set(II)V

    :cond_0
    return-object v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Lcn/tinkling/t9/T9MatchInfo;
    .locals 4

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p0, p1}, Lcn/tinkling/t9/T9Matcher;->matches(Ljava/lang/String;C)Lcn/tinkling/t9/T9MatchInfo;

    move-result-object p0

    return-object p0

    .line 58
    :cond_1
    new-instance v0, Lcn/tinkling/t9/T9MatchInfo;

    invoke-direct {v0}, Lcn/tinkling/t9/T9MatchInfo;-><init>()V

    :cond_2
    const/16 v2, 0x3b

    .line 62
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_3

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_3
    if-ge v1, v2, :cond_4

    .line 67
    invoke-static {v0, p0, v1, v2, p1}, Lcn/tinkling/t9/T9Matcher;->matchesName(Lcn/tinkling/t9/T9MatchInfo;Ljava/lang/String;IILjava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 70
    invoke-virtual {v0}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_5
    return-object v0

    .line 52
    :cond_6
    :goto_0
    new-instance p0, Lcn/tinkling/t9/T9MatchInfo;

    invoke-direct {p0}, Lcn/tinkling/t9/T9MatchInfo;-><init>()V

    return-object p0
.end method

.method private static matchesName(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I
    .locals 17

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    add-int/lit8 v11, p3, 0x1

    move v12, v11

    :goto_0
    if-ge v12, v8, :cond_1

    .line 81
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcn/tinkling/t9/T9Utils;->isInitial(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v12, v8, :cond_3

    add-int/lit8 v0, p5, 0x1

    .line 84
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v1, p5

    add-int/lit8 v1, v1, -0x1

    .line 83
    invoke-virtual {v7, v11, v9, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-int v0, p3, p1

    .line 86
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    sub-int v1, v1, p5

    .line 85
    invoke-virtual {v10, v0, v1}, Ljava/util/BitSet;->set(II)V

    return v14

    :cond_2
    return v13

    :cond_3
    add-int/lit8 v15, p5, 0x1

    .line 97
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcn/tinkling/t9/T9Utils;->convertDigitToInitial(C)C

    move-result v0

    .line 98
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v16, 0x2

    if-ne v0, v1, :cond_5

    .line 99
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p5, 0x2

    if-ne v0, v1, :cond_4

    sub-int v0, p3, p1

    .line 100
    invoke-virtual {v10, v0}, Ljava/util/BitSet;->set(I)V

    sub-int v12, v12, p1

    .line 101
    invoke-virtual {v10, v12}, Ljava/util/BitSet;->set(I)V

    return v16

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v12

    move-object/from16 v4, p4

    move v5, v15

    move-object/from16 v6, p6

    .line 105
    invoke-static/range {v0 .. v6}, Lcn/tinkling/t9/T9Matcher;->matchesName(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    if-lez v0, :cond_5

    sub-int v1, p3, p1

    .line 108
    invoke-virtual {v10, v1}, Ljava/util/BitSet;->set(I)V

    :goto_2
    add-int/2addr v0, v14

    return v0

    :cond_5
    sub-int v0, v12, p3

    add-int/lit8 v1, v12, -0x1

    .line 114
    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 119
    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v1, p5

    if-gt v1, v0, :cond_8

    .line 121
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v0, p5

    add-int/lit8 v0, v0, -0x1

    .line 120
    invoke-virtual {v7, v11, v9, v15, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    sub-int v0, p3, p1

    .line 122
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    sub-int v1, v1, p5

    invoke-virtual {v10, v0, v1}, Ljava/util/BitSet;->set(II)V

    return v14

    :cond_7
    return v13

    :cond_8
    add-int v5, p5, v0

    .line 129
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcn/tinkling/t9/T9Utils;->convertDigitToInitial(C)C

    move-result v1

    .line 130
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_a

    sub-int/2addr v0, v14

    .line 131
    invoke-virtual {v7, v11, v9, v15, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v0, v5, 0x1

    .line 132
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_9

    sub-int v0, p3, p1

    sub-int v12, v12, p1

    add-int/2addr v12, v14

    .line 133
    invoke-virtual {v10, v0, v12}, Ljava/util/BitSet;->set(II)V

    return v16

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v12

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    .line 137
    invoke-static/range {v0 .. v6}, Lcn/tinkling/t9/T9Matcher;->matchesName(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    if-lez v0, :cond_a

    sub-int v1, p3, p1

    sub-int v12, v12, p1

    .line 140
    invoke-virtual {v10, v1, v12}, Ljava/util/BitSet;->set(II)V

    goto :goto_2

    :cond_a
    return v13
.end method

.method private static matchesName(Lcn/tinkling/t9/T9MatchInfo;Ljava/lang/String;IILjava/lang/String;)V
    .locals 11

    sub-int v0, p3, p2

    .line 153
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p3, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcn/tinkling/t9/T9Utils;->convertDigitToInitial(C)C

    move-result v1

    const/4 v2, 0x0

    move v3, p2

    :goto_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_5

    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 173
    invoke-static {}, Lcn/tinkling/t9/T9Utils;->getReusableBitSet()Ljava/util/BitSet;

    move-result-object v2

    .line 175
    :cond_3
    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    const/4 v9, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, v3

    move-object v8, p4

    move-object v10, v2

    .line 177
    invoke-static/range {v4 .. v10}, Lcn/tinkling/t9/T9Matcher;->matchesName(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I

    move-result v4

    if-lez v4, :cond_4

    .line 179
    invoke-static {p1, p0, v2, p2}, Lcn/tinkling/t9/T9Matcher;->setMatchResult(Ljava/lang/String;Lcn/tinkling/t9/T9MatchInfo;Ljava/util/BitSet;I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 187
    invoke-static {v2}, Lcn/tinkling/t9/T9Utils;->recycleBitSet(Ljava/util/BitSet;)V

    :cond_6
    return-void
.end method

.method public static matchesNumber(Ljava/lang/String;Ljava/lang/String;)Lcn/tinkling/t9/T9MatchInfo;
    .locals 2

    .line 240
    new-instance v0, Lcn/tinkling/t9/T9MatchInfo;

    invoke-direct {v0}, Lcn/tinkling/t9/T9MatchInfo;-><init>()V

    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcn/tinkling/t9/T9MatchInfo;->set(II)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static setMatchResult(Ljava/lang/String;Lcn/tinkling/t9/T9MatchInfo;Ljava/util/BitSet;I)V
    .locals 8

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, p3

    move v4, v1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 197
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v3, p3, :cond_0

    if-eq v5, v6, :cond_0

    .line 198
    invoke-static {v5}, Lcn/tinkling/t9/T9Utils;->isInitial(C)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    sub-int v7, v3, p3

    .line 199
    invoke-virtual {p2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eq v5, v6, :cond_1

    if-ne v4, v1, :cond_2

    move v4, v2

    goto :goto_1

    :cond_1
    if-le v4, v1, :cond_2

    .line 204
    invoke-static {p1}, Lcn/tinkling/t9/T9Matcher;->checkMatchInfo(Lcn/tinkling/t9/T9MatchInfo;)Lcn/tinkling/t9/T9MatchInfo;

    move-result-object p1

    sub-int v5, v2, v4

    .line 205
    invoke-virtual {p1, v4, v5}, Lcn/tinkling/t9/T9MatchInfo;->set(II)V

    move v4, v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-le v4, v1, :cond_5

    .line 214
    invoke-static {p1}, Lcn/tinkling/t9/T9Matcher;->checkMatchInfo(Lcn/tinkling/t9/T9MatchInfo;)Lcn/tinkling/t9/T9MatchInfo;

    move-result-object p0

    sub-int/2addr v2, v4

    .line 215
    invoke-virtual {p0, v4, v2}, Lcn/tinkling/t9/T9MatchInfo;->set(II)V

    :cond_5
    return-void
.end method
