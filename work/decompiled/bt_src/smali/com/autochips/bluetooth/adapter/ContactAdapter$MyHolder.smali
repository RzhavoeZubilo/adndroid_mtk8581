.class Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/adapter/ContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHolder"
.end annotation


# instance fields
.field firstLetterTextView:Landroid/widget/TextView;

.field nameTextView:Landroid/widget/TextView;

.field parentView:Landroid/view/View;

.field phoneTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/autochips/bluetooth/adapter/ContactAdapter;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/adapter/ContactAdapter;Landroid/view/View;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder;->this$0:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    .line 86
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080142

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder;->nameTextView:Landroid/widget/TextView;

    const p1, 0x7f080143

    .line 88
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder;->phoneTextView:Landroid/widget/TextView;

    const p1, 0x7f08014b

    .line 89
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder;->firstLetterTextView:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object p2, p0, Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder;->parentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 97
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder;->this$0:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/ContactAdapter;->hideInput()V

    .line 99
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->call(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder;->this$0:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    invoke-static {v1}, Lcom/autochips/bluetooth/adapter/ContactAdapter;->access$000(Lcom/autochips/bluetooth/adapter/ContactAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0b0054

    .line 105
    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    const v2, 0x7f080159

    .line 106
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 107
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 108
    iget-object v2, p0, Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder;->this$0:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    invoke-static {v2}, Lcom/autochips/bluetooth/adapter/ContactAdapter;->access$000(Lcom/autochips/bluetooth/adapter/ContactAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 109
    new-instance v3, Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder$1;

    invoke-direct {v3, p0, v0}, Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder$1;-><init>(Lcom/autochips/bluetooth/adapter/ContactAdapter$MyHolder;Landroid/app/AlertDialog;)V

    .line 116
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v4, 0x7f0b0060

    const/4 v5, 0x0

    .line 118
    invoke-virtual {v2, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 119
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
