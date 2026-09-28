.class Lcom/android/launcher2/popuView/AboutDialog$1;
.super Ljava/lang/Object;
.source "AboutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/AboutDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/AboutDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/AboutDialog;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/android/launcher2/popuView/AboutDialog$1;->this$0:Lcom/android/launcher2/popuView/AboutDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string p1, "&&&&&&&&&onClick&&&&&&&&&&"

    .line 34
    invoke-static {p1}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/launcher2/popuView/AboutDialog$1;->this$0:Lcom/android/launcher2/popuView/AboutDialog;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AboutDialog;->dismiss()V

    return-void
.end method
