.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Folder$GridComparator;
    }
.end annotation


# static fields
.field private static final ON_EXIT_CLOSE_DELAY:I = 0x320

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field static final STATE_ANIMATING:I = 0x1

.field static final STATE_NONE:I = -0x1

.field static final STATE_OPEN:I = 0x2

.field static final STATE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sHintText:Ljava/lang/String;


# instance fields
.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field protected mContent:Lcom/android/launcher2/CellLayout;

.field private mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

.field private mCurrentDragView:Landroid/view/View;

.field private mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z

.field protected mDragController:Lcom/android/launcher2/DragController;

.field private mDragInProgress:Z

.field private mEmptyCell:[I

.field private mExpandDuration:I

.field private mFolderIcon:Lcom/android/launcher2/FolderIcon;

.field private mFolderIconPivotX:F

.field private mFolderIconPivotY:F

.field mFolderName:Lcom/android/launcher2/FolderEditText;

.field private mFolderNameHeight:I

.field private final mIconCache:Lcom/android/launcher2/IconCache;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/android/launcher2/FolderInfo;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field private mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxCountX:I

.field private mMaxCountY:I

.field private mMaxNumItems:I

.field private mOnExitAlarm:Lcom/android/launcher2/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher2/OnAlarmListener;

.field private mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

.field private mPreviousTargetCell:[I

.field private mRearrangeOnClose:Z

.field private mReorderAlarm:Lcom/android/launcher2/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

.field private mState:I

.field private mSuppressFolderDeletion:Z

.field mSuppressOnAdd:Z

.field private mTargetCell:[I

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 76
    iput p2, p0, Lcom/android/launcher2/Folder;->mState:I

    const/4 p2, 0x0

    .line 79
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 86
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 89
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 90
    iput-object v1, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    new-array v1, v0, [I

    .line 91
    iput-object v1, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    new-array v0, v0, [I

    .line 92
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    .line 93
    new-instance v0, Lcom/android/launcher2/Alarm;

    invoke-direct {v0}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 94
    new-instance v0, Lcom/android/launcher2/Alarm;

    invoke-direct {v0}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    .line 97
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    .line 98
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 99
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    .line 100
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 105
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 183
    new-instance v0, Lcom/android/launcher2/Folder$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Folder$1;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 611
    new-instance v0, Lcom/android/launcher2/Folder$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Folder$6;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    .line 708
    new-instance v0, Lcom/android/launcher2/Folder$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Folder$7;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    .line 122
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {p2}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher2/Folder;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f090023

    .line 127
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    const v0, 0x7f090024

    .line 128
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    const v0, 0x7f090025

    .line 129
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    .line 130
    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    if-ltz v1, :cond_0

    if-gez v0, :cond_1

    .line 131
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    .line 132
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    .line 133
    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f09001d

    .line 139
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 141
    sget-object v0, Lcom/android/launcher2/Folder;->sDefaultFolderName:Ljava/lang/String;

    if-nez v0, :cond_2

    const v0, 0x7f0c0048

    .line 142
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Folder;->sDefaultFolderName:Ljava/lang/String;

    .line 144
    :cond_2
    sget-object v0, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    if-nez v0, :cond_3

    const v0, 0x7f0c0047

    .line 145
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    .line 147
    :cond_3
    check-cast p1, Lcom/android/launcher2/Launcher;

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 p1, 0x1

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Folder;ILjava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher2/Folder;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/launcher2/Folder;->mState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/Folder;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setFocusOnFirstChild()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/Folder;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Folder;)[I
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Folder;)[I
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Folder;[I[I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;->realTimeReorder([I[I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIcon;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object p0
.end method

.method private arrangeChildren(Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    if-nez p1, :cond_0

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    .line 952
    :goto_0
    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->removeAllViews()V

    const/4 v3, 0x0

    move v4, v3

    .line 954
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_3

    .line 955
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/view/View;

    .line 956
    iget-object v5, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5, v1, v6, v6}, Lcom/android/launcher2/CellLayout;->getVacantCell([III)Z

    .line 957
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 958
    aget v5, v1, v3

    iput v5, v11, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 959
    aget v5, v1, v6

    iput v5, v11, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 960
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ItemInfo;

    .line 961
    iget v7, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    aget v9, v1, v3

    if-ne v7, v9, :cond_1

    iget v7, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    aget v9, v1, v6

    if-eq v7, v9, :cond_2

    .line 962
    :cond_1
    aget v7, v1, v3

    iput v7, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 963
    aget v6, v1, v6

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 964
    iget-object v12, v0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v6, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v14, v6, Lcom/android/launcher2/FolderInfo;->id:J

    const/16 v16, 0x0

    iget v6, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v7, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    move-object v13, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-static/range {v12 .. v18}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 968
    :cond_2
    iget-object v7, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v9, -0x1

    iget-wide v5, v5, Lcom/android/launcher2/ItemInfo;->id:J

    long-to-int v10, v5

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 970
    :cond_3
    iput-boolean v6, v0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    return-void
.end method

.method private centerAboutIcon()V
    .locals 12

    .line 854
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 856
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 857
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    add-int/2addr v2, v3

    .line 859
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragLayer;

    .line 861
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v4

    .line 863
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 864
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    float-to-int v4, v6

    .line 865
    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    .line 866
    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v4, v7

    .line 868
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    .line 871
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/launcher2/Workspace;->setFinalScrollForPageChange(I)V

    .line 873
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 874
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 875
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 876
    invoke-virtual {v3, v9, v10}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 878
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 882
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/launcher2/Workspace;->resetFinalScrollForPageChange(I)V

    .line 885
    iget v3, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v8, v10, Landroid/graphics/Rect;->left:I

    .line 886
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v1

    .line 885
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 887
    iget v8, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v10, Landroid/graphics/Rect;->top:I

    .line 888
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v9, v11

    sub-int/2addr v9, v2

    .line 887
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 890
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lt v1, v9, :cond_1

    .line 891
    iget v3, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    .line 893
    :cond_1
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lt v2, v9, :cond_2

    .line 894
    iget v8, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v9, v2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    :cond_2
    sub-int/2addr v5, v3

    add-int/2addr v6, v5

    sub-int/2addr v4, v8

    add-int/2addr v7, v4

    int-to-float v4, v6

    .line 899
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->setPivotX(F)V

    int-to-float v5, v7

    .line 900
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->setPivotY(F)V

    .line 901
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderIcon;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v4, v7

    int-to-float v9, v1

    div-float/2addr v4, v9

    mul-float/2addr v6, v4

    float-to-int v4, v6

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher2/Folder;->mFolderIconPivotX:F

    .line 903
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v5, v7

    int-to-float v6, v2

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher2/Folder;->mFolderIconPivotY:F

    .line 906
    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 907
    iput v2, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 908
    iput v3, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 909
    iput v8, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;
    .locals 2

    .line 416
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0a0060

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Folder;

    return-object p0
.end method

.method private getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F
    .locals 0

    const/4 p0, 0x2

    if-nez p6, :cond_0

    new-array p6, p0, [F

    :cond_0
    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    const/4 p3, 0x0

    .line 702
    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/2addr p4, p0

    add-int/2addr p1, p4

    int-to-float p1, p1

    aput p1, p6, p3

    const/4 p1, 0x1

    .line 703
    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/2addr p3, p0

    add-int/2addr p2, p3

    int-to-float p0, p2

    aput p0, p6, p1

    return-object p6
.end method

.method private getViewForInfo(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1164
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 1165
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1166
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, v2, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 1167
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private onCloseComplete()V
    .locals 4

    .line 982
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCloseComplete: parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Folder"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer;

    if-eqz v0, :cond_1

    .line 988
    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 991
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearFocus()V

    .line 992
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->requestFocus()Z

    .line 994
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 995
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 996
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 998
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_4

    .line 999
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    if-nez v3, :cond_3

    .line 1000
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->replaceFolderWithFinalItem()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 1002
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 1005
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    return-void
.end method

.method private placeInReadingOrder(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 351
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ShortcutInfo;

    .line 352
    iget v5, v4, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    if-le v5, v3, :cond_0

    .line 353
    iget v3, v4, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_1
    new-instance v2, Lcom/android/launcher2/Folder$GridComparator;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/Folder$GridComparator;-><init>(Lcom/android/launcher2/Folder;I)V

    .line 358
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 359
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result p0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 361
    rem-int v2, v1, p0

    .line 362
    div-int v3, v1, p0

    .line 363
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ShortcutInfo;

    .line 364
    iput v2, v4, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 365
    iput v3, v4, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private positionAndSizeAsIcon()V
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/DragLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    .line 427
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setScaleX(F)V

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setScaleY(F)V

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setAlpha(F)V

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Lcom/android/launcher2/Folder;->mState:I

    return-void
.end method

.method private realTimeReorder([I[I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 632
    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/Folder;->readingOrderGreaterThan([I[I)Z

    move-result v3

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x41f00000    # 30.0f

    if-eqz v3, :cond_6

    .line 633
    aget v3, v1, v6

    iget-object v9, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v9

    sub-int/2addr v9, v7

    if-lt v3, v9, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    if-eqz v3, :cond_1

    .line 634
    aget v3, v1, v7

    add-int/2addr v3, v7

    goto :goto_1

    :cond_1
    aget v3, v1, v7

    :goto_1
    move v9, v6

    .line 635
    :goto_2
    aget v10, v2, v7

    if-gt v3, v10, :cond_d

    .line 636
    aget v10, v1, v7

    if-ne v3, v10, :cond_2

    aget v10, v1, v6

    add-int/2addr v10, v7

    goto :goto_3

    :cond_2
    move v10, v6

    .line 637
    :goto_3
    aget v11, v2, v7

    if-ge v3, v11, :cond_3

    iget-object v11, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v11

    sub-int/2addr v11, v7

    goto :goto_4

    :cond_3
    aget v11, v2, v6

    :goto_4
    if-gt v10, v11, :cond_5

    .line 639
    iget-object v12, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v12, v10, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v13

    .line 640
    iget-object v12, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    aget v14, v1, v6

    aget v15, v1, v7

    const/16 v16, 0xe6

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v17, v9

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 642
    aput v10, v1, v6

    .line 643
    aput v3, v1, v7

    int-to-float v9, v9

    add-float/2addr v9, v8

    float-to-int v9, v9

    float-to-double v12, v8

    mul-double/2addr v12, v4

    double-to-float v8, v12

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 650
    :cond_6
    aget v3, v1, v6

    if-nez v3, :cond_7

    move v3, v7

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    if-eqz v3, :cond_8

    .line 651
    aget v3, v1, v7

    sub-int/2addr v3, v7

    goto :goto_6

    :cond_8
    aget v3, v1, v7

    :goto_6
    move v9, v6

    .line 652
    :goto_7
    aget v10, v2, v7

    if-lt v3, v10, :cond_d

    .line 653
    aget v10, v1, v7

    if-ne v3, v10, :cond_9

    aget v10, v1, v6

    goto :goto_8

    :cond_9
    iget-object v10, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v10

    :goto_8
    sub-int/2addr v10, v7

    .line 654
    aget v11, v2, v7

    if-le v3, v11, :cond_a

    move v11, v6

    goto :goto_9

    :cond_a
    aget v11, v2, v6

    :goto_9
    if-lt v10, v11, :cond_c

    .line 656
    iget-object v12, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v12, v10, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v13

    .line 657
    iget-object v12, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    aget v14, v1, v6

    aget v15, v1, v7

    const/16 v16, 0xe6

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v17, v9

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 659
    aput v10, v1, v6

    .line 660
    aput v3, v1, v7

    int-to-float v9, v9

    add-float/2addr v9, v8

    float-to-int v9, v9

    float-to-double v12, v8

    mul-double/2addr v12, v4

    double-to-float v8, v12

    :cond_b
    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method private replaceFolderWithFinalItem()V
    .locals 3

    .line 1010
    new-instance v0, Lcom/android/launcher2/Folder$8;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Folder$8;-><init>(Lcom/android/launcher2/Folder;)V

    const/4 v1, 0x0

    .line 1046
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1048
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher2/FolderIcon;->performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    .line 1050
    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mDestroyed:Z

    return-void
.end method

.method private sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .locals 2

    .line 483
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 484
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 487
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private setFocusOnFirstChild()V
    .locals 1

    .line 493
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private setupContentDimensions(I)V
    .locals 6

    .line 821
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 823
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v1

    .line 824
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-nez v4, :cond_8

    mul-int v4, v1, v2

    if-ge v4, p1, :cond_3

    if-le v1, v2, :cond_0

    .line 832
    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    if-ne v2, v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    move v5, v4

    goto :goto_1

    .line 834
    :cond_1
    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_1
    move v4, v2

    :goto_2
    if-nez v4, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v2, -0x1

    mul-int v5, v4, v1

    if-lt v5, p1, :cond_4

    if-lt v2, v1, :cond_4

    .line 839
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v1, -0x1

    mul-int v5, v4, v2

    if-lt v5, p1, :cond_5

    .line 841
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    move v4, v2

    :cond_6
    :goto_4
    if-ne v5, v1, :cond_7

    if-ne v4, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    move v2, v4

    move v4, v1

    move v1, v5

    goto :goto_0

    .line 845
    :cond_8
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 846
    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder;->arrangeChildren(Ljava/util/ArrayList;)V

    return-void
.end method

.method private setupContentForNumItems(I)V
    .locals 1

    .line 920
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 922
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-nez p1, :cond_0

    .line 924
    new-instance p1, Lcom/android/launcher2/DragLayer$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 925
    iput-boolean v0, p1, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 926
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    return-void
.end method

.method private updateItemLocationsInDatabase()V
    .locals 10

    .line 797
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 798
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 799
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 800
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher2/ItemInfo;

    .line 801
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v5, v2, Lcom/android/launcher2/FolderInfo;->id:J

    const/4 v7, 0x0

    iget v8, v4, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v9, v4, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static/range {v3 .. v9}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTextViewFocus()V
    .locals 3

    .line 1060
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 1061
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusDownId(I)V

    .line 1064
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusRightId(I)V

    .line 1065
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusLeftId(I)V

    .line 1066
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderEditText;->setNextFocusUpId(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 2

    .line 550
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptDrop: DragObject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Folder"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_0
    iget-object p1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher2/ItemInfo;

    .line 555
    iget p1, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_2

    .line 558
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isFull()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public animateClosed()V
    .locals 6

    .line 500
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateClosed: parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Folder"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/DragLayer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "alpha"

    .line 506
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v0, [F

    const v4, 0x3f666666    # 0.9f

    aput v4, v2, v3

    const-string v5, "scaleX"

    .line 507
    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v5, v0, [F

    aput v4, v5, v3

    const-string v4, "scaleY"

    .line 508
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v3

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    .line 510
    invoke-static {p0, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 512
    new-instance v2, Lcom/android/launcher2/Folder$4;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$4;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 526
    iget v2, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    .line 527
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->buildLayer()V

    .line 529
    new-instance v0, Lcom/android/launcher2/Folder$5;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Folder$5;-><init>(Lcom/android/launcher2/Folder;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->post(Ljava/lang/Runnable;)Z

    .line 537
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    return-void
.end method

.method public animateOpen()V
    .locals 6

    .line 434
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->positionAndSizeAsIcon()V

    .line 437
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->updateContentUnreadNum()V

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/DragLayer;

    if-nez v0, :cond_0

    return-void

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const-string v4, "alpha"

    .line 443
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v0, [F

    aput v3, v4, v2

    const-string v5, "scaleX"

    .line 444
    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v0, [F

    aput v3, v5, v2

    const-string v3, "scaleY"

    .line 445
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v2

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    .line 447
    invoke-static {p0, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 449
    new-instance v2, Lcom/android/launcher2/Folder$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$2;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    iget v2, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    .line 469
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->buildLayer()V

    .line 471
    new-instance v0, Lcom/android/launcher2/Folder$3;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Folder$3;-><init>(Lcom/android/launcher2/Folder;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 5

    .line 370
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 371
    iget-object p1, p1, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 374
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->placeInReadingOrder(Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    move v2, v1

    .line 376
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 377
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ShortcutInfo;

    .line 378
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/ShortcutInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 379
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 391
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 392
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 393
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    .line 396
    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 397
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 398
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/FolderInfo;->addListener(Lcom/android/launcher2/FolderInfo$FolderListener;)V

    .line 400
    sget-object p1, Lcom/android/launcher2/Folder;->sDefaultFolderName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 401
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 403
    :cond_3
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :goto_3
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateItemLocationsInDatabase()V

    return-void
.end method

.method public completeDragExit()V
    .locals 1

    const/4 v0, 0x1

    .line 716
    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 717
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    const/4 v0, 0x0

    .line 718
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    .line 719
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    const/4 v0, 0x0

    .line 720
    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    return-void
.end method

.method protected createAndAddShortcut(Lcom/android/launcher2/ShortcutInfo;)Z
    .locals 9

    .line 573
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0a0002

    const/4 v2, 0x0

    .line 574
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    .line 575
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 576
    invoke-virtual {p1, v1}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 575
    invoke-virtual {v4, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object v0, p1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    iget-object v1, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v3, p1, Lcom/android/launcher2/ShortcutInfo;->unreadNum:I

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/FolderIcon;->updateFolderUnreadNum(Landroid/content/ComponentName;I)V

    .line 583
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget v1, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    .line 589
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const-string v0, "Launcher.Folder"

    const-string v1, "Folder order not properly persisted during bind"

    .line 591
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 597
    :cond_1
    new-instance v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v1, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    iget v2, p1, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    iget v3, p1, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 600
    new-instance v0, Lcom/android/launcher2/FolderKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher2/FolderKeyEventListener;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 601
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v5, -0x1

    iget-wide p0, p1, Lcom/android/launcher2/ShortcutInfo;->id:J

    long-to-int v6, p0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public dismissEditingName()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public doneEditingFolderName(Z)V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v1, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c004b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->requestFocus()Z

    .line 284
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p1}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1, v1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 285
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return-void
.end method

.method protected findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 563
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget v1, p1, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 564
    aget p0, v0, v1

    iput p0, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    const/4 p0, 0x1

    .line 565
    aget v0, v0, p0

    iput v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    return p0

    :cond_0
    return v1
.end method

.method public getDragDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    return-object p0
.end method

.method getInfo()Lcom/android/launcher2/FolderInfo;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    return-object p0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 0

    .line 978
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 974
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1183
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getItemsInReadingOrder(Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1187
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    if-eqz v0, :cond_4

    .line 1188
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 1189
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 1190
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1191
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, v2, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1193
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ShortcutInfo;

    .line 1194
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    if-ne v4, v5, :cond_0

    if-eqz p1, :cond_1

    .line 1195
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1200
    :cond_3
    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 1202
    :cond_4
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLocationInDragLayer([I)V
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    return-void
.end method

.method getPivotXForIconAnimation()F
    .locals 0

    .line 913
    iget p0, p0, Lcom/android/launcher2/Folder;->mFolderIconPivotX:F

    return p0
.end method

.method getPivotYForIconAnimation()F
    .locals 0

    .line 916
    iget p0, p0, Lcom/android/launcher2/Folder;->mFolderIconPivotY:F

    return p0
.end method

.method isDestroyed()Z
    .locals 0

    .line 1054
    iget-boolean p0, p0, Lcom/android/launcher2/Folder;->mDestroyed:Z

    return p0
.end method

.method public isDropEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEditingName()Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return p0
.end method

.method public isFull()Z
    .locals 1

    .line 850
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    iget p0, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method notifyDataSetChanged()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 545
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher2/FolderInfo;->unreadNum:I

    .line 546
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    return-void
.end method

.method public notifyDrop()V
    .locals 1

    .line 807
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 808
    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 9

    .line 1106
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdd item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Folder"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1110
    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 1113
    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    if-eqz v1, :cond_1

    return-void

    .line 1114
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1116
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 1117
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z

    .line 1119
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/ShortcutInfo;)Z

    .line 1120
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object p0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v4, p0, Lcom/android/launcher2/FolderInfo;->id:J

    const/4 v6, 0x0

    iget v7, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v8, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 202
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Folder"

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 208
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 210
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 211
    iget-object v2, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v1, v4

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v4, v1, v4

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v4, v8

    aget v1, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    invoke-direct {v3, v5, v7, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 211
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 214
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2

    .line 606
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 607
    aput v1, p1, v0

    .line 608
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2

    .line 725
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragExit: DragObject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Folder"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    iget-boolean p1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_1

    .line 732
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 733
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 735
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 8

    .line 670
    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Folder;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object p1

    .line 671
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v6, 0x0

    aget v1, p1, v6

    float-to-int v1, v1

    const/4 v7, 0x1

    aget p1, p1, v7

    float-to-int v2, p1

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    .line 673
    aget v0, p1, v6

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    aget v2, v1, v6

    if-ne v0, v2, :cond_0

    aget p1, p1, v7

    aget v0, v1, v7

    if-eq p1, v0, :cond_1

    .line 674
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 675
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 676
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 677
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    iget-object p0, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    aget v0, p0, v6

    aput v0, p1, v6

    .line 678
    aget p0, p0, v7

    aput p0, p1, v7

    :cond_1
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 11

    .line 1071
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrop: DragObject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Folder"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1078
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationInfo;->makeShortcut()Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    .line 1079
    iput v1, v0, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    .line 1080
    iput v1, v0, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    goto :goto_0

    .line 1082
    :cond_1
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 1086
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    if-ne v0, v2, :cond_3

    .line 1087
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    .line 1088
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1089
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    const/4 v10, 0x0

    aget v3, v3, v10

    iput v3, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v3, v2, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 1090
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    aget v3, v3, v1

    iput v3, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v3, v2, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 1091
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    const/4 v6, -0x1

    iget-wide v2, v0, Lcom/android/launcher2/ShortcutInfo;->id:J

    long-to-int v7, v2

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 1092
    iget-object v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1093
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    iget-object p1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;)V

    goto :goto_1

    .line 1095
    :cond_2
    iput-boolean v10, p1, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1096
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 1099
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 1100
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 1102
    :cond_3
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V
    .locals 2

    .line 740
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDropCompleted: View = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DragObject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFlingToDelete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", success = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Launcher.Folder"

    invoke-static {v0, p3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 746
    iget-boolean p2, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez p2, :cond_2

    .line 747
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->replaceFolderWithFinalItem()V

    goto :goto_0

    .line 751
    :cond_1
    iget-object p3, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {p3, p2}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 755
    iget-object p2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p2}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 756
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 761
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    const/4 p3, 0x0

    .line 762
    iput-object p3, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    if-eq p1, p0, :cond_3

    .line 765
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 766
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 767
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 770
    :cond_3
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 772
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 774
    iput-object p3, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    .line 775
    iput-boolean p2, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 779
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateItemLocationsInDatabase()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 156
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080026

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, v1, v1}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setMotionEventSplittingEnabled(Z)V

    const v0, 0x7f080028

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderEditText;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 161
    invoke-virtual {v0, p0}, Lcom/android/launcher2/FolderEditText;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 162
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher2/FolderEditText;->measure(II)V

    .line 168
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 171
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 172
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setInputType(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    .line 179
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->getThemeColor(Landroid/content/res/Resources;I)I

    move-result v0

    .line 180
    iget-object p0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderEditText;->setTextColor(I)V

    return-void
.end method

.method public onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 1211
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    :cond_0
    return-void
.end method

.method public onItemsChanged()V
    .locals 0

    .line 1176
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isDraggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 225
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongClick: v = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.Folder"

    invoke-static {v3, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    instance-of v2, v0, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v2, :cond_3

    .line 230
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 237
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 238
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    .line 239
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    .line 242
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    iget v4, v0, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    aput v4, v2, v3

    .line 243
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    iget v0, v0, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    aput v0, v2, v1

    .line 244
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 247
    iget-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 248
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    .line 249
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    :cond_3
    return v1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 932
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result p2

    add-int/2addr p1, p2

    .line 933
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    add-int/2addr p2, v0

    .line 936
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 938
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 940
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, v0, v2}, Lcom/android/launcher2/CellLayout;->measure(II)V

    .line 942
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget v3, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 943
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 942
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/FolderEditText;->measure(II)V

    .line 944
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Folder;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRemove(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 5

    .line 1125
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemove item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Folder"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1129
    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 1132
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    if-ne p1, v1, :cond_1

    return-void

    .line 1133
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->getViewForInfo(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    .line 1134
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 1135
    iget v1, p0, Lcom/android/launcher2/Folder;->mState:I

    if-ne v1, v0, :cond_2

    .line 1136
    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 1138
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    :goto_0
    const/4 v1, 0x0

    .line 1144
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_3

    .line 1145
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    :cond_3
    if-eqz v1, :cond_4

    .line 1150
    iget-object v1, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1151
    iget-object p1, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 1153
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1154
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v3, v0

    .line 1158
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result p1

    if-gt p1, v0, :cond_5

    if-nez v3, :cond_5

    .line 1159
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->replaceFolderWithFinalItem()V

    :cond_5
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method readingOrderGreaterThan([I[I)Z
    .locals 3

    const/4 p0, 0x1

    .line 618
    aget v0, p1, p0

    aget v1, p2, p0

    if-gt v0, v1, :cond_1

    aget v0, p1, p0

    aget v1, p2, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget p1, p1, v2

    aget p2, p2, v2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return p0
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    return-void
.end method

.method setFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    return-void
.end method

.method public startEditingFolderName()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateContentUnreadNum()V
    .locals 6

    .line 1219
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v0, :cond_0

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folder updateContentUnreadNum: mInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Folder"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 1223
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_2

    .line 1226
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5, v4, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BubbleTextView;

    if-eqz v5, :cond_1

    .line 1228
    invoke-virtual {v5}, Lcom/android/launcher2/BubbleTextView;->invalidate()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
