.class public Lcom/android/launcher2/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static final DEFAULT_THEME:I = 0x0

.field private static final LOCAL_THEME:Ljava/lang/String; = "LOCAL_THEME"

.field public static final PERSIST_SYS_UI_THEME:Ljava/lang/String; = "persist.sys.ui_theme"

.field private static theme:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTheme()I
    .locals 1

    .line 56
    sget v0, Lcom/android/launcher2/ThemeManager;->theme:I

    return v0
.end method

.method public static initTeme(Landroid/app/Activity;)Z
    .locals 8

    const-string v0, "persist.sys.ui_changed"

    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "persist.sys.ui_theme"

    const/4 v4, 0x0

    .line 23
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/launcher2/ThemeManager;->theme:I

    const-string v3, "yeconhome"

    .line 36
    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "LOCAL_THEME"

    const/4 v6, -0x1

    .line 37
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 38
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 39
    sget v7, Lcom/android/launcher2/ThemeManager;->theme:I

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    sget v3, Lcom/android/launcher2/ThemeManager;->theme:I

    if-ne v6, v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    :try_start_0
    const-string v3, "wallpaper"

    .line 45
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    const v3, 0x7f070368

    .line 46
    invoke-virtual {p0, v3}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const-string p0, "0"

    .line 51
    # invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    sget p0, Lcom/android/launcher2/ThemeManager;->theme:I

    if-ne v6, p0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :cond_3
    :goto_1
    return v1
.end method
