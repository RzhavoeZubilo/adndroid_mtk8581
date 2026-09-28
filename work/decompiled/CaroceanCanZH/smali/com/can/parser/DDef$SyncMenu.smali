.class public Lcom/can/parser/DDef$SyncMenu;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncMenu"
.end annotation


# instance fields
.field public mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/can/parser/DDef$Sync_listInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mbRefactorlist:Z

.field public mbyMenuBar:B

.field public mbyMenuIcon:B

.field public mbyMenuPer:B

.field public mbyMenuType:B

.field public mbyMsgSelOption:B

.field public mbyMsgType:B

.field public mbySelOption:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
