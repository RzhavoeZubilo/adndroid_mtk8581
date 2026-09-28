.class public final enum Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;
.super Ljava/lang/Enum;
.source "PopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/PopDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "E_POPDIALOG_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

.field public static final enum ePopDialog_carset_list:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

.field public static final enum ePopDialog_carset_seekbar:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

.field public static final enum ePopDialog_carset_text:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

.field public static final enum ePopDialog_choose:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 33
    new-instance v0, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    const-string v1, "ePopDialog_choose"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_choose:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    new-instance v1, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    const-string v3, "ePopDialog_carset_list"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_carset_list:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    new-instance v3, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    const-string v5, "ePopDialog_carset_seekbar"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_carset_seekbar:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    new-instance v5, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    const-string v7, "ePopDialog_carset_text"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->ePopDialog_carset_text:Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 32
    sput-object v7, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->$VALUES:[Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;
    .locals 1

    .line 32
    const-class v0, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;
    .locals 1

    .line 32
    sget-object v0, Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->$VALUES:[Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    invoke-virtual {v0}, [Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/can/ui/draw/PopDialog$E_POPDIALOG_TYPE;

    return-object v0
.end method
