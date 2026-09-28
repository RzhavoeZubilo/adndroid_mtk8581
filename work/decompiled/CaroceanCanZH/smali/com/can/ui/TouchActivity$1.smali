.class Lcom/can/ui/TouchActivity$1;
.super Ljava/lang/Object;
.source "TouchActivity.java"

# interfaces
.implements Lcom/carocean/navicar/McuServiceManager$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/TouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/TouchActivity;


# direct methods
.method constructor <init>(Lcom/can/ui/TouchActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/can/ui/TouchActivity$1;->this$0:Lcom/can/ui/TouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(I[B)V
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    aget-byte p2, p2, p1

    and-int/lit8 p2, p2, 0xf

    if-nez p2, :cond_1

    .line 56
    iget-object p2, p0, Lcom/can/ui/TouchActivity$1;->this$0:Lcom/can/ui/TouchActivity;

    invoke-virtual {p2}, Lcom/can/ui/TouchActivity;->finish()V

    .line 57
    iget-object p0, p0, Lcom/can/ui/TouchActivity$1;->this$0:Lcom/can/ui/TouchActivity;

    invoke-virtual {p0, p1, p1}, Lcom/can/ui/TouchActivity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method
