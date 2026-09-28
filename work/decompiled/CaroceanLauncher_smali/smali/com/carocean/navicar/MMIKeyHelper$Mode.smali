.class public Lcom/carocean/navicar/MMIKeyHelper$Mode;
.super Ljava/lang/Object;
.source "MMIKeyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/MMIKeyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode"
.end annotation


# static fields
.field public static final AUTO_SELECT:I = 0x1

.field public static final CALLBACK:I = 0x4

.field public static final CURSOR_STAY:I = 0x10

.field public static final NEED_FOCUS:I = 0x8

.field public static final PERFORM_CLICK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
