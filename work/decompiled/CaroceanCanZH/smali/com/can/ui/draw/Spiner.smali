.class public Lcom/can/ui/draw/Spiner;
.super Landroid/widget/PopupWindow;
.source "Spiner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;,
        Lcom/can/ui/draw/Spiner$OnSpinerClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mSpinerClickListener:Lcom/can/ui/draw/Spiner$OnSpinerClickListener;

.field private miIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/can/ui/draw/Spiner;->miIndex:I

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/can/ui/draw/Spiner;->mSpinerClickListener:Lcom/can/ui/draw/Spiner$OnSpinerClickListener;

    .line 31
    iput-object p1, p0, Lcom/can/ui/draw/Spiner;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/can/ui/draw/Spiner;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/can/ui/draw/Spiner;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/can/ui/draw/Spiner;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method private init()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/can/ui/draw/Spiner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f070478

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/can/ui/draw/Spiner;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x2

    .line 39
    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Spiner;->setWidth(I)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Spiner;->setHeight(I)V

    const/4 v1, 0x1

    .line 42
    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Spiner;->setFocusable(Z)V

    .line 43
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/can/ui/draw/Spiner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f08059b

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/can/ui/draw/Spiner;->mListView:Landroid/widget/ListView;

    .line 48
    new-instance v0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;

    iget-object v1, p0, Lcom/can/ui/draw/Spiner;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;-><init>(Lcom/can/ui/draw/Spiner;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/can/ui/draw/Spiner;->mAdapter:Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;

    .line 49
    iget-object v1, p0, Lcom/can/ui/draw/Spiner;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v0, p0, Lcom/can/ui/draw/Spiner;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/can/ui/draw/Spiner;->dismiss()V

    .line 66
    iget-object p1, p0, Lcom/can/ui/draw/Spiner;->mSpinerClickListener:Lcom/can/ui/draw/Spiner$OnSpinerClickListener;

    if-eqz p1, :cond_0

    .line 67
    iget p0, p0, Lcom/can/ui/draw/Spiner;->miIndex:I

    invoke-interface {p1, p3, p0}, Lcom/can/ui/draw/Spiner$OnSpinerClickListener;->onSelPos(II)V

    :cond_0
    return-void
.end method

.method public refreshData(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/can/ui/draw/Spiner;->mAdapter:Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->refreshData(Ljava/util/List;I)V

    .line 57
    :cond_0
    iput p3, p0, Lcom/can/ui/draw/Spiner;->miIndex:I

    .line 58
    iget-object p1, p0, Lcom/can/ui/draw/Spiner;->mAdapter:Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;

    invoke-virtual {p1}, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->getCount()I

    move-result p1

    const/4 p2, 0x5

    if-ge p1, p2, :cond_1

    .line 59
    iget-object p1, p0, Lcom/can/ui/draw/Spiner;->mAdapter:Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;

    invoke-virtual {p1}, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;->getCount()I

    move-result p1

    mul-int/lit8 p1, p1, 0x33

    invoke-virtual {p0, p1}, Lcom/can/ui/draw/Spiner;->setHeight(I)V

    :cond_1
    return-void
.end method

.method public setSpinerListener(Lcom/can/ui/draw/Spiner$OnSpinerClickListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/can/ui/draw/Spiner;->mSpinerClickListener:Lcom/can/ui/draw/Spiner$OnSpinerClickListener;

    return-void
.end method
