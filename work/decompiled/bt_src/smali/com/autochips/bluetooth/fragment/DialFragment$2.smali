.class Lcom/autochips/bluetooth/fragment/DialFragment$2;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/DialFragment;->init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/DialFragment;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/DialFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/DialFragment;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return p1
.end method
