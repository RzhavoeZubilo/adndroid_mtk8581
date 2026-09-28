.class public Lcom/android/launcher2/popuView/MenuGridView;
.super Landroid/widget/GridView;
.source "MenuGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field fbox_image_array_bottom:[I

.field private fbox_name_array_bottom:[I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array v0, p1, [I

    .line 23
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MenuGridView;->fbox_name_array_bottom:[I

    new-array p1, p1, [I

    .line 25
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/launcher2/popuView/MenuGridView;->fbox_image_array_bottom:[I

    .line 35
    invoke-virtual {p0, p0}, Lcom/android/launcher2/popuView/MenuGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0c0037
        0x7f0c0034
        0x7f0c003a
    .end array-data

    :array_1
    .array-data 4
        0x7f0701cb
        0x7f0701c3
        0x7f0701d3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x3

    new-array v0, p2, [I

    .line 23
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MenuGridView;->fbox_name_array_bottom:[I

    new-array p2, p2, [I

    .line 25
    fill-array-data p2, :array_1

    iput-object p2, p0, Lcom/android/launcher2/popuView/MenuGridView;->fbox_image_array_bottom:[I

    .line 40
    iput-object p1, p0, Lcom/android/launcher2/popuView/MenuGridView;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p0, p0}, Lcom/android/launcher2/popuView/MenuGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    iget-object p1, p0, Lcom/android/launcher2/popuView/MenuGridView;->fbox_name_array_bottom:[I

    iget-object p2, p0, Lcom/android/launcher2/popuView/MenuGridView;->fbox_image_array_bottom:[I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/popuView/MenuGridView;->getMenuAdapter([I[I)Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MenuGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0037
        0x7f0c0034
        0x7f0c003a
    .end array-data

    :array_1
    .array-data 4
        0x7f0701cb
        0x7f0701c3
        0x7f0701d3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    new-array p2, p1, [I

    .line 23
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/launcher2/popuView/MenuGridView;->fbox_name_array_bottom:[I

    new-array p1, p1, [I

    .line 25
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/launcher2/popuView/MenuGridView;->fbox_image_array_bottom:[I

    .line 49
    invoke-virtual {p0, p0}, Lcom/android/launcher2/popuView/MenuGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0c0037
        0x7f0c0034
        0x7f0c003a
    .end array-data

    :array_1
    .array-data 4
        0x7f0701cb
        0x7f0701c3
        0x7f0701d3
    .end array-data
.end method

.method private getMenuAdapter([I[I)Landroid/widget/ListAdapter;
    .locals 6

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 116
    :goto_0
    array-length v1, p1

    const-string v3, "itemText"

    const-string v4, "itemImage"

    if-ge v0, v1, :cond_0

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 118
    aget v5, p2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v4, p0, Lcom/android/launcher2/popuView/MenuGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MenuGridView;->mContext:Landroid/content/Context;

    const p0, 0x7f0a0035

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 p2, 0x2

    new-array v5, p2, [I

    fill-array-data v5, :array_0

    move-object v0, p1

    move v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f080045
        0x7f080046
    .end array-data
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroid/widget/GridView;->onFinishInflate()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "   this position is "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&&&&"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hede"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    const-string p4, "android.intent.action.VIEW"

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    if-eq p3, p5, :cond_1

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto/16 :goto_0

    .line 93
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    new-instance p1, Landroid/content/ComponentName;

    const-string p3, "com.yecon.ipodplayer"

    const-string p4, "com.yecon.ipodplayer.MainActivity"

    invoke-direct {p1, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    iget-object p0, p0, Lcom/android/launcher2/popuView/MenuGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "menu this position is "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    new-instance p1, Landroid/content/ComponentName;

    const-string p3, "com.yecon.avin"

    const-string p4, "com.yecon.avin.AVInActivity"

    invoke-direct {p1, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    iget-object p0, p0, Lcom/android/launcher2/popuView/MenuGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "this position is "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    new-instance p1, Landroid/content/ComponentName;

    const-string p3, "com.yecon.carsetting"

    const-string p4, "com.yecon.carsetting.FragmentTabAcitivity"

    invoke-direct {p1, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    iget-object p0, p0, Lcom/android/launcher2/popuView/MenuGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
