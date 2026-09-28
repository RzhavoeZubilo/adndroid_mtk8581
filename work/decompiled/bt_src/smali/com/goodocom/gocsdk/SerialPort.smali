.class public Lcom/goodocom/gocsdk/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_lp
    const-string v0, "serial_port"

    .line 86
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_lp
    .catch Ljava/lang/Throwable; {:try_start_lp .. :try_end_lp} :catch_lp

    :catch_lp
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/goodocom/gocsdk/SerialPort;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/goodocom/gocsdk/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_0

    .line 66
    new-instance p1, Ljava/io/FileInputStream;

    iget-object p2, p0, Lcom/goodocom/gocsdk/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcom/goodocom/gocsdk/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    .line 67
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lcom/goodocom/gocsdk/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcom/goodocom/gocsdk/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-void

    :cond_0
    const-string p1, "SerialPort"

    const-string p2, "native open returns null"

    .line 62
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method private static open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Emulated serial port"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/goodocom/gocsdk/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/goodocom/gocsdk/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method
