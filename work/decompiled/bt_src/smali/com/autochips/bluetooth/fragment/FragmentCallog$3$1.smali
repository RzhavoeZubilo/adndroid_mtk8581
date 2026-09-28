.class Lcom/autochips/bluetooth/fragment/FragmentCallog$3$1;
.super Ljava/lang/Object;
.source "FragmentCallog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$3;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/FragmentCallog$3;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$200(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$200(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$3;

    iget-object v1, v1, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->val$recordModels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$300(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$3;

    iget-object v1, v1, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v1}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$200(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->setData(Ljava/util/List;)V

    .line 357
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3$1;->this$1:Lcom/autochips/bluetooth/fragment/FragmentCallog$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$300(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method
