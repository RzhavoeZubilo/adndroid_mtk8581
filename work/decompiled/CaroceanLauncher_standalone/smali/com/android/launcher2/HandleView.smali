.class public Lcom/android/launcher2/HandleView;
.super Landroid/widget/ImageView;
.source "HandleView.java"


# static fields
.field private static final ORIENTATION_HORIZONTAL:I = 0x1


# instance fields
.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/android/launcher2/HandleView;->mOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/android/launcher2/HandleView;->mOrientation:I

    .line 46
    sget-object v1, Lcom/yecon/launcher1/R$styleable;->HandleView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 47
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher2/HandleView;->mOrientation:I

    .line 48
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f0c0006

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HandleView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public focusSearch(I)Landroid/view/View;
    .locals 3

    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/launcher2/HandleView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/launcher2/HandleView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/Workspace;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .line 59
    iget v1, p0, Lcom/android/launcher2/HandleView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HandleView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/launcher2/HandleView;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method
