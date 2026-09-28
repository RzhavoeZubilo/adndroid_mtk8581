.class Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;
.super Landroid/widget/Filter;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/fragment/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "T9Filter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/SearchFragment;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/fragment/SearchFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/SearchFragment;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autochips/bluetooth/fragment/SearchFragment;Lcom/autochips/bluetooth/fragment/SearchFragment$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;-><init>(Lcom/autochips/bluetooth/fragment/SearchFragment;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3

    .line 117
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getSyncContactState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 120
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    return-object v1

    .line 122
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/util/T9SearchSupport;->filterName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 125
    :goto_0
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 127
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/SearchFragment;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/SearchFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter$1;

    invoke-direct {v0, p0, p2}, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter$1;-><init>(Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;Landroid/widget/Filter$FilterResults;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
