.class final Lcom/autochips/bluetooth/util/CharacterParser$1;
.super Ljava/util/HashMap;
.source "CharacterParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/util/CharacterParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 191
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "2"

    const-string v1, "abc"

    .line 193
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "3"

    const-string v1, "def"

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "4"

    const-string v1, "ghi"

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5"

    const-string v1, "jkl"

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "6"

    const-string v1, "mno"

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "7"

    const-string v1, "pqrs"

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "8"

    const-string v1, "tuv"

    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "9"

    const-string v1, "wxyz"

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "*"

    const-string v1, ","

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0"

    const-string v1, "+"

    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#"

    const-string v1, ";"

    .line 203
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/util/CharacterParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
