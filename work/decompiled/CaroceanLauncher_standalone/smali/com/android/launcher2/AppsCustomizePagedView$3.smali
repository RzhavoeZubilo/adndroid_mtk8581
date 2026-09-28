.class Lcom/android/launcher2/AppsCustomizePagedView$3;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/android/launcher2/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;

.field final synthetic val$sleepMs:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;I)V
    .locals 0

    .line 1437
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput p2, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$sleepMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 3

    const/4 v0, 0x1

    .line 1442
    :try_start_0
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$sleepMs:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1445
    :catch_0
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->access$100(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1447
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1448
    invoke-virtual {p2, v0}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    :cond_0
    return-void

    .line 1447
    :goto_1
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1448
    invoke-virtual {p2, v0}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    .line 1450
    :cond_1
    throw p0
.end method
