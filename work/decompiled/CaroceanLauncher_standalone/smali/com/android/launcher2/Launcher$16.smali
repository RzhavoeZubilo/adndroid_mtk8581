.class Lcom/android/launcher2/Launcher$16;
.super Landroid/os/Handler;
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

    .line 2230
    iput-object p1, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 2233
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 2235
    iget-object p1, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$3000(Lcom/android/launcher2/Launcher;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2236
    iget-object v2, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$3000(Lcom/android/launcher2/Launcher;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit16 v2, v1, 0xfa

    .line 2238
    instance-of v3, v0, Landroid/widget/Advanceable;

    if-eqz v3, :cond_0

    .line 2239
    new-instance v3, Lcom/android/launcher2/Launcher$16$1;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher2/Launcher$16$1;-><init>(Lcom/android/launcher2/Launcher$16;Landroid/view/View;)V

    int-to-long v4, v2

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher2/Launcher$16;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2247
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    const-wide/16 v0, 0x4e20

    invoke-static {p0, v0, v1}, Lcom/android/launcher2/Launcher;->access$3100(Lcom/android/launcher2/Launcher;J)V

    goto :goto_1

    .line 2248
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const-string p1, "persist.sys.fristLauncher"

    const-string v0, "no"

    .line 2249
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    iget-object p1, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$3200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/AboutDialog;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2252
    iget-object p0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$3200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/AboutDialog;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/popuView/AboutDialog;->setButtonEable(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    .line 2257
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_4

    .line 2258
    iget-object p0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0, v1}, Lcom/android/launcher2/Launcher;->access$3302(Lcom/android/launcher2/Launcher;Z)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    .line 2259
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_5

    const-string p0, "service.bootanim.exit"

    const-string p1, "1"

    .line 2260
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    .line 2261
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_6

    .line 2262
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isJLYCustomer()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2263
    iget-object p1, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$3400(Lcom/android/launcher2/Launcher;)V

    .line 2264
    iget-object p0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$1400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomerJly;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->updateUiTheme()V

    goto :goto_1

    :cond_6
    const/16 v0, 0x64

    .line 2266
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_7

    .line 2267
    iget-object p0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->access$3500(Lcom/android/launcher2/Launcher;I)V

    :cond_7
    :goto_1
    return-void
.end method
