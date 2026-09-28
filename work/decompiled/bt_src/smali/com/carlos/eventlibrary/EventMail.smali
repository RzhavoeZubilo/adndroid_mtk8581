.class public Lcom/carlos/eventlibrary/EventMail;
.super Ljava/lang/Object;
.source "EventMail.java"


# instance fields
.field private address_className:Ljava/lang/String;

.field private duplicateClassNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private flag:I

.field private map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuplicate(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMail;->duplicateClassNameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/carlos/eventlibrary/EventMail;->duplicateClassNameList:Ljava/util/List;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMail;->duplicateClassNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 82
    :cond_1
    new-instance p1, Lcom/carlos/eventlibrary/EventMailerException;

    const-string v0, "\u6284\u9001\u7c7b\u540d\u4e0d\u80fd\u4e3anull\u6216\u8005\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Lcom/carlos/eventlibrary/EventMailerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAddress_className()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMail;->address_className:Ljava/lang/String;

    return-object v0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMail;->map:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDuplicateClassNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMail;->duplicateClassNameList:Ljava/util/List;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/carlos/eventlibrary/EventMail;->flag:I

    return v0
.end method

.method public putData(ILjava/lang/Object;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMail;->map:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/carlos/eventlibrary/EventMail;->map:Landroid/util/SparseArray;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMail;->map:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setAddress_className(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/carlos/eventlibrary/EventMail;->address_className:Ljava/lang/String;

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/carlos/eventlibrary/EventMail;->flag:I

    return-void
.end method
