.class Lcom/android/launcher2/popuView/MainCustomer$4;
.super Ljava/lang/Object;
.source "MainCustomer.java"

# interfaces
.implements Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomer;->onLongClick(Landroid/view/View;)Z
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

    .line 966
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$4;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarFlagChanged(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 969
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer$4;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer;->mCarFlagId:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.car.flag.index"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$4;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->updateMainPageBmwCar(I)V

    :cond_1
    :goto_0
    return-void
.end method
