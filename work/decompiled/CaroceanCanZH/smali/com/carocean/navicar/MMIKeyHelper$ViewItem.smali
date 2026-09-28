.class public Lcom/carocean/navicar/MMIKeyHelper$ViewItem;
.super Ljava/lang/Object;
.source "MMIKeyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/MMIKeyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewItem"
.end annotation


# instance fields
.field mFocused:Z

.field mMode:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/carocean/navicar/MMIKeyHelper;


# direct methods
.method public constructor <init>(Lcom/carocean/navicar/MMIKeyHelper;Landroid/view/View;I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->this$0:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mView:Landroid/view/View;

    .line 63
    iput p3, p0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mMode:I

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/carocean/navicar/MMIKeyHelper$ViewItem;->mFocused:Z

    return-void
.end method
