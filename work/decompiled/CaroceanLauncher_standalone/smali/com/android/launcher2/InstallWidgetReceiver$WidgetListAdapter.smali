.class public Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;
.super Ljava/lang/Object;
.source "InstallWidgetReceiver.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/InstallWidgetReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetListAdapter"
.end annotation


# instance fields
.field private mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMimeType:Ljava/lang/String;

.field private mTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mTargetLayoutPos:[I

.field private mTargetLayoutScreen:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Landroid/content/ClipData;Ljava/util/List;Lcom/android/launcher2/CellLayout;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Launcher;",
            "Ljava/lang/String;",
            "Landroid/content/ClipData;",
            "Ljava/util/List<",
            "Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;",
            "Lcom/android/launcher2/CellLayout;",
            "I[I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 88
    iput-object p2, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mMimeType:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mClipData:Landroid/content/ClipData;

    .line 90
    iput-object p4, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    .line 91
    iput-object p5, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 92
    iput p6, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutScreen:I

    .line 93
    iput-object p7, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutPos:[I

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCount()I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 126
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v2, :cond_0

    .line 131
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 136
    iget-object p2, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0a0034

    invoke-virtual {p2, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 140
    :cond_1
    iget-object p3, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    .line 141
    iget-object p3, p1, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 142
    iget-object p1, p1, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 145
    invoke-virtual {p3, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0800a2

    .line 146
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 147
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {p3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 152
    iget-object p0, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayout:Lcom/android/launcher2/CellLayout;

    iget v4, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p0, v4, p1, v3}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    const p0, 0x7f0800a1

    .line 153
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p1, 0x7f0c0030

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v2

    .line 154
    aget p3, v3, v2

    .line 155
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, v4, v2

    aget p3, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v1

    .line 154
    invoke-virtual {v0, p1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 187
    iget-object p1, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    iget-object p1, p1, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 189
    new-instance v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-object p2, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mMimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mClipData:Landroid/content/ClipData;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v4, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutScreen:I

    iget-object v7, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutPos:[I

    const-wide/16 v2, -0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I[I)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
