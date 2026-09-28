.class public Lcom/autochips/bluetooth/util/FormatTelNumber;
.super Ljava/lang/Object;
.source "FormatTelNumber.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _get_country_code_len(Ljava/lang/String;)I
    .locals 54

    move-object/from16 v0, p0

    const-string v1, "60"

    const-string v2, "62"

    const-string v3, "63"

    const-string v4, "65"

    const-string v5, "66"

    const-string v6, "673"

    const-string v7, "81"

    const-string v8, "82"

    const-string v9, "84"

    const-string v10, "850"

    const-string v11, "852"

    const-string v12, "853"

    const-string v13, "855"

    const-string v14, "856"

    const-string v15, "86"

    const-string v16, "886"

    const-string v17, "880"

    const-string v18, "90"

    const-string v19, "91"

    const-string v20, "92"

    const-string v21, "93"

    const-string v22, "94"

    const-string v23, "95"

    const-string v24, "960"

    const-string v25, "961"

    const-string v26, "962"

    const-string v27, "963"

    const-string v28, "964"

    const-string v29, "965"

    const-string v30, "7"

    const-string v31, "30"

    const-string v32, "31"

    const-string v33, "32"

    const-string v34, "33"

    const-string v35, "34"

    const-string v36, "351"

    const-string v37, "49"

    const-string v38, "39"

    const-string v39, "41"

    const-string v40, "44"

    const-string v41, "20"

    const-string v42, "212"

    const-string v43, "213"

    const-string v44, "216"

    const-string v45, "218"

    const-string v46, "1"

    const-string v47, "1808"

    const-string v48, "51"

    const-string v49, "52"

    const-string v50, "53"

    const-string v51, "55"

    const-string v52, "61"

    const-string v53, "64"

    .line 9
    filled-new-array/range {v1 .. v53}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1

    move v3, v2

    :goto_0
    const/16 v4, 0x35

    if-ge v3, v4, :cond_1

    .line 19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 20
    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 23
    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static ui_format_tel_number(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_9

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 36
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x8

    const/16 v3, 0x30

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_5

    const/4 v1, 0x4

    .line 45
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v3, :cond_4

    .line 46
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x32

    if-ne v3, v7, :cond_3

    goto :goto_0

    :cond_3
    move v6, v1

    .line 51
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_8

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    if-gt v1, v2, :cond_8

    new-array v1, v4, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    const-string p0, "%s-%s"

    .line 54
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 59
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x9

    if-lt v1, v3, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xb

    if-gt v1, v3, :cond_7

    const-string v1, "13"

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "15"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "18"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    new-array v1, v6, [Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x7

    .line 63
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "%s-%s-%s"

    .line 62
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 65
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_8

    .line 67
    invoke-static {p0}, Lcom/autochips/bluetooth/util/FormatTelNumber;->_get_country_code_len(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8

    if-ge v1, v2, :cond_8

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/autochips/bluetooth/util/FormatTelNumber;->ui_format_tel_number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    new-array v3, v4, [Ljava/lang/Object;

    .line 72
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    aput-object v2, v3, v5

    const-string p0, "%s %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_8
    :goto_1
    return-object p0

    :cond_9
    :goto_2
    const-string p0, ""

    return-object p0
.end method
