.class final enum Lcom/android/launcher2/Workspace$State;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher2/Workspace$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/Workspace$State;

.field public static final enum NORMAL:Lcom/android/launcher2/Workspace$State;

.field public static final enum SMALL:Lcom/android/launcher2/Workspace$State;

.field public static final enum SPRING_LOADED:Lcom/android/launcher2/Workspace$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 176
    new-instance v0, Lcom/android/launcher2/Workspace$State;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    new-instance v1, Lcom/android/launcher2/Workspace$State;

    const-string v3, "SPRING_LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/launcher2/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    new-instance v3, Lcom/android/launcher2/Workspace$State;

    const-string v5, "SMALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/launcher2/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/launcher2/Workspace$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/launcher2/Workspace$State;->$VALUES:[Lcom/android/launcher2/Workspace$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/Workspace$State;
    .locals 1

    .line 176
    const-class v0, Lcom/android/launcher2/Workspace$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Workspace$State;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher2/Workspace$State;
    .locals 1

    .line 176
    sget-object v0, Lcom/android/launcher2/Workspace$State;->$VALUES:[Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v0}, [Lcom/android/launcher2/Workspace$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method
