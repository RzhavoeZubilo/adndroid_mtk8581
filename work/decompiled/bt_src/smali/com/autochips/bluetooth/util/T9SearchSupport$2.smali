.class final Lcom/autochips/bluetooth/util/T9SearchSupport$2;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/util/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/autochips/bluetooth/model/PhoneBookModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMatchLength(Lcn/tinkling/t9/T9MatchInfo;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1}, Lcn/tinkling/t9/T9MatchInfo;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    invoke-virtual {p1}, Lcn/tinkling/t9/T9MatchInfo;->next()Lcn/tinkling/t9/T9MatchInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public compare(Lcom/autochips/bluetooth/model/PhoneBookModel;Lcom/autochips/bluetooth/model/PhoneBookModel;)I
    .locals 6

    .line 199
    iget-object v0, p1, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 200
    iget-object v1, p2, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 201
    invoke-virtual {v0}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    .line 202
    invoke-virtual {v1}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 203
    invoke-virtual {v0}, Lcn/tinkling/t9/T9MatchInfo;->start()I

    move-result v2

    .line 204
    invoke-virtual {v1}, Lcn/tinkling/t9/T9MatchInfo;->start()I

    move-result v5

    if-ge v2, v5, :cond_0

    return v3

    :cond_0
    if-le v2, v5, :cond_1

    return v4

    .line 212
    :cond_1
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/util/T9SearchSupport$2;->getMatchLength(Lcn/tinkling/t9/T9MatchInfo;)I

    move-result v0

    .line 213
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/util/T9SearchSupport$2;->getMatchLength(Lcn/tinkling/t9/T9MatchInfo;)I

    move-result v1

    .line 215
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v2, v5

    if-eqz v2, :cond_4

    if-ge v0, v1, :cond_2

    return v4

    :cond_2
    if-le v0, v1, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    if-eq v0, v1, :cond_6

    .line 224
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_5

    return v4

    .line 226
    :cond_5
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    return v3

    .line 231
    :cond_6
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_7
    return v3

    .line 236
    :cond_8
    invoke-virtual {v1}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    .line 240
    :cond_9
    iget-object v0, p1, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 241
    iget-object v1, p2, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 242
    invoke-virtual {v0}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 243
    invoke-virtual {v1}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 244
    invoke-virtual {v0}, Lcn/tinkling/t9/T9MatchInfo;->start()I

    move-result v0

    .line 245
    invoke-virtual {v1}, Lcn/tinkling/t9/T9MatchInfo;->start()I

    move-result v1

    if-ge v0, v1, :cond_a

    return v3

    :cond_a
    if-le v0, v1, :cond_b

    return v4

    .line 253
    :cond_b
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_c

    .line 254
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_c
    move-object p1, v1

    .line 257
    :goto_0
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 258
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 260
    :cond_d
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_e
    return v3

    .line 265
    :cond_f
    invoke-virtual {v1}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 195
    check-cast p1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    check-cast p2, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/util/T9SearchSupport$2;->compare(Lcom/autochips/bluetooth/model/PhoneBookModel;Lcom/autochips/bluetooth/model/PhoneBookModel;)I

    move-result p1

    return p1
.end method
