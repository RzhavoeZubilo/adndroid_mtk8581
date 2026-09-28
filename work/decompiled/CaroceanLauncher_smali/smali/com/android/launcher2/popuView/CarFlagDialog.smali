.class public Lcom/android/launcher2/popuView/CarFlagDialog;
.super Landroid/app/Dialog;
.source "CarFlagDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;,
        Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarFlagDialog"


# instance fields
.field private listAdapter:Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mFileClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mFileListView:Landroid/widget/ListView;

.field private mResId:[I

.field private onCarFlagChangedListener:Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 1

    const v0, 0x7f0d003b

    .line 28
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->mFileListView:Landroid/widget/ListView;

    .line 47
    new-instance v0, Lcom/android/launcher2/popuView/CarFlagDialog$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/CarFlagDialog$1;-><init>(Lcom/android/launcher2/popuView/CarFlagDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->mFileClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 29
    iput-object p1, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->mResId:[I

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/popuView/CarFlagDialog;)Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->onCarFlagChangedListener:Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/popuView/CarFlagDialog;)[I
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->mResId:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher2/popuView/CarFlagDialog;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f080021

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/CarFlagDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->mFileListView:Landroid/widget/ListView;

    .line 43
    iget-object v1, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->mFileClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    new-instance v0, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;-><init>(Lcom/android/launcher2/popuView/CarFlagDialog;Lcom/android/launcher2/popuView/CarFlagDialog$1;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->listAdapter:Lcom/android/launcher2/popuView/CarFlagDialog$ListAdapter;

    .line 45
    iget-object p0, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->mFileListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CarFlagDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    const p1, 0x7f0a004a

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/CarFlagDialog;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/android/launcher2/popuView/CarFlagDialog;->initViews()V

    return-void
.end method

.method public setOnCarFlagChangedListener(Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/launcher2/popuView/CarFlagDialog;->onCarFlagChangedListener:Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;

    return-void
.end method
