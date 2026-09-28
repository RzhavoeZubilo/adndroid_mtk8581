.class public Lcom/android/launcher2/popuView/ID8ThemeDialog;
.super Landroid/app/Dialog;
.source "ID8ThemeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ID8ThemeDialog"


# instance fields
.field private effieicntEnabledTv:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mIconsId:[I

.field public mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

.field private personalEnabledTv:Landroid/widget/TextView;

.field private sportEnabledTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0d003b

    .line 29
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->mIconsId:[I

    .line 30
    iput-object p1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->mContext:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08008a
        0x7f08008c
        0x7f080088
    .end array-data
.end method

.method private initViews()V
    .locals 7

    .line 42
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_THEME"

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7f08008b

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->personalEnabledTv:Landroid/widget/TextView;

    const v1, 0x7f08008d

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->sportEnabledTv:Landroid/widget/TextView;

    const v1, 0x7f080089

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->effieicntEnabledTv:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->personalEnabledTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->sportEnabledTv:Landroid/widget/TextView;

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->effieicntEnabledTv:Landroid/widget/TextView;

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    move v2, v4

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    new-instance v1, Lcom/carocean/navicar/MMIKeyHelper;

    invoke-direct {v1, v3}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    move v1, v4

    .line 51
    :goto_2
    iget-object v2, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->mIconsId:[I

    array-length v5, v2

    if-ge v1, v5, :cond_4

    .line 52
    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v5, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v6, 0x5

    invoke-virtual {v5, v2, v6, v4}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v4, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(II)V

    .line 59
    iget-object v0, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    new-instance v1, Lcom/android/launcher2/popuView/ID8ThemeDialog$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/popuView/ID8ThemeDialog$1;-><init>(Lcom/android/launcher2/popuView/ID8ThemeDialog;)V

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    .line 94
    new-instance v0, Lcom/android/launcher2/popuView/ID8ThemeDialog$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/ID8ThemeDialog$2;-><init>(Lcom/android/launcher2/popuView/ID8ThemeDialog;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "SYS_THEME"

    const-string v2, "content://com.carocean.status.provider/sys"

    const v3, 0x7f08008a

    if-ne v0, v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v2, p1, v1, v0}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f08008c

    if-ne v0, v3, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v2, p1, v1, v0}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080088

    if-ne p1, v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v2, p1, v1, v0}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 112
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0050

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->initViews()V

    return-void
.end method
