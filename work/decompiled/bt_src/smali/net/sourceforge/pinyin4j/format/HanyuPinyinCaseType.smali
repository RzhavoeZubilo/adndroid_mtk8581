.class public Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;
.super Ljava/lang/Object;
.source "HanyuPinyinCaseType.java"


# static fields
.field public static final LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

.field public static final UPPERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    const-string v1, "UPPERCASE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->UPPERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    .line 56
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    const-string v1, "LOWERCASE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->name:Ljava/lang/String;

    return-void
.end method
