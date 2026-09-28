.class public Lcom/android/launcher2/UserInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserInitializeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/UserInitializeReceiver$onBootCompleteListener;
    }
.end annotation


# static fields
.field private static final BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final initUser:Ljava/lang/String; = "android.intent.action.USER_INITIALIZE"

.field public static mListener:Lcom/android/launcher2/UserInitializeReceiver$onBootCompleteListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 77
    array-length p3, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p0, v0

    const-string v2, "drawable"

    .line 78
    invoke-virtual {p1, v1, v2, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setCompleteListener(Lcom/android/launcher2/UserInitializeReceiver$onBootCompleteListener;)V
    .locals 0

    .line 89
    sput-object p0, Lcom/android/launcher2/UserInitializeReceiver;->mListener:Lcom/android/launcher2/UserInitializeReceiver$onBootCompleteListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object p0, Lcom/android/launcher2/UserInitializeReceiver;->mListener:Lcom/android/launcher2/UserInitializeReceiver$onBootCompleteListener;

    if-eqz p0, :cond_2

    .line 43
    invoke-interface {p0}, Lcom/android/launcher2/UserInitializeReceiver$onBootCompleteListener;->onCompleteListener()V

    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_INITIALIZE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f020007

    .line 52
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-direct {p0, p2, v1, v0, v2}, Lcom/android/launcher2/UserInitializeReceiver;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;ILjava/util/ArrayList;)V

    const/high16 v0, 0x7f020000

    .line 55
    invoke-direct {p0, p2, v1, v0, v2}, Lcom/android/launcher2/UserInitializeReceiver;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;ILjava/util/ArrayList;)V

    const-string p0, "wallpaper"

    .line 56
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    const/4 p1, 0x1

    .line 58
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 59
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 60
    invoke-virtual {p0, p2}, Landroid/app/WallpaperManager;->hasResourceWallpaper(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
