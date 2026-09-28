.class public Lcom/android/launcher2/popuView/FboxPopuWindow;
.super Landroid/widget/PopupWindow;
.source "FboxPopuWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popuView/FboxPopuWindow$OnPopuWindowListen;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mListen:Lcom/android/launcher2/popuView/FboxPopuWindow$OnPopuWindowListen;

.field menuGrid:Lcom/android/launcher2/popuView/MenuGridView;

.field public settingGrid:Lcom/android/launcher2/popuView/SetGridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/launcher2/popuView/FboxPopuWindow;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/FboxPopuWindow;->setFocusable(Z)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/FboxPopuWindow;->setTouchable(Z)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/FboxPopuWindow;->setOutsideTouchable(Z)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f090022

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/FboxPopuWindow;->setWidth(I)V

    .line 34
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/FboxPopuWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0d000a

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/FboxPopuWindow;->setAnimationStyle(I)V

    const/4 p1, -0x2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/FboxPopuWindow;->setHeight(I)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/FboxPopuWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08002e

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popuView/SetGridView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/FboxPopuWindow;->settingGrid:Lcom/android/launcher2/popuView/SetGridView;

    const v1, 0x7f08002d

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popuView/MenuGridView;

    iput-object v0, p0, Lcom/android/launcher2/popuView/FboxPopuWindow;->menuGrid:Lcom/android/launcher2/popuView/MenuGridView;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 17
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 18
    iget-object p0, p0, Lcom/android/launcher2/popuView/FboxPopuWindow;->mListen:Lcom/android/launcher2/popuView/FboxPopuWindow$OnPopuWindowListen;

    invoke-interface {p0}, Lcom/android/launcher2/popuView/FboxPopuWindow$OnPopuWindowListen;->getIsDismiss()V

    return-void
.end method

.method public setContentView(I)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/launcher2/popuView/FboxPopuWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/FboxPopuWindow;->setContentView(Landroid/view/View;)V

    .line 45
    invoke-direct {p0}, Lcom/android/launcher2/popuView/FboxPopuWindow;->initView()V

    return-void
.end method

.method public setListen(Lcom/android/launcher2/popuView/FboxPopuWindow$OnPopuWindowListen;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/launcher2/popuView/FboxPopuWindow;->mListen:Lcom/android/launcher2/popuView/FboxPopuWindow$OnPopuWindowListen;

    return-void
.end method

.method public showPopu(Landroid/view/View;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/launcher2/popuView/FboxPopuWindow;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/FboxPopuWindow;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x55

    .line 58
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/launcher2/popuView/FboxPopuWindow;->showAtLocation(Landroid/view/View;III)V

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/FboxPopuWindow;->update()V

    .line 62
    iget-object p0, p0, Lcom/android/launcher2/popuView/FboxPopuWindow;->mListen:Lcom/android/launcher2/popuView/FboxPopuWindow$OnPopuWindowListen;

    invoke-interface {p0}, Lcom/android/launcher2/popuView/FboxPopuWindow$OnPopuWindowListen;->showPopuWindow()V

    return-void
.end method
