.class Lcom/android/launcher2/popuView/CarWidget$1;
.super Ljava/lang/Thread;
.source "CarWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/CarWidget;->sendKeyCode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/CarWidget;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/CarWidget;I)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/launcher2/popuView/CarWidget$1;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    iput p2, p0, Lcom/android/launcher2/popuView/CarWidget$1;->val$keyCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 249
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 250
    iget p0, p0, Lcom/android/launcher2/popuView/CarWidget$1;->val$keyCode:I

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
