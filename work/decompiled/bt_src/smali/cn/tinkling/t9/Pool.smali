.class final Lcn/tinkling/t9/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/tinkling/t9/Pool;->mLock:Ljava/lang/Object;

    if-lez p1, :cond_0

    .line 26
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcn/tinkling/t9/Pool;->mPool:[Ljava/lang/Object;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 73
    :goto_0
    iget v2, p0, Lcn/tinkling/t9/Pool;->mPoolSize:I

    if-ge v1, v2, :cond_1

    .line 74
    iget-object v2, p0, Lcn/tinkling/t9/Pool;->mPool:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcn/tinkling/t9/Pool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    iget v1, p0, Lcn/tinkling/t9/Pool;->mPoolSize:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 37
    iget-object v4, p0, Lcn/tinkling/t9/Pool;->mPool:[Ljava/lang/Object;

    aget-object v5, v4, v3

    .line 38
    aput-object v2, v4, v3

    add-int/lit8 v1, v1, -0x1

    .line 39
    iput v1, p0, Lcn/tinkling/t9/Pool;->mPoolSize:I

    .line 41
    monitor-exit v0

    return-object v5

    .line 44
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcn/tinkling/t9/Pool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-direct {p0, p1}, Lcn/tinkling/t9/Pool;->isInPool(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    iget v1, p0, Lcn/tinkling/t9/Pool;->mPoolSize:I

    iget-object v2, p0, Lcn/tinkling/t9/Pool;->mPool:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 62
    aput-object p1, v2, v1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 63
    iput v1, p0, Lcn/tinkling/t9/Pool;->mPoolSize:I

    .line 65
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 68
    monitor-exit v0

    return p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Already in the pool!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
