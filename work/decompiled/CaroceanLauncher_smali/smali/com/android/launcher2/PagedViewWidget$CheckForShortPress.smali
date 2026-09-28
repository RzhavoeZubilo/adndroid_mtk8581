.class Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;
.super Ljava/lang/Object;
.source "PagedViewWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForShortPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PagedViewWidget;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedViewWidget;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher2/PagedViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 190
    sget-object v0, Lcom/android/launcher2/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher2/PagedViewWidget;

    iget-object v0, v0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher2/PagedViewWidget;

    iget-object v0, v0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher2/PagedViewWidget;

    invoke-interface {v0, v1}, Lcom/android/launcher2/PagedViewWidget$ShortPressListener;->onShortPress(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher2/PagedViewWidget;

    sput-object v0, Lcom/android/launcher2/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;

    .line 195
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;->this$0:Lcom/android/launcher2/PagedViewWidget;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressTriggered:Z

    return-void
.end method
