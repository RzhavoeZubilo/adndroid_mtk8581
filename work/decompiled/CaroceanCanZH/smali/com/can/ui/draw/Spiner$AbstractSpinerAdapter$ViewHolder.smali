.class public Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "Spiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;


# direct methods
.method public constructor <init>(Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter$ViewHolder;->this$1:Lcom/can/ui/draw/Spiner$AbstractSpinerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
