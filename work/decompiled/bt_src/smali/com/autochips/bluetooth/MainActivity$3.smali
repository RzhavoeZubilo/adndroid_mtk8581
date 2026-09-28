.class Lcom/autochips/bluetooth/MainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/MainActivity;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/MainActivity;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/autochips/bluetooth/MainActivity$3;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 609
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.carocean.action.ACTION_QUIT_APK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "func"

    .line 610
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bluetooth"

    .line 611
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 612
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity$3;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/MainActivity;->finish()V

    :cond_0
    return-void
.end method
