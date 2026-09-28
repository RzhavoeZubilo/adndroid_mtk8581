.class Lcom/android/launcher2/popuView/TouchCheckFrameLayout$1;
.super Ljava/lang/Object;
.source "TouchCheckFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/TouchCheckFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/TouchCheckFrameLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/TouchCheckFrameLayout;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout$1;->this$0:Lcom/android/launcher2/popuView/TouchCheckFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout$1;->this$0:Lcom/android/launcher2/popuView/TouchCheckFrameLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->sendFiveHandMessage()V

    return-void
.end method
