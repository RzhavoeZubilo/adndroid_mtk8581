.class Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;
.super Ljava/lang/Object;
.source "DBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/control/DBManager;->GetSpecialTel(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SPECIAL_TEL"
.end annotation


# instance fields
.field desc:Ljava/lang/String;

.field tel:Ljava/lang/String;

.field final synthetic this$0:Lcom/autochips/bluetooth/control/DBManager;


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/control/DBManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;->this$0:Lcom/autochips/bluetooth/control/DBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;->tel:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lcom/autochips/bluetooth/control/DBManager$1SPECIAL_TEL;->desc:Ljava/lang/String;

    return-void
.end method
