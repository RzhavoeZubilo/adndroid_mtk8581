.class public Lcom/carocean/navicar/Navi$Status$SystemParamEQ;
.super Ljava/lang/Object;
.source "Navi.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/Navi$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemParamEQ"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f097fbcf62b5e7L


# instance fields
.field public eq_fc:[I

.field public eq_q:[I

.field public surround_type:I

.field public surround_value:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 1187
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamEQ;->eq_fc:[I

    new-array v0, v0, [I

    .line 1188
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamEQ;->eq_q:[I

    const/4 v0, 0x0

    .line 1197
    iput v0, p0, Lcom/carocean/navicar/Navi$Status$SystemParamEQ;->surround_type:I

    const/4 v1, 0x6

    new-array v1, v1, [[I

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 1198
    fill-array-data v3, :array_2

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x2

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/carocean/navicar/Navi$Status$SystemParamEQ;->surround_value:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_3
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_4
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_5
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_7
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data
.end method
