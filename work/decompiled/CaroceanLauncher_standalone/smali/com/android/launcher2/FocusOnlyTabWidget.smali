.class public Lcom/android/launcher2/FocusOnlyTabWidget;
.super Landroid/widget/TabWidget;
.source "FocusOnlyTabWidget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getChildTabIndex(Landroid/view/View;)I
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSelectedTab()Landroid/view/View;
    .locals 4

    .line 38
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getSelectedTab()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setCurrentTabToFocusedTab()V
    .locals 5

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v1, v2

    :goto_1
    if-le v1, v2, :cond_2

    .line 71
    invoke-super {p0, v1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    const/4 v0, 0x1

    .line 72
    invoke-super {p0, v3, v0}, Landroid/widget/TabWidget;->onFocusChange(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method public superOnFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/TabWidget;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method
