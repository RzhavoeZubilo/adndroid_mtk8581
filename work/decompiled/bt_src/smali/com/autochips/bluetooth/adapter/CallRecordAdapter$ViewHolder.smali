.class public final Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CallRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/adapter/CallRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public del:Landroid/widget/ImageButton;

.field public image:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public phone:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

.field public time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/adapter/CallRecordAdapter;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->this$0:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
