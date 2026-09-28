.class public final enum Lcom/android/launcher2/PagedViewIconCache$Key$Type;
.super Ljava/lang/Enum;
.source "PagedViewIconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedViewIconCache$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher2/PagedViewIconCache$Key$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/PagedViewIconCache$Key$Type;

.field public static final enum AppWidgetProviderInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

.field public static final enum ApplicationInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

.field public static final enum ResolveInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 36
    new-instance v0, Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    const-string v1, "ApplicationInfoKey"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedViewIconCache$Key$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->ApplicationInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    .line 37
    new-instance v1, Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    const-string v3, "AppWidgetProviderInfoKey"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/launcher2/PagedViewIconCache$Key$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->AppWidgetProviderInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    .line 38
    new-instance v3, Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    const-string v5, "ResolveInfoKey"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/launcher2/PagedViewIconCache$Key$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->ResolveInfoKey:Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 35
    sput-object v5, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->$VALUES:[Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/PagedViewIconCache$Key$Type;
    .locals 1

    .line 35
    const-class v0, Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher2/PagedViewIconCache$Key$Type;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/launcher2/PagedViewIconCache$Key$Type;->$VALUES:[Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    invoke-virtual {v0}, [Lcom/android/launcher2/PagedViewIconCache$Key$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/PagedViewIconCache$Key$Type;

    return-object v0
.end method
