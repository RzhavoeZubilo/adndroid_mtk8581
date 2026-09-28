.class public Lcom/autochips/bluetooth/model/PhoneBookModel;
.super Ljava/lang/Object;
.source "PhoneBookModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/autochips/bluetooth/model/PhoneBookModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CALL_LOG_TYPE_BLUETOOTH:I = 0x1

.field public static final CALL_LOG_TYPE_LTE:I = 0x2

.field public static final CALL_LOG_TYPE_WECHAT:I = 0x3

.field public static final INCOMING_TYPE:I = 0x40

.field public static final MISSED_TYPE:I = 0x400

.field public static final OUTGOING_TYPE:I = 0x100

.field public static final REFUSE_TYPE:I = 0x3

.field public static final TYPE_CALL_LOG:I = 0x1

.field public static final TYPE_CONTACT:I = 0x2


# instance fields
.field private callLogType:I

.field private callType:I

.field private modeType:I

.field private name:Ljava/lang/String;

.field public nameMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

.field private namePinYin:Ljava/lang/String;

.field private phoneNumber:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phoneNumberMatchInfo:Lcn/tinkling/t9/T9MatchInfo;

.field private pinyinFirst:Ljava/lang/String;

.field private pinyinFlag:Ljava/lang/String;

.field public t9Key:Ljava/lang/String;

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumber:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addPhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumber:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public compareTo(Lcom/autochips/bluetooth/model/PhoneBookModel;)I
    .locals 6

    .line 138
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getTimeStamp()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getTimeStamp()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v0, v4

    long-to-int p1, v0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tem;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "compareTo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->compareTo(Lcom/autochips/bluetooth/model/PhoneBookModel;)I

    move-result p1

    return p1
.end method

.method public getCallLogType()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->callLogType:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->callType:I

    return v0
.end method

.method public getModeType()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->modeType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamePinYin()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->namePinYin:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->phoneNumber:Ljava/util/Set;

    return-object v0
.end method

.method public getPinyinFirst()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->pinyinFirst:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyinFlag()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->pinyinFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->timeStamp:J

    return-wide v0
.end method

.method public setCallLogType(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->callLogType:I

    return-void
.end method

.method public setCallType(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->callType:I

    return-void
.end method

.method public setModeType(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->modeType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setNamePinYin(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->namePinYin:Ljava/lang/String;

    return-void
.end method

.method public setPinyinFirst(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->pinyinFirst:Ljava/lang/String;

    return-void
.end method

.method public setPinyinFlag(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->pinyinFlag:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/autochips/bluetooth/model/PhoneBookModel;->timeStamp:J

    return-void
.end method
