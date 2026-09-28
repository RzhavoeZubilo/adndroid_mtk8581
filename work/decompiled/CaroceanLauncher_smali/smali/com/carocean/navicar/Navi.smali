.class public Lcom/carocean/navicar/Navi;
.super Ljava/lang/Object;
.source "Navi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carocean/navicar/Navi$Common;,
        Lcom/carocean/navicar/Navi$Status;,
        Lcom/carocean/navicar/Navi$SourceID;,
        Lcom/carocean/navicar/Navi$ZHKeyEvent;,
        Lcom/carocean/navicar/Navi$ZHKeyCode;,
        Lcom/carocean/navicar/Navi$KeyCode;,
        Lcom/carocean/navicar/Navi$ClassName;,
        Lcom/carocean/navicar/Navi$PackageName;,
        Lcom/carocean/navicar/Navi$Action;
    }
.end annotation


# static fields
.field public static final MAP_WHITELIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "com.autonavi.amapauto"

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.sygic.aura"

    const-string v3, "com.nng.igoprimoisr2013march24.javaclient"

    const-string v4, "com.kingwaytek.naviking3d.google.std"

    const-string v5, "navi"

    const-string v6, "sygic"

    const-string v7, "cld"

    const-string v8, "migo"

    const-string v9, "obile.mainframe"

    const-string v10, "map"

    const-string v11, "com.kingwaytek"

    const-string v12, "igoprimo"

    const-string v13, "com.waze"

    const-string v14, "igo"

    const-string v15, "papago"

    const-string v16, "kingwaytek"

    const-string v17, "com.baidu.BaiduMap"

    const-string v18, "Map"

    .line 454
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/carocean/navicar/Navi;->MAP_WHITELIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
