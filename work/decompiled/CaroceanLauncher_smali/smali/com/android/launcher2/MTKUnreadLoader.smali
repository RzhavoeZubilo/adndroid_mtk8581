.class public Lcom/android/launcher2/MTKUnreadLoader;
.super Landroid/content/BroadcastReceiver;
.source "MTKUnreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MTKUnreadLoader$UnreadCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "MTKUnreadLoader"

.field private static final TAG_UNREADSHORTCUTS:Ljava/lang/String; = "unreadshortcuts"

.field private static final UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/UnreadSupportShortcut;",
            ">;"
        }
    .end annotation
.end field

.field private static sUnreadSupportShortcutsNum:I


# instance fields
.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher2/MTKUnreadLoader$UnreadCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MTKUnreadLoader;->UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 73
    sput v0, Lcom/android/launcher2/MTKUnreadLoader;->sUnreadSupportShortcutsNum:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/MTKUnreadLoader;->LOG_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/launcher2/MTKUnreadLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MTKUnreadLoader;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/launcher2/MTKUnreadLoader;->loadUnreadSupportShortcuts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/MTKUnreadLoader;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/launcher2/MTKUnreadLoader;->initUnreadNumberFromSystem()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/MTKUnreadLoader;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/launcher2/MTKUnreadLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static drawUnreadEventIfNeed(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    if-eqz v1, :cond_b

    .line 322
    iget v2, v1, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    if-lez v2, :cond_b

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 326
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const v4, 0x7f0600aa

    .line 327
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 328
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v4, -0x1

    .line 329
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 332
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const v5, 0x7f0600ab

    .line 333
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v5, "+"

    .line 337
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 339
    iget v9, v1, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    const/16 v10, 0x63

    if-le v9, v10, :cond_0

    .line 340
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    .line 341
    invoke-virtual {v4, v5, v7, v11, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 343
    :cond_0
    iget v9, v1, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 345
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3, v9, v7, v11, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 346
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 347
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    const v13, 0x7f070256

    .line 350
    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/NinePatchDrawable;

    .line 351
    invoke-virtual {v13}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v14

    .line 352
    invoke-virtual {v13}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v15

    const v10, 0x7f0600a8

    .line 354
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    if-ge v14, v10, :cond_1

    move v14, v10

    :cond_1
    const v10, 0x7f0600a9

    .line 358
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v12, v10

    if-ge v14, v12, :cond_2

    move v14, v12

    :cond_2
    if-ge v15, v11, :cond_3

    move v15, v11

    .line 365
    :cond_3
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7, v7, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 366
    invoke-virtual {v13, v10}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 370
    instance-of v10, v1, Lcom/android/launcher2/ShortcutInfo;

    const v7, 0x7f060063

    const-wide/16 v17, -0x64

    const-wide/16 v19, -0x65

    if-eqz v10, :cond_6

    move-object v10, v13

    .line 371
    iget-wide v12, v1, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v12, v12, v19

    if-nez v12, :cond_4

    .line 372
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const v12, 0x7f060062

    .line 373
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1
    float-to-int v2, v2

    move/from16 v16, v7

    move v7, v2

    goto :goto_2

    .line 374
    :cond_4
    iget-wide v12, v1, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v7, v12, v17

    if-nez v7, :cond_5

    const v7, 0x7f0600da

    .line 375
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const v12, 0x7f0600d9

    .line 376
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1

    :cond_5
    const v7, 0x7f06005a

    .line 378
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const v12, 0x7f060059

    .line 379
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1

    :cond_6
    move-object v10, v13

    .line 381
    instance-of v12, v1, Lcom/android/launcher2/FolderInfo;

    if-eqz v12, :cond_8

    .line 382
    iget-wide v12, v1, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v12, v12, v19

    if-nez v12, :cond_7

    .line 383
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const v12, 0x7f060062

    .line 384
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1

    .line 385
    :cond_7
    iget-wide v12, v1, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v7, v12, v17

    if-nez v7, :cond_9

    const v7, 0x7f0600da

    .line 386
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const v12, 0x7f0600d9

    .line 387
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1

    .line 390
    :cond_8
    instance-of v7, v1, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v7, :cond_9

    const v7, 0x7f060009

    .line 391
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const v12, 0x7f060008

    .line 392
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    const/16 v16, 0x0

    .line 395
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v2, v12

    sub-int/2addr v2, v14

    sub-int/2addr v2, v7

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int v7, v7, v16

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v2

    int-to-float v7, v7

    .line 399
    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 401
    invoke-virtual {v10, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 404
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 405
    iget v1, v1, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    const/16 v7, 0x63

    if-le v1, v7, :cond_a

    .line 407
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v14, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-int/2addr v15, v11

    div-int/lit8 v15, v15, 0x2

    int-to-float v7, v15

    .line 406
    invoke-virtual {v0, v9, v1, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 411
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v14, v1

    div-int/lit8 v14, v14, 0x2

    int-to-float v1, v14

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v7, v2

    .line 410
    invoke-virtual {v0, v5, v1, v7, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 415
    :cond_a
    div-int/lit8 v14, v14, 0x2

    int-to-float v1, v14

    add-int/2addr v15, v11

    div-int/lit8 v15, v15, 0x2

    int-to-float v2, v15

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 421
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    return-void
.end method

.method static declared-synchronized getUnreadNumberAt(I)I
    .locals 4

    const-class v0, Lcom/android/launcher2/MTKUnreadLoader;

    monitor-enter v0

    if-ltz p0, :cond_2

    .line 292
    :try_start_0
    sget v1, Lcom/android/launcher2/MTKUnreadLoader;->sUnreadSupportShortcutsNum:I

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v1, :cond_1

    const-string v1, "MTKUnreadLoader"

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnreadNumberAt: index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    invoke-static {}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadSupportShortcutInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {v1, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    sget-object v1, Lcom/android/launcher2/MTKUnreadLoader;->UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/UnreadSupportShortcut;

    iget p0, p0, Lcom/android/launcher2/UnreadSupportShortcut;->mUnreadNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 293
    monitor-exit v0

    return p0
.end method

.method static getUnreadNumberOfComponent(Landroid/content/ComponentName;)I
    .locals 0

    .line 309
    invoke-static {p0}, Lcom/android/launcher2/MTKUnreadLoader;->supportUnreadFeature(Landroid/content/ComponentName;)I

    move-result p0

    .line 310
    invoke-static {p0}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadNumberAt(I)I

    move-result p0

    return p0
.end method

.method private static getUnreadSupportShortcutInfo()Ljava/lang/String;
    .locals 3

    const-string v0, " Unread support shortcuts are "

    .line 233
    sget-object v1, Lcom/android/launcher2/MTKUnreadLoader;->LOG_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MTKUnreadLoader;->UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initUnreadNumberFromSystem()V
    .locals 7

    .line 154
    iget-object p0, p0, Lcom/android/launcher2/MTKUnreadLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 155
    sget v0, Lcom/android/launcher2/MTKUnreadLoader;->sUnreadSupportShortcutsNum:I

    const/4 v1, 0x0

    :goto_0
    const-string v2, "MTKUnreadLoader"

    if-ge v1, v0, :cond_1

    .line 158
    sget-object v3, Lcom/android/launcher2/MTKUnreadLoader;->UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/UnreadSupportShortcut;

    .line 160
    :try_start_0
    iget-object v4, v3, Lcom/android/launcher2/UnreadSupportShortcut;->mKey:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/launcher2/UnreadSupportShortcut;->mUnreadNum:I

    .line 161
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v4, :cond_0

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initUnreadNumberFromSystem: key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/launcher2/UnreadSupportShortcut;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", unreadNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/launcher2/UnreadSupportShortcut;->mUnreadNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initUnreadNumberFromSystem SettingNotFoundException key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/android/launcher2/UnreadSupportShortcut;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", e = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 167
    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v2, v3}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz p0, :cond_2

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initUnreadNumberFromSystem end:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadSupportShortcutInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private loadUnreadSupportShortcuts()V
    .locals 14

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG_PERFORMANCE:Z

    if-eqz v2, :cond_0

    const-string v2, "MTKUnreadLoader"

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadUnreadSupportShortcuts begin: start = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    sget-object v2, Lcom/android/launcher2/MTKUnreadLoader;->UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/MTKUnreadLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 187
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const-string v4, "unreadshortcuts"

    .line 188
    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 190
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 193
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_3

    :cond_1
    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    goto :goto_0

    .line 200
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/MTKUnreadLoader;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/yecon/launcher1/R$styleable;->UnreadShortcut:[I

    invoke-virtual {v5, v3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 201
    sget-object v9, Lcom/android/launcher2/MTKUnreadLoader;->LOG_LOCK:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :try_start_1
    sget-object v10, Lcom/android/launcher2/MTKUnreadLoader;->UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/launcher2/UnreadSupportShortcut;

    .line 203
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    .line 204
    invoke-virtual {v5, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 205
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-direct {v11, v8, v13, v7, v6}, Lcom/android/launcher2/UnreadSupportShortcut;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 207
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v2, "MTKUnreadLoader"

    const-string v3, "Got IOException while parsing unread shortcuts."

    .line 214
    invoke-static {v2, v3, p0}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v2, "MTKUnreadLoader"

    const-string v3, "Got XmlPullParserException while parsing unread shortcuts."

    .line 212
    invoke-static {v2, v3, p0}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/launcher2/MTKUnreadLoader;->UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sput p0, Lcom/android/launcher2/MTKUnreadLoader;->sUnreadSupportShortcutsNum:I

    .line 217
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_PERFORMANCE:Z

    if-eqz p0, :cond_4

    const-string p0, "MTKUnreadLoader"

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadUnreadSupportShortcuts end: time used = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sUnreadSupportShortcutsNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher2/MTKUnreadLoader;->sUnreadSupportShortcutsNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadSupportShortcutInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {p0, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static declared-synchronized setUnreadNumberAt(II)Z
    .locals 4

    const-class v0, Lcom/android/launcher2/MTKUnreadLoader;

    monitor-enter v0

    if-gez p0, :cond_0

    .line 271
    :try_start_0
    sget v1, Lcom/android/launcher2/MTKUnreadLoader;->sUnreadSupportShortcutsNum:I

    if-ge p0, v1, :cond_2

    .line 272
    :cond_0
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v1, :cond_1

    const-string v1, "MTKUnreadLoader"

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUnreadNumberAt: index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",unreadNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    invoke-static {}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadSupportShortcutInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v1, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    sget-object v1, Lcom/android/launcher2/MTKUnreadLoader;->UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/UnreadSupportShortcut;

    iget v2, v2, Lcom/android/launcher2/UnreadSupportShortcut;->mUnreadNum:I

    if-eq v2, p1, :cond_2

    .line 277
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/UnreadSupportShortcut;

    iput p1, p0, Lcom/android/launcher2/UnreadSupportShortcut;->mUnreadNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    .line 278
    monitor-exit v0

    return p0

    :cond_2
    const/4 p0, 0x0

    .line 281
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static supportUnreadFeature(Landroid/content/ComponentName;)I
    .locals 4

    .line 246
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportUnreadFeature: component = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTKUnreadLoader"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    if-nez p0, :cond_1

    return v0

    .line 253
    :cond_1
    sget-object v1, Lcom/android/launcher2/MTKUnreadLoader;->UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 255
    sget-object v3, Lcom/android/launcher2/MTKUnreadLoader;->UNREAD_SUPPORT_SHORTCUTS:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/UnreadSupportShortcut;

    iget-object v3, v3, Lcom/android/launcher2/UnreadSupportShortcut;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public initialize(Lcom/android/launcher2/MTKUnreadLoader$UnreadCallbacks;)V
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/MTKUnreadLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 117
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize: callbacks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mCallbacks = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher2/MTKUnreadLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MTKUnreadLoader"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method loadAndInitUnreadShortcuts()V
    .locals 1

    .line 128
    new-instance v0, Lcom/android/launcher2/MTKUnreadLoader$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MTKUnreadLoader$1;-><init>(Lcom/android/launcher2/MTKUnreadLoader;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 145
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MTKUnreadLoader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    return-void
.end method
