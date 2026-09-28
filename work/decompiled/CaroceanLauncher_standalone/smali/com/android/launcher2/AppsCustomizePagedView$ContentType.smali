.class public final enum Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
.super Ljava/lang/Enum;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher2/AppsCustomizePagedView$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

.field public static final enum Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 270
    new-instance v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    const-string v1, "Applications"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    aput-object v0, v1, v2

    .line 269
    sput-object v1, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->$VALUES:[Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 269
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    .locals 1

    .line 269
    const-class v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    .locals 1

    .line 269
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->$VALUES:[Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0}, [Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    return-object v0
.end method
