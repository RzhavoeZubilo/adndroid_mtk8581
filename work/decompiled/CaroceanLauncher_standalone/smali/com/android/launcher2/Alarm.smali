.class public Lcom/android/launcher2/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Alarm"


# instance fields
.field private mAlarmListener:Lcom/android/launcher2/OnAlarmListener;

.field private mAlarmPending:Z

.field private mAlarmTriggerTime:J

.field private mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/launcher2/Alarm;->mAlarmPending:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Alarm;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public alarmPending()Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/android/launcher2/Alarm;->mAlarmPending:Z

    return p0
.end method

.method public cancelAlarm()V
    .locals 2

    .line 62
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel alarm here: mAlarmListener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alarm"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/launcher2/Alarm;->mAlarmPending:Z

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    .line 73
    iget-wide v1, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 76
    sget-boolean v5, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run: mAlarmTriggerTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAlarmListener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Alarm"

    invoke-static {v6, v5}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-wide v5, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    cmp-long v7, v5, v1

    if-lez v7, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/Alarm;->mHandler:Landroid/os/Handler;

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    goto :goto_0

    .line 87
    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher2/Alarm;->mAlarmPending:Z

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    if-eqz v0, :cond_2

    .line 89
    invoke-interface {v0, p0}, Lcom/android/launcher2/OnAlarmListener;->onAlarm(Lcom/android/launcher2/Alarm;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAlarm(J)V
    .locals 5

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 49
    iput-boolean v2, p0, Lcom/android/launcher2/Alarm;->mAlarmPending:Z

    add-long v3, v0, p1

    .line 50
    iput-wide v3, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    .line 51
    sget-boolean v3, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlarm: currentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", millisecondsInFuture = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mAlarmListener = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Alarm"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    if-nez p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/android/launcher2/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v3, v0

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    iput-boolean v2, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    :cond_1
    return-void
.end method

.method public setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    return-void
.end method
