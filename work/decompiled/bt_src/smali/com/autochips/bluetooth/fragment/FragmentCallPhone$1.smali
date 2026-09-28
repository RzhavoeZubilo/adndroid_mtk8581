.class Lcom/autochips/bluetooth/fragment/FragmentCallPhone$1;
.super Ljava/lang/Object;
.source "FragmentCallPhone.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->initMMIkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/FragmentCallPhone;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/FragmentCallPhone;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone$1;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone$1;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallPhone;

    const-string v0, "+"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->access$000(Lcom/autochips/bluetooth/fragment/FragmentCallPhone;Ljava/lang/CharSequence;)Z

    const/4 p1, 0x1

    return p1
.end method
