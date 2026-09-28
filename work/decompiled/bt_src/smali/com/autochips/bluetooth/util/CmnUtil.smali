.class public Lcom/autochips/bluetooth/util/CmnUtil;
.super Ljava/lang/Object;
.source "CmnUtil.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelToast()V
    .locals 1

    .line 26
    sget-object v0, Lcom/autochips/bluetooth/util/CmnUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/autochips/bluetooth/util/CmnUtil;->mToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/app/Activity;I)V
    .locals 3

    .line 14
    sget-object v0, Lcom/autochips/bluetooth/util/CmnUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 18
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/autochips/bluetooth/util/CmnUtil;->mToast:Landroid/widget/Toast;

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const p0, 0x7f080284

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    sget-object p0, Lcom/autochips/bluetooth/util/CmnUtil;->mToast:Landroid/widget/Toast;

    const/16 p1, 0x50

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 23
    sget-object p0, Lcom/autochips/bluetooth/util/CmnUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
