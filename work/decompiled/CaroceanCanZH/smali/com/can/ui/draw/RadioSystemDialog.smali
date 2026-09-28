.class public Lcom/can/ui/draw/RadioSystemDialog;
.super Landroid/app/Dialog;
.source "RadioSystemDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0e0176

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/can/ui/draw/RadioSystemDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private getRadioSystemIndex()I
    .locals 2

    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/can/ui/draw/RadioSystemDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "RadioSystemIndex"

    invoke-static {p0, v1, v0}, Lcom/can/tool/DataConvert;->getIntEx(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private initViews()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    iget-object v0, v0, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->radioSystemChina:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    iget-object v0, v0, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->radioSystemAmerica1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    iget-object v0, v0, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->radioSystemAmerica2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    iget-object v0, v0, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->radioSystemSouthAmerica:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    iget-object v0, v0, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->radioSystemMiddleEast:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-direct {p0}, Lcom/can/ui/draw/RadioSystemDialog;->getRadioSystemIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/can/ui/draw/RadioSystemDialog;->setSelectViewByRadioSystemIndex(I)V

    return-void
.end method

.method private putRadioSystemIndex(I)V
    .locals 1

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/can/ui/draw/RadioSystemDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "RadioSystemIndex"

    invoke-static {p0, v0, p1}, Lcom/can/tool/DataConvert;->putInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setSelectViewByRadioSystemIndex(I)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    iget-object v0, v0, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->radioSystemChina:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 65
    iget-object v0, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    iget-object v0, v0, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->radioSystemAmerica1:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 66
    iget-object v0, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    iget-object v0, v0, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->radioSystemAmerica2:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 67
    iget-object v0, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    iget-object v0, v0, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->radioSystemSouthAmerica:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 68
    iget-object p0, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    iget-object p0, p0, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->radioSystemMiddleEast:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0806f8

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->putRadioSystemIndex(I)V

    .line 46
    invoke-direct {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->setSelectViewByRadioSystemIndex(I)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0806f6

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    .line 48
    invoke-direct {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->putRadioSystemIndex(I)V

    .line 49
    invoke-direct {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->setSelectViewByRadioSystemIndex(I)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0806f7

    if-ne v0, v1, :cond_2

    const/4 p1, 0x2

    .line 51
    invoke-direct {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->putRadioSystemIndex(I)V

    .line 52
    invoke-direct {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->setSelectViewByRadioSystemIndex(I)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0806fa

    if-ne v0, v1, :cond_3

    const/4 p1, 0x3

    .line 54
    invoke-direct {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->putRadioSystemIndex(I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->setSelectViewByRadioSystemIndex(I)V

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0806f9

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    .line 57
    invoke-direct {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->putRadioSystemIndex(I)V

    .line 58
    invoke-direct {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->setSelectViewByRadioSystemIndex(I)V

    .line 60
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/can/ui/draw/RadioSystemDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/can/ui/draw/RadioSystemDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/RadioSystemDialog;->binding:Lcom/can/activity/databinding/LayoutRadioSystemBinding;

    .line 29
    invoke-virtual {p1}, Lcom/can/activity/databinding/LayoutRadioSystemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/can/ui/draw/RadioSystemDialog;->setContentView(Landroid/view/View;)V

    .line 30
    invoke-direct {p0}, Lcom/can/ui/draw/RadioSystemDialog;->initViews()V

    return-void
.end method
