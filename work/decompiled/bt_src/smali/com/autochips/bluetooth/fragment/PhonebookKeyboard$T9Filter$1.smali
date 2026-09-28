.class Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter$1;
.super Ljava/lang/Object;
.source "PhonebookKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;

.field final synthetic val$results:Landroid/widget/Filter$FilterResults;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;

    iput-object p2, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter$1;->val$results:Landroid/widget/Filter$FilterResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter$1;->val$results:Landroid/widget/Filter$FilterResults;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->access$200(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->access$200(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter$1;->val$results:Landroid/widget/Filter$FilterResults;

    iget-object v1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;->searchResult(Ljava/util/List;)V

    :cond_0
    return-void
.end method
