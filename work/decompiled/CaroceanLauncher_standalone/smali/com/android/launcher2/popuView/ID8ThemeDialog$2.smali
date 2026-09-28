.class Lcom/android/launcher2/popuView/ID8ThemeDialog$2;
.super Ljava/lang/Object;
.source "ID8ThemeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 94
    iput-object p1, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog$2;->this$0:Lcom/android/launcher2/popuView/ID8ThemeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onKey:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  action:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ID8ThemeDialog"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog$2;->this$0:Lcom/android/launcher2/popuView/ID8ThemeDialog;

    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8ThemeDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0, p3}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
