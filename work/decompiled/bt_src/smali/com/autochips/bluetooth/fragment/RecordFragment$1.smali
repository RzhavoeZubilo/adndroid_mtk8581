.class Lcom/autochips/bluetooth/fragment/RecordFragment$1;
.super Ljava/lang/Object;
.source "RecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/RecordFragment;->MailBox(Lcom/carlos/eventlibrary/EventMail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/RecordFragment;

.field final synthetic val$input:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/RecordFragment;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$1;->this$0:Lcom/autochips/bluetooth/fragment/RecordFragment;

    iput-object p2, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$1;->val$input:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$1;->this$0:Lcom/autochips/bluetooth/fragment/RecordFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->access$000(Lcom/autochips/bluetooth/fragment/RecordFragment;)Lcom/autochips/bluetooth/fragment/RecordFragment$T9Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment$1;->val$input:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/fragment/RecordFragment$T9Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
