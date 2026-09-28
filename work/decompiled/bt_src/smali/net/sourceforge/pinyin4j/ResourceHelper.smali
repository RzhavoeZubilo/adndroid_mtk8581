.class Lnet/sourceforge/pinyin4j/ResourceHelper;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getResourceInputStream(Ljava/lang/String;)Ljava/io/BufferedInputStream;
    .locals 2

    .line 33
    new-instance v0, Ljava/io/BufferedInputStream;

    const-class v1, Lnet/sourceforge/pinyin4j/ResourceHelper;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
