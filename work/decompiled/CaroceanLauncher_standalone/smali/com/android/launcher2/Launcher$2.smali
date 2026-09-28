.class Lcom/android/launcher2/Launcher$2;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 810
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "action.brightness.set"

    .line 811
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 812
    iget-object p1, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Hotseat;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher2/Hotseat;->mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

    iget-object p1, p1, Lcom/android/launcher2/popuView/FboxPopuWindow;->settingGrid:Lcom/android/launcher2/popuView/SetGridView;

    if-eqz p1, :cond_0

    .line 813
    iget-object p0, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Hotseat;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher2/Hotseat;->mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

    iget-object p0, p0, Lcom/android/launcher2/popuView/FboxPopuWindow;->settingGrid:Lcom/android/launcher2/popuView/SetGridView;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SetGridView;->ResetAdapter()V

    :cond_0
    return-void
.end method
