.class Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;
.super Ljava/lang/Object;
.source "MainCustomer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)V
    .locals 0

    .line 1672
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1677
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    const v1, 0x7f080075

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->setSelectView(IZZ)V

    .line 1678
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object v1, v1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v1}, Lcom/android/launcher2/popuView/MainCustomer;->getPageCount()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/popuView/MainCustomer;->setPageIndex(II)V

    .line 1679
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object v1, v1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomer;->access$2000(Lcom/android/launcher2/popuView/MainCustomer;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object v3, v3, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {v3}, Lcom/android/launcher2/popuView/MainCustomer;->access$2100(Lcom/android/launcher2/popuView/MainCustomer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/launcher2/popuView/MainCustomer;->access$2200(Lcom/android/launcher2/popuView/MainCustomer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v3, "SYS_THEME"

    invoke-static {v1, v0, v3, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1682
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8Theme(I)V

    :cond_0
    return-void
.end method
