.class public Lcom/can/parser/DDef$PsaWarnInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PsaWarnInfo"
.end annotation


# instance fields
.field public mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWarnInfo:[I

.field public mWarnInfoTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/can/parser/DDef$PsaWarnInfo;->mArrayList:Ljava/util/ArrayList;

    return-void
.end method
