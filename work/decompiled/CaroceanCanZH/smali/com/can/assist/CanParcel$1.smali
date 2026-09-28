.class final Lcom/can/assist/CanParcel$1;
.super Ljava/lang/Object;
.source "CanParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/can/assist/CanParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/can/assist/CanParcel;
    .locals 0

    .line 51
    new-instance p0, Lcom/can/assist/CanParcel;

    invoke-direct {p0, p1}, Lcom/can/assist/CanParcel;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/can/assist/CanParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/can/assist/CanParcel;
    .locals 0

    .line 57
    new-array p0, p1, [Lcom/can/assist/CanParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/can/assist/CanParcel$1;->newArray(I)[Lcom/can/assist/CanParcel;

    move-result-object p0

    return-object p0
.end method
