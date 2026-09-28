.class public Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;
.super Landroidx/fragment/app/DialogFragment;
.source "PhonebookKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;,
        Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "PhonebookKeyboard"


# instance fields
.field ID_TextView:[I

.field private final MAX_NUBMER_COUNT:I

.field handler:Landroid/os/Handler;

.field mBackSpace:Landroid/view/View;

.field mHideView:Landroid/view/View;

.field mInputTextView:Landroid/widget/TextView;

.field private mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

.field private mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

.field mStrBuf:Ljava/lang/StringBuffer;

.field mT9Filter:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;

.field private onSearchResultListener:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;

.field textView:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/16 v0, 0xa

    .line 39
    iput v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->MAX_NUBMER_COUNT:I

    const/16 v0, 0x1a

    new-array v0, v0, [I

    .line 41
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->ID_TextView:[I

    .line 48
    array-length v0, v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->textView:[Landroid/widget/TextView;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->handler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    .line 224
    new-instance v0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$3;-><init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801f9
        0x7f0801fa
        0x7f0801ff
        0x7f080201
        0x7f080202
        0x7f080204
        0x7f080205
        0x7f080207
        0x7f080209
        0x7f08020b
        0x7f08020c
        0x7f08020d
        0x7f08020e
        0x7f080210
        0x7f080211
        0x7f080212
        0x7f080214
        0x7f080215
        0x7f080216
        0x7f080219
        0x7f08021a
        0x7f08021b
        0x7f08021d
        0x7f08021e
        0x7f08021f
        0x7f080220
    .end array-data
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)Lcom/carocean/navicar/MMIKeyHelper;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->onSearchResultListener:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;

    return-object p0
.end method

.method private initMMIKeyHandler(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 3

    .line 213
    new-instance p1, Lcom/carocean/navicar/MMIKeyHelper;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 214
    invoke-virtual {p1, p2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectMode(I)V

    .line 215
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectLoop(IZ)V

    .line 216
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    invoke-virtual {p1, p2}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    move p1, v0

    .line 217
    :goto_0
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->textView:[Landroid/widget/TextView;

    array-length v1, p2

    const/4 v2, 0x5

    if-ge p1, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    aget-object p2, p2, p1

    invoke-virtual {v1, p2, v2, v0}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mBackSpace:Landroid/view/View;

    invoke-virtual {p1, p2, v2, v0}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 221
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mHideView:Landroid/view/View;

    invoke-virtual {p1, p2, v2, v0}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->textView:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->ID_TextView:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v0

    .line 63
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->textView:[Landroid/widget/TextView;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x41

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f08020a

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mInputTextView:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mInputTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f080208

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mHideView:Landroid/view/View;

    .line 72
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801fb

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mBackSpace:Landroid/view/View;

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mBackSpace:Landroid/view/View;

    new-instance v0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;-><init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 89
    new-instance p1, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;-><init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$1;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mT9Filter:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 6

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801fb

    if-ne v0, v1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 174
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 175
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mInputTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mT9Filter:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080208

    if-ne v0, v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->dismiss()V

    goto :goto_1

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->textView:[Landroid/widget/TextView;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->ID_TextView:[I

    aget v5, v5, v3

    if-ne v4, v5, :cond_3

    .line 188
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x41

    int-to-char v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 189
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mInputTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mT9Filter:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mInputTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$T9Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->doClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f1000ec

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->setStyle(II)V

    .line 124
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0039

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->initView(Landroid/view/View;)V

    .line 136
    invoke-direct {p0, p3, p1}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->initMMIKeyHandler(Landroid/os/Bundle;Landroid/view/View;)V

    .line 137
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$2;

    invoke-direct {p3, p0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$2;-><init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 160
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/carocean/navicar/MMIKeyHelper;->clear()V

    .line 154
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 129
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 95
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 96
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/high16 v0, 0xc000000

    .line 102
    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 104
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x700

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 107
    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 108
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    const/high16 v0, 0x4000000

    .line 109
    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x8000000

    .line 110
    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 112
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x50

    .line 113
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    const/16 v2, 0x26

    .line 114
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 115
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1024x460And160dpi()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8c

    goto :goto_1

    :cond_2
    const/16 v2, 0xd2

    :goto_1
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 118
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setOnSearchResultListener(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->onSearchResultListener:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;

    return-void
.end method
