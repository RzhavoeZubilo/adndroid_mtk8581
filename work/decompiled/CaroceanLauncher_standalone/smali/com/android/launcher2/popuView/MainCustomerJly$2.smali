.class Lcom/android/launcher2/popuView/MainCustomerJly$2;
.super Ljava/lang/Object;
.source "MainCustomerJly.java"

# interfaces
.implements Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomerJly;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/MainCustomerJly;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$2;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarFlagChanged(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$2;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomerJly;->mCarIcons:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 885
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$2;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->updateCarIcon(I)V

    :cond_1
    :goto_0
    return-void
.end method
