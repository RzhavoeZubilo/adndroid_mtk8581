.class public Lcom/android/launcher2/PagedViewIconCache$Key;
.super Ljava/lang/Object;
.source "PagedViewIconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedViewIconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewIconCache$Key$Type;
    }
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mType:Lcom/android/launcher2/PagedViewIconCache$Key$Type;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/launcher2/PagedViewIconCache$Key;->mComponentName:Landroid/content/ComponentName;

    .line 55
    sget-object p1, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->AppWidgetProviderInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    iput-object p1, p0, Lcom/android/launcher2/PagedViewIconCache$Key;->mType:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 50
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIconCache$Key;->mComponentName:Landroid/content/ComponentName;

    .line 51
    sget-object p1, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->ResolveInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    iput-object p1, p0, Lcom/android/launcher2/PagedViewIconCache$Key;->mType:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object p1, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/launcher2/PagedViewIconCache$Key;->mComponentName:Landroid/content/ComponentName;

    .line 45
    sget-object p1, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->ApplicationInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    iput-object p1, p0, Lcom/android/launcher2/PagedViewIconCache$Key;->mType:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    return-void
.end method

.method private getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/launcher2/PagedViewIconCache$Key;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 67
    instance-of v0, p1, Lcom/android/launcher2/PagedViewIconCache$Key;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/android/launcher2/PagedViewIconCache$Key;

    .line 69
    iget-object p0, p0, Lcom/android/launcher2/PagedViewIconCache$Key;->mComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/launcher2/PagedViewIconCache$Key;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 71
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewIconCache$Key;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    move-result p0

    return p0
.end method

.method public isKeyType(Lcom/android/launcher2/PagedViewIconCache$Key$Type;)Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/launcher2/PagedViewIconCache$Key;->mType:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
