.class Lcom/can/ui/CanPopWind$Inquiry;
.super Ljava/lang/Object;
.source "CanPopWind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CanPopWind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Inquiry"
.end annotation


# instance fields
.field private aRunnable:Ljava/lang/Runnable;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/can/ui/CanPopWind;


# direct methods
.method public constructor <init>(Lcom/can/ui/CanPopWind;Landroid/os/Handler;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/can/ui/CanPopWind$Inquiry;->this$0:Lcom/can/ui/CanPopWind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 970
    iput-object p1, p0, Lcom/can/ui/CanPopWind$Inquiry;->mHandler:Landroid/os/Handler;

    .line 971
    iput-object p1, p0, Lcom/can/ui/CanPopWind$Inquiry;->mArrayList:Ljava/util/ArrayList;

    .line 986
    new-instance p1, Lcom/can/ui/CanPopWind$Inquiry$1;

    invoke-direct {p1, p0}, Lcom/can/ui/CanPopWind$Inquiry$1;-><init>(Lcom/can/ui/CanPopWind$Inquiry;)V

    iput-object p1, p0, Lcom/can/ui/CanPopWind$Inquiry;->aRunnable:Ljava/lang/Runnable;

    .line 975
    iput-object p2, p0, Lcom/can/ui/CanPopWind$Inquiry;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/can/ui/CanPopWind$Inquiry;)Ljava/lang/Runnable;
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/can/ui/CanPopWind$Inquiry;->aRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/can/ui/CanPopWind$Inquiry;)Landroid/os/Handler;
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/can/ui/CanPopWind$Inquiry;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/can/ui/CanPopWind$Inquiry;)Ljava/util/ArrayList;
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/can/ui/CanPopWind$Inquiry;->mArrayList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public setInquiryInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    .line 979
    iput-object p1, p0, Lcom/can/ui/CanPopWind$Inquiry;->mArrayList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 982
    iget-object p1, p0, Lcom/can/ui/CanPopWind$Inquiry;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/can/ui/CanPopWind$Inquiry;->aRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
