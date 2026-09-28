.class public Lcom/autochips/bluetooth/control/PBRecord;
.super Ljava/lang/Object;
.source "PBRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autochips/bluetooth/control/PBRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCalltime:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mNumber:Ljava/lang/String;

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/autochips/bluetooth/control/PBRecord$1;

    invoke-direct {v0}, Lcom/autochips/bluetooth/control/PBRecord$1;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/control/PBRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mNumber:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mCalltime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mType:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mNumber:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mCalltime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mType:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 16
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mNumber:Ljava/lang/String;

    const/4 v0, 0x1

    .line 17
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mName:Ljava/lang/String;

    const/4 v0, 0x2

    .line 18
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mCalltime:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/control/PBRecord;->mType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCalltime()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mCalltime:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mType:I

    return v0
.end method

.method public setCalltime(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/autochips/bluetooth/control/PBRecord;->mCalltime:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/autochips/bluetooth/control/PBRecord;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/autochips/bluetooth/control/PBRecord;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/autochips/bluetooth/control/PBRecord;
    .locals 0

    .line 43
    iput p1, p0, Lcom/autochips/bluetooth/control/PBRecord;->mType:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mNumber:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mName:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/autochips/bluetooth/control/PBRecord;->mCalltime:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v0, p2, v1

    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 60
    iget p2, p0, Lcom/autochips/bluetooth/control/PBRecord;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
