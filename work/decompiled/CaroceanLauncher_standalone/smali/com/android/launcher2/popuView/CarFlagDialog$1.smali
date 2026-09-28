.class Lcom/android/launcher2/popuView/CarFlagDialog$1;
.super Ljava/lang/Object;
.source "CarFlagDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/CarFlagDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/CarFlagDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/CarFlagDialog;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/launcher2/popuView/CarFlagDialog$1;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 50
    iget-object p1, p0, Lcom/android/launcher2/popuView/CarFlagDialog$1;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {p1}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$100(Lcom/android/launcher2/popuView/CarFlagDialog;)Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/android/launcher2/popuView/CarFlagDialog$1;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-static {p1}, Lcom/android/launcher2/popuView/CarFlagDialog;->access$100(Lcom/android/launcher2/popuView/CarFlagDialog;)Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;->onCarFlagChanged(I)V

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/CarFlagDialog$1;->this$0:Lcom/android/launcher2/popuView/CarFlagDialog;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CarFlagDialog;->dismiss()V

    return-void
.end method
