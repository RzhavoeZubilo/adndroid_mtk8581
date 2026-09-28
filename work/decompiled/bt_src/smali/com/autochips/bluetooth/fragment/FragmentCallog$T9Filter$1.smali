.class Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;
.super Ljava/lang/Object;
.source "FragmentCallog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

.field final synthetic val$results:Landroid/widget/Filter$FilterResults;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

    iput-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;->val$results:Landroid/widget/Filter$FilterResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;->val$results:Landroid/widget/Filter$FilterResults;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$200(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 453
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$200(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;->val$results:Landroid/widget/Filter$FilterResults;

    iget-object v1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$300(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

    iget-object v1, v1, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v1}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$200(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->setData(Ljava/util/List;)V

    .line 455
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$300(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
