.class Lcom/android/launcher2/popuView/ID8AddViewDialog$1;
.super Ljava/lang/Object;
.source "ID8AddViewDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/ID8AddViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/ID8AddViewDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$1;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

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

    .line 55
    iget-object p1, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$1;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p1}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$100(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$1;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p1}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$100(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$1;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p2}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$200(Lcom/android/launcher2/popuView/ID8AddViewDialog;)I

    move-result p2

    iget-object p4, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$1;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-static {p4}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->access$300(Lcom/android/launcher2/popuView/ID8AddViewDialog;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher2/ApplicationInfo;

    invoke-interface {p1, p2, p3}, Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;->onAppSelectedChanged(ILcom/android/launcher2/ApplicationInfo;)V

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/ID8AddViewDialog$1;->this$0:Lcom/android/launcher2/popuView/ID8AddViewDialog;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->dismiss()V

    return-void
.end method
