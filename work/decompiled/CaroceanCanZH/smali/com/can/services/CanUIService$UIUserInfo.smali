.class public Lcom/can/services/CanUIService$UIUserInfo;
.super Ljava/lang/Object;
.source "CanUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/services/CanUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIUserInfo"
.end annotation


# instance fields
.field public mMessenger:Landroid/os/Messenger;

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/can/services/CanUIService;


# direct methods
.method public constructor <init>(Lcom/can/services/CanUIService;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/can/services/CanUIService$UIUserInfo;->this$0:Lcom/can/services/CanUIService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 244
    iput-object p1, p0, Lcom/can/services/CanUIService$UIUserInfo;->mName:Ljava/lang/String;

    .line 245
    iput-object p1, p0, Lcom/can/services/CanUIService$UIUserInfo;->mMessenger:Landroid/os/Messenger;

    return-void
.end method
