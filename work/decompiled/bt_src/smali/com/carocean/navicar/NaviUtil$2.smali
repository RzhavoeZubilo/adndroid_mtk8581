.class final Lcom/carocean/navicar/NaviUtil$2;
.super Ljava/lang/Thread;
.source "NaviUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/carocean/navicar/NaviUtil;->sendKeySync(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$down:Z

.field final synthetic val$keyCode:I

.field final synthetic val$source:I


# direct methods
.method constructor <init>(ZII)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/carocean/navicar/NaviUtil$2;->val$down:Z

    iput p2, p0, Lcom/carocean/navicar/NaviUtil$2;->val$keyCode:I

    iput p3, p0, Lcom/carocean/navicar/NaviUtil$2;->val$source:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 101
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 102
    new-instance v1, Landroid/view/KeyEvent;

    iget-boolean v2, p0, Lcom/carocean/navicar/NaviUtil$2;->val$down:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lcom/carocean/navicar/NaviUtil$2;->val$keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 103
    iget v2, p0, Lcom/carocean/navicar/NaviUtil$2;->val$source:I

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
