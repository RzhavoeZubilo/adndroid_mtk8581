.class Lcom/android/launcher2/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 1605
    iput-object p1, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1608
    iget-object p1, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomerJly;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1610
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1611
    iget-object p0, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->updateCarIcon(Z)V

    :cond_1
    :goto_0
    return v0
.end method
