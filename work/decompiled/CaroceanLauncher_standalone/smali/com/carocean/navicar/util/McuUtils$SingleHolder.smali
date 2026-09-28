.class Lcom/carocean/navicar/util/McuUtils$SingleHolder;
.super Ljava/lang/Object;
.source "McuUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/util/McuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field public static final mInstance:Lcom/carocean/navicar/util/McuUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/carocean/navicar/util/McuUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/carocean/navicar/util/McuUtils;-><init>(Lcom/carocean/navicar/util/McuUtils$1;)V

    sput-object v0, Lcom/carocean/navicar/util/McuUtils$SingleHolder;->mInstance:Lcom/carocean/navicar/util/McuUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
