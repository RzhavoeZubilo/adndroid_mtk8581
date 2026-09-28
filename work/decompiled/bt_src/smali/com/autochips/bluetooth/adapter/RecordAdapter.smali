.class public Lcom/autochips/bluetooth/adapter/RecordAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final mHighLightBuffer:Landroid/text/SpannableStringBuilder;

.field private recordModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->mHighLightBuffer:Landroid/text/SpannableStringBuilder;

    .line 38
    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->recordModelList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/adapter/RecordAdapter;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->recordModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 60
    check-cast p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;

    .line 61
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->recordModelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 63
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 66
    :goto_0
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getModeType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 68
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->timeTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->typeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->timeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getTimeStamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/autochips/bluetooth/util/StaticUtil;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getCallType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v2, 0x40

    if-eq v1, v2, :cond_3

    const/16 v2, 0x100

    if-eq v1, v2, :cond_2

    const/16 v2, 0x400

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->typeTextView:Landroid/widget/TextView;

    const v2, 0x7f0c0085

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 84
    :cond_2
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->typeTextView:Landroid/widget/TextView;

    const v2, 0x7f0c0086

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 78
    :cond_3
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->typeTextView:Landroid/widget/TextView;

    const v2, 0x7f0c0084

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 87
    :goto_1
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 89
    :cond_4
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->timeTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->typeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :goto_2
    iget-object v1, p2, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    invoke-virtual {v1}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->nameTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->mHighLightBuffer:Landroid/text/SpannableStringBuilder;

    iget-object v3, p2, Lcom/autochips/bluetooth/model/PhoneBookModel;->nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    .line 95
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, -0x10000

    .line 94
    invoke-static {v2, v3, v4, v5}, Lcom/autochips/bluetooth/util/T9SearchSupport;->highLight(Landroid/text/SpannableStringBuilder;Lcn/tinkling/t9/T9MatchInfo;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_5
    iget-object v1, p2, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    invoke-virtual {v1}, Lcn/tinkling/t9/T9MatchInfo;->found()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->numberTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->mHighLightBuffer:Landroid/text/SpannableStringBuilder;

    iget-object v3, p2, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

    const/high16 v4, -0x50010000

    invoke-static {v2, v3, v0, v4}, Lcom/autochips/bluetooth/util/T9SearchSupport;->highLight(Landroid/text/SpannableStringBuilder;Lcn/tinkling/t9/T9MatchInfo;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_6
    iget-object p1, p1, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;->parentView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 49
    iget-object p2, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 50
    new-instance v0, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;

    const v1, 0x7f0b0061

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/autochips/bluetooth/adapter/RecordAdapter$MyHolder;-><init>(Lcom/autochips/bluetooth/adapter/RecordAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/RecordAdapter;->recordModelList:Ljava/util/List;

    return-void
.end method
