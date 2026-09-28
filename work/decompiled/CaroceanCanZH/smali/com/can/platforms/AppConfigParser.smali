.class public Lcom/can/platforms/AppConfigParser;
.super Ljava/lang/Object;
.source "AppConfigParser.java"


# static fields
.field public static final ITEM_AIR_ICON:Ljava/lang/String; = "CarAirIcon"

.field public static final ITEM_CANBOX:Ljava/lang/String; = "CanBox"

.field public static final ITEM_CANBOX_UART_BAUDRATE:Ljava/lang/String; = "CanBoxUartBaudRate"

.field public static final ITEM_CAR_CFG:Ljava/lang/String; = "CarCfg"

.field public static final ITEM_CAR_ICON:Ljava/lang/String; = "CarIcon"

.field public static final ITEM_CAR_MODE:Ljava/lang/String; = "CarMode"

.field public static final ITEM_CAR_TYPE:Ljava/lang/String; = "CarType"

.field public static final ITEM_TIP:Ljava/lang/String; = ""

.field public static final PATH_APP_CONFIG:Ljava/lang/String; = "k2config/factoryconfig.xml"

.field public static final TAG:Ljava/lang/String; = "rwXMLFile"

.field public static mAppConfigInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/can/platforms/AppConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mInstance:Lcom/can/platforms/AppConfigParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/can/platforms/AppConfigParser;->readConfigFile()V

    return-void
.end method

.method public static changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static getAirIcon()I
    .locals 3

    .line 50
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CarAirIcon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/can/platforms/AppConfigParser;->getIntValue(Ljava/util/List;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBooleanValue(Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/can/platforms/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .line 269
    invoke-static {p1, p0}, Lcom/can/platforms/AppConfigParser;->getStringValue(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 271
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getCanBox()I
    .locals 3

    .line 58
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CanBox"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/can/platforms/AppConfigParser;->getIntValue(Ljava/util/List;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCanBoxUartBaudRate()I
    .locals 3

    .line 74
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CanBoxUartBaudRate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/can/platforms/AppConfigParser;->getIntValue(Ljava/util/List;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCarCfg()I
    .locals 3

    .line 70
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CarCfg"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/can/platforms/AppConfigParser;->getIntValue(Ljava/util/List;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCarIcon()I
    .locals 3

    .line 54
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CarIcon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/can/platforms/AppConfigParser;->getIntValue(Ljava/util/List;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCarMode()I
    .locals 3

    .line 62
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CarMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/can/platforms/AppConfigParser;->getIntValue(Ljava/util/List;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCarType()I
    .locals 3

    .line 66
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CarType"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/can/platforms/AppConfigParser;->getIntValue(Ljava/util/List;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/can/platforms/AppConfigParser;
    .locals 1

    .line 43
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mInstance:Lcom/can/platforms/AppConfigParser;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/can/platforms/AppConfigParser;

    invoke-direct {v0}, Lcom/can/platforms/AppConfigParser;-><init>()V

    sput-object v0, Lcom/can/platforms/AppConfigParser;->mInstance:Lcom/can/platforms/AppConfigParser;

    .line 46
    :cond_0
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mInstance:Lcom/can/platforms/AppConfigParser;

    return-object v0
.end method

.method public static getIntValue(Ljava/util/List;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/can/platforms/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 260
    invoke-static {p1, p0}, Lcom/can/platforms/AppConfigParser;->getStringValue(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 262
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static getStringValue(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/can/platforms/AppConfigInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/platforms/AppConfigInfo;

    .line 217
    invoke-virtual {v0}, Lcom/can/platforms/AppConfigInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/can/platforms/AppConfigInfo;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getStringValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/can/platforms/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 255
    invoke-static {p1, p0}, Lcom/can/platforms/AppConfigParser;->getStringValue(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/can/platforms/AppConfigInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 145
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 147
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eq p0, v4, :cond_6

    if-eqz p0, :cond_4

    const/4 v4, 0x2

    const-string v5, "appinfo"

    if-eq p0, v4, :cond_1

    const/4 v4, 0x3

    if-eq p0, v4, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 166
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    goto :goto_1

    .line 154
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 155
    new-instance v3, Lcom/can/platforms/AppConfigInfo;

    invoke-direct {v3}, Lcom/can/platforms/AppConfigInfo;-><init>()V

    goto :goto_1

    .line 156
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "key"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 157
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 158
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/can/platforms/AppConfigInfo;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "value"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 160
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 161
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/can/platforms/AppConfigInfo;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    :cond_5
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method public static readConfigFile()V
    .locals 2

    const-string v0, "rwXMLFile"

    const-string v1, "load arm config"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/io/File;

    const-string v1, "k2config/factoryconfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 112
    invoke-static {v1}, Lcom/can/platforms/AppConfigParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    .line 113
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static serialize(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/can/platforms/AppConfigInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "line.separator"

    .line 178
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 180
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 181
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const/4 v3, 0x1

    .line 182
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 183
    invoke-static {v1, v0}, Lcom/can/platforms/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string v3, ""

    const-string v4, "resources"

    .line 184
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    invoke-static {v1, v0}, Lcom/can/platforms/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 186
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/can/platforms/AppConfigInfo;

    const-string v6, "appinfo"

    .line 187
    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    invoke-static {v1, v0}, Lcom/can/platforms/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string v7, "key"

    .line 190
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    invoke-virtual {v5}, Lcom/can/platforms/AppConfigInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    invoke-static {v1, v0}, Lcom/can/platforms/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string v7, "value"

    .line 195
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    invoke-virtual {v5}, Lcom/can/platforms/AppConfigInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    invoke-static {v1, v0}, Lcom/can/platforms/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 200
    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    invoke-static {v1, v0}, Lcom/can/platforms/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 206
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAirIcon(I)V
    .locals 2

    .line 78
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CarAirIcon"

    invoke-static {v0, v1, p0}, Lcom/can/platforms/AppConfigParser;->setIntValue(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static setBooleanValue(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/can/platforms/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 251
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/can/platforms/AppConfigParser;->setStringValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCanBox(I)V
    .locals 2

    .line 86
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CanBox"

    invoke-static {v0, v1, p0}, Lcom/can/platforms/AppConfigParser;->setIntValue(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static setCanBoxUartBaudRate(I)V
    .locals 2

    .line 102
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CanBoxUartBaudRate"

    invoke-static {v0, v1, p0}, Lcom/can/platforms/AppConfigParser;->setIntValue(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static setCarCfg(I)V
    .locals 2

    .line 98
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CarCfg"

    invoke-static {v0, v1, p0}, Lcom/can/platforms/AppConfigParser;->setIntValue(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static setCarIcon(I)V
    .locals 2

    .line 82
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CarIcon"

    invoke-static {v0, v1, p0}, Lcom/can/platforms/AppConfigParser;->setIntValue(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static setCarMode(I)V
    .locals 2

    .line 90
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CarMode"

    invoke-static {v0, v1, p0}, Lcom/can/platforms/AppConfigParser;->setIntValue(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static setCarType(I)V
    .locals 2

    .line 94
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "CarType"

    invoke-static {v0, v1, p0}, Lcom/can/platforms/AppConfigParser;->setIntValue(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static setIntValue(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/can/platforms/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 247
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/can/platforms/AppConfigParser;->setStringValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setStringValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/can/platforms/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 229
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/platforms/AppConfigInfo;

    .line 230
    invoke-virtual {v2}, Lcom/can/platforms/AppConfigInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 232
    invoke-virtual {v2, p2}, Lcom/can/platforms/AppConfigInfo;->setValue(Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    .line 238
    new-instance v0, Lcom/can/platforms/AppConfigInfo;

    invoke-direct {v0}, Lcom/can/platforms/AppConfigInfo;-><init>()V

    .line 239
    invoke-virtual {v0, p1}, Lcom/can/platforms/AppConfigInfo;->setKey(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p2}, Lcom/can/platforms/AppConfigInfo;->setValue(Ljava/lang/String;)V

    .line 241
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static writeConfigFile()V
    .locals 2

    const-string v0, "rwXMLFile"

    const-string v1, "save car config"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "k2config/factoryconfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 130
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 131
    sget-object v0, Lcom/can/platforms/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/can/platforms/AppConfigParser;->serialize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 133
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 134
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
