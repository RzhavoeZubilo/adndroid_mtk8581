.class Lcom/android/launcher2/popuView/CarWidget$2;
.super Ljava/lang/Object;
.source "CarWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/CarWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/CarWidget;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/CarWidget;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-static {v0}, Lcom/android/launcher2/popuView/CarWidget;->access$000(Lcom/android/launcher2/popuView/CarWidget;)I

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-static {v1, v0}, Lcom/android/launcher2/popuView/CarWidget;->access$100(Lcom/android/launcher2/popuView/CarWidget;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-static {v1}, Lcom/android/launcher2/popuView/CarWidget;->access$200(Lcom/android/launcher2/popuView/CarWidget;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-static {v1, v0}, Lcom/android/launcher2/popuView/CarWidget;->access$300(Lcom/android/launcher2/popuView/CarWidget;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-static {v1, v0}, Lcom/android/launcher2/popuView/CarWidget;->access$202(Lcom/android/launcher2/popuView/CarWidget;I)I

    const/4 v0, 0x1

    .line 269
    iget-object v1, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-virtual {v1}, Lcom/android/launcher2/popuView/CarWidget;->updateMediaInfo()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    .line 274
    invoke-static {v0}, Lcom/android/launcher2/popuView/CarWidget;->access$200(Lcom/android/launcher2/popuView/CarWidget;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/launcher2/popuView/CarWidget;->access$100(Lcom/android/launcher2/popuView/CarWidget;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    .line 275
    invoke-static {v0}, Lcom/android/launcher2/popuView/CarWidget;->access$200(Lcom/android/launcher2/popuView/CarWidget;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/launcher2/popuView/CarWidget;->access$300(Lcom/android/launcher2/popuView/CarWidget;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-static {v0, v1}, Lcom/android/launcher2/popuView/CarWidget;->access$202(Lcom/android/launcher2/popuView/CarWidget;I)I

    .line 277
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/CarWidget;->updateMediaInfo()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    iget-object v0, v0, Lcom/android/launcher2/popuView/CarWidget;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-static {v2}, Lcom/android/launcher2/popuView/CarWidget;->access$400(Lcom/android/launcher2/popuView/CarWidget;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-static {v0}, Lcom/android/launcher2/popuView/CarWidget;->access$200(Lcom/android/launcher2/popuView/CarWidget;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 281
    iget-object p0, p0, Lcom/android/launcher2/popuView/CarWidget$2;->this$0:Lcom/android/launcher2/popuView/CarWidget;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CarWidget;->updateMediaInfo()V

    :cond_2
    return-void
.end method
