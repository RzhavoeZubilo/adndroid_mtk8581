.class public Lcom/autochips/bluetooth/model/TxzContact;
.super Ljava/lang/Object;
.source "TxzContact.java"


# instance fields
.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/autochips/bluetooth/model/TxzContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/autochips/bluetooth/model/TxzContact;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/autochips/bluetooth/model/TxzContact;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/autochips/bluetooth/model/TxzContact;->number:Ljava/lang/String;

    return-void
.end method
