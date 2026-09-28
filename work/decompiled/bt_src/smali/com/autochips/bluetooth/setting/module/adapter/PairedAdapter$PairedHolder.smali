.class Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PairedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairedHolder"
.end annotation


# instance fields
.field a2dpState:Landroid/widget/TextView;

.field avrcpState:Landroid/widget/TextView;

.field delButton:Landroid/widget/ImageButton;

.field deviceName:Landroid/widget/TextView;

.field hfpState:Landroid/widget/TextView;

.field operate:Landroid/widget/TextView;

.field parentView:Landroid/view/View;

.field pbapState:Landroid/widget/TextView;

.field stateTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;Landroid/view/View;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->this$0:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    .line 166
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 167
    iput-object p2, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->parentView:Landroid/view/View;

    .line 168
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->deviceName:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->deviceName:Landroid/widget/TextView;

    .line 169
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->itemA2DPStatus:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->a2dpState:Landroid/widget/TextView;

    .line 170
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->itemAVRCPStatus:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->avrcpState:Landroid/widget/TextView;

    .line 171
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->itemPBAPStatus:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->pbapState:Landroid/widget/TextView;

    .line 172
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->itemHFPStatus:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->hfpState:Landroid/widget/TextView;

    .line 173
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->itemStatus:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->stateTextView:Landroid/widget/TextView;

    .line 174
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->item_del:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->delButton:Landroid/widget/ImageButton;

    .line 175
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->operate:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->operate:Landroid/widget/TextView;

    .line 176
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->delButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 182
    new-instance v0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;-><init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;Landroid/view/View;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method
