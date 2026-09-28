.class Lcom/android/launcher2/popuView/MainCustomer$1;
.super Landroid/content/BroadcastReceiver;
.source "MainCustomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/MainCustomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/MainCustomer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.autochips.action.weathe.INFO_UPDATE"

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomer;->updateWeather(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_0
    const-string v1, "com.autochips.action.city.INFO_UPDATE"

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomer;->updateCity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_1
    const-string v1, "com.yecon.action.ACTION_CLOCK_TYPE"

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomer;->setClockVisibility()V

    goto/16 :goto_3

    :cond_2
    const-string v1, "com.yecon.action.ACTION_SWITCH_VIEW"

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const-string v0, "id"

    .line 205
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_3

    .line 207
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$000(Lcom/android/launcher2/popuView/MainCustomer;)V

    goto/16 :goto_3

    :cond_3
    if-ne v2, p2, :cond_e

    .line 209
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$100(Lcom/android/launcher2/popuView/MainCustomer;)V

    goto/16 :goto_3

    :cond_4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 212
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    if-eqz p2, :cond_5

    .line 213
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p2, p2, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateIEText()V

    .line 215
    :cond_5
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$200(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 216
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$200(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->updateIEText()V

    goto/16 :goto_3

    :cond_6
    const-string v1, "action.lexus.update360icon"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 219
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomer;->update360Icon()V

    goto/16 :goto_3

    :cond_7
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 221
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 222
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    if-ne p2, v2, :cond_8

    goto :goto_0

    :cond_8
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher2/popuView/MainCustomer;->updateBluetooth(Z)V

    goto :goto_3

    .line 223
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.carocean.action.SAVE_FACTORY_DATA"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 224
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    const-string v0, "persist.sys.oil_uint_gal"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_1

    :cond_a
    move v0, v3

    :goto_1
    invoke-static {p2, v0}, Lcom/android/launcher2/popuView/MainCustomer;->access$302(Lcom/android/launcher2/popuView/MainCustomer;Z)Z

    .line 225
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    const-string v0, "persist.sys.temp_unit_f"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_b

    goto :goto_2

    :cond_b
    move v2, v3

    :goto_2
    invoke-static {p2, v2}, Lcom/android/launcher2/popuView/MainCustomer;->access$402(Lcom/android/launcher2/popuView/MainCustomer;Z)Z

    .line 226
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$500(Lcom/android/launcher2/popuView/MainCustomer;)[B

    move-result-object p2

    if-eqz p2, :cond_c

    .line 227
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    const/16 v0, 0x12

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$500(Lcom/android/launcher2/popuView/MainCustomer;)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->refreshCarInfoViews(I[B)V

    .line 229
    :cond_c
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$600(Lcom/android/launcher2/popuView/MainCustomer;)[B

    move-result-object p2

    if-eqz p2, :cond_d

    .line 230
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    const/16 v0, 0x18

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer;->access$600(Lcom/android/launcher2/popuView/MainCustomer;)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->refreshCarInfoViews(I[B)V

    .line 232
    :cond_d
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->readBackgroundWhiteList()V

    .line 234
    :cond_e
    :goto_3
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$1;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$700(Lcom/android/launcher2/popuView/MainCustomer;Landroid/content/Context;)V

    return-void
.end method
