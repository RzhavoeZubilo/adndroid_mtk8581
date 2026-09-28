.class final Lcom/autochips/bluetooth/setting/module/FragmentUtil$1;
.super Ljava/lang/Object;
.source "FragmentUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/FragmentUtil;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/app/AlertDialog;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentUtil$1;->val$callback:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/autochips/bluetooth/setting/module/FragmentUtil$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/autochips/bluetooth/setting/module/R$id;->bt_ok:I

    if-ne p1, v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentUtil$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentUtil$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
