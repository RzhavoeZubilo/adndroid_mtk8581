.class Lcom/android/launcher2/Launcher$41$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$41;->onReceive(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$41;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$41;)V
    .locals 0

    .line 6043
    iput-object p1, p0, Lcom/android/launcher2/Launcher$41$1;->this$1:Lcom/android/launcher2/Launcher$41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6046
    sget v0, Lcom/android/launcher2/LauncherApplication;->mTotalMemMb:I

    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    .line 6047
    iget-object p0, p0, Lcom/android/launcher2/Launcher$41$1;->this$1:Lcom/android/launcher2/Launcher$41;

    iget-object p0, p0, Lcom/android/launcher2/Launcher$41;->this$0:Lcom/android/launcher2/Launcher;

    const-string v0, "com.android.chrome"

    invoke-static {p0, v0}, Lcom/android/launcher2/killApps;->killOneProcess(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
