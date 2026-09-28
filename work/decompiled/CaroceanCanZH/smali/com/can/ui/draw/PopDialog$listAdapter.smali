.class public Lcom/can/ui/draw/PopDialog$listAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/PopDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "listAdapter"
.end annotation


# instance fields
.field private mObjContext:Landroid/content/Context;

.field private mObjInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/can/ui/draw/PopDialog;


# direct methods
.method public constructor <init>(Lcom/can/ui/draw/PopDialog;Landroid/content/Context;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/can/ui/draw/PopDialog$listAdapter;->this$0:Lcom/can/ui/draw/PopDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/can/ui/draw/PopDialog$listAdapter;->mObjContext:Landroid/content/Context;

    const-string p1, "layout_inflater"

    .line 243
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/can/ui/draw/PopDialog$listAdapter;->mObjInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog$listAdapter;->this$0:Lcom/can/ui/draw/PopDialog;

    invoke-static {p0}, Lcom/can/ui/draw/PopDialog;->access$000(Lcom/can/ui/draw/PopDialog;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog$listAdapter;->this$0:Lcom/can/ui/draw/PopDialog;

    invoke-static {p0}, Lcom/can/ui/draw/PopDialog;->access$000(Lcom/can/ui/draw/PopDialog;)Ljava/util/ArrayList;

    move-result-object p0

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

    if-nez p2, :cond_0

    .line 270
    iget-object p2, p0, Lcom/can/ui/draw/PopDialog$listAdapter;->mObjInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b00ab

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f08063e

    .line 273
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 275
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    :goto_0
    if-eqz p3, :cond_2

    .line 281
    iget-object v0, p0, Lcom/can/ui/draw/PopDialog$listAdapter;->this$0:Lcom/can/ui/draw/PopDialog;

    invoke-static {v0}, Lcom/can/ui/draw/PopDialog;->access$000(Lcom/can/ui/draw/PopDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog$listAdapter;->this$0:Lcom/can/ui/draw/PopDialog;

    invoke-static {p0}, Lcom/can/ui/draw/PopDialog;->access$100(Lcom/can/ui/draw/PopDialog;)I

    move-result p0

    if-ne p0, p1, :cond_1

    const p0, 0x7f0703f9

    .line 284
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const p0, 0x7f0703f8

    .line 286
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    return-object p2
.end method
