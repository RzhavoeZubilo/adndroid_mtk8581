.class Lcom/can/assist/CanKey$CANKEY_INFO;
.super Ljava/lang/Object;
.source "CanKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CANKEY_INFO"
.end annotation


# instance fields
.field public bCombination:Z

.field public bExeOnceLongClick:Z

.field public bInternal:Z

.field public bLongClick:Z

.field public bLongInternal:Z

.field public iKeyState:I

.field public iKnobStep:I

.field public strKeyCode:Ljava/lang/String;

.field public strLongKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/can/assist/CanKey;


# direct methods
.method private constructor <init>(Lcom/can/assist/CanKey;)V
    .locals 1

    .line 187
    iput-object p1, p0, Lcom/can/assist/CanKey$CANKEY_INFO;->this$0:Lcom/can/assist/CanKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Lcom/can/assist/CanKey$CANKEY_INFO;->bExeOnceLongClick:Z

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/can/assist/CanKey$CANKEY_INFO;->iKeyState:I

    .line 192
    iput v0, p0, Lcom/can/assist/CanKey$CANKEY_INFO;->iKnobStep:I

    .line 193
    iput-boolean v0, p0, Lcom/can/assist/CanKey$CANKEY_INFO;->bLongInternal:Z

    .line 194
    iput-boolean v0, p0, Lcom/can/assist/CanKey$CANKEY_INFO;->bInternal:Z

    .line 195
    iput-boolean p1, p0, Lcom/can/assist/CanKey$CANKEY_INFO;->bCombination:Z

    .line 196
    iput-boolean v0, p0, Lcom/can/assist/CanKey$CANKEY_INFO;->bLongClick:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/can/assist/CanKey;Lcom/can/assist/CanKey$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/can/assist/CanKey$CANKEY_INFO;-><init>(Lcom/can/assist/CanKey;)V

    return-void
.end method
