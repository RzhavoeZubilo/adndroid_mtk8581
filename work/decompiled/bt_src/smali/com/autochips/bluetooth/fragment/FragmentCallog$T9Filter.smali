.class Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;
.super Landroid/widget/Filter;
.source "FragmentCallog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/fragment/FragmentCallog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "T9Filter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/fragment/FragmentCallog;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autochips/bluetooth/fragment/FragmentCallog;Lcom/autochips/bluetooth/fragment/FragmentCallog$1;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;-><init>(Lcom/autochips/bluetooth/fragment/FragmentCallog;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3

    .line 417
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getSyncContactState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 420
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 422
    iput-object v1, v2, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 423
    iput-object v1, v2, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    goto :goto_0

    .line 425
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 426
    iput-object v1, v2, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 427
    iput-object v1, v2, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    goto :goto_1

    .line 430
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 432
    :cond_3
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object v0

    .line 433
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getContacts()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-static {v0, v2, p1}, Lcom/autochips/bluetooth/util/T9SearchSupport;->filter(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 434
    :goto_2
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_4

    .line 436
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 437
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 439
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 440
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 448
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$400(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;

    invoke-direct {v0, p0, p2}, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;-><init>(Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;Landroid/widget/Filter$FilterResults;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
