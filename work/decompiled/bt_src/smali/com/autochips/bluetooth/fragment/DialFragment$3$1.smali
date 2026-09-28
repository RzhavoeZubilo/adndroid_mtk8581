.class Lcom/autochips/bluetooth/fragment/DialFragment$3$1;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/DialFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/fragment/DialFragment$3;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/DialFragment$3;Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3$1;->this$1:Lcom/autochips/bluetooth/fragment/DialFragment$3;

    iput-object p2, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3$1;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/DialFragment$3$1;->val$phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/info/BTCallManager;->call(Ljava/lang/String;)V

    return-void
.end method
