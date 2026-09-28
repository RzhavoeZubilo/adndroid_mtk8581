.class public Lcom/android/launcher2/popuView/AboutDialog;
.super Landroid/app/Dialog;
.source "AboutDialog.java"


# instance fields
.field private layoutId:I

.field private mContext:Landroid/content/Context;

.field private mDissButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 19
    iput p2, p0, Lcom/android/launcher2/popuView/AboutDialog;->layoutId:I

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/AboutDialog;->requestWindowFeature(I)Z

    .line 21
    iget p1, p0, Lcom/android/launcher2/popuView/AboutDialog;->layoutId:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/AboutDialog;->setContentView(I)V

    .line 22
    invoke-direct {p0}, Lcom/android/launcher2/popuView/AboutDialog;->initView()V

    return-void
.end method

.method private initData()V
    .locals 1

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&&&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/AboutDialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f08001b

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/popuView/AboutDialog;->mDissButton:Landroid/widget/Button;

    .line 30
    new-instance v1, Lcom/android/launcher2/popuView/AboutDialog$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/popuView/AboutDialog$1;-><init>(Lcom/android/launcher2/popuView/AboutDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setButtonColor(I)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/launcher2/popuView/AboutDialog;->mDissButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setButtonEable(Z)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/launcher2/popuView/AboutDialog;->mDissButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
