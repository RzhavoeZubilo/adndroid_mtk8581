.class final Lcom/android/launcher2/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->checkItemInfo(Lcom/android/launcher2/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$item:Lcom/android/launcher2/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 344
    iput-wide p1, p0, Lcom/android/launcher2/LauncherModel$2;->val$itemId:J

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$2;->val$item:Lcom/android/launcher2/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$2;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 346
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-wide v1, p0, Lcom/android/launcher2/LauncherModel$2;->val$itemId:J

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$2;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$2;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v1, v2, v3, p0}, Lcom/android/launcher2/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 348
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
