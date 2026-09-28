.class Lcom/android/launcher2/popuView/ID8ThemeDialog$1;
.super Ljava/lang/Object;
.source "ID8ThemeDialog.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/ID8ThemeDialog;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/ID8ThemeDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/ID8ThemeDialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog$1;->this$0:Lcom/android/launcher2/popuView/ID8ThemeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog$1;->this$0:Lcom/android/launcher2/popuView/ID8ThemeDialog;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onMenuDown(II)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog$1;->this$0:Lcom/android/launcher2/popuView/ID8ThemeDialog;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->dismiss()V

    return-void
.end method

.method public onMenuUp(II)V
    .locals 0

    return-void
.end method

.method public onMenuUpEnd()V
    .locals 0

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method
