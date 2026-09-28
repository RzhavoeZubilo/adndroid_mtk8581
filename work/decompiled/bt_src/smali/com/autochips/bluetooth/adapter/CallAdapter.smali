.class public Lcom/autochips/bluetooth/adapter/CallAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CallAdapter"


# instance fields
.field private lastClickTimestamp:J

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private myCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyCall;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter;->lastClickTimestamp:J

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/CallAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p2, p0, Lcom/autochips/bluetooth/adapter/CallAdapter;->myCalls:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/adapter/CallAdapter;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter;->lastClickTimestamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/autochips/bluetooth/adapter/CallAdapter;J)J
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/autochips/bluetooth/adapter/CallAdapter;->lastClickTimestamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/adapter/CallAdapter;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter;->myCalls:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter;->myCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getMyCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyCall;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter;->myCalls:Ljava/util/List;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter;->myCalls:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyCall;

    .line 46
    check-cast p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;

    .line 47
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "myCall id=%s,state=%d,phoneNumber=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v5, :cond_2

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->stateTextView:Landroid/widget/TextView;

    const v5, 0x7f0f0066

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->stateTextView:Landroid/widget/TextView;

    const v2, 0x7f0f0040

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->getCallTime(Lcom/autochips/bluetooth/model/MyCall;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->stateTextView:Landroid/widget/TextView;

    const v5, 0x7f0f00ac

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_0
    iget-object v1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 67
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 68
    iget-object p1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, p1, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 39
    new-instance p2, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;

    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;-><init>(Lcom/autochips/bluetooth/adapter/CallAdapter;Landroid/view/View;)V

    return-object p2
.end method
