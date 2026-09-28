.class Lcom/android/launcher2/Launcher$3;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->checkForLocaleChange()V
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
        "Lcom/android/launcher2/Launcher$LocaleConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/launcher2/Launcher$LocaleConfiguration;
    .locals 1

    .line 882
    new-instance p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/launcher2/Launcher$LocaleConfiguration;-><init>(Lcom/android/launcher2/Launcher$1;)V

    .line 883
    iget-object p0, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->access$400(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 879
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher$3;->doInBackground([Ljava/lang/Void;)Lcom/android/launcher2/Launcher$LocaleConfiguration;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0

    .line 889
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$502(Lcom/android/launcher2/Launcher$LocaleConfiguration;)Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 890
    iget-object p0, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$600(Lcom/android/launcher2/Launcher;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 879
    check-cast p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher$3;->onPostExecute(Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method
