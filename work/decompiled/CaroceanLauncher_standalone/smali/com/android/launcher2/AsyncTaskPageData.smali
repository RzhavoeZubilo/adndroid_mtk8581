.class Lcom/android/launcher2/AsyncTaskPageData;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AsyncTaskPageData$Type;
    }
.end annotation


# instance fields
.field doInBackgroundCallback:Lcom/android/launcher2/AsyncTaskCallback;

.field generatedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field maxImageHeight:I

.field maxImageWidth:I

.field page:I

.field postExecuteCallback:Lcom/android/launcher2/AsyncTaskCallback;

.field sourceImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/ArrayList;IILcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;II",
            "Lcom/android/launcher2/AsyncTaskCallback;",
            "Lcom/android/launcher2/AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/android/launcher2/AsyncTaskPageData;->page:I

    .line 119
    iput-object p2, p0, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 121
    iput p3, p0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    .line 122
    iput p4, p0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    .line 123
    iput-object p5, p0, Lcom/android/launcher2/AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/AsyncTaskCallback;

    .line 124
    iput-object p6, p0, Lcom/android/launcher2/AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/AsyncTaskCallback;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/android/launcher2/AsyncTaskCallback;",
            "Lcom/android/launcher2/AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/android/launcher2/AsyncTaskPageData;->page:I

    .line 108
    iput-object p2, p0, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 109
    iput-object p3, p0, Lcom/android/launcher2/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 111
    iput p1, p0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    iput p1, p0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    .line 112
    iput-object p4, p0, Lcom/android/launcher2/AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/AsyncTaskCallback;

    .line 113
    iput-object p5, p0, Lcom/android/launcher2/AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/AsyncTaskCallback;

    return-void
.end method


# virtual methods
.method cleanup(Z)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 143
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method
