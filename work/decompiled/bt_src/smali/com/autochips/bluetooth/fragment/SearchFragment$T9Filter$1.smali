.class Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;

.field final synthetic val$results:Landroid/widget/Filter$FilterResults;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;

    iput-object p2, p0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter$1;->val$results:Landroid/widget/Filter$FilterResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter$1;->val$results:Landroid/widget/Filter$FilterResults;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/SearchFragment;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/SearchFragment;->phoneBookModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/SearchFragment;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/SearchFragment;->phoneBookModels:Ljava/util/List;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter$1;->val$results:Landroid/widget/Filter$FilterResults;

    iget-object v1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/SearchFragment;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/SearchFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/ContactAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
