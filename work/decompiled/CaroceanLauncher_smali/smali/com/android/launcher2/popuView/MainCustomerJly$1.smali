.class Lcom/android/launcher2/popuView/MainCustomerJly$1;
.super Landroid/content/BroadcastReceiver;
.source "MainCustomerJly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/MainCustomerJly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/MainCustomerJly;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.autochips.action.weathe.INFO_UPDATE"

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->updateWeather(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "com.autochips.action.city.INFO_UPDATE"

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->updateCity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "com.yecon.action.ACTION_CLOCK_TYPE"

    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->setClockVisibility()V

    goto/16 :goto_1

    :cond_2
    const-string v1, "com.yecon.action.ACTION_SWITCH_VIEW"

    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const-string v0, "id"

    .line 184
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_3

    .line 186
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$000(Lcom/android/launcher2/popuView/MainCustomerJly;)V

    goto :goto_1

    :cond_3
    if-ne v2, p2, :cond_9

    .line 188
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$100(Lcom/android/launcher2/popuView/MainCustomerJly;)V

    goto :goto_1

    :cond_4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 191
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    if-eqz p2, :cond_5

    .line 192
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->updateIEText()V

    .line 194
    :cond_5
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$200(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 195
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$200(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->updateIEText()V

    goto :goto_1

    :cond_6
    const-string v1, "action.lexus.update360icon"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 198
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->update360Icon()V

    goto :goto_1

    :cond_7
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 200
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 201
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    if-ne p2, v2, :cond_8

    goto :goto_0

    :cond_8
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher2/popuView/MainCustomerJly;->updateBluetooth(Z)V

    .line 203
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$1;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$300(Lcom/android/launcher2/popuView/MainCustomerJly;Landroid/content/Context;)V

    return-void
.end method
