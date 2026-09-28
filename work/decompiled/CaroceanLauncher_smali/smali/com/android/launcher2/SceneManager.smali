.class public Lcom/android/launcher2/SceneManager;
.super Ljava/lang/Object;
.source "SceneManager.java"


# static fields
.field public static final DEFAULT_ICON_SCALE:Ljava/lang/String; = "1.0"

.field public static final DEFAULT_INNER_ICON_SCALE:Ljava/lang/String; = "1.0"

.field public static final DEFAULT_SCENE:Ljava/lang/String;

.field public static final DEFAULT_SCENE_POS:I

.field public static final DEFAULT_WALLPAPER:Ljava/lang/String; = "default_wallpaper"

.field public static final DEFAULT_WORKSPACE_RES_ID:I = 0x7f0f0002

.field public static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field public static final TAG_SCALE:Ljava/lang/String; = "scale"

.field public static final TAG_SCENE:Ljava/lang/String; = "scene"

.field public static final TAG_SCENES:Ljava/lang/String; = "scenes"

.field public static final TAG_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final mSceneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/SceneInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.custom.scene"

    const-string v1, "default"

    .line 31
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/SceneManager;->DEFAULT_SCENE:Ljava/lang/String;

    const-string v0, "ro.custom.scenepos"

    const-string v1, "0"

    .line 37
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher2/SceneManager;->DEFAULT_SCENE_POS:I

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/SceneManager;->mSceneMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSceneInfo(Ljava/lang/String;Lcom/android/launcher2/SceneInfo;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 47
    sget-object v0, Lcom/android/launcher2/SceneManager;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1

    .line 42
    sget-object v0, Lcom/android/launcher2/SceneManager;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getDefaultWorkspaceResId(Landroid/content/Context;)I
    .locals 1

    .line 81
    sget-object v0, Lcom/android/launcher2/SceneManager;->DEFAULT_SCENE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/launcher2/SceneManager;->getWorkspaceResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getNewCurrentSceneInfo(Landroid/content/Context;)Lcom/android/launcher2/SceneInfo;
    .locals 1

    .line 67
    invoke-static {}, Lcom/android/launcher2/Launcher;->getCurrentScene()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {p0, v0}, Lcom/android/launcher2/SceneManager;->getNewSceneInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher2/SceneInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getNewSceneInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher2/SceneInfo;
    .locals 1

    .line 59
    invoke-static {p0}, Lcom/android/launcher2/SceneManager;->loadSceneInfo(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const-string p0, ""

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/launcher2/SceneManager;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/SceneInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/SceneInfo;->clone()Lcom/android/launcher2/SceneInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRealIntegerValue(II)I
    .locals 0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method private static getRealValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method public static getSceneInfo(Ljava/lang/String;)Lcom/android/launcher2/SceneInfo;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/SceneManager;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/SceneInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getWorkspaceResId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/android/launcher2/SceneManager;->loadSceneInfo(Landroid/content/Context;)V

    .line 73
    invoke-static {p1}, Lcom/android/launcher2/SceneManager;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 74
    sget-object p0, Lcom/android/launcher2/SceneManager;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/SceneInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/SceneInfo;->getWorkspaceResId()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f0f0002

    return p0
.end method

.method public static loadSceneInfo(Landroid/content/Context;)V
    .locals 11

    const-string v0, "1.0"

    .line 84
    sget-object v1, Lcom/android/launcher2/SceneManager;->mSceneMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const-string v3, "scenes"

    .line 91
    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 93
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 98
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_4

    :cond_1
    const/4 v7, 0x1

    if-eq v5, v7, :cond_4

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    goto :goto_0

    .line 105
    :cond_2
    new-instance v5, Lcom/android/launcher2/SceneInfo;

    invoke-direct {v5}, Lcom/android/launcher2/SceneInfo;-><init>()V

    .line 106
    sget-object v8, Lcom/yecon/launcher1/R$styleable;->Scene:[I

    invoke-virtual {p0, v2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v9, -0x1

    .line 108
    invoke-virtual {v8, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/android/launcher2/SceneManager;->DEFAULT_SCENE:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/android/launcher2/SceneManager;->getRealValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 113
    :cond_3
    sget-object v6, Lcom/android/launcher2/SceneManager;->DEFAULT_SCENE:Ljava/lang/String;

    .line 116
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/launcher2/SceneInfo;->setScene(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 118
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/android/launcher2/SceneManager;->getRealValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 119
    invoke-virtual {v5, v10}, Lcom/android/launcher2/SceneInfo;->setIconScale(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/launcher2/SceneManager;->getRealValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual {v5, v7}, Lcom/android/launcher2/SceneInfo;->setInnerIconScale(Ljava/lang/String;)V

    const/4 v7, 0x7

    .line 124
    invoke-virtual {v8, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const v9, 0x7f0f0002

    invoke-static {v7, v9}, Lcom/android/launcher2/SceneManager;->getRealIntegerValue(II)I

    move-result v7

    .line 125
    invoke-virtual {v5, v7}, Lcom/android/launcher2/SceneInfo;->setWorkspaceResId(I)V

    .line 127
    invoke-static {v6, v5}, Lcom/android/launcher2/SceneManager;->addSceneInfo(Ljava/lang/String;Lcom/android/launcher2/SceneInfo;)V

    .line 129
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    return-void
.end method
