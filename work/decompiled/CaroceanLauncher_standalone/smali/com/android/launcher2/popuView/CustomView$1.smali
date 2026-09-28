.class Lcom/android/launcher2/popuView/CustomView$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/CustomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/CustomView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/CustomView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/launcher2/popuView/CustomView$1;->this$0:Lcom/android/launcher2/popuView/CustomView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.autochips.action.weathe.INFO_UPDATE"

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView$1;->this$0:Lcom/android/launcher2/popuView/CustomView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/popuView/CustomView;->updateWeather(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.autochips.action.city.INFO_UPDATE"

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView$1;->this$0:Lcom/android/launcher2/popuView/CustomView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/popuView/CustomView;->updateCity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.yecon.action.ACTION_CLOCK_TYPE"

    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 95
    iget-object p2, p0, Lcom/android/launcher2/popuView/CustomView$1;->this$0:Lcom/android/launcher2/popuView/CustomView;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/CustomView;->setClockVisibility()V

    .line 97
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/CustomView$1;->this$0:Lcom/android/launcher2/popuView/CustomView;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/CustomView;->updateDateTime(Landroid/content/Context;)V

    return-void
.end method
