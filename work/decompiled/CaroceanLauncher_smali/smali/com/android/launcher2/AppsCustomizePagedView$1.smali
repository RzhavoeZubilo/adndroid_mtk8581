.class Lcom/android/launcher2/AppsCustomizePagedView$1;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->onDataReady(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$1;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizePagedView$1;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->showAllAppsCling()V

    return-void
.end method
