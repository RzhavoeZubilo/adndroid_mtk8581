.class Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;
.super Ljava/lang/Object;
.source "PhonebookKeyboard.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 82
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mInputTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mT9Filter:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;->filter(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method
