.class Lcom/autochips/bluetooth/fragment/DialFragment$4$1;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/DialFragment$4;->onKeyDown(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/fragment/DialFragment$4;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/DialFragment$4;I)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$4$1;->this$1:Lcom/autochips/bluetooth/fragment/DialFragment$4;

    iput p2, p0, Lcom/autochips/bluetooth/fragment/DialFragment$4$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 258
    iget v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment$4$1;->val$value:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment$4$1;->this$1:Lcom/autochips/bluetooth/fragment/DialFragment$4;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/DialFragment$4;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment$4$1;->this$1:Lcom/autochips/bluetooth/fragment/DialFragment$4;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/DialFragment$4;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    const v1, 0x7f0800e0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment$4$1;->this$1:Lcom/autochips/bluetooth/fragment/DialFragment$4;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/DialFragment$4;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    iget v1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$4$1;->val$value:I

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/fragment/DialFragment;->access$100(Lcom/autochips/bluetooth/fragment/DialFragment;I)V

    return-void
.end method
