.class public Lcom/carocean/navicar/NaviUtil$DateTimeUtils;
.super Ljava/lang/Object;
.source "NaviUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/NaviUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateTimeUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BCD2Int([BII)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-lez p2, :cond_0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 483
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    .line 484
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static Int2BCD(I[BI)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_0

    if-lez p0, :cond_0

    .line 505
    rem-int/lit8 v2, p0, 0xa

    .line 506
    div-int/lit8 p0, p0, 0xa

    .line 507
    rem-int/lit8 v3, p0, 0xa

    .line 508
    div-int/lit8 p0, p0, 0xa

    add-int v4, p2, v1

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v2

    int-to-byte v2, v3

    .line 510
    aput-byte v2, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_0
    :goto_1
    div-int/lit8 p0, v1, 0x2

    if-ge v0, p0, :cond_1

    add-int p0, p2, v0

    .line 516
    aget-byte v2, p1, p0

    add-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    .line 517
    aget-byte v4, p1, v3

    aput-byte v4, p1, p0

    .line 518
    aput-byte v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static setSysDate(Landroid/content/Context;III)V
    .locals 4

    .line 444
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 445
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v1

    const/4 p1, 0x2

    .line 446
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 447
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 449
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 451
    div-long v0, p1, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    const-string p3, "alarm"

    .line 452
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_0
    return-void
.end method

.method public static setSysTime(Landroid/content/Context;III)V
    .locals 4

    .line 457
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 458
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 459
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 460
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    const/4 p2, 0x0

    .line 461
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 463
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 465
    div-long v0, p1, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    const-string p3, "alarm"

    .line 466
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_0
    return-void
.end method
