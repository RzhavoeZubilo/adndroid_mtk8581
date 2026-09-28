.class Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;
.super Landroid/widget/Filter;
.source "PhonebookKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "T9Filter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;-><init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3

    .line 264
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getSyncContactState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 267
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    return-object v1

    .line 269
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getContacts()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 271
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/util/T9SearchSupport;->filterName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 272
    :goto_0
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 273
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 274
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 281
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter$1;

    invoke-direct {v0, p0, p2}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter$1;-><init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;Landroid/widget/Filter$FilterResults;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
