.class Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CarFlagDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/CarFlagDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;

.field final synthetic this$0:Lcom/android/launcher2/popuView/CarFlagDialog;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/popuView/CarFlagDialog;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/popuView/CarFlagDialog;Lcom/android/launcher2/popuView/CarFlagDialog$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;-><init>(Lcom/android/launcher2/popuView/CarFlagDialog;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {v0}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$200(Lcom/android/launcher2/popuView/CarFlagDialog;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {p0}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$200(Lcom/android/launcher2/popuView/CarFlagDialog;)[I

    move-result-object p0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {v0}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$200(Lcom/android/launcher2/popuView/CarFlagDialog;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {p0}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$200(Lcom/android/launcher2/popuView/CarFlagDialog;)[I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {p0}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$200(Lcom/android/launcher2/popuView/CarFlagDialog;)[I

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

    .line 88
    new-instance p2, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;-><init>(Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;Lcom/android/launcher2/popuView/CarFlagDialog$1;)V

    iput-object p2, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;

    .line 89
    iget-object p2, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {p2}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$400(Lcom/android/launcher2/popuView/CarFlagDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a004b

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    iget-object p3, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;

    const v0, 0x7f080045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;

    .line 91
    iget-object p3, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;

    iput-object p3, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;

    .line 95
    :goto_0
    iget-object p3, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {p3}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$200(Lcom/android/launcher2/popuView/CarFlagDialog;)[I

    move-result-object p3

    if-eqz p3, :cond_1

    if-ltz p1, :cond_1

    iget-object p3, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {p3}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$200(Lcom/android/launcher2/popuView/CarFlagDialog;)[I

    move-result-object p3

    array-length p3, p3

    if-ge p1, p3, :cond_1

    .line 96
    iget-object p3, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->holder:Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;

    iget-object p3, p3, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {p0}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$200(Lcom/android/launcher2/popuView/CarFlagDialog;)[I

    move-result-object p0

    aget p0, p0, p1

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-object p2
.end method
