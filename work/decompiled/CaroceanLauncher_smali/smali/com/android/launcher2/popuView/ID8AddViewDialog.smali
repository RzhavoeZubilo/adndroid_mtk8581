.class public Lcom/android/launcher2/popuView/ID8AddViewDialog;
.super Landroid/app/Dialog;
.source "ID8AddViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;,
        Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ID8AddViewDialog"


# instance fields
.field private listAdapter:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFileClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mFileListView:Landroid/widget/ListView;

.field private onAppSelecteChangedListener:Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;

.field private viewID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d003b

    .line 33
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->mFileListView:Landroid/widget/ListView;

    .line 52
    new-instance v0, Lcom/android/launcher2/popuView/ID8AddViewDialog$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/ID8AddViewDialog$1;-><init>(Lcom/android/launcher2/popuView/ID8AddViewDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->mFileClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 34
    iput-object p1, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->mApps:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->onAppSelecteChangedListener:Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/popuView/ID8AddViewDialog;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->viewID:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->mApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f080021

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->mFileListView:Landroid/widget/ListView;

    .line 48
    iget-object v1, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->mFileClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    new-instance v0, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;-><init>(Lcom/android/launcher2/popuView/ID8AddViewDialog;Lcom/android/launcher2/popuView/ID8AddViewDialog$1;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->listAdapter:Lcom/android/launcher2/popuView/ID8AddViewDialog$ListAdapter;

    .line 50
    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->mFileListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a004e

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->initViews()V

    return-void
.end method

.method public setOnAppSelecteChangedListener(Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->onAppSelecteChangedListener:Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;

    return-void
.end method

.method public setViewID(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog;->viewID:I

    return-void
.end method
