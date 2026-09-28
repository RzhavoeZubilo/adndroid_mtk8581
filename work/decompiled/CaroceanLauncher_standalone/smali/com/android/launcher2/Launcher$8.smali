.class Lcom/android/launcher2/Launcher$8;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 1529
    iput-object p1, p0, Lcom/android/launcher2/Launcher$8;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSwitch(Landroid/view/View;I)V
    .locals 1

    .line 1534
    iget-object p0, p0, Lcom/android/launcher2/Launcher$8;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    return-void
.end method
