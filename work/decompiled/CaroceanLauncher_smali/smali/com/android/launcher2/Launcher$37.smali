.class Lcom/android/launcher2/Launcher$37;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->removeCling(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$cling:Landroid/view/View;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 5415
    iput-object p1, p0, Lcom/android/launcher2/Launcher$37;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$37;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$37;->val$cling:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5418
    iget-object v0, p0, Lcom/android/launcher2/Launcher$37;->val$parent:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/launcher2/Launcher$37;->val$cling:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
