.class public Lcom/autochips/bluetooth/PhoneBookActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "PhoneBookActivity.java"

# interfaces
.implements Lcom/carocean/navicar/BmwID8ThemeChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/PhoneBookActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_THEME_CHANGE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "PhoneBookActivity"

.field private static final URI_THEME:Ljava/lang/String; = "content://com.carocean.status.provider/sys/SYS_THEME"


# instance fields
.field contactFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

.field private final contentObserver:Landroid/database/ContentObserver;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private uiHandler:Lcom/autochips/bluetooth/PhoneBookActivity$UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->mFragment:Landroidx/fragment/app/Fragment;

    .line 93
    new-instance v0, Lcom/autochips/bluetooth/PhoneBookActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/PhoneBookActivity$1;-><init>(Lcom/autochips/bluetooth/PhoneBookActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->contentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/PhoneBookActivity;)Lcom/autochips/bluetooth/PhoneBookActivity$UIHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->uiHandler:Lcom/autochips/bluetooth/PhoneBookActivity$UIHandler;

    return-object p0
.end method

.method private initMember()V
    .locals 1

    .line 76
    new-instance v0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    invoke-direct {v0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->contactFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    return-void
.end method

.method private replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "PhoneBookActivity"

    const-string p2, "replaceFragment: frag == null"

    .line 82
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PhoneBookActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f08011a

    .line 87
    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 89
    iput-object p1, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneBookActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/carocean/navicar/MMIKeyHelper$onDispatchKeyEvent;

    if-eqz v1, :cond_0

    .line 68
    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$onDispatchKeyEvent;

    invoke-interface {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper$onDispatchKeyEvent;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 72
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PhoneBookActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 35
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PhoneBookActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 36
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PhoneBookActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 37
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PhoneBookActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const-string p1, "PhoneBookActivity"

    const-string v0, "onCreate: "

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0b0020

    .line 39
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/PhoneBookActivity;->setContentView(I)V

    .line 40
    new-instance p1, Lcom/autochips/bluetooth/PhoneBookActivity$UIHandler;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/PhoneBookActivity$UIHandler;-><init>(Lcom/autochips/bluetooth/PhoneBookActivity;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->uiHandler:Lcom/autochips/bluetooth/PhoneBookActivity$UIHandler;

    .line 41
    invoke-direct {p0}, Lcom/autochips/bluetooth/PhoneBookActivity;->initMember()V

    .line 42
    iget-object p1, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->contactFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    const-class v0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/PhoneBookActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PhoneBookActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_THEME"

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/PhoneBookActivity;->updateID8Theme(I)V

    .line 46
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PhoneBookActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/sys/SYS_THEME"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 58
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PhoneBookActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public updateID8Theme(I)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/autochips/bluetooth/PhoneBookActivity;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/carocean/navicar/BmwID8ThemeChanged;

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Lcom/carocean/navicar/BmwID8ThemeChanged;

    .line 116
    invoke-interface {v0, p1}, Lcom/carocean/navicar/BmwID8ThemeChanged;->updateID8Theme(I)V

    :cond_0
    return-void
.end method
