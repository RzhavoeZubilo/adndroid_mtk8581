.class Lcom/android/launcher2/Launcher$5;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$appWidgetId:I

.field final synthetic val$layout:Landroid/appwidget/AppWidgetHostView;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    iput p2, p0, Lcom/android/launcher2/Launcher$5;->val$appWidgetId:I

    iput-object p3, p0, Lcom/android/launcher2/Launcher$5;->val$layout:Landroid/appwidget/AppWidgetHostView;

    iput p4, p0, Lcom/android/launcher2/Launcher$5;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1148
    iget-object v0, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    iget v1, p0, Lcom/android/launcher2/Launcher$5;->val$appWidgetId:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher2/ItemInfo;->container:J

    iget-object v4, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    .line 1149
    invoke-static {v4}, Lcom/android/launcher2/Launcher;->access$900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher2/ItemInfo;->screen:I

    iget-object v5, p0, Lcom/android/launcher2/Launcher$5;->val$layout:Landroid/appwidget/AppWidgetHostView;

    const/4 v6, 0x0

    .line 1148
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->access$1000(Lcom/android/launcher2/Launcher;IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1150
    iget-object v0, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    iget p0, p0, Lcom/android/launcher2/Launcher$5;->val$resultCode:I

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    return-void
.end method
