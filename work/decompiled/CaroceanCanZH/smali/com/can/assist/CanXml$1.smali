.class Lcom/can/assist/CanXml$1;
.super Ljava/lang/Object;
.source "CanXml.java"

# interfaces
.implements Lcom/can/tool/Xml$OnXmlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/can/assist/CanContant$CarType_Info;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/can/assist/CanXml;


# direct methods
.method constructor <init>(Lcom/can/assist/CanXml;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/can/assist/CanXml$1;->this$0:Lcom/can/assist/CanXml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 502
    iput-object p1, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    .line 503
    iput-object p1, p0, Lcom/can/assist/CanXml$1;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public End(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 583
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Field"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 584
    iget-object p1, p0, Lcom/can/assist/CanXml$1;->list:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 585
    iput-object p1, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    :cond_0
    return-void
.end method

.method public Save()V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/can/assist/CanXml$1;->this$0:Lcom/can/assist/CanXml;

    invoke-static {v0}, Lcom/can/assist/CanXml;->access$000(Lcom/can/assist/CanXml;)Lcom/can/assist/CanParcel;

    move-result-object v0

    iget-object p0, p0, Lcom/can/assist/CanXml$1;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/can/assist/CanParcel;->setCarTypeInfos(Ljava/util/ArrayList;)V

    return-void
.end method

.method public Start(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 508
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/can/assist/CanXml$1;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public Tag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    :try_start_0
    const-string v0, "Field"

    .line 515
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Lcom/can/assist/CanContant$CarType_Info;

    invoke-direct {v0}, Lcom/can/assist/CanContant$CarType_Info;-><init>()V

    iput-object v0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    if-eqz v0, :cond_12

    const-string v0, "Item"

    .line 520
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 522
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "box"

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v1, "BoxId"

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    .line 528
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/can/assist/CanContant$CarType_Info;->iBoxId:I

    goto/16 :goto_0

    :cond_2
    const-string v1, "Baud"

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    .line 531
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/can/assist/CanContant$CarType_Info;->iBoxBand:I

    goto/16 :goto_0

    :cond_3
    const-string v1, "Series"

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 533
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanContant$CarType_Info;->strSeriesName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v1, "SeriesId"

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 535
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    .line 536
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 535
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/can/assist/CanContant$CarType_Info;->iSeriesId:I

    goto/16 :goto_0

    :cond_5
    const-string v1, "Type"

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 538
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanContant$CarType_Info;->strTypeName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v1, "TypeId"

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 540
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    .line 541
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/can/assist/CanContant$CarType_Info;->iTypeId:I

    goto/16 :goto_0

    :cond_7
    const-string v1, "Cfg"

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 543
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanContant$CarType_Info;->strCfgName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v1, "CfgId"

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 545
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    .line 546
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 545
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/can/assist/CanContant$CarType_Info;->iCfgId:I

    goto/16 :goto_0

    :cond_9
    const-string v1, "NeedIcon"

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 548
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    .line 549
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 548
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/can/assist/CanContant$CarType_Info;->iNeedIcon:I

    goto/16 :goto_0

    :cond_a
    const-string v1, "ProlClass"

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 551
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanContant$CarType_Info;->strProClass:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v1, "UIClass"

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 553
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanContant$CarType_Info;->strUIClass:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v1, "AudClass"

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 555
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanContant$CarType_Info;->strAudioClass:Ljava/lang/String;

    goto :goto_0

    :cond_d
    const-string v1, "PopClass"

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 557
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanContant$CarType_Info;->strPopClass:Ljava/lang/String;

    goto :goto_0

    :cond_e
    const-string v1, "AudioPort"

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 559
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    .line 560
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/can/assist/CanContant$CarType_Info;->iAudioPort:I

    goto :goto_0

    :cond_f
    const-string v1, "strProVer"

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 562
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanContant$CarType_Info;->strProVer:Ljava/lang/String;

    goto :goto_0

    :cond_10
    const-string v1, "AirClass"

    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 564
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/assist/CanContant$CarType_Info;->strAirClass:Ljava/lang/String;

    goto :goto_0

    :cond_11
    const-string v1, "AirIcon"

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 566
    iget-object p0, p0, Lcom/can/assist/CanXml$1;->ObjCarTypeInfo:Lcom/can/assist/CanContant$CarType_Info;

    .line 567
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/can/assist/CanContant$CarType_Info;->iAirIcon:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 576
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 573
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_12
    :goto_0
    return-void
.end method
