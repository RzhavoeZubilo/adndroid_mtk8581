.class final enum Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WallpaperVerticalOffset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

.field public static final enum BOTTOM:Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

.field public static final enum MIDDLE:Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

.field public static final enum TOP:Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 197
    new-instance v0, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;->TOP:Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    new-instance v1, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;->MIDDLE:Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    new-instance v3, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;->BOTTOM:Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;->$VALUES:[Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;
    .locals 1

    .line 197
    const-class v0, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;
    .locals 1

    .line 197
    sget-object v0, Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;->$VALUES:[Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    invoke-virtual {v0}, [Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;

    return-object v0
.end method
