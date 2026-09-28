.class Lcom/autochips/bluetooth/fragment/FragmentCallog$3;
.super Ljava/lang/Object;
.source "FragmentCallog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/FragmentCallog;->notifyData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

.field final synthetic val$recordModels:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/FragmentCallog;Ljava/util/List;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    iput-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->val$recordModels:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 338
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->val$recordModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v1}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$200(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 339
    :goto_0
    iget-object v3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->val$recordModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v3}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$200(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 341
    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->val$recordModels:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 342
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getTimeStamp()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v0, v2

    :cond_2
    if-gtz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$200(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->access$400(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/fragment/FragmentCallog$3$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog$3$1;-><init>(Lcom/autochips/bluetooth/fragment/FragmentCallog$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
