.class Lcom/android/launcher2/LauncherAppWidgetInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field appWidgetId:I

.field hostView:Landroid/appwidget/AppWidgetHostView;

.field private mHasNotifiedInitialWidgetSizeChanged:Z

.field minHeight:I

.field minWidth:I

.field providerName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(ILandroid/content/ComponentName;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 42
    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minWidth:I

    .line 43
    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minHeight:I

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x4

    .line 54
    iput v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->itemType:I

    .line 55
    iput p1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 56
    iput-object p2, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 60
    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 61
    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    return-void
.end method


# virtual methods
.method notifyWidgetSizeChanged(Lcom/android/launcher2/Launcher;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v2, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 67
    iget p0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method onBindAppWidget(Lcom/android/launcher2/Launcher;)V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher2/Launcher;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " providerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unbind()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/android/launcher2/ItemInfo;->unbind()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method
