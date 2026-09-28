.class Lcom/android/launcher2/Launcher$35;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$cling:Lcom/android/launcher2/Cling;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;)V
    .locals 0

    .line 5369
    iput-object p1, p0, Lcom/android/launcher2/Launcher$35;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$35;->val$cling:Lcom/android/launcher2/Cling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5371
    iget-object v0, p0, Lcom/android/launcher2/Launcher$35;->val$cling:Lcom/android/launcher2/Cling;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Cling;->setFocusable(Z)V

    .line 5372
    iget-object p0, p0, Lcom/android/launcher2/Launcher$35;->val$cling:Lcom/android/launcher2/Cling;

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->requestFocus()Z

    return-void
.end method
