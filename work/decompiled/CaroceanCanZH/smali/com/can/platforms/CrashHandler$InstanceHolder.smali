.class public interface abstract Lcom/can/platforms/CrashHandler$InstanceHolder;
.super Ljava/lang/Object;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/platforms/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final crashHandler:Lcom/can/platforms/CrashHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/can/platforms/CrashHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/can/platforms/CrashHandler;-><init>(Lcom/can/platforms/CrashHandler$1;)V

    sput-object v0, Lcom/can/platforms/CrashHandler$InstanceHolder;->crashHandler:Lcom/can/platforms/CrashHandler;

    return-void
.end method
