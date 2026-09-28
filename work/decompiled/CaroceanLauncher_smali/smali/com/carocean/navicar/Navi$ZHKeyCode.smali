.class public Lcom/carocean/navicar/Navi$ZHKeyCode;
.super Ljava/lang/Object;
.source "Navi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/Navi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZHKeyCode"
.end annotation


# static fields
.field private static final KEYCODE_MAP:Landroid/util/SparseIntArray;

.field private static final KEYCODE_MAP_MMI:Landroid/util/SparseIntArray;

.field public static final K_BLUETOOTH:I = 0x14

.field public static final K_ENTER:I = 0x17

.field public static final K_ISSSR:I = 0x4

.field public static final K_MUTE:I = 0x3

.field public static final K_NAVI:I = 0x5

.field public static final K_RETURN:I = 0x16

.field public static final K_SOURCE_HOME:I = 0x15

.field public static final K_SOURCE_MODE:I = 0x13

.field public static final K_STAR:I = 0x6

.field public static final K_VOL_DN:I = 0x2

.field public static final K_VOL_UP:I = 0x1

.field public static final MMI_ARM_OR_ORIGINAL_VEHICLE:I = 0x3d

.field public static final MMI_BACK:I = 0x22

.field public static final MMI_BTON:I = 0xe

.field public static final MMI_CAR:I = 0xc

.field public static final MMI_DOWN:I = 0x12

.field public static final MMI_FASTB:I = 0x2

.field public static final MMI_FASTF:I = 0x3

.field public static final MMI_LEFT:I = 0x13

.field public static final MMI_LEFT_BRACKET:I = 0x3a

.field public static final MMI_LEVEL_DOWN:I = 0x82

.field public static final MMI_LEVEL_UP:I = 0x81

.field public static final MMI_LEXUS_PHONE_OFF:I = 0x91

.field public static final MMI_LEXUS_PHONE_ON:I = 0x90

.field public static final MMI_MEDIA:I = 0xb

.field public static final MMI_MENU:I = 0x21

.field public static final MMI_NAVI:I = 0x8

.field public static final MMI_NUM1:I = 0x32

.field public static final MMI_NUM2:I = 0x33

.field public static final MMI_NUM3:I = 0x34

.field public static final MMI_NUM4:I = 0x35

.field public static final MMI_NUM5:I = 0x36

.field public static final MMI_NUM6:I = 0x37

.field public static final MMI_NUM7:I = 0x38

.field public static final MMI_NUM8:I = 0x39

.field public static final MMI_OK:I = 0x31

.field public static final MMI_POW:I = 0x1

.field public static final MMI_RADIO:I = 0xa

.field public static final MMI_RIGHT:I = 0x14

.field public static final MMI_RIGHT_BRACKET:I = 0x3b

.field public static final MMI_SETTING:I = 0xf

.field public static final MMI_TEL:I = 0x9

.field public static final MMI_TONE:I = 0xd

.field public static final MMI_TO_ORIGINAL_VEHICLE:I = 0x3c

.field public static final MMI_TURNB:I = 0x83

.field public static final MMI_TURNF:I = 0x84

.field public static final MMI_UP:I = 0x11

.field public static final T_FASTB:I = 0x12

.field public static final T_FASTF:I = 0x11


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 521
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/carocean/navicar/Navi$ZHKeyCode;->KEYCODE_MAP:Landroid/util/SparseIntArray;

    .line 522
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/carocean/navicar/Navi$ZHKeyCode;->KEYCODE_MAP_MMI:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    const/16 v3, 0x18

    .line 525
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x2

    const/16 v3, 0x19

    .line 526
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x3

    const/16 v4, 0xa4

    .line 527
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x4

    const/16 v5, 0x121

    .line 528
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v6, 0x5

    const/16 v7, 0x122

    .line 529
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v6, 0x6

    const/16 v8, 0x11

    .line 530
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x57

    .line 531
    invoke-virtual {v0, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v9, 0x12

    const/16 v10, 0x58

    .line 532
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v11, 0x13

    const/16 v12, 0x123

    .line 533
    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x14

    const/16 v13, 0x124

    .line 534
    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x15

    .line 535
    invoke-virtual {v0, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v15, 0x16

    .line 536
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v15, 0x17

    const/16 v14, 0x125

    .line 537
    invoke-virtual {v0, v15, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 539
    invoke-virtual {v1, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 540
    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x8

    .line 541
    invoke-virtual {v1, v0, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x9

    .line 542
    invoke-virtual {v1, v0, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xa

    const/16 v2, 0x126

    .line 543
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xb

    const/16 v2, 0x127

    .line 544
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xd

    .line 545
    invoke-virtual {v1, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 546
    invoke-virtual {v1, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 547
    invoke-virtual {v1, v9, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x128

    .line 548
    invoke-virtual {v1, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x129

    .line 549
    invoke-virtual {v1, v12, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x21

    .line 550
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x22

    .line 551
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x31

    const/16 v2, 0x42

    .line 552
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x32

    const/16 v2, 0x91

    .line 553
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x33

    const/16 v3, 0x92

    .line 554
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x34

    const/16 v3, 0x93

    .line 555
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x35

    const/16 v3, 0x94

    .line 556
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x36

    const/16 v3, 0x95

    .line 557
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x37

    const/16 v3, 0x96

    .line 558
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x38

    const/16 v3, 0x97

    .line 559
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x39

    const/16 v3, 0x98

    .line 560
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x81

    const/16 v3, 0x47

    .line 561
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x82

    const/16 v4, 0x48

    .line 562
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x3a

    .line 563
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x3b

    .line 564
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x3c

    const/16 v3, 0x12f

    .line 565
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x3d

    const/16 v3, 0x130

    .line 566
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x83

    const/16 v3, 0x15

    .line 567
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x84

    const/16 v3, 0x16

    .line 568
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xe

    const/16 v3, 0x12a

    .line 569
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xf

    const/16 v3, 0x12c

    .line 570
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x90

    const/16 v3, 0x12d

    .line 571
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x12e

    .line 572
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyCode(I)I
    .locals 2

    .line 576
    sget-object v0, Lcom/carocean/navicar/Navi$ZHKeyCode;->KEYCODE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public static getMMIKeyCode(I)I
    .locals 2

    .line 580
    sget-object v0, Lcom/carocean/navicar/Navi$ZHKeyCode;->KEYCODE_MAP_MMI:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method
