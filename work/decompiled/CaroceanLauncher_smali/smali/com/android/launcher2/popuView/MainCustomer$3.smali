.class Lcom/android/launcher2/popuView/MainCustomer$3;
.super Ljava/lang/Object;
.source "MainCustomer.java"

# interfaces
.implements Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomer;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/MainCustomer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$3;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppSelectedChanged(ILcom/android/launcher2/ApplicationInfo;)V
    .locals 1

    const v0, 0x7f080056

    if-ne v0, p1, :cond_0

    .line 705
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$3;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1100(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "id8.page.add.componentname"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 706
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$3;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->access$1200(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)V

    :cond_0
    return-void
.end method
