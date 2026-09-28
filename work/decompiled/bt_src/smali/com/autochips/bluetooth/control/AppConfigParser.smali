.class public Lcom/autochips/bluetooth/control/AppConfigParser;
.super Ljava/lang/Object;
.source "AppConfigParser.java"


# static fields
.field public static final ITEM_BT_CUSTOMER_NAME_OEM:Ljava/lang/String; = "bt_customer_name_oem"

.field public static final ITEM_BT_DEVICE_NAME_OEM:Ljava/lang/String; = "bt_device_name_oem"

.field public static final ITEM_TIP:Ljava/lang/String; = ""

.field public static final PATH_APP_CONFIG:Ljava/lang/String; = "k2config/factoryconfig.xml"

.field public static final PERSYS_INTERNALBT_ENABLE:Ljava/lang/String; = "persist.sys.internalbt_enable"

.field public static final TAG:Ljava/lang/String; = "rwXMLFile"

.field public static mAppConfigInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/control/AppConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mInstance:Lcom/autochips/bluetooth/control/AppConfigParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/control/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/autochips/bluetooth/control/AppConfigParser;->readConfigFile()V

    return-void
.end method

.method public static changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static getBTCustomerNameOEM()Ljava/lang/String;
    .locals 3

    .line 58
    sget-object v0, Lcom/autochips/bluetooth/control/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "bt_customer_name_oem"

    const-string v2, "YECON"

    invoke-static {v0, v1, v2}, Lcom/autochips/bluetooth/control/AppConfigParser;->getStringValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBTDeviceNameOEM()Ljava/lang/String;
    .locals 3

    .line 46
    sget-object v0, Lcom/autochips/bluetooth/control/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    const-string v1, "bt_device_name_oem"

    const-string v2, "YC_"

    invoke-static {v0, v1, v2}, Lcom/autochips/bluetooth/control/AppConfigParser;->getStringValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.internalbt_enable"

    const/4 v2, 0x0

    .line 48
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LZ_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getBooleanValue(Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/control/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .line 208
    invoke-static {p1, p0}, Lcom/autochips/bluetooth/control/AppConfigParser;->getStringValue(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 210
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getInstance()Lcom/autochips/bluetooth/control/AppConfigParser;
    .locals 1

    .line 39
    sget-object v0, Lcom/autochips/bluetooth/control/AppConfigParser;->mInstance:Lcom/autochips/bluetooth/control/AppConfigParser;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/autochips/bluetooth/control/AppConfigParser;

    invoke-direct {v0}, Lcom/autochips/bluetooth/control/AppConfigParser;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/control/AppConfigParser;->mInstance:Lcom/autochips/bluetooth/control/AppConfigParser;

    .line 42
    :cond_0
    sget-object v0, Lcom/autochips/bluetooth/control/AppConfigParser;->mInstance:Lcom/autochips/bluetooth/control/AppConfigParser;

    return-object v0
.end method

.method public static getIntValue(Ljava/util/List;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/control/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 199
    invoke-static {p1, p0}, Lcom/autochips/bluetooth/control/AppConfigParser;->getStringValue(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 201
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
            "Lcom/autochips/bluetooth/control/AppConfigInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/control/AppConfigInfo;

    .line 156
    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/AppConfigInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/AppConfigInfo;->getValue()Ljava/lang/String;

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
            "Lcom/autochips/bluetooth/control/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 194
    invoke-static {p1, p0}, Lcom/autochips/bluetooth/control/AppConfigParser;->getStringValue(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 195
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
            "Lcom/autochips/bluetooth/control/AppConfigInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 84
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 86
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

    .line 104
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 94
    new-instance v3, Lcom/autochips/bluetooth/control/AppConfigInfo;

    invoke-direct {v3}, Lcom/autochips/bluetooth/control/AppConfigInfo;-><init>()V

    goto :goto_1

    .line 95
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "key"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 96
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 97
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/autochips/bluetooth/control/AppConfigInfo;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "value"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 99
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 100
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/autochips/bluetooth/control/AppConfigInfo;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
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

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Ljava/io/File;

    const-string v1, "k2config/factoryconfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    invoke-static {v1}, Lcom/autochips/bluetooth/control/AppConfigParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/control/AppConfigParser;->mAppConfigInfos:Ljava/util/List;

    .line 69
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 72
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
            "Lcom/autochips/bluetooth/control/AppConfigInfo;",
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

    .line 117
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 119
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 120
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const/4 v3, 0x1

    .line 121
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 122
    invoke-static {v1, v0}, Lcom/autochips/bluetooth/control/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string v3, ""

    const-string v4, "resources"

    .line 123
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    invoke-static {v1, v0}, Lcom/autochips/bluetooth/control/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 125
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/bluetooth/control/AppConfigInfo;

    const-string v6, "appinfo"

    .line 126
    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    invoke-static {v1, v0}, Lcom/autochips/bluetooth/control/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string v7, "key"

    .line 129
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    invoke-virtual {v5}, Lcom/autochips/bluetooth/control/AppConfigInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    invoke-static {v1, v0}, Lcom/autochips/bluetooth/control/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string v7, "value"

    .line 134
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-virtual {v5}, Lcom/autochips/bluetooth/control/AppConfigInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    invoke-static {v1, v0}, Lcom/autochips/bluetooth/control/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 139
    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    invoke-static {v1, v0}, Lcom/autochips/bluetooth/control/AppConfigParser;->changeLine(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 145
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setBooleanValue(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/control/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 190
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/autochips/bluetooth/control/AppConfigParser;->setStringValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setIntValue(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/control/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 186
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/autochips/bluetooth/control/AppConfigParser;->setStringValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setStringValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/control/AppConfigInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/control/AppConfigInfo;

    .line 169
    invoke-virtual {v2}, Lcom/autochips/bluetooth/control/AppConfigInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 171
    invoke-virtual {v2, p2}, Lcom/autochips/bluetooth/control/AppConfigInfo;->setValue(Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    .line 177
    new-instance v0, Lcom/autochips/bluetooth/control/AppConfigInfo;

    invoke-direct {v0}, Lcom/autochips/bluetooth/control/AppConfigInfo;-><init>()V

    .line 178
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/control/AppConfigInfo;->setKey(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p2}, Lcom/autochips/bluetooth/control/AppConfigInfo;->setValue(Ljava/lang/String;)V

    .line 180
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
