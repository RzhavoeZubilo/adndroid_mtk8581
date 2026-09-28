.class Lcom/android/launcher2/AppsCustomizeAsyncTask;
.super Landroid/os/AsyncTask;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/launcher2/AsyncTaskPageData;",
        "Ljava/lang/Void;",
        "Lcom/android/launcher2/AsyncTaskPageData;",
        ">;"
    }
.end annotation


# instance fields
.field dataType:Lcom/android/launcher2/AsyncTaskPageData$Type;

.field page:I

.field threadPriority:I


# direct methods
.method constructor <init>(ILcom/android/launcher2/AsyncTaskPageData$Type;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 162
    iput p1, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->threadPriority:I

    .line 164
    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->dataType:Lcom/android/launcher2/AsyncTaskPageData$Type;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/launcher2/AsyncTaskPageData;)Lcom/android/launcher2/AsyncTaskPageData;
    .locals 3

    .line 169
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 173
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/android/launcher2/AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/AsyncTaskCallback;

    aget-object v2, p1, v0

    invoke-interface {v1, p0, v2}, Lcom/android/launcher2/AsyncTaskCallback;->run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    .line 174
    aget-object p0, p1, v0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p1, [Lcom/android/launcher2/AsyncTaskPageData;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->doInBackground([Lcom/android/launcher2/AsyncTaskPageData;)Lcom/android/launcher2/AsyncTaskPageData;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 1

    .line 180
    iget-object v0, p1, Lcom/android/launcher2/AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/AsyncTaskCallback;

    invoke-interface {v0, p0, p1}, Lcom/android/launcher2/AsyncTaskCallback;->run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p1, Lcom/android/launcher2/AsyncTaskPageData;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->onPostExecute(Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method setThreadPriority(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->threadPriority:I

    return-void
.end method

.method syncThreadPriority()V
    .locals 0

    .line 188
    iget p0, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->threadPriority:I

    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
