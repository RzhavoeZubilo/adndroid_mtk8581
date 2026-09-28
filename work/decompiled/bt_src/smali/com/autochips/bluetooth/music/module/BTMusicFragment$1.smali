.class Lcom/autochips/bluetooth/music/module/BTMusicFragment$1;
.super Ljava/lang/Object;
.source "BTMusicFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/music/module/BTMusicFragment;->monitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/music/module/BTMusicFragment;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/music/module/BTMusicFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment$1;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 185
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const-string p1, "BTMusicFragment"

    const-string p2, "monitor KEYCODE_BACK"

    .line 187
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x9

    invoke-virtual {p1, p2, p3}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 189
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment$1;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicFragment;

    iget-object p1, p1, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
