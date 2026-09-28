.class Lcom/can/assist/CanKey$4;
.super Ljava/lang/Thread;
.source "CanKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/assist/CanKey;->sendKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/assist/CanKey;

.field final synthetic val$strKeyCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/can/assist/CanKey;Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/can/assist/CanKey$4;->this$0:Lcom/can/assist/CanKey;

    iput-object p2, p0, Lcom/can/assist/CanKey$4;->val$strKeyCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/can/assist/CanKey$4;->this$0:Lcom/can/assist/CanKey;

    invoke-static {v0}, Lcom/can/assist/CanKey;->access$400(Lcom/can/assist/CanKey;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++++++++++++++++++CanKey TransKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/can/assist/CanKey$4;->val$strKeyCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/can/assist/CanKey$4;->this$0:Lcom/can/assist/CanKey;

    iget-object v1, p0, Lcom/can/assist/CanKey$4;->val$strKeyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/can/assist/CanKey;->TranslateKey(Ljava/lang/String;)I

    move-result v0

    .line 361
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 362
    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :catch_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
