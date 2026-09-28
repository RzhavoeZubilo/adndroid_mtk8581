.class Lcom/can/ui/CarAux$1;
.super Ljava/lang/Object;
.source "CarAux.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/CarAux;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CarAux;


# direct methods
.method constructor <init>(Lcom/can/ui/CarAux;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/can/ui/CarAux$1;->this$0:Lcom/can/ui/CarAux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/can/ui/CarAux$1;->this$0:Lcom/can/ui/CarAux;

    invoke-virtual {p0}, Lcom/can/ui/CarAux;->onBackPressed()V

    return-void
.end method
