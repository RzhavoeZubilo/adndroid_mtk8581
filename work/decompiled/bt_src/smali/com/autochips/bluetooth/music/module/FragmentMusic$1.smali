.class Lcom/autochips/bluetooth/music/module/FragmentMusic$1;
.super Ljava/lang/Object;
.source "FragmentMusic.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/music/module/FragmentMusic;->monitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/music/module/FragmentMusic;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/music/module/FragmentMusic;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic$1;->this$0:Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 155
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 157
    invoke-static {}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "monitor KEYCODE_BACK"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x9

    invoke-virtual {p1, p2, p3}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 159
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic$1;->this$0:Lcom/autochips/bluetooth/music/module/FragmentMusic;

    iget-object p1, p1, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
