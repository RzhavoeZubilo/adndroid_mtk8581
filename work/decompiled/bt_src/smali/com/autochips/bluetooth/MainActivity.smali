.class public Lcom/autochips/bluetooth/MainActivity;
.super Lcom/autochips/bluetooth/BaseFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/carocean/navicar/BmwID8ThemeChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/MainActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_THEME_CHANGE:I = 0x2710

.field public static final TAG:Ljava/lang/String; = "BTMainActivity"

.field private static final URI_THEME:Ljava/lang/String; = "content://com.carocean.status.provider/sys/SYS_THEME"


# instance fields
.field contactEmptyFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookEmpty;

.field contactFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

.field private final contentObserver:Landroid/database/ContentObserver;

.field currentItem:Ljava/lang/String;

.field dialButton:Landroid/view/View;

.field dialFragment:Lcom/autochips/bluetooth/fragment/FragmentCallPhone;

.field historyButton:Landroid/view/View;

.field private lastWidthPixels:I

.field private mBackButton:Landroid/view/View;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

.field private mRadioButtons:[Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field musicButton:Landroid/view/View;

.field musicFragment:Lcom/autochips/bluetooth/music/module/FragmentMusic;

.field phoneBookButton:Landroid/view/View;

.field recordFragment:Lcom/autochips/bluetooth/fragment/FragmentCallog;

.field rootview:Landroid/view/View;

.field private selectInstructionsIv:Landroid/widget/ImageView;

.field settingButton:Landroid/view/View;

.field settingFragment:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

.field private uiHandler:Lcom/autochips/bluetooth/MainActivity$UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/autochips/bluetooth/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    .line 360
    iput v0, p0, Lcom/autochips/bluetooth/MainActivity;->lastWidthPixels:I

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    .line 454
    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mRadioButtons:[Landroid/view/View;

    .line 517
    new-instance v0, Lcom/autochips/bluetooth/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/MainActivity$2;-><init>(Lcom/autochips/bluetooth/MainActivity;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    .line 606
    new-instance v0, Lcom/autochips/bluetooth/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/MainActivity$3;-><init>(Lcom/autochips/bluetooth/MainActivity;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 708
    new-instance v0, Lcom/autochips/bluetooth/MainActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/MainActivity$4;-><init>(Lcom/autochips/bluetooth/MainActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->contentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/autochips/bluetooth/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/MainActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/autochips/bluetooth/MainActivity;->selectInstructionsIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/MainActivity;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/autochips/bluetooth/MainActivity;->mBackButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/MainActivity;)Lcom/autochips/bluetooth/MainActivity$UIHandler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/autochips/bluetooth/MainActivity;->uiHandler:Lcom/autochips/bluetooth/MainActivity$UIHandler;

    return-object p0
.end method

.method private addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .line 329
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f08011a

    .line 330
    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 331
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 332
    iput-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private checkReDial(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "redial"

    .line 249
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkReDial redialPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 252
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->call(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 254
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method private clearView()V
    .locals 5

    .line 398
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " ==>"

    if-eqz v1, :cond_0

    .line 401
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FragmentPhonebookList --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v3, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FragmentCallPhone --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v3, Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FragmentCallog --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 414
    :cond_2
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v3, Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FragmentSetting --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    const-string v1, "end"

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BTMainActivity"

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->contactFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    .line 426
    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->dialFragment:Lcom/autochips/bluetooth/fragment/FragmentCallPhone;

    .line 427
    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->recordFragment:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    .line 428
    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->settingFragment:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    .line 429
    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->musicFragment:Lcom/autochips/bluetooth/music/module/FragmentMusic;

    .line 430
    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->contactEmptyFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookEmpty;

    return-void
.end method

.method private getLayoutId()I
    .locals 1

    .line 434
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b001e

    return v0

    :cond_1
    const v0, 0x7f0b001d

    return v0

    :cond_2
    :goto_0
    const v0, 0x7f0b001f

    return v0
.end method

.method private initMMIKeyHandler()V
    .locals 4

    .line 468
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 469
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    .line 470
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->dialButton:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 472
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->historyButton:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 473
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->phoneBookButton:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 474
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->musicButton:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 475
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->settingButton:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 476
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->selectInstructionsIv:Landroid/widget/ImageView;

    const v1, 0x7f0700c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->dialButton:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 479
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->phoneBookButton:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 480
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->historyButton:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 481
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->musicButton:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 482
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->settingButton:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method private initMember()V
    .locals 2

    .line 96
    new-instance v0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;

    invoke-direct {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->dialFragment:Lcom/autochips/bluetooth/fragment/FragmentCallPhone;

    .line 97
    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->setMMIKeyHelper(Lcom/carocean/navicar/MMIKeyHelper;)V

    .line 99
    new-instance v0, Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-direct {v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->recordFragment:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    .line 100
    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->setMMIKeyHelper(Lcom/carocean/navicar/MMIKeyHelper;)V

    .line 102
    new-instance v0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    invoke-direct {v0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->contactFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    .line 103
    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->setMMIKeyHelper(Lcom/carocean/navicar/MMIKeyHelper;)V

    .line 105
    new-instance v0, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-direct {v0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->musicFragment:Lcom/autochips/bluetooth/music/module/FragmentMusic;

    .line 106
    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->setMMIKeyHelper(Lcom/carocean/navicar/MMIKeyHelper;)V

    .line 108
    new-instance v0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-direct {v0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->settingFragment:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    .line 109
    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->setMMIKeyHelper(Lcom/carocean/navicar/MMIKeyHelper;)V

    .line 111
    new-instance v0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookEmpty;

    invoke-direct {v0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookEmpty;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->contactEmptyFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookEmpty;

    return-void
.end method

.method private initUI()V
    .locals 4

    const v0, 0x7f0801e9

    .line 157
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->rootview:Landroid/view/View;

    const v0, 0x7f08024c

    .line 158
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->dialButton:Landroid/view/View;

    const v0, 0x7f08024d

    .line 159
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->historyButton:Landroid/view/View;

    const v0, 0x7f08024f

    .line 160
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->phoneBookButton:Landroid/view/View;

    const v0, 0x7f080250

    .line 161
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->settingButton:Landroid/view/View;

    const v0, 0x7f08024e

    .line 162
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->musicButton:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->dialButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->historyButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->phoneBookButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->settingButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->musicButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080058

    .line 168
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mBackButton:Landroid/view/View;

    .line 169
    new-instance v1, Lcom/autochips/bluetooth/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/MainActivity$1;-><init>(Lcom/autochips/bluetooth/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mRadioButtons:[Landroid/view/View;

    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->dialButton:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 180
    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 181
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mRadioButtons:[Landroid/view/View;

    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->phoneBookButton:Landroid/view/View;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 182
    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 183
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mRadioButtons:[Landroid/view/View;

    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->historyButton:Landroid/view/View;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 184
    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 185
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mRadioButtons:[Landroid/view/View;

    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->musicButton:Landroid/view/View;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 186
    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 187
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mRadioButtons:[Landroid/view/View;

    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->settingButton:Landroid/view/View;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 188
    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f080222

    .line 189
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->selectInstructionsIv:Landroid/widget/ImageView;

    return-void
.end method

.method private loadSavedFragment(Landroid/os/Bundle;Z)V
    .locals 3

    .line 115
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    const-string p2, "BTMainActivity"

    const-string v0, "BTFragmentId"

    const/4 v1, -0x1

    if-nez p1, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 117
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1BTFragmentId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x4

    :cond_1
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->goToFragment(I)V

    goto/16 :goto_1

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 133
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2BTFragmentId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_7

    .line 136
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    const-class p2, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->dialButton:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    const-class p2, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    const-class p2, Lcom/autochips/bluetooth/fragment/FragmentPhonebookEmpty;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 142
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    const-class p2, Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 143
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->settingButton:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 146
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->historyButton:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 140
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->phoneBookButton:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 150
    :cond_7
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->goToFragment(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private refreshUIInMultiWindowModeChange()V
    .locals 5

    .line 376
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lifecycle refreshUIInMultiWindowModeChange dm.widthPixels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dm.xdpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    .line 382
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 383
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 384
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->clearView()V

    .line 387
    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->initUI()V

    .line 388
    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->initMMIKeyHandler()V

    .line 389
    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->initMember()V

    const/4 v0, 0x1

    .line 390
    invoke-direct {p0, v2, v0}, Lcom/autochips/bluetooth/MainActivity;->loadSavedFragment(Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "BTMainActivity"

    const-string p2, "replaceFragment: frag == null"

    .line 318
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f08011a

    .line 323
    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 324
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 325
    iput-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private setCheckTabBtn(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_1
    move p1, v0

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_4
    move p1, v1

    :goto_0
    if-ltz p1, :cond_2

    .line 507
    iget-object v2, p0, Lcom/autochips/bluetooth/MainActivity;->mRadioButtons:[Landroid/view/View;

    array-length v2, v2

    if-ge p1, v2, :cond_2

    move v2, v1

    .line 508
    :goto_1
    iget-object v3, p0, Lcom/autochips/bluetooth/MainActivity;->mRadioButtons:[Landroid/view/View;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    if-eq p1, v2, :cond_0

    .line 510
    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 513
    :cond_1
    aget-object p1, v3, p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08024c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 337
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 338
    iput-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private startPhoneBookActivity()V
    .locals 3

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10040000

    .line 310
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    const-class v1, Lcom/autochips/bluetooth/PhoneBookActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateID8Background(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 695
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-class v0, Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0700a4

    goto :goto_0

    :cond_1
    const p1, 0x7f070094

    goto :goto_0

    .line 688
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-class v0, Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0700f3

    goto :goto_0

    :cond_3
    const p1, 0x7f0700e3

    goto :goto_0

    .line 681
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-class v0, Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f0700df

    goto :goto_0

    :cond_5
    const p1, 0x7f0700cf

    .line 702
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->rootview:Landroid/view/View;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 703
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    return-void
.end method

.method private updateID8LeftBtn(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    const v1, 0x7f050022

    const p1, 0x7f07009f

    goto :goto_0

    :cond_1
    const v1, 0x7f050026

    const p1, 0x7f0700ee

    goto :goto_0

    :cond_2
    const v1, 0x7f050024

    const p1, 0x7f0700db

    :goto_0
    move v3, v1

    move v1, p1

    move p1, v3

    .line 651
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->dialButton:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 652
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 653
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->dialButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 656
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->historyButton:Landroid/view/View;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 657
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 658
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->historyButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 661
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->phoneBookButton:Landroid/view/View;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 662
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 663
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->phoneBookButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 666
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->musicButton:Landroid/view/View;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 667
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 668
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->musicButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 671
    :cond_6
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->settingButton:Landroid/view/View;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 672
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 673
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity;->settingButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 459
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

    const-string v1, "BTMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 463
    :cond_0
    invoke-super {p0, p1}, Lcom/autochips/bluetooth/BaseFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public goToFragment(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f080250

    .line 236
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_1
    const p1, 0x7f08024e

    .line 232
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_2
    const p1, 0x7f08024d

    .line 228
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_3
    const p1, 0x7f08024f

    .line 224
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_4
    const p1, 0x7f08024c

    .line 220
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->setCheckTabBtn(I)V

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v2, "BTMainActivity"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "onClick FragmentSetting"

    .line 293
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-class v0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    .line 295
    iget-object v2, p0, Lcom/autochips/bluetooth/MainActivity;->settingFragment:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-direct {p0, v2, v0}, Lcom/autochips/bluetooth/MainActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "onClick FragmentPhonebookList"

    .line 277
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const-class v0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookEmpty;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    .line 280
    iget-object v2, p0, Lcom/autochips/bluetooth/MainActivity;->contactEmptyFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookEmpty;

    invoke-direct {p0, v2, v0}, Lcom/autochips/bluetooth/MainActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->startPhoneBookActivity()V

    goto :goto_0

    .line 283
    :cond_1
    const-class v0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/autochips/bluetooth/MainActivity;->contactFragment:Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;

    invoke-direct {p0, v2, v0}, Lcom/autochips/bluetooth/MainActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "onClick FragmentMusic"

    .line 288
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-class v0, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    .line 290
    iget-object v2, p0, Lcom/autochips/bluetooth/MainActivity;->musicFragment:Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-direct {p0, v2, v0}, Lcom/autochips/bluetooth/MainActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "onClick FragmentCallog"

    .line 272
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-class v0, Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    .line 274
    iget-object v2, p0, Lcom/autochips/bluetooth/MainActivity;->recordFragment:Lcom/autochips/bluetooth/fragment/FragmentCallog;

    invoke-direct {p0, v2, v0}, Lcom/autochips/bluetooth/MainActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "onClick FragmentCallPhone"

    .line 267
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-class v0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->currentItem:Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/autochips/bluetooth/MainActivity;->dialFragment:Lcom/autochips/bluetooth/fragment/FragmentCallPhone;

    invoke-direct {p0, v2, v0}, Lcom/autochips/bluetooth/MainActivity;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-eqz v0, :cond_3

    .line 300
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mRadioButtons:[Landroid/view/View;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/MainActivity;->mRadioButtons:[Landroid/view/View;

    aget-object v2, v2, v1

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->setViewMode(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setViewMode(Landroid/view/View;I)V

    .line 305
    :cond_3
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_THEME"

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->updateID8Background(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08024c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 363
    invoke-super {p0, p1}, Lcom/autochips/bluetooth/BaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 364
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lifecycle onConfigurationChanged dm.widthPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastWidthPixels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/MainActivity;->lastWidthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dm.xdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isInMulti:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMainActivity"

    .line 365
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget v0, p0, Lcom/autochips/bluetooth/MainActivity;->lastWidthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v1, :cond_0

    return-void

    .line 371
    :cond_0
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/autochips/bluetooth/MainActivity;->lastWidthPixels:I

    .line 372
    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->refreshUIInMultiWindowModeChange()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/autochips/bluetooth/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/high16 v1, 0xc000000

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 68
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 71
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const/high16 v1, 0x4000000

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x8000000

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    const-string v0, "BTMainActivity"

    const-string v2, "onCreate: "

    .line 76
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->setContentView(I)V

    .line 78
    new-instance v0, Lcom/autochips/bluetooth/MainActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/MainActivity$UIHandler;-><init>(Lcom/autochips/bluetooth/MainActivity;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->uiHandler:Lcom/autochips/bluetooth/MainActivity$UIHandler;

    .line 79
    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->initUI()V

    .line 80
    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->initMMIKeyHandler()V

    .line 81
    invoke-direct {p0}, Lcom/autochips/bluetooth/MainActivity;->initMember()V

    .line 82
    invoke-direct {p0, p1, v1}, Lcom/autochips/bluetooth/MainActivity;->loadSavedFragment(Landroid/os/Bundle;Z)V

    .line 83
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->checkReDial(Landroid/content/Intent;)V

    .line 85
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.carocean.action.ACTION_QUIT_APK"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/autochips/bluetooth/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_THEME"

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->updateID8Theme(I)V

    .line 91
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/sys/SYS_THEME"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 444
    invoke-super {p0}, Lcom/autochips/bluetooth/BaseFragmentActivity;->onDestroy()V

    const-string v0, "BTMainActivity"

    const-string v1, "onDestroy: "

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0}, Lcom/carocean/navicar/MMIKeyHelper;->clear()V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 449
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 355
    invoke-super {p0, p1, p2}, Lcom/autochips/bluetooth/BaseFragmentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lifecycle onMultiWindowModeChanged isInMultiWindowMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",newConfig:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BTMainActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 194
    invoke-super {p0, p1}, Lcom/autochips/bluetooth/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->checkReDial(Landroid/content/Intent;)V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    const-string v1, "BTFragmentId"

    .line 197
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3BTFragmentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTMainActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v1, "close"

    const/4 v3, 0x0

    .line 200
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const-string p1, "onNewIntent close"

    .line 201
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0, v4}, Lcom/autochips/bluetooth/MainActivity;->moveTaskToBack(Z)Z

    .line 203
    invoke-virtual {p0}, Lcom/autochips/bluetooth/MainActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v1, "background"

    .line 204
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onNewIntent start background"

    .line 205
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, v4}, Lcom/autochips/bluetooth/MainActivity;->moveTaskToBack(Z)Z

    .line 209
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_goto_music_default

    const/4 v0, 0x4

    :cond_goto_music_default
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/MainActivity;->goToFragment(I)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 343
    invoke-super {p0}, Lcom/autochips/bluetooth/BaseFragmentActivity;->onResume()V

    const-string v0, "BTMainActivity"

    const-string v1, "check is calling to open CallActivity"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "check is calling to open CallActivity = true"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-class v0, Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/GlobalApplication;->startCallActivity()V

    :cond_0
    return-void
.end method

.method public updateID8Theme(I)V
    .locals 2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateID8Theme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->updateID8Background(I)V

    .line 625
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/MainActivity;->updateID8LeftBtn(I)V

    .line 627
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/carocean/navicar/BmwID8ThemeChanged;

    if-eqz v1, :cond_1

    .line 628
    check-cast v0, Lcom/carocean/navicar/BmwID8ThemeChanged;

    .line 629
    invoke-interface {v0, p1}, Lcom/carocean/navicar/BmwID8ThemeChanged;->updateID8Theme(I)V

    :cond_1
    return-void
.end method
