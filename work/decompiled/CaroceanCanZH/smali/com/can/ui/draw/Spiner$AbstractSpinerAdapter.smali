.class public Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;
.super Landroid/widget/BaseAdapter;
.source "Spiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/Spiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AbstractSpinerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSelectItem:I

.field final synthetic this$0:Lcom/can/ui/draw/Spiner;


# direct methods
.method public constructor <init>(Lcom/can/ui/draw/Spiner;Landroid/content/Context;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->this$0:Lcom/can/ui/draw/Spiner;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->mList:Ljava/util/List;

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->mSelectItem:I

    .line 87
    invoke-direct {p0, p2}, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->this$0:Lcom/can/ui/draw/Spiner;

    invoke-static {v0, p1}, Lcom/can/ui/draw/Spiner;->access$002(Lcom/can/ui/draw/Spiner;Landroid/content/Context;)Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-nez p2, :cond_0

    .line 128
    iget-object p2, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f070477

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 130
    new-instance p3, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter$ViewHolder;-><init>(Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;)V

    const v0, 0x7f080781

    .line 132
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter$ViewHolder;

    .line 137
    :goto_0
    iget-object p3, p3, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->mList:Ljava/util/List;

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 95
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    .line 98
    :cond_1
    iput p2, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->mSelectItem:I

    return-void
.end method
