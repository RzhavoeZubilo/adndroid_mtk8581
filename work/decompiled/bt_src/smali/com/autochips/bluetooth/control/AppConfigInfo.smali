.class Lcom/autochips/bluetooth/control/AppConfigInfo;
.super Ljava/lang/Object;
.source "AppConfigParser.java"


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/autochips/bluetooth/control/AppConfigInfo;->mKey:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Lcom/autochips/bluetooth/control/AppConfigInfo;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/autochips/bluetooth/control/AppConfigInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/autochips/bluetooth/control/AppConfigInfo;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/autochips/bluetooth/control/AppConfigInfo;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/autochips/bluetooth/control/AppConfigInfo;->mValue:Ljava/lang/String;

    return-void
.end method
