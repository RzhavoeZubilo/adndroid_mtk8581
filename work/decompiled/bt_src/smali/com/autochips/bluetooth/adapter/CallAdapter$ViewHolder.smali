.class Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CallAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/adapter/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field nameTextView:Landroid/widget/TextView;

.field phoneNumberTextView:Landroid/widget/TextView;

.field stateTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/autochips/bluetooth/adapter/CallAdapter;

.field timeTextView:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/adapter/CallAdapter;Landroid/view/View;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->this$0:Lcom/autochips/bluetooth/adapter/CallAdapter;

    .line 94
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 95
    iput-object p2, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->view:Landroid/view/View;

    const p1, 0x7f080194

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    const p1, 0x7f0801d0

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->phoneNumberTextView:Landroid/widget/TextView;

    const p1, 0x7f080241

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->stateTextView:Landroid/widget/TextView;

    const p1, 0x7f080274

    .line 99
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->this$0:Lcom/autochips/bluetooth/adapter/CallAdapter;

    invoke-static {v2}, Lcom/autochips/bluetooth/adapter/CallAdapter;->access$000(Lcom/autochips/bluetooth/adapter/CallAdapter;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->this$0:Lcom/autochips/bluetooth/adapter/CallAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/autochips/bluetooth/adapter/CallAdapter;->access$002(Lcom/autochips/bluetooth/adapter/CallAdapter;J)J

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->this$0:Lcom/autochips/bluetooth/adapter/CallAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/adapter/CallAdapter;->access$100(Lcom/autochips/bluetooth/adapter/CallAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyCall;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->this$0:Lcom/autochips/bluetooth/adapter/CallAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/adapter/CallAdapter;->access$100(Lcom/autochips/bluetooth/adapter/CallAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyCall;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/CallAdapter$ViewHolder;->this$0:Lcom/autochips/bluetooth/adapter/CallAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/adapter/CallAdapter;->access$100(Lcom/autochips/bluetooth/adapter/CallAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/MyCall;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->unHold()V

    :cond_2
    return-void
.end method
