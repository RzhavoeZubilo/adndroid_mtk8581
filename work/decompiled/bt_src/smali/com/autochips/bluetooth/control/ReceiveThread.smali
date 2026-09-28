.class Lcom/autochips/bluetooth/control/ReceiveThread;
.super Landroid/os/HandlerThread;
.source "ReceiveThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReceiveThread"


# instance fields
.field private data:[B

.field private input:Ljava/io/InputStream;

.field private keepRunning:Z

.field private receiveListener:Lcom/autochips/bluetooth/control/OnReceiveListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->keepRunning:Z

    .line 24
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/autochips/bluetooth/control/ReceiveThread;->setInputStream(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    const-string v0, "ReceiveThread"

    const-string v1, "exit"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->keepRunning:Z

    .line 51
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/ReceiveThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "exit 1"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "exit 2"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/ReceiveThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/ReceiveThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    const-string v0, "ReceiveThread"

    const-string v1, "run start."

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 75
    :goto_0
    iget-boolean v1, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->keepRunning:Z

    if-eqz v1, :cond_4

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 79
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->keepRunning:Z

    if-eqz v2, :cond_3

    if-lez v1, :cond_3

    .line 80
    sget-boolean v2, Lcom/autochips/bluetooth/control/Bluetooth;->ispoweroff:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->input:Ljava/io/InputStream;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 82
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    sput v3, Lcom/autochips/bluetooth/control/Bluetooth;->remaindatalen:I

    const-string v1, "btState STATE OFF"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    goto :goto_2

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->input:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->data:[B

    array-length v5, v4

    invoke-virtual {v2, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    if-lez v2, :cond_0

    .line 90
    iget-object v3, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->receiveListener:Lcom/autochips/bluetooth/control/OnReceiveListener;

    if-eqz v3, :cond_0

    .line 91
    iget-object v4, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->data:[B

    invoke-interface {v3, v2, v4}, Lcom/autochips/bluetooth/control/OnReceiveListener;->onReceive(I[B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_3
    :goto_2
    const-wide/16 v1, 0x64

    .line 97
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 100
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 104
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    const-string v1, " run exit."

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 35
    iput-object p1, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->input:Ljava/io/InputStream;

    .line 36
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->data:[B

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Parameters error."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReceiveListener(Lcom/autochips/bluetooth/control/OnReceiveListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->receiveListener:Lcom/autochips/bluetooth/control/OnReceiveListener;

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "ReceiveThread"

    const-string v1, "start"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/ReceiveThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/autochips/bluetooth/control/ReceiveThread;->keepRunning:Z

    .line 45
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    return-void
.end method
