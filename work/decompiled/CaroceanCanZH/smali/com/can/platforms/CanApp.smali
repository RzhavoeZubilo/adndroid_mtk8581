.class public Lcom/can/platforms/CanApp;
.super Landroid/app/Application;
.source "CanApp.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanApp_"

.field private static mContext:Landroid/content/Context; = null

.field public static sIsFirstStart:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 16
    sget-object v0, Lcom/can/platforms/CanApp;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 21
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    sput-object p0, Lcom/can/platforms/CanApp;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p0}, Lcom/can/platforms/CanApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/can/platforms/CrashHandler;->shareInstance(Landroid/content/Context;)Lcom/can/platforms/CrashHandler;

    .line 24
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/carocean/navicar/McuServiceManager;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    const-string p0, "CanApp_"

    const-string v0, "canzh_version: 1.0.33.20240513"

    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
