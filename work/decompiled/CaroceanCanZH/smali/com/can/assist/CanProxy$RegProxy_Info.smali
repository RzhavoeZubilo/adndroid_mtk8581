.class public Lcom/can/assist/CanProxy$RegProxy_Info;
.super Ljava/lang/Object;
.source "CanProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegProxy_Info"
.end annotation


# instance fields
.field iCmdId:I

.field ilen:I

.field final synthetic this$0:Lcom/can/assist/CanProxy;


# direct methods
.method public constructor <init>(Lcom/can/assist/CanProxy;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/can/assist/CanProxy$RegProxy_Info;->this$0:Lcom/can/assist/CanProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 247
    iput p1, p0, Lcom/can/assist/CanProxy$RegProxy_Info;->iCmdId:I

    .line 248
    iput p1, p0, Lcom/can/assist/CanProxy$RegProxy_Info;->ilen:I

    return-void
.end method
