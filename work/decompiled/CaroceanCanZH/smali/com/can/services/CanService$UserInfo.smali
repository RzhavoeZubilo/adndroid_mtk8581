.class public Lcom/can/services/CanService$UserInfo;
.super Ljava/lang/Object;
.source "CanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/services/CanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# instance fields
.field public iCmdId:I

.field public iSubId:I

.field public mMessenger:Landroid/os/Messenger;

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    .line 133
    iput v0, p0, Lcom/can/services/CanService$UserInfo;->iSubId:I

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/can/services/CanService$UserInfo;->mName:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/can/services/CanService$UserInfo;->mMessenger:Landroid/os/Messenger;

    return-void
.end method
