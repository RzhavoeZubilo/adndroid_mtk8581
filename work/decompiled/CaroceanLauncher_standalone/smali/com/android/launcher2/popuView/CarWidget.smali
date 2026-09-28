.class public Lcom/android/launcher2/popuView/CarWidget;
.super Landroid/widget/LinearLayout;
.source "CarWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_NOTIFICATION_NEXT:Ljava/lang/String; = "com.yecon.action.MEDIA_NEXT"

.field public static final ACTION_NOTIFICATION_PLAYE_ONLYPAUSE:Ljava/lang/String; = "com.yecon.action.MEDIA_PAUSE"

.field public static final ACTION_NOTIFICATION_PLAYE_ONLYPLAY:Ljava/lang/String; = "com.yecon.action.MEDIA_PLAY"

.field public static final ACTION_NOTIFICATION_PLAYE_PAUSE:Ljava/lang/String; = "com.yecon.action.MEDIA_PLAY_PAUSE"

.field public static final ACTION_NOTIFICATION_PRE:Ljava/lang/String; = "com.yecon.action.MEDIA_PREVIOUS"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activityManager:Landroid/app/ActivityManager;

.field private mCurSource:I

.field mHandler:Landroid/os/Handler;

.field mNextBtn:Landroid/view/View;

.field mPlaypauseBtn:Landroid/view/View;

.field mPrevBtn:Landroid/view/View;

.field private mRunable:Ljava/lang/Runnable;

.field mTitleColor:I

.field mTitleSize:F

.field tvText:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/popuView/CarWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/popuView/CarWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "CarWidget_Launcher3"

    .line 25
    iput-object p3, p0, Lcom/android/launcher2/popuView/CarWidget;->TAG:Ljava/lang/String;

    const/4 p3, 0x0

    .line 31
    iput-object p3, p0, Lcom/android/launcher2/popuView/CarWidget;->mPrevBtn:Landroid/view/View;

    .line 32
    iput-object p3, p0, Lcom/android/launcher2/popuView/CarWidget;->mPlaypauseBtn:Landroid/view/View;

    .line 33
    iput-object p3, p0, Lcom/android/launcher2/popuView/CarWidget;->mNextBtn:Landroid/view/View;

    const p3, -0xffff01

    .line 35
    iput p3, p0, Lcom/android/launcher2/popuView/CarWidget;->mTitleColor:I

    const/high16 v0, 0x41c00000    # 24.0f

    .line 36
    iput v0, p0, Lcom/android/launcher2/popuView/CarWidget;->mTitleSize:F

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcom/android/launcher2/popuView/CarWidget;->mCurSource:I

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/popuView/CarWidget;->mHandler:Landroid/os/Handler;

    .line 258
    new-instance v1, Lcom/android/launcher2/popuView/CarWidget$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/popuView/CarWidget$2;-><init>(Lcom/android/launcher2/popuView/CarWidget;)V

    iput-object v1, p0, Lcom/android/launcher2/popuView/CarWidget;->mRunable:Ljava/lang/Runnable;

    .line 52
    sget-object v1, Lcom/yecon/launcher1/R$styleable;->CarWidget:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/popuView/CarWidget;->mTitleColor:I

    const/4 p2, 0x1

    .line 54
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher2/popuView/CarWidget;->mTitleSize:F

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CarWidget;->initSaveData()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/popuView/CarWidget;)I
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/launcher2/popuView/CarWidget;->getCurSource()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher2/popuView/CarWidget;I)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/CarWidget;->isSupportSource(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/popuView/CarWidget;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/launcher2/popuView/CarWidget;->mCurSource:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/launcher2/popuView/CarWidget;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/android/launcher2/popuView/CarWidget;->mCurSource:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/popuView/CarWidget;I)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/CarWidget;->isSourceAlive(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/launcher2/popuView/CarWidget;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/launcher2/popuView/CarWidget;->mRunable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getCurSource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isSourceAlive(I)Z
    .locals 1

    .line 330
    iget-object p0, p0, Lcom/android/launcher2/popuView/CarWidget;->activityManager:Landroid/app/ActivityManager;

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 331
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 332
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 333
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportSource(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private sendKeyCode(I)V
    .locals 1

    .line 246
    new-instance v0, Lcom/android/launcher2/popuView/CarWidget$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/popuView/CarWidget$1;-><init>(Lcom/android/launcher2/popuView/CarWidget;I)V

    .line 255
    invoke-virtual {v0}, Lcom/android/launcher2/popuView/CarWidget$1;->start()V

    return-void
.end method


# virtual methods
.method initSaveData()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CarWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/launcher2/popuView/CarWidget;->activityManager:Landroid/app/ActivityManager;

    .line 96
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher2/popuView/CarWidget;->mRunable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CarWidget;->setupViews()V

    return-void
.end method

.method setupViews()V
    .locals 2

    const v0, 0x7f080099

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/CarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/CarWidget;->mPrevBtn:Landroid/view/View;

    const v0, 0x7f080098

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/CarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/CarWidget;->mPlaypauseBtn:Landroid/view/View;

    const v0, 0x7f080097

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/CarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/CarWidget;->mNextBtn:Landroid/view/View;

    const v0, 0x7f080095

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/CarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget;->mPrevBtn:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/popuView/CarWidget;->mPlaypauseBtn:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/popuView/CarWidget;->mNextBtn:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget;->mPlaypauseBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/launcher2/popuView/CarWidget;->mNextBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method updateMediaInfo()V
    .locals 0

    return-void
.end method
