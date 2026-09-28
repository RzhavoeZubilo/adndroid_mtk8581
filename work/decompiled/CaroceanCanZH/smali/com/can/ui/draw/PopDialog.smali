.class public Lcom/can/ui/draw/PopDialog;
.super Landroid/app/DialogFragment;
.source "PopDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/draw/PopDialog$onCancelListener;,
        Lcom/can/ui/draw/PopDialog$OnConfirmListener;,
        Lcom/can/ui/draw/PopDialog$listAdapter;,
        Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;
    }
.end annotation


# instance fields
.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelListener:Lcom/can/ui/draw/PopDialog$onCancelListener;

.field private mConfirmListener:Lcom/can/ui/draw/PopDialog$OnConfirmListener;

.field private mIndexImage:I

.field private mObjImageViewContent:Landroid/widget/ImageView;

.field private mObjListInfo:Landroid/widget/ListView;

.field private mObjSeekBar:Landroid/widget/SeekBar;

.field private mObjSeekBarText:Landroid/widget/TextView;

.field private mObjTextViewCancel:Landroid/widget/TextView;

.field private mObjTextViewContent:Landroid/widget/TextView;

.field private mObjTextViewSure:Landroid/widget/TextView;

.field private mObjTextViewTips:Landroid/widget/TextView;

.field private mObjlistAdapter:Lcom/can/ui/draw/PopDialog$listAdapter;

.field private mStrText:Ljava/lang/String;

.field private mStrTitle:Ljava/lang/String;

.field private mStrseekbar:Ljava/lang/String;

.field private mePopDialogType:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

.field private miSeekOffset:I

.field private miSeekbarMax:I

.field private miSeekbarPos:I

.field private miSeekbarStep:I

.field private misel:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/can/ui/draw/PopDialog;->mIndexImage:I

    const-string v1, ""

    .line 37
    iput-object v1, p0, Lcom/can/ui/draw/PopDialog;->mStrTitle:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/can/ui/draw/PopDialog;->mStrText:Ljava/lang/String;

    const/4 v2, 0x0

    .line 40
    iput-object v2, p0, Lcom/can/ui/draw/PopDialog;->mObjImageViewContent:Landroid/widget/ImageView;

    .line 41
    iput-object v2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewContent:Landroid/widget/TextView;

    .line 42
    iput-object v2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewTips:Landroid/widget/TextView;

    .line 43
    iput-object v2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewSure:Landroid/widget/TextView;

    .line 44
    iput-object v2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewCancel:Landroid/widget/TextView;

    .line 45
    iput-object v2, p0, Lcom/can/ui/draw/PopDialog;->mObjListInfo:Landroid/widget/ListView;

    .line 46
    iput-object v2, p0, Lcom/can/ui/draw/PopDialog;->mObjlistAdapter:Lcom/can/ui/draw/PopDialog$listAdapter;

    .line 48
    iput-object v2, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBar:Landroid/widget/SeekBar;

    .line 49
    iput-object v2, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBarText:Landroid/widget/TextView;

    .line 51
    iput v0, p0, Lcom/can/ui/draw/PopDialog;->misel:I

    .line 52
    iput v0, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarStep:I

    .line 53
    iput v0, p0, Lcom/can/ui/draw/PopDialog;->miSeekOffset:I

    .line 54
    iput v0, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarMax:I

    .line 55
    iput v0, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarPos:I

    .line 56
    iput-object v1, p0, Lcom/can/ui/draw/PopDialog;->mStrseekbar:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/can/ui/draw/PopDialog;->mArrayList:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/can/ui/draw/PopDialog;->mStrTitle:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mePopDialogType:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    return-void
.end method

.method static synthetic access$000(Lcom/can/ui/draw/PopDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog;->mArrayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/can/ui/draw/PopDialog;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/can/ui/draw/PopDialog;->misel:I

    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08079c

    if-eq p1, v0, :cond_1

    const v0, 0x7f08079e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/PopDialog;->mConfirmListener:Lcom/can/ui/draw/PopDialog$OnConfirmListener;

    if-eqz p1, :cond_3

    .line 187
    invoke-interface {p1}, Lcom/can/ui/draw/PopDialog$OnConfirmListener;->onConfirm()V

    .line 188
    invoke-virtual {p0}, Lcom/can/ui/draw/PopDialog;->dismiss()V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/can/ui/draw/PopDialog;->mCancelListener:Lcom/can/ui/draw/PopDialog$onCancelListener;

    if-eqz p1, :cond_2

    .line 193
    invoke-interface {p1}, Lcom/can/ui/draw/PopDialog$onCancelListener;->onCancel()V

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/can/ui/draw/PopDialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x2

    const v1, 0x7f0e017f

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/can/ui/draw/PopDialog;->setStyle(II)V

    .line 69
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 84
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mePopDialogType:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    sget-object v0, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_choose:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    const p3, 0x7f0b00af

    .line 85
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f08079d

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewTips:Landroid/widget/TextView;

    const p2, 0x7f08079e

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewSure:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08079c

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewCancel:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewTips:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mStrTitle:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewTips:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    .line 96
    :cond_0
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mePopDialogType:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    sget-object v0, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_carset_list:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    if-ne p3, v0, :cond_1

    const p3, 0x7f0b00ac

    .line 98
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080642

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewTips:Landroid/widget/TextView;

    .line 101
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mStrTitle:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance p2, Lcom/can/ui/draw/PopDialog$listAdapter;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopDialog;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/can/ui/draw/PopDialog$listAdapter;-><init>(Lcom/can/ui/draw/PopDialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjlistAdapter:Lcom/can/ui/draw/PopDialog$listAdapter;

    const p2, 0x7f08063d

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjListInfo:Landroid/widget/ListView;

    .line 106
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mObjlistAdapter:Lcom/can/ui/draw/PopDialog$listAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjListInfo:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 109
    :cond_1
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mePopDialogType:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    sget-object v0, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_carset_seekbar:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    if-ne p3, v0, :cond_2

    const p3, 0x7f0b00ad

    .line 111
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080643

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewTips:Landroid/widget/TextView;

    .line 114
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mStrTitle:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f08063f

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBar:Landroid/widget/SeekBar;

    const p2, 0x7f080640

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBarText:Landroid/widget/TextView;

    .line 120
    iget-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 122
    iget-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBar:Landroid/widget/SeekBar;

    if-eqz p2, :cond_5

    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBarText:Landroid/widget/TextView;

    if-eqz p3, :cond_5

    .line 123
    iget p3, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarMax:I

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 124
    iget-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBar:Landroid/widget/SeekBar;

    iget p3, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarPos:I

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    iget p3, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarPos:I

    iget v0, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarStep:I

    mul-int/2addr p3, v0

    iget v0, p0, Lcom/can/ui/draw/PopDialog;->miSeekOffset:I

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 128
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mStrseekbar:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBarText:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mePopDialogType:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    sget-object v0, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_carset_text:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    if-ne p3, v0, :cond_4

    const p3, 0x7f0b00ae

    .line 134
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080644

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewTips:Landroid/widget/TextView;

    .line 137
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mStrTitle:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f080641

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewContent:Landroid/widget/TextView;

    .line 141
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mStrText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f08063c

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/can/ui/draw/PopDialog;->mObjImageViewContent:Landroid/widget/ImageView;

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "direction_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/can/ui/draw/PopDialog;->mIndexImage:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 146
    invoke-virtual {p0}, Lcom/can/ui/draw/PopDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "drawable"

    const-string v2, "com.can.activity"

    invoke-virtual {p3, p2, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3

    .line 148
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mObjImageViewContent:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 149
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog;->mObjImageViewContent:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_3
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog;->mObjImageViewContent:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :cond_5
    :goto_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 161
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

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

    .line 323
    iget-object p1, p0, Lcom/can/ui/draw/PopDialog;->mConfirmListener:Lcom/can/ui/draw/PopDialog$OnConfirmListener;

    if-eqz p1, :cond_0

    .line 324
    iput p3, p0, Lcom/can/ui/draw/PopDialog;->misel:I

    .line 325
    iget-object p1, p0, Lcom/can/ui/draw/PopDialog;->mObjlistAdapter:Lcom/can/ui/draw/PopDialog$listAdapter;

    invoke-virtual {p1}, Lcom/can/ui/draw/PopDialog$listAdapter;->notifyDataSetChanged()V

    .line 326
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog;->mConfirmListener:Lcom/can/ui/draw/PopDialog$OnConfirmListener;

    invoke-interface {p0, p3}, Lcom/can/ui/draw/PopDialog$OnConfirmListener;->onSelPos(I)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    .line 335
    iget-object p1, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBarText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 336
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    iget p3, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarStep:I

    mul-int/2addr p3, p2

    iget v0, p0, Lcom/can/ui/draw/PopDialog;->miSeekOffset:I

    add-int/2addr p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 338
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mStrseekbar:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    iget-object p3, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBarText:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/PopDialog;->mConfirmListener:Lcom/can/ui/draw/PopDialog$OnConfirmListener;

    if-eqz p1, :cond_1

    .line 343
    iget p3, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarStep:I

    mul-int/2addr p2, p3

    iget p0, p0, Lcom/can/ui/draw/PopDialog;->miSeekOffset:I

    add-int/2addr p2, p0

    invoke-interface {p1, p2}, Lcom/can/ui/draw/PopDialog$OnConfirmListener;->onSeekVal(I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public putdata(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 165
    iput p2, p0, Lcom/can/ui/draw/PopDialog;->misel:I

    .line 166
    iput-object p1, p0, Lcom/can/ui/draw/PopDialog;->mArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setOnConfirmListener(Lcom/can/ui/draw/PopDialog$OnConfirmListener;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/can/ui/draw/PopDialog;->mConfirmListener:Lcom/can/ui/draw/PopDialog$OnConfirmListener;

    return-void
.end method

.method public setSeekbarVal(IIIILjava/lang/String;)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarMax:I

    .line 175
    iput p2, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarPos:I

    .line 176
    iput p4, p0, Lcom/can/ui/draw/PopDialog;->miSeekOffset:I

    .line 177
    iput-object p5, p0, Lcom/can/ui/draw/PopDialog;->mStrseekbar:Ljava/lang/String;

    .line 178
    iput p3, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarStep:I

    return-void
.end method

.method public setTextImageIndex(Ljava/lang/String;I)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/can/ui/draw/PopDialog;->mStrText:Ljava/lang/String;

    .line 171
    iput p2, p0, Lcom/can/ui/draw/PopDialog;->mIndexImage:I

    return-void
.end method

.method public setonCancelListener(Lcom/can/ui/draw/PopDialog$onCancelListener;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/can/ui/draw/PopDialog;->mCancelListener:Lcom/can/ui/draw/PopDialog$onCancelListener;

    return-void
.end method

.method public updateData()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/can/ui/draw/PopDialog;->mePopDialogType:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    sget-object v1, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_carset_text:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    if-ne v0, v1, :cond_2

    .line 204
    iget-object v0, p0, Lcom/can/ui/draw/PopDialog;->mObjTextViewContent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/can/ui/draw/PopDialog;->mStrText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/PopDialog;->mObjImageViewContent:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "direction_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/can/ui/draw/PopDialog;->mIndexImage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Lcom/can/ui/draw/PopDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "com.can.activity"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/can/ui/draw/PopDialog;->mObjImageViewContent:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 212
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog;->mObjImageViewContent:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog;->mObjImageViewContent:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/can/ui/draw/PopDialog;->mePopDialogType:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    sget-object v1, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_carset_list:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    if-ne v0, v1, :cond_3

    .line 218
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog;->mObjlistAdapter:Lcom/can/ui/draw/PopDialog$listAdapter;

    if-eqz p0, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/can/ui/draw/PopDialog$listAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/can/ui/draw/PopDialog;->mePopDialogType:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    sget-object v1, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_carset_seekbar:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    if-ne v0, v1, :cond_4

    .line 222
    iget-object v0, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBarText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 223
    iget v1, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 224
    iget-object v0, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarPos:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 227
    iget v1, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarPos:I

    iget v2, p0, Lcom/can/ui/draw/PopDialog;->miSeekbarStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/can/ui/draw/PopDialog;->miSeekOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 228
    iget-object v1, p0, Lcom/can/ui/draw/PopDialog;->mStrseekbar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget-object p0, p0, Lcom/can/ui/draw/PopDialog;->mObjSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method
