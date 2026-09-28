.class public final Lcom/autochips/bluetooth/util/T9SearchSupport;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

.field private static final PINYIN_PROVIDER:Lcn/tinkling/t9/PinyinProvider;

.field private static final SET_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "T9SearchSupport"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/util/T9SearchSupport;->FORMAT:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    .line 45
    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->UPPERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    .line 46
    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 47
    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setVCharType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;)V

    .line 49
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/autochips/bluetooth/util/T9SearchSupport;->SET_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    .line 51
    new-instance v0, Lcom/autochips/bluetooth/util/T9SearchSupport$1;

    invoke-direct {v0}, Lcom/autochips/bluetooth/util/T9SearchSupport$1;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/util/T9SearchSupport;->PINYIN_PROVIDER:Lcn/tinkling/t9/PinyinProvider;

    .line 195
    new-instance v0, Lcom/autochips/bluetooth/util/T9SearchSupport$2;

    invoke-direct {v0}, Lcom/autochips/bluetooth/util/T9SearchSupport$2;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/util/T9SearchSupport;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroidx/core/util/Pools$SynchronizedPool;
    .locals 1

    .line 34
    sget-object v0, Lcom/autochips/bluetooth/util/T9SearchSupport;->SET_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-object v0
.end method

.method static synthetic access$100()Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;
    .locals 1

    .line 34
    sget-object v0, Lcom/autochips/bluetooth/util/T9SearchSupport;->FORMAT:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    return-object v0
.end method

.method public static buildT9Key(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/autochips/bluetooth/util/T9SearchSupport;->PINYIN_PROVIDER:Lcn/tinkling/t9/PinyinProvider;

    invoke-static {p0, v0}, Lcn/tinkling/t9/T9Utils;->buildT9Key(Ljava/lang/String;Lcn/tinkling/t9/PinyinProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static filter(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 101
    iput-object v3, v1, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 102
    iput-object v3, v1, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 103
    iget-object v3, v1, Lcom/autochips/bluetooth/model/PhoneBookModel;->t9Key:Ljava/lang/String;

    invoke-static {v3, p2}, Lcn/tinkling/t9/T9Matcher;->matches(Ljava/lang/String;Ljava/lang/String;)Lcn/tinkling/t9/T9MatchInfo;

    move-result-object v3

    .line 105
    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    :cond_1
    invoke-static {v2, p2}, Lcn/tinkling/t9/T9Matcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;)Lcn/tinkling/t9/T9MatchInfo;

    move-result-object v2

    .line 110
    invoke-virtual {v3}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    :cond_2
    iput-object v3, v1, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 112
    iput-object v2, v1, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 117
    iput-object v3, p1, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 118
    iput-object v3, p1, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 119
    iget-object v1, p1, Lcom/autochips/bluetooth/model/PhoneBookModel;->t9Key:Ljava/lang/String;

    invoke-static {v1, p2}, Lcn/tinkling/t9/T9Matcher;->matches(Ljava/lang/String;Ljava/lang/String;)Lcn/tinkling/t9/T9MatchInfo;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 122
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v4, v2

    .line 124
    :goto_2
    invoke-static {v4, p2}, Lcn/tinkling/t9/T9Matcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;)Lcn/tinkling/t9/T9MatchInfo;

    move-result-object v4

    .line 126
    invoke-virtual {v1}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    :cond_6
    iput-object v1, p1, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 128
    iput-object v4, p1, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 129
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_7
    sget-object p0, Lcom/autochips/bluetooth/util/T9SearchSupport;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    return-object v0
.end method

.method public static filterName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    .line 145
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    const/4 v2, 0x0

    .line 146
    iput-object v2, v1, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 147
    iput-object v2, v1, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filterName pinyin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "T9SearchSupport"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 156
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 152
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found one pinyin="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method public static highLight(Landroid/text/SpannableStringBuilder;Lcn/tinkling/t9/T9MatchInfo;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 175
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 179
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p1}, Lcn/tinkling/t9/T9MatchInfo;->start()I

    move-result v0

    .line 182
    invoke-virtual {p1}, Lcn/tinkling/t9/T9MatchInfo;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 183
    invoke-virtual {p1}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v0, p2, :cond_0

    if-gt v1, p2, :cond_0

    .line 184
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcn/tinkling/t9/T9MatchInfo;->next()Lcn/tinkling/t9/T9MatchInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p0
.end method
