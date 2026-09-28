.class Lcom/can/assist/CanKey$1;
.super Ljava/lang/Object;
.source "CanKey.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 149
    iput-object p1, p0, Lcom/can/assist/CanKey$1;->this$0:Lcom/can/assist/CanKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/can/assist/CanKey$1;->this$0:Lcom/can/assist/CanKey;

    invoke-static {p0}, Lcom/can/assist/CanKey;->access$200(Lcom/can/assist/CanKey;)Lcom/can/assist/CanKey$KeyAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/can/assist/CanKey$KeyAction;->KnobStep()V

    return-void
.end method
