.class public Lcom/autochips/bluetooth/setting/module/FragmentUtil;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TAG FragmentUtil"

    const-string p1, "showDialog btsetting activity finish!!!"

    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 25
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 27
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 29
    sget v1, Lcom/autochips/bluetooth/setting/module/R$layout;->bt_okdialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 30
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    sget v1, Lcom/autochips/bluetooth/setting/module/R$id;->bt_tip:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance p1, Lcom/autochips/bluetooth/setting/module/FragmentUtil$1;

    invoke-direct {p1, p2, p0}, Lcom/autochips/bluetooth/setting/module/FragmentUtil$1;-><init>(Ljava/lang/Runnable;Landroid/app/AlertDialog;)V

    .line 41
    sget p0, Lcom/autochips/bluetooth/setting/module/R$id;->bt_ok:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget p0, Lcom/autochips/bluetooth/setting/module/R$id;->bt_cancel:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
