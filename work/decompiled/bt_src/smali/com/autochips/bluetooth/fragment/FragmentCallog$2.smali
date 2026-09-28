.class Lcom/autochips/bluetooth/fragment/FragmentCallog$2;
.super Ljava/lang/Object;
.source "FragmentCallog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/FragmentCallog;->onClickListItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/FragmentCallog;Landroid/app/AlertDialog;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$2;->this$0:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    iput-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->call(Ljava/lang/String;)V

    return-void
.end method
