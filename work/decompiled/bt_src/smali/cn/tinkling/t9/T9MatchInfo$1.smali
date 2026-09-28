.class final Lcn/tinkling/t9/T9MatchInfo$1;
.super Ljava/lang/Object;
.source "T9MatchInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/tinkling/t9/T9MatchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/tinkling/t9/T9MatchInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/tinkling/t9/T9MatchInfo;
    .locals 1

    .line 20
    new-instance v0, Lcn/tinkling/t9/T9MatchInfo;

    invoke-direct {v0, p1}, Lcn/tinkling/t9/T9MatchInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcn/tinkling/t9/T9MatchInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcn/tinkling/t9/T9MatchInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/tinkling/t9/T9MatchInfo;
    .locals 0

    .line 24
    new-array p1, p1, [Lcn/tinkling/t9/T9MatchInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcn/tinkling/t9/T9MatchInfo$1;->newArray(I)[Lcn/tinkling/t9/T9MatchInfo;

    move-result-object p1

    return-object p1
.end method
