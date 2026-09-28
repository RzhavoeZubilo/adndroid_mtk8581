.class Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$2;
.super Ljava/lang/Object;
.source "MainCustomer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)V
    .locals 0

    .line 2385
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2390
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter$2;->this$1:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$200(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    move-result-object p0

    const v0, 0x7f080075

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->setSelectView(IZZ)V

    return-void
.end method
