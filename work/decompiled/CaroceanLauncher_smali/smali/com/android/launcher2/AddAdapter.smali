.class public Lcom/android/launcher2/AddAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AddAdapter$ListItem;
    }
.end annotation


# static fields
.field public static final ITEM_APPLICATION:I = 0x2

.field public static final ITEM_APPWIDGET:I = 0x1

.field public static final ITEM_SHORTCUT:I = 0x0

.field public static final ITEM_WALLPAPER:I = 0x3


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 8

    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AddAdapter;->mItems:Ljava/util/ArrayList;

    const-string v1, "layout_inflater"

    .line 68
    invoke-virtual {p1, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/launcher2/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 73
    new-instance p1, Lcom/android/launcher2/AddAdapter$ListItem;

    const v5, 0x7f0c0052

    const v6, 0x7f0b0002

    const/4 v7, 0x3

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/AddAdapter$ListItem;-><init>(Lcom/android/launcher2/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/launcher2/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/launcher2/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/AddAdapter$ListItem;

    if-nez p2, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/launcher2/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 p2, 0x7f0a0000

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 84
    :cond_0
    move-object p0, p2

    check-cast p0, Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object p3, p1, Lcom/android/launcher2/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p1, Lcom/android/launcher2/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
