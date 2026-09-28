.class Lcom/autochips/bluetooth/fragment/VolumeBar$1;
.super Ljava/lang/Object;
.source "VolumeBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/VolumeBar;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/VolumeBar;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$1;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 178
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$1;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$000(Lcom/autochips/bluetooth/fragment/VolumeBar;)V

    .line 179
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$1;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$202(Lcom/autochips/bluetooth/fragment/VolumeBar;I)I

    .line 180
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$1;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    iget-object p1, p1, Lcom/autochips/bluetooth/fragment/VolumeBar;->mTitle:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$1;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$300(Lcom/autochips/bluetooth/fragment/VolumeBar;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$1;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$100(Lcom/autochips/bluetooth/fragment/VolumeBar;)Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$1;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$000(Lcom/autochips/bluetooth/fragment/VolumeBar;)V

    return-void
.end method
