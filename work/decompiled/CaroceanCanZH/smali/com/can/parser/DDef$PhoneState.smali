.class public Lcom/can/parser/DDef$PhoneState;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneState"
.end annotation


# static fields
.field public static final IDLE:I = 0x1

.field public static final INCOMING:I = 0x2

.field public static final OUTGOING:I = 0x3

.field public static final SPEAKING:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
