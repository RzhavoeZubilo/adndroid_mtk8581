.class public Lcom/carlos/eventlibrary/EventMailer;
.super Ljava/lang/Object;
.source "EventMailer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carlos/eventlibrary/EventMailer$MyHandler;
    }
.end annotation


# static fields
.field private static eventMailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/carlos/eventlibrary/EventMail;",
            ">;"
        }
    .end annotation
.end field

.field private static isHold:Z

.field private static mails:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/carlos/eventlibrary/EventMail;",
            ">;"
        }
    .end annotation
.end field

.field private static missileMailer:Lcom/carlos/eventlibrary/EventMailer;

.field private static myHandler:Lcom/carlos/eventlibrary/EventMailer$MyHandler;

.field private static staticLength:I


# instance fields
.field private softList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/carlos/eventlibrary/IEventReceiver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100()Ljava/util/Queue;
    .locals 1

    .line 20
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->mails:Ljava/util/Queue;

    return-object v0
.end method

.method private checkEventMail(Lcom/carlos/eventlibrary/EventMail;)Z
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/carlos/eventlibrary/EventMailer;->checkEventMailer()V

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getAddress_className()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 285
    :cond_0
    new-instance p1, Lcom/carlos/eventlibrary/EventMailerException;

    const-string v0, "\u8bf7\u6ce8\u660e\u8981\u53d1\u9001\u7ed9\u8c01\uff0cclassName\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Lcom/carlos/eventlibrary/EventMailerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_1
    new-instance p1, Lcom/carlos/eventlibrary/EventMailerException;

    const-string v0, "\u4e0d\u80fd\u53d1\u9001null"

    invoke-direct {p1, v0}, Lcom/carlos/eventlibrary/EventMailerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkEventMailer()V
    .locals 2

    .line 294
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->missileMailer:Lcom/carlos/eventlibrary/EventMailer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/carlos/eventlibrary/EventMailerException;

    const-string v1, "\u4f60\u6ca1\u6709\u521d\u4f7f\u5316\uff0c\u521d\u4f7f\u5316\u4ee5\u540e\u624d\u53ef\u4ee5\u53d1\u9001EventMail"

    invoke-direct {v0, v1}, Lcom/carlos/eventlibrary/EventMailerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/carlos/eventlibrary/EventMailer;
    .locals 1

    .line 45
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->missileMailer:Lcom/carlos/eventlibrary/EventMailer;

    return-object v0
.end method

.method public static init(Z)V
    .locals 2

    .line 57
    new-instance v0, Lcom/carlos/eventlibrary/EventMailer;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMailer;-><init>()V

    sput-object v0, Lcom/carlos/eventlibrary/EventMailer;->missileMailer:Lcom/carlos/eventlibrary/EventMailer;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/carlos/eventlibrary/EventMailer;->mails:Ljava/util/Queue;

    .line 59
    new-instance v0, Lcom/carlos/eventlibrary/EventMailer$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/carlos/eventlibrary/EventMailer$MyHandler;-><init>(Lcom/carlos/eventlibrary/EventMailer$1;)V

    sput-object v0, Lcom/carlos/eventlibrary/EventMailer;->myHandler:Lcom/carlos/eventlibrary/EventMailer$MyHandler;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 61
    sput-boolean p0, Lcom/carlos/eventlibrary/EventMailer;->isHold:Z

    .line 62
    sput p0, Lcom/carlos/eventlibrary/EventMailer;->staticLength:I

    .line 63
    sget-object p0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    if-nez p0, :cond_0

    .line 64
    new-instance p0, Ljava/util/ArrayList;

    sget v0, Lcom/carlos/eventlibrary/EventMailer;->staticLength:I

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static init(ZI)V
    .locals 2

    .line 77
    new-instance v0, Lcom/carlos/eventlibrary/EventMailer;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMailer;-><init>()V

    sput-object v0, Lcom/carlos/eventlibrary/EventMailer;->missileMailer:Lcom/carlos/eventlibrary/EventMailer;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/carlos/eventlibrary/EventMailer;->mails:Ljava/util/Queue;

    .line 79
    new-instance v0, Lcom/carlos/eventlibrary/EventMailer$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/carlos/eventlibrary/EventMailer$MyHandler;-><init>(Lcom/carlos/eventlibrary/EventMailer$1;)V

    sput-object v0, Lcom/carlos/eventlibrary/EventMailer;->myHandler:Lcom/carlos/eventlibrary/EventMailer$MyHandler;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 81
    sput-boolean p0, Lcom/carlos/eventlibrary/EventMailer;->isHold:Z

    .line 82
    sput p1, Lcom/carlos/eventlibrary/EventMailer;->staticLength:I

    .line 83
    sget-object p0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    if-nez p0, :cond_0

    .line 84
    new-instance p0, Ljava/util/ArrayList;

    sget p1, Lcom/carlos/eventlibrary/EventMailer;->staticLength:I

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private declared-synchronized sendAction(Lcom/carlos/eventlibrary/EventMail;)Z
    .locals 4

    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 231
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getAddress_className()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fd9\u91cc\u53d1\u9001\u90ae\u4ef6   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getAddress_className()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/carlos/eventlibrary/EventUtil;->writeLog(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b58\u50a8\u7684\u6536\u4ef6\u4eba   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getAddress_className()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/carlos/eventlibrary/EventUtil;->writeLog(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getAddress_className()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carlos/eventlibrary/IEventReceiver;

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u4ef6\u4eba\u5df2\u7ecf\u88abGC\u56de\u6536   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getAddress_className()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/carlos/eventlibrary/EventUtil;->writeLog(Ljava/lang/String;)V

    .line 237
    sget-boolean v0, Lcom/carlos/eventlibrary/EventMailer;->isHold:Z

    if-eqz v0, :cond_5

    .line 238
    :goto_0
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/carlos/eventlibrary/EventMailer;->staticLength:I

    if-lt v0, v2, :cond_0

    .line 239
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 241
    :cond_0
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 244
    :cond_1
    invoke-interface {v0, p1}, Lcom/carlos/eventlibrary/IEventReceiver;->MailBox(Lcom/carlos/eventlibrary/EventMail;)V

    .line 245
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getDuplicateClassNameList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 246
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getDuplicateClassNameList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    iget-object v2, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/carlos/eventlibrary/IEventReceiver;

    .line 249
    invoke-interface {v1, p1}, Lcom/carlos/eventlibrary/IEventReceiver;->MailBox(Lcom/carlos/eventlibrary/EventMail;)V

    goto :goto_1

    .line 255
    :cond_3
    sget-boolean v0, Lcom/carlos/eventlibrary/EventMailer;->isHold:Z

    if-eqz v0, :cond_5

    .line 256
    :goto_2
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/carlos/eventlibrary/EventMailer;->staticLength:I

    if-lt v0, v2, :cond_4

    .line 257
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 259
    :cond_4
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_3
    const/4 p1, 0x1

    .line 263
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getMyEventMail(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/carlos/eventlibrary/EventMail;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/carlos/eventlibrary/EventMailer;->checkEventMailer()V

    .line 184
    sget-boolean v0, Lcom/carlos/eventlibrary/EventMailer;->isHold:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    if-nez v0, :cond_1

    return-object v1

    .line 187
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/carlos/eventlibrary/EventMail;

    .line 188
    invoke-virtual {v3}, Lcom/carlos/eventlibrary/EventMail;->getAddress_className()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_3

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    return-object v1

    .line 198
    :cond_5
    sget-object p1, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public pushMyEventMail(Ljava/lang/String;)V
    .locals 4

    .line 209
    invoke-direct {p0}, Lcom/carlos/eventlibrary/EventMailer;->checkEventMailer()V

    .line 210
    sget-boolean v0, Lcom/carlos/eventlibrary/EventMailer;->isHold:Z

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/carlos/eventlibrary/EventMail;

    .line 214
    invoke-virtual {v2}, Lcom/carlos/eventlibrary/EventMail;->getAddress_className()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_3

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 222
    sget-object p1, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carlos/eventlibrary/EventMail;

    .line 224
    invoke-virtual {p0, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Lcom/carlos/eventlibrary/EventMail;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method public register(Lcom/carlos/eventlibrary/IEventReceiver;)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "   "

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u7ecf\u5b58\u5728  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/carlos/eventlibrary/EventUtil;->writeLog(Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/carlos/eventlibrary/EventMailer;->checkEventMailer()V

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 99
    iget-object v2, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b58\u50a8\u4ee5\u540e  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/carlos/eventlibrary/EventUtil;->writeLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendMail(Ljava/lang/String;)V
    .locals 1

    .line 140
    new-instance v0, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 141
    invoke-virtual {v0, p1}, Lcom/carlos/eventlibrary/EventMail;->setAddress_className(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Lcom/carlos/eventlibrary/EventMail;)Z

    return-void
.end method

.method public sendMail(Ljava/lang/String;I)V
    .locals 1

    .line 152
    new-instance v0, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 153
    invoke-virtual {v0, p1}, Lcom/carlos/eventlibrary/EventMail;->setAddress_className(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p2}, Lcom/carlos/eventlibrary/EventMail;->setFlag(I)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Lcom/carlos/eventlibrary/EventMail;)Z

    return-void
.end method

.method public declared-synchronized sendMail(Lcom/carlos/eventlibrary/EventMail;)Z
    .locals 2

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-direct {p0, p1}, Lcom/carlos/eventlibrary/EventMailer;->checkEventMail(Lcom/carlos/eventlibrary/EventMail;)Z

    .line 125
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/carlos/eventlibrary/EventMailer;->sendAction(Lcom/carlos/eventlibrary/EventMail;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 128
    :cond_0
    :try_start_1
    sget-object v0, Lcom/carlos/eventlibrary/EventMailer;->mails:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 129
    sget-object p1, Lcom/carlos/eventlibrary/EventMailer;->myHandler:Lcom/carlos/eventlibrary/EventMailer$MyHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/carlos/eventlibrary/EventMailer$MyHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 130
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendStaticMail(Lcom/carlos/eventlibrary/EventMail;)Z
    .locals 3

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/carlos/eventlibrary/EventMailer;->checkEventMail(Lcom/carlos/eventlibrary/EventMail;)Z

    const/4 v0, 0x1

    .line 166
    sput-boolean v0, Lcom/carlos/eventlibrary/EventMailer;->isHold:Z

    .line 167
    sget-object v1, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    sget v2, Lcom/carlos/eventlibrary/EventMailer;->staticLength:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    .line 169
    :cond_0
    :goto_0
    sget-object v1, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/carlos/eventlibrary/EventMailer;->staticLength:I

    if-lt v1, v2, :cond_1

    .line 170
    sget-object v1, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :cond_1
    sget-object v1, Lcom/carlos/eventlibrary/EventMailer;->eventMailList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterReceiver(Lcom/carlos/eventlibrary/IEventReceiver;)V
    .locals 2

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/carlos/eventlibrary/EventMailer;->checkEventMailer()V

    .line 112
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/carlos/eventlibrary/EventMailer;->softList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
