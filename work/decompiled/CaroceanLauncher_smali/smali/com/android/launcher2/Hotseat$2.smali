.class Lcom/android/launcher2/Hotseat$2;
.super Ljava/lang/Object;
.source "Hotseat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Hotseat;->addHostView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Hotseat;

.field final synthetic val$mPosition:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Hotseat;I)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/launcher2/Hotseat$2;->this$0:Lcom/android/launcher2/Hotseat;

    iput p2, p0, Lcom/android/launcher2/Hotseat$2;->val$mPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 243
    iget v0, p0, Lcom/android/launcher2/Hotseat$2;->val$mPosition:I

    if-nez v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/android/launcher2/Hotseat$2;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onNavigation(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$2;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-static {v0}, Lcom/android/launcher2/Hotseat;->access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 247
    iget-object p0, p0, Lcom/android/launcher2/Hotseat$2;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-static {p0}, Lcom/android/launcher2/Hotseat;->access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/Launcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onTouchDownAllAppsButton(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    if-ne v0, p1, :cond_2

    .line 250
    iget-object p0, p0, Lcom/android/launcher2/Hotseat$2;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onRadio(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    if-ne v0, p1, :cond_3

    .line 252
    iget-object p0, p0, Lcom/android/launcher2/Hotseat$2;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onMusic(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    if-ne v0, p1, :cond_4

    .line 254
    iget-object p0, p0, Lcom/android/launcher2/Hotseat$2;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onBT(Landroid/content/Context;)V

    :cond_4
    :goto_0
    return-void
.end method
