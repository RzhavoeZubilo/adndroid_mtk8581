.class Lcom/can/ui/CarInfo$3;
.super Ljava/lang/Object;
.source "CarInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/CarInfo;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CarInfo;


# direct methods
.method constructor <init>(Lcom/can/ui/CarInfo;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/can/ui/CarInfo$3;->this$0:Lcom/can/ui/CarInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "persist.sys.mileage_unit"

    const/4 v0, 0x0

    .line 325
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lcom/can/ui/CarInfo$3;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$800(Lcom/can/ui/CarInfo;)V

    return-void
.end method
