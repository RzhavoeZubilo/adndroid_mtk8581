.class final Lcom/can/parser/DDef$AirInfo$1;
.super Ljava/lang/Object;
.source "DDef.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef$AirInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/can/parser/DDef$AirInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/can/parser/DDef$AirInfo;
    .locals 1

    .line 842
    new-instance p0, Lcom/can/parser/DDef$AirInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/can/parser/DDef$AirInfo;-><init>(Landroid/os/Parcel;Lcom/can/parser/DDef$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 837
    invoke-virtual {p0, p1}, Lcom/can/parser/DDef$AirInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/can/parser/DDef$AirInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/can/parser/DDef$AirInfo;
    .locals 0

    .line 848
    new-array p0, p1, [Lcom/can/parser/DDef$AirInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 837
    invoke-virtual {p0, p1}, Lcom/can/parser/DDef$AirInfo$1;->newArray(I)[Lcom/can/parser/DDef$AirInfo;

    move-result-object p0

    return-object p0
.end method
