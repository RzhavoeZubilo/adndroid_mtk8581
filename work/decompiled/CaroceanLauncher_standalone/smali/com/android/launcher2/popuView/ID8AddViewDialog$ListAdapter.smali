.class Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ID8AddViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/ID8AddViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

.field final synthetic this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/popuView/ID8AddViewDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/popuView/ID8AddViewDialog;Lcom/android/launcher2/popuView/ID8AddViewDialog$1;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;-><init>(Lcom/android/launcher2/popuView/ID8AddViewDialog;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {v0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {v0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    int-to-long p0, p1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 97
    new-instance p2, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;-><init>(Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;Lcom/android/launcher2/popuView/ID8AddViewDialog$1;)V

    iput-object p2, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

    .line 98
    iget-object p2, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p2}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$500(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a004f

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 99
    iget-object p3, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

    const v0, 0x7f080045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;

    .line 100
    iget-object p3, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

    const v0, 0x7f080047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;->item_title:Landroid/widget/TextView;

    .line 101
    iget-object p3, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

    iput-object p3, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

    .line 105
    :goto_0
    iget-object p3, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p3}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1

    if-ltz p1, :cond_1

    iget-object p3, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p3}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 106
    iget-object p3, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

    iget-object p3, p3, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {v0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    iget-object v0, v0, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object p3, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;

    iget-object p3, p3, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter$ViewHolder;->item_title:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/ApplicationInfo;

    iget-object p0, p0, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method
