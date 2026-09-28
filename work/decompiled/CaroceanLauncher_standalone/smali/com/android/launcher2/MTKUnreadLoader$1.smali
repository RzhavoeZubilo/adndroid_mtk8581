.class Lcom/android/launcher2/MTKUnreadLoader$1;
.super Landroid/os/AsyncTask;
.source "MTKUnreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MTKUnreadLoader;->loadAndInitUnreadShortcuts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MTKUnreadLoader;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MTKUnreadLoader;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/launcher2/MTKUnreadLoader$1;->this$0:Lcom/android/launcher2/MTKUnreadLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MTKUnreadLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/android/launcher2/MTKUnreadLoader$1;->this$0:Lcom/android/launcher2/MTKUnreadLoader;

    invoke-static {p1}, Lcom/android/launcher2/MTKUnreadLoader;->access$000(Lcom/android/launcher2/MTKUnreadLoader;)V

    .line 132
    iget-object p0, p0, Lcom/android/launcher2/MTKUnreadLoader$1;->this$0:Lcom/android/launcher2/MTKUnreadLoader;

    invoke-static {p0}, Lcom/android/launcher2/MTKUnreadLoader;->access$100(Lcom/android/launcher2/MTKUnreadLoader;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MTKUnreadLoader$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/android/launcher2/MTKUnreadLoader$1;->this$0:Lcom/android/launcher2/MTKUnreadLoader;

    invoke-static {p1}, Lcom/android/launcher2/MTKUnreadLoader;->access$200(Lcom/android/launcher2/MTKUnreadLoader;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/launcher2/MTKUnreadLoader$1;->this$0:Lcom/android/launcher2/MTKUnreadLoader;

    invoke-static {p0}, Lcom/android/launcher2/MTKUnreadLoader;->access$200(Lcom/android/launcher2/MTKUnreadLoader;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/MTKUnreadLoader$UnreadCallbacks;

    if-eqz p0, :cond_0

    .line 141
    invoke-interface {p0}, Lcom/android/launcher2/MTKUnreadLoader$UnreadCallbacks;->bindUnreadInfoIfNeeded()V

    :cond_0
    return-void
.end method
