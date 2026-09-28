.class Lcom/android/launcher2/AppsCustomizeTabHost$1;
.super Ljava/lang/Object;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizeTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizeTabHost;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$1;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$1;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$000(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 71
    iget-object p0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$1;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$100(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/view/ViewGroup;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method
