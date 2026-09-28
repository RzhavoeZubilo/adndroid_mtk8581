.class Lcom/autochips/bluetooth/fragment/DialFragment$3;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/fragment/DialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/DialFragment;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/DialFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800d7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const v0, 0x7f0800e0

    if-eq p1, v0, :cond_1

    const v0, 0x7f08011d

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->access$000(Lcom/autochips/bluetooth/fragment/DialFragment;)V

    goto/16 :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_2

    .line 110
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getConnectState()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 111
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance v1, Lcom/autochips/bluetooth/fragment/DialFragment$3$1;

    invoke-direct {v1, p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment$3$1;-><init>(Lcom/autochips/bluetooth/fragment/DialFragment$3;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    .line 118
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 121
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 123
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 126
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method
