.class public final Lcn/tinkling/t9/T9MatchInfo;
.super Ljava/lang/Object;
.source "T9MatchInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/tinkling/t9/T9MatchInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMatchFound:Z

.field private mMatchLength:I

.field private mMatchStart:I

.field private mNext:Lcn/tinkling/t9/T9MatchInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcn/tinkling/t9/T9MatchInfo$1;

    invoke-direct {v0}, Lcn/tinkling/t9/T9MatchInfo$1;-><init>()V

    sput-object v0, Lcn/tinkling/t9/T9MatchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchFound:Z

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchStart:I

    .line 31
    iput v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchLength:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchFound:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchStart:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchLength:I

    .line 38
    const-class v0, Lcn/tinkling/t9/T9MatchInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcn/tinkling/t9/T9MatchInfo;

    iput-object p1, p0, Lcn/tinkling/t9/T9MatchInfo;->mNext:Lcn/tinkling/t9/T9MatchInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public found()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchFound:Z

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mNext:Lcn/tinkling/t9/T9MatchInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 89
    iget v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchLength:I

    return v0
.end method

.method public next()Lcn/tinkling/t9/T9MatchInfo;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mNext:Lcn/tinkling/t9/T9MatchInfo;

    return-object v0
.end method

.method set(II)V
    .locals 3

    if-gez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    if-ltz p1, :cond_2

    if-lez p2, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INVALID MATCH OFFSETS: matchStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", matchLength="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-ltz p1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 61
    :goto_1
    iput-boolean v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchFound:Z

    .line 62
    iput p1, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchStart:I

    .line 63
    iput p2, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchLength:I

    return-void
.end method

.method setNext(Lcn/tinkling/t9/T9MatchInfo;)V
    .locals 0

    if-eq p0, p1, :cond_0

    .line 68
    iput-object p1, p0, Lcn/tinkling/t9/T9MatchInfo;->mNext:Lcn/tinkling/t9/T9MatchInfo;

    :cond_0
    return-void
.end method

.method public start()I
    .locals 1

    .line 82
    iget v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchStart:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T9MatchInfo{mMatchFound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchFound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMatchStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMatchLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/tinkling/t9/T9MatchInfo;->mNext:Lcn/tinkling/t9/T9MatchInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchFound:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    iget v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mMatchLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcn/tinkling/t9/T9MatchInfo;->mNext:Lcn/tinkling/t9/T9MatchInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
