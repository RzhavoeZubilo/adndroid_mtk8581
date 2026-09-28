.class public Lcom/autochips/bluetooth/util/PinyinComparator;
.super Ljava/lang/Object;
.source "PinyinComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/autochips/bluetooth/model/PhoneBookModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/autochips/bluetooth/model/PhoneBookModel;Lcom/autochips/bluetooth/model/PhoneBookModel;)I
    .locals 5

    .line 13
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 15
    :cond_1
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFlag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 22
    :cond_4
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    .line 24
    :cond_5
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    .line 27
    :cond_6
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getNamePinYin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v4

    :cond_8
    :goto_1
    return v3

    :cond_9
    :goto_2
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    check-cast p2, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/util/PinyinComparator;->compare(Lcom/autochips/bluetooth/model/PhoneBookModel;Lcom/autochips/bluetooth/model/PhoneBookModel;)I

    move-result p1

    return p1
.end method
