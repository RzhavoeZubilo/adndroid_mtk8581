.class Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$2;
.super Ljava/lang/Object;
.source "MainCustomerJly.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1143
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    const v1, 0x7f080092

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->setSelectView(IZZ)V

    .line 1144
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object v1, v1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->getPageCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->setPageIndex(II)V

    .line 1145
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object v1, v1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1100(Lcom/android/launcher2/popuView/MainCustomerJly;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1200(Lcom/android/launcher2/popuView/MainCustomerJly;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1300(Lcom/android/launcher2/popuView/MainCustomerJly;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
