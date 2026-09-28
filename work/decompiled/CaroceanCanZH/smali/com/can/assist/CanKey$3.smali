.class Lcom/can/assist/CanKey$3;
.super Landroid/os/Handler;
.source "CanKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/assist/CanKey;


# direct methods
.method constructor <init>(Lcom/can/assist/CanKey;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/can/assist/CanKey$3;->this$0:Lcom/can/assist/CanKey;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x321

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanKey$3;->this$0:Lcom/can/assist/CanKey;

    invoke-static {p0, p1}, Lcom/can/assist/CanKey;->access$300(Lcom/can/assist/CanKey;Landroid/os/Message;)V

    :goto_0
    return-void
.end method
