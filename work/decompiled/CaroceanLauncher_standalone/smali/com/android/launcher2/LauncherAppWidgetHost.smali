.class public Lcom/android/launcher2/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# instance fields
.field mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lcom/android/launcher2/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    .line 40
    new-instance p0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method protected onProvidersChanged()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/launcher2/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->bindPackagesUpdated()V

    return-void
.end method

.method public stopListening()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHost;->clearViews()V

    return-void
.end method
