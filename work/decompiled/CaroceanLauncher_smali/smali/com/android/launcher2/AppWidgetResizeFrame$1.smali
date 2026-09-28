.class Lcom/android/launcher2/AppWidgetResizeFrame$1;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppWidgetResizeFrame;->onTouchUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame$1;->this$0:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 395
    iget-object p0, p0, Lcom/android/launcher2/AppWidgetResizeFrame$1;->this$0:Lcom/android/launcher2/AppWidgetResizeFrame;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method
