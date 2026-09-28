.class public Lcom/android/launcher2/PagedViewIconCache;
.super Ljava/lang/Object;
.source "PagedViewIconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewIconCache$Key;
    }
.end annotation


# instance fields
.field private final mIconOutlineCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher2/PagedViewIconCache$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    return-void
.end method

.method private retainAll(Ljava/util/HashSet;Lcom/android/launcher2/PagedViewIconCache$Key$Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher2/PagedViewIconCache$Key;",
            ">;",
            "Lcom/android/launcher2/PagedViewIconCache$Key$Type;",
            ")V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 89
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewIconCache$Key;

    .line 91
    invoke-virtual {v0, p2}, Lcom/android/launcher2/PagedViewIconCache$Key;->isKeyType(Lcom/android/launcher2/PagedViewIconCache$Key$Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    iget-object v1, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addOutline(Lcom/android/launcher2/PagedViewIconCache$Key;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewIconCache$Key;

    .line 83
    iget-object v2, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getOutline(Lcom/android/launcher2/PagedViewIconCache$Key;)Landroid/graphics/Bitmap;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public removeOutline(Lcom/android/launcher2/PagedViewIconCache$Key;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    iget-object p0, p0, Lcom/android/launcher2/PagedViewIconCache;->mIconOutlineCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public retainAllAppWidgets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 117
    new-instance v2, Lcom/android/launcher2/PagedViewIconCache$Key;

    invoke-direct {v2, v1}, Lcom/android/launcher2/PagedViewIconCache$Key;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    sget-object p1, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->AppWidgetProviderInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/PagedViewIconCache;->retainAll(Ljava/util/HashSet;Lcom/android/launcher2/PagedViewIconCache$Key$Type;)V

    return-void
.end method

.method public retainAllApps(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 101
    new-instance v2, Lcom/android/launcher2/PagedViewIconCache$Key;

    invoke-direct {v2, v1}, Lcom/android/launcher2/PagedViewIconCache$Key;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    sget-object p1, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->ApplicationInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/PagedViewIconCache;->retainAll(Ljava/util/HashSet;Lcom/android/launcher2/PagedViewIconCache$Key$Type;)V

    return-void
.end method

.method public retainAllShortcuts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 109
    new-instance v2, Lcom/android/launcher2/PagedViewIconCache$Key;

    invoke-direct {v2, v1}, Lcom/android/launcher2/PagedViewIconCache$Key;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    sget-object p1, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->ResolveInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/PagedViewIconCache;->retainAll(Ljava/util/HashSet;Lcom/android/launcher2/PagedViewIconCache$Key$Type;)V

    return-void
.end method
