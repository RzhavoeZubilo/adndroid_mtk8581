.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

.field final synthetic val$discoverDevices:Ljava/util/Vector;

.field final synthetic val$pairedDevices:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iput-object p2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->val$pairedDevices:Ljava/util/Vector;

    iput-object p3, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->val$discoverDevices:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$300(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$400(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->val$pairedDevices:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$400(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->val$discoverDevices:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 208
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    new-instance v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v3, v3, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v3}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$400(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Ljava/util/Vector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$302(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    .line 209
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$500(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-virtual {v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 210
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$500(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$300(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$400(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 213
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$400(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->val$pairedDevices:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$400(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->val$discoverDevices:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$300(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
