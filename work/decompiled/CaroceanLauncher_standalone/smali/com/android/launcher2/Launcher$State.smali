.class final enum Lcom/android/launcher2/Launcher$State;
.super Ljava/lang/Enum;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher2/Launcher$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/Launcher$State;

.field public static final enum APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

.field public static final enum APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

.field public static final enum NONE:Lcom/android/launcher2/Launcher$State;

.field public static final enum WORKSPACE:Lcom/android/launcher2/Launcher$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 231
    new-instance v0, Lcom/android/launcher2/Launcher$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Launcher$State;->NONE:Lcom/android/launcher2/Launcher$State;

    new-instance v1, Lcom/android/launcher2/Launcher$State;

    const-string v3, "WORKSPACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/launcher2/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    new-instance v3, Lcom/android/launcher2/Launcher$State;

    const-string v5, "APPS_CUSTOMIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/launcher2/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    new-instance v5, Lcom/android/launcher2/Launcher$State;

    const-string v7, "APPS_CUSTOMIZE_SPRING_LOADED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/launcher2/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/launcher2/Launcher$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/launcher2/Launcher$State;->$VALUES:[Lcom/android/launcher2/Launcher$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/Launcher$State;
    .locals 1

    .line 231
    const-class v0, Lcom/android/launcher2/Launcher$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Launcher$State;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher2/Launcher$State;
    .locals 1

    .line 231
    sget-object v0, Lcom/android/launcher2/Launcher$State;->$VALUES:[Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0}, [Lcom/android/launcher2/Launcher$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/Launcher$State;

    return-object v0
.end method
