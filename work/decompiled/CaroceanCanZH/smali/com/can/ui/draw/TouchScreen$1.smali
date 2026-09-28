.class Lcom/can/ui/draw/TouchScreen$1;
.super Ljava/lang/Object;
.source "TouchScreen.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/TouchScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/TouchScreen;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/TouchScreen;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/can/ui/draw/TouchScreen$1;->this$0:Lcom/can/ui/draw/TouchScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0

    return-void
.end method
