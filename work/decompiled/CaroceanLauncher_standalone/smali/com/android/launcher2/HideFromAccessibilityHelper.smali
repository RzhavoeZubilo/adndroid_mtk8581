.class public Lcom/android/launcher2/HideFromAccessibilityHelper;
.super Ljava/lang/Object;
.source "HideFromAccessibilityHelper.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field mHide:Z

.field mOnlyAllApps:Z

.field private mPreviousValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mPreviousValues:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mHide:Z

    return-void
.end method

.method private hasAncestorOfType(Landroid/view/View;Ljava/lang/Class;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HideFromAccessibilityHelper;->hasAncestorOfType(Landroid/view/View;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private includeView(Landroid/view/View;)Z
    .locals 1

    .line 103
    const-class v0, Lcom/android/launcher2/Cling;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HideFromAccessibilityHelper;->hasAncestorOfType(Landroid/view/View;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mOnlyAllApps:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HideFromAccessibilityHelper;->hasAncestorOfType(Landroid/view/View;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private restoreImportantForAccessibilityHelper(Landroid/view/View;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mPreviousValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mPreviousValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 72
    check-cast p1, Landroid/view/ViewGroup;

    .line 76
    instance-of v0, p1, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :goto_0
    const/4 v0, 0x0

    .line 81
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 83
    invoke-direct {p0, v1}, Lcom/android/launcher2/HideFromAccessibilityHelper;->includeView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-direct {p0, v1}, Lcom/android/launcher2/HideFromAccessibilityHelper;->restoreImportantForAccessibilityHelper(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setImportantForAccessibilityToNoHelper(Landroid/view/View;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mPreviousValues:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 46
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 47
    check-cast p1, Landroid/view/ViewGroup;

    .line 48
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 52
    invoke-direct {p0, v1}, Lcom/android/launcher2/HideFromAccessibilityHelper;->includeView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-direct {p0, v1}, Lcom/android/launcher2/HideFromAccessibilityHelper;->setImportantForAccessibilityToNoHelper(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 91
    iget-boolean p1, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mHide:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/launcher2/HideFromAccessibilityHelper;->includeView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0, p2}, Lcom/android/launcher2/HideFromAccessibilityHelper;->setImportantForAccessibilityToNoHelper(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 97
    iget-boolean p1, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mHide:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/launcher2/HideFromAccessibilityHelper;->includeView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0, p2}, Lcom/android/launcher2/HideFromAccessibilityHelper;->restoreImportantForAccessibilityHelper(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public restoreImportantForAccessibility(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mHide:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/launcher2/HideFromAccessibilityHelper;->restoreImportantForAccessibilityHelper(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mHide:Z

    return-void
.end method

.method public setImportantForAccessibilityToNo(Landroid/view/View;Z)V
    .locals 0

    .line 36
    iput-boolean p2, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mOnlyAllApps:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/android/launcher2/HideFromAccessibilityHelper;->setImportantForAccessibilityToNoHelper(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/android/launcher2/HideFromAccessibilityHelper;->mHide:Z

    return-void
.end method
