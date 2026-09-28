.class public Lcn/tinkling/t9/PinyinToken;
.super Ljava/lang/Object;
.source "PinyinToken.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final LATIN:I = 0x1

.field public static final PINYIN:I = 0x2

.field public static final SEPARATOR:Ljava/lang/String; = " "

.field public static final UNKNOWN:I = 0x3


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcn/tinkling/t9/PinyinToken;->type:I

    .line 29
    iput-object p2, p0, Lcn/tinkling/t9/PinyinToken;->source:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcn/tinkling/t9/PinyinToken;->target:Ljava/lang/String;

    return-void
.end method
