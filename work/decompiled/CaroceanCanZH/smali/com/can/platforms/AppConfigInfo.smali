.class Lcom/can/platforms/AppConfigInfo;
.super Ljava/lang/Object;
.source "AppConfigParser.java"


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/can/platforms/AppConfigInfo;->mKey:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lcom/can/platforms/AppConfigInfo;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/can/platforms/AppConfigInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/can/platforms/AppConfigInfo;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/can/platforms/AppConfigInfo;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/can/platforms/AppConfigInfo;->mValue:Ljava/lang/String;

    return-void
.end method
