.class public Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetAndShortcutNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 2838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2839
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2840
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    .line 2841
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 2845
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2846
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    .line 2848
    :cond_0
    instance-of v0, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2850
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2851
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 2853
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2854
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_3

    .line 2856
    :cond_2
    instance-of v0, p2, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v0, p2

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2858
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2859
    :goto_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v0

    .line 2861
    :goto_3
    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
