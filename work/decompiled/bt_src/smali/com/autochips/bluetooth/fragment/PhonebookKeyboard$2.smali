.class Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$2;
.super Ljava/lang/Object;
.source "PhonebookKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$2;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 142
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

    const-string p2, "PhonebookKeyboard"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$2;->this$0:Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->access$100(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;)Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
