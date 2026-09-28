.class Lcom/autochips/bluetooth/fragment/RecordFragment$2$1;
.super Ljava/lang/Object;
.source "RecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/RecordFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/fragment/RecordFragment$2;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/RecordFragment$2;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$2$1;->this$1:Lcom/autochips/bluetooth/fragment/RecordFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$2$1;->this$1:Lcom/autochips/bluetooth/fragment/RecordFragment$2;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/RecordFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/RecordFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->access$200(Lcom/autochips/bluetooth/fragment/RecordFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$2$1;->this$1:Lcom/autochips/bluetooth/fragment/RecordFragment$2;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/RecordFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/RecordFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->access$200(Lcom/autochips/bluetooth/fragment/RecordFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$2$1;->this$1:Lcom/autochips/bluetooth/fragment/RecordFragment$2;

    iget-object v1, v1, Lcom/autochips/bluetooth/fragment/RecordFragment$2;->val$recordModels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$2$1;->this$1:Lcom/autochips/bluetooth/fragment/RecordFragment$2;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/RecordFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/RecordFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->access$300(Lcom/autochips/bluetooth/fragment/RecordFragment;)Lcom/autochips/bluetooth/adapter/RecordAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$2$1;->this$1:Lcom/autochips/bluetooth/fragment/RecordFragment$2;

    iget-object v1, v1, Lcom/autochips/bluetooth/fragment/RecordFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/RecordFragment;

    invoke-static {v1}, Lcom/autochips/bluetooth/fragment/RecordFragment;->access$200(Lcom/autochips/bluetooth/fragment/RecordFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/adapter/RecordAdapter;->setData(Ljava/util/List;)V

    .line 214
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$2$1;->this$1:Lcom/autochips/bluetooth/fragment/RecordFragment$2;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/RecordFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/RecordFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->access$300(Lcom/autochips/bluetooth/fragment/RecordFragment;)Lcom/autochips/bluetooth/adapter/RecordAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/RecordAdapter;->notifyDataSetChanged()V

    return-void
.end method
