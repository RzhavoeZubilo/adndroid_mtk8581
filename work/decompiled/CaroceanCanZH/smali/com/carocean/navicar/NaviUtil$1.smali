.class final Lcom/carocean/navicar/NaviUtil$1;
.super Ljava/lang/Thread;
.source "NaviUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/carocean/navicar/NaviUtil;->sendKeyDownUpSync(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$keyCode:I

.field final synthetic val$source:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/carocean/navicar/NaviUtil$1;->val$keyCode:I

    iput p2, p0, Lcom/carocean/navicar/NaviUtil$1;->val$source:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 70
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 71
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    iget v3, p0, Lcom/carocean/navicar/NaviUtil$1;->val$keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 72
    iget v2, p0, Lcom/carocean/navicar/NaviUtil$1;->val$source:I

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 74
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    iget v3, p0, Lcom/carocean/navicar/NaviUtil$1;->val$keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 75
    iget p0, p0, Lcom/carocean/navicar/NaviUtil$1;->val$source:I

    invoke-virtual {v1, p0}, Landroid/view/KeyEvent;->setSource(I)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
