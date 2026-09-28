.class Lcom/autochips/bluetooth/fragment/FragmentPhonebookList$1;
.super Ljava/lang/Object;
.source "FragmentPhonebookList.java"

# interfaces
.implements Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList$1;->this$0:Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public searchResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList$1;->this$0:Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->access$000(Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;Ljava/util/List;)V

    return-void
.end method
