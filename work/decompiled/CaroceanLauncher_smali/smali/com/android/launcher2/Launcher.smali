.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/UserInitializeReceiver$onBootCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$LauncherTransitionable;,
        Lcom/android/launcher2/Launcher$AppWidgetResetObserver;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;,
        Lcom/android/launcher2/Launcher$PendingAddArguments;,
        Lcom/android/launcher2/Launcher$State;
    }
.end annotation


# static fields
.field private static final ACTION_360_FLOAT_BALL:Ljava/lang/String; = "com.yecon.launcher1.action.360.floatball"

.field static final ACTION_ACTIVITY_BACKGROUND:Ljava/lang/String; = "android.activity.action.STATE_CHANGED"

.field static final APPWIDGET_HOST_ID:I = 0x400

.field private static final CMD_360_FLOAT_BALL_NEED_SHOW:Ljava/lang/String; = "360_floatball_needshow"

.field static final DEBUG_STRICT_MODE:Z = false

.field static final DEBUG_WIDGETS:Z = false

.field static final DEFAULT_SCREEN:I = 0x0

.field private static final DISMISS_CLING_DURATION:I = 0xfa

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field private static final EXIT_SPRINGLOADED_MODE_LONG_TIMEOUT:I = 0x258

.field private static final EXIT_SPRINGLOADED_MODE_SHORT_TIMEOUT:I = 0x12c

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field static final FORCE_ENABLE_ROTATION_PROPERTY:Ljava/lang/String; = "launcher_force_rotate"

.field static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field static final LOGD:Z = false

.field static final MAX_UNREAD_COUNT:I = 0x63

.field private static final MENU_GROUP_WALLPAPER:I = 0x1

.field private static final MENU_HELP:I = 0x5

.field private static final MENU_MANAGE_APPS:I = 0x3

.field private static final MENU_SYSTEM_SETTINGS:I = 0x4

.field private static final MENU_WALLPAPER_SETTINGS:I = 0x2

.field private static final MSG_THEME_CHANGE:I = 0x64

.field private static NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0xa

.field public static OEM_NAME:Ljava/lang/String; = ""

.field private static final ORIENTATION_0:I = 0x0

.field private static final ORIENTATION_180:I = 0xb4

.field private static final ORIENTATION_270:I = 0x10e

.field private static final ORIENTATION_90:I = 0x5a

.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field static final PROFILE_STARTUP:Z = false

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_APPLICATION:I = 0x6

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_SHORTCUT:I = 0x7

.field private static final REQUEST_PICK_WALLPAPER:I = 0xa

.field private static final RUNTIME_STATE:Ljava/lang/String; = "launcher.state"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_STATE_PENDING_ADD_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_X:Ljava/lang/String; = "launcher.add_span_x"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_Y:Ljava/lang/String; = "launcher.add_span_y"

.field private static final RUNTIME_STATE_PENDING_ADD_WIDGET_INFO:Ljava/lang/String; = "launcher.add_widget_info"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME:Ljava/lang/String; = "launcher.rename_folder"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME_ID:Ljava/lang/String; = "launcher.rename_folder_id"

.field private static final SCENE_COLOR_SUFFIX:Ljava/lang/String; = "_scene_color"

.field static final SCREEN_COUNT:I = 0x2

.field private static final SHOW_CLING_DURATION:I = 0x226

.field static final TAG:Ljava/lang/String; = "Launcher"

.field private static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field private static final TOOLBAR_SEARCH_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_search_icon"

.field private static final TOOLBAR_VOICE_SEARCH_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_voice_search_icon"

.field private static final URI_THEME:Ljava/lang/String; = "content://com.carocean.status.provider/sys/SYS_THEME"

.field private static mContext:Landroid/content/Context; = null

.field private static mCurrentForegroundPackage:Ljava/lang/String; = ""

.field private static mFirstStartUp360:Z = false

.field private static mLastBackgroundPackage:Ljava/lang/String; = ""

.field private static sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState; = null

.field private static sApplication:Lcom/android/launcher2/LauncherApplication; = null

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFolders:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceEnableRotation:Z = false

.field private static sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState; = null

.field private static sLocaleChanged:Z = false

.field private static sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration; = null

.field private static final sLock:Ljava/lang/Object;

.field private static sPausedFromUserAction:Z = false

.field private static sPendingAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/Launcher$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreen:I

.field private static sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field private final ADVANCE_MSG:I

.field private final DISSFIRSTLAUNCHER:I

.field private final MSG_BOOTANIMATION_EXIT:I

.field private final MSG_SWITCH_PAGE_FLAG:I

.field private final MSG_UI_THEME_SUB_CHANGED:I

.field private final contentObserver:Landroid/database/ContentObserver;

.field private mAboutDialog:Lcom/android/launcher2/popuView/AboutDialog;

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAppBack:Landroid/view/View;

.field private mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mBindingAppsFinished:Z

.field private mBindingWorkspaceFinished:Z

.field private mBlackBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mBrightnessReceiver:Landroid/content/BroadcastReceiver;

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentBounds:Landroid/graphics/Rect;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDividerAnimator:Landroid/animation/AnimatorSet;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mDspType:I

.field private mFirstRunLauncherFlag:Z

.field private mFolderIconBitmap:Landroid/graphics/Bitmap;

.field private mFolderIconCanvas:Landroid/graphics/Canvas;

.field private mFolderIconImageView:Landroid/widget/ImageView;

.field private mFolderInfo:Lcom/android/launcher2/FolderInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mID8SmallIconsId:[I

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsHomeKeyPressedBeforeExitSpringMode:Z

.field private mIsLoadingWorkspace:Z

.field private mIsMcuInited:Z

.field private mKillBackgroundAppHandler:Landroid/os/Handler;

.field private mKillBackgroundAppHandlerThread:Landroid/os/HandlerThread;

.field private mLastOrientation:I

.field private mLauncherView:Landroid/view/View;

.field private mLongPressWidgetToAddToast:Landroid/widget/Toast;

.field public mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

.field private mMMIKeyRegion:I

.field private mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

.field private mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

.field mMcuDataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

.field private mMcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mNewShortcutAnimatePage:I

.field private mNewShortcutAnimateViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:Lcom/android/launcher2/Launcher$State;

.field private mOrientationChanged:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPagesWereRecreated:Z

.field private mPaused:Z

.field private mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

.field private mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectForFolderAnimation:Landroid/graphics/Rect;

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

.field private mSelectIndex:I

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSmallIconsId:[I

.field private mSmallIconsId_lfe:[I

.field private mState:Lcom/android/launcher2/Launcher$State;

.field private mStateAnimation:Landroid/animation/AnimatorSet;

.field private mStoped:Z

.field private mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

.field private mSwitchIconViewWorkspace:Lcom/android/launcher2/popuView/SwitchIconView;

.field private mSwitchPage:Z

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpAddItemCellCoordinates:[I

.field private mUnreadLoadCompleted:Z

.field private mUnreadLoader:Lcom/android/launcher2/MTKUnreadLoader;

.field private mUserPresent:Z

.field private mVAllapp:Landroid/view/View;

.field private mVisible:Z

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/drawable/Drawable$ConstantState;

    .line 342
    sput-object v1, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    new-array v1, v0, [Landroid/graphics/drawable/Drawable$ConstantState;

    .line 343
    sput-object v1, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    new-array v0, v0, [Landroid/graphics/drawable/Drawable$ConstantState;

    .line 344
    sput-object v0, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    const-string v0, "launcher_force_rotate"

    .line 384
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sForceEnableRotation:Z

    const/4 v0, 0x0

    .line 400
    sput-boolean v0, Lcom/android/launcher2/Launcher;->sLocaleChanged:Z

    const/4 v0, 0x1

    .line 2121
    sput-boolean v0, Lcom/android/launcher2/Launcher;->mFirstStartUp360:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 147
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mFirstRunLauncherFlag:Z

    .line 226
    iput v0, p0, Lcom/android/launcher2/Launcher;->mDspType:I

    .line 234
    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 250
    new-instance v1, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v1, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 267
    new-instance v1, Lcom/android/launcher2/ItemInfo;

    invoke-direct {v1}, Lcom/android/launcher2/ItemInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 270
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 285
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 291
    sget-object v3, Lcom/android/launcher2/Launcher$State;->NONE:Lcom/android/launcher2/Launcher$State;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 293
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x1

    .line 295
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 297
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 313
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 314
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 315
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 321
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 324
    iput v3, p0, Lcom/android/launcher2/Launcher;->ADVANCE_MSG:I

    .line 325
    iput v1, p0, Lcom/android/launcher2/Launcher;->DISSFIRSTLAUNCHER:I

    const/4 v1, 0x3

    .line 326
    iput v1, p0, Lcom/android/launcher2/Launcher;->MSG_SWITCH_PAGE_FLAG:I

    const/4 v1, 0x4

    .line 327
    iput v1, p0, Lcom/android/launcher2/Launcher;->MSG_BOOTANIMATION_EXIT:I

    const/4 v1, 0x5

    .line 328
    iput v1, p0, Lcom/android/launcher2/Launcher;->MSG_UI_THEME_SUB_CHANGED:I

    const/16 v2, 0x4e20

    .line 330
    iput v2, p0, Lcom/android/launcher2/Launcher;->mAdvanceInterval:I

    const/16 v2, 0xfa

    .line 331
    iput v2, p0, Lcom/android/launcher2/Launcher;->mAdvanceStagger:I

    const-wide/16 v4, -0x1

    .line 333
    iput-wide v4, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 334
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    const/16 v2, 0x1f4

    .line 339
    iput v2, p0, Lcom/android/launcher2/Launcher;->mRestoreScreenOrientationDelay:I

    .line 349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    const/4 v2, -0x1

    .line 359
    iput v2, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    .line 364
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    .line 370
    new-instance v2, Lcom/android/launcher2/HideFromAccessibilityHelper;

    invoke-direct {v2}, Lcom/android/launcher2/HideFromAccessibilityHelper;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    .line 373
    new-instance v2, Lcom/android/launcher2/Launcher$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 409
    iput v0, p0, Lcom/android/launcher2/Launcher;->mLastOrientation:I

    .line 416
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUnreadLoadCompleted:Z

    .line 417
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mBindingWorkspaceFinished:Z

    .line 418
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mBindingAppsFinished:Z

    .line 422
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mCurrentBounds:Landroid/graphics/Rect;

    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 439
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mSmallIconsId:[I

    new-array v2, v1, [I

    .line 440
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mSmallIconsId_lfe:[I

    new-array v1, v1, [I

    .line 441
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mID8SmallIconsId:[I

    .line 443
    iput v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyRegion:I

    .line 444
    iput v0, p0, Lcom/android/launcher2/Launcher;->mSelectIndex:I

    .line 806
    new-instance v1, Lcom/android/launcher2/Launcher$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mBrightnessReceiver:Landroid/content/BroadcastReceiver;

    .line 818
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mSwitchPage:Z

    .line 2020
    new-instance v1, Lcom/android/launcher2/Launcher$13;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$13;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2230
    new-instance v1, Lcom/android/launcher2/Launcher$16;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$16;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    .line 5989
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    .line 6005
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsMcuInited:Z

    .line 6020
    new-instance v0, Lcom/android/launcher2/Launcher$41;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$41;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mMcuDataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    .line 6144
    new-instance v0, Lcom/android/launcher2/Launcher$42;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$42;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->contentObserver:Landroid/database/ContentObserver;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080080
        0x7f080081
        0x7f08007e
        0x7f080082
        0x7f08007f
        0x7f08007d
    .end array-data

    :array_1
    .array-data 4
        0x7f080081
        0x7f080083
        0x7f08007e
        0x7f08007d
        0x7f080082
    .end array-data

    :array_2
    .array-data 4
        0x7f08007d
        0x7f080080
        0x7f08007e
        0x7f080081
        0x7f080082
    .end array-data
.end method

.method private acceptFilter()Z
    .locals 1

    const-string v0, "input_method"

    .line 1342
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 1343
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Launcher;IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 147
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Launcher;)Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/android/launcher2/Launcher;->mFirstRunLauncherFlag:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mFirstRunLauncherFlag:Z

    return p1
.end method

.method static synthetic access$1200()Landroid/content/Context;
    .locals 1

    .line 147
    sget-object v0, Lcom/android/launcher2/Launcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 147
    sget-object v0, Lcom/android/launcher2/Launcher;->mLastBackgroundPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 147
    sput-object p0, Lcom/android/launcher2/Launcher;->mLastBackgroundPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomerJly;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Launcher;)I
    .locals 0

    .line 147
    iget p0, p0, Lcom/android/launcher2/Launcher;->mSelectIndex:I

    return p0
.end method

.method static synthetic access$1602(Lcom/android/launcher2/Launcher;I)I
    .locals 0

    .line 147
    iput p1, p0, Lcom/android/launcher2/Launcher;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Hotseat;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/AppsCustomizeFrame;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Launcher$State;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    return-object p0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .line 147
    sget-object v0, Lcom/android/launcher2/Launcher;->mCurrentForegroundPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 147
    sput-object p0, Lcom/android/launcher2/Launcher;->mCurrentForegroundPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mKillBackgroundAppHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/Launcher;Z)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->onFloatWindowService(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/launcher2/Launcher;)I
    .locals 0

    .line 147
    iget p0, p0, Lcom/android/launcher2/Launcher;->mDspType:I

    return p0
.end method

.method static synthetic access$2702(Lcom/android/launcher2/Launcher;I)I
    .locals 0

    .line 147
    iput p1, p0, Lcom/android/launcher2/Launcher;->mDspType:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkDspType()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/launcher2/Launcher;)Ljava/lang/Runnable;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/Launcher;)Ljava/util/HashMap;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/launcher2/Launcher;J)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/AboutDialog;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAboutDialog:Lcom/android/launcher2/popuView/AboutDialog;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mSwitchPage:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateUiTheme()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/launcher2/Launcher;I)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->updateID8Theme(I)V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$State;)Lcom/android/launcher2/Launcher$State;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/launcher2/Launcher;)Landroid/widget/ImageView;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0

    .line 147
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/SearchDropTargetBar;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/launcher2/Launcher;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/launcher2/Launcher;)Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/android/launcher2/Launcher;->mIsHomeKeyPressedBeforeExitSpringMode:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/launcher2/Launcher;Z)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/launcher2/Launcher;)Landroid/content/SharedPreferences;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/launcher2/Launcher$LocaleConfiguration;)Lcom/android/launcher2/Launcher$LocaleConfiguration;
    .locals 0

    .line 147
    sput-object p0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0

    .line 147
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    return-object p0
.end method

.method private bindAppsUnreadInfo()V
    .locals 2

    .line 5800
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/Launcher$40;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$40;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private bindWorkspaceUnreadInfo()V
    .locals 2

    .line 5778
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/Launcher$39;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$39;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private canRunNewAppsAnimation()Z
    .locals 4

    .line 5070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->getLastGestureUpTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 5071
    sget p0, Lcom/android/launcher2/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private cancelLongPressWidgetToAddMessage()V
    .locals 0

    .line 5851
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mLongPressWidgetToAddToast:Landroid/widget/Toast;

    if-eqz p0, :cond_0

    .line 5852
    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private checkDspType()V
    .locals 6

    const-string v0, "Launcher"

    :try_start_0
    const-string v1, "persist.sys.dsp_type"

    const/4 v2, 0x0

    .line 469
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Launcher;->mDspType:I

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDspType, mDspType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher2/Launcher;->mDspType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 472
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.carocean.settings"

    const-string v5, "com.carocean.settings.CustomEqActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 474
    iget p0, p0, Lcom/android/launcher2/Launcher;->mDspType:I

    const/4 v4, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x2

    .line 475
    invoke-virtual {v1, v3, p0, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :goto_0
    const-string p0, "checkDspType, done"

    .line 481
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 483
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private checkForLocaleChange()V
    .locals 9

    .line 878
    sget-object v0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 879
    new-instance v0, Lcom/android/launcher2/Launcher$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;)V

    new-array p0, v1, [Ljava/lang/Void;

    .line 892
    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 896
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 898
    sget-object v2, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget-object v2, v2, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 899
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 901
    sget-object v4, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v4, v4, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 902
    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    .line 904
    sget-object v6, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v6, v6, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 905
    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    .line 907
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-ne v5, v4, :cond_1

    if-eq v0, v6, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 909
    :cond_2
    sget-boolean v7, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 910
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForLocaleChange: previousLocale = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", locale = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", previousMcc = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mcc = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", previousMnc = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mnc = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", localeChanged = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", this = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Launcher"

    invoke-static {v4, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 917
    sget-object v2, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput-object v3, v2, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 918
    sget-object v2, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v5, v2, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 919
    sget-object v2, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v0, v2, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 922
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sLocaleChanged:Z

    .line 923
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->setFlushCache()V

    .line 924
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher2/IconCache;->flush()V

    .line 926
    sget-object v0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 927
    new-instance v1, Lcom/android/launcher2/Launcher$4;

    const-string v2, "WriteLocaleConfiguration"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 932
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher$4;->start()V

    :cond_4
    return-void
.end method

.method private checkSwitchPageFlag()V
    .locals 4

    .line 822
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 823
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private checkThemeSetAPP()V
    .locals 3

    .line 489
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 490
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.carocean.settings"

    const-string v2, "com.carocean.settings.CustomThemeSetActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLFECustomer()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 492
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 495
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :goto_0
    const-string p0, "Launcher"

    const-string v0, "checkThemeSetAPP, done"

    .line 498
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 500
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private clearTypedText()V
    .locals 1

    .line 1400
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1401
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1402
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z
    .locals 10

    .line 1016
    iget v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 1018
    :cond_1
    iget-object v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v3, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v6, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v7, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/Launcher;->completeAddApplication(Landroid/content/Intent;JIII)V

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1030
    :cond_2
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    const/4 v3, -0x1

    const-string v4, "appWidgetId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1031
    iget-wide v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v7, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_1

    .line 1025
    :cond_3
    iget-object v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v7, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v8, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v9, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/Launcher;->completeAddShortcut(Landroid/content/Intent;JIII)V

    .line 1041
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    return v2
.end method

.method private completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 27

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move-object/from16 v10, p5

    if-nez p6, :cond_0

    .line 1925
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p6

    .line 1927
    :goto_0
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v14, "Launcher"

    if-eqz v0, :cond_1

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completeAddAppWidget: appWidgetId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", container = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    :cond_1
    invoke-virtual {v8, v11, v12, v13}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1937
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1940
    :cond_2
    invoke-static {v8, v15}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v1

    .line 1941
    invoke-static {v8, v15}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v2

    .line 1946
    iget-object v7, v8, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1947
    iget-object v3, v8, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1950
    iget-object v5, v8, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    const/16 v25, 0x1

    const/4 v6, 0x0

    if-ltz v5, :cond_3

    iget-object v5, v8, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    if-ltz v5, :cond_3

    .line 1951
    iget-object v1, v8, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    aput v1, v7, v6

    .line 1952
    iget-object v1, v8, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    aput v1, v7, v25

    .line 1953
    iget-object v1, v8, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->spanX:I

    aput v1, v2, v6

    .line 1954
    iget-object v1, v8, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    aput v1, v2, v25

    :goto_1
    move/from16 v1, v25

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_5

    .line 1958
    aget v17, v3, v6

    aget v18, v3, v25

    aget v19, v1, v6

    aget v20, v1, v25

    aget v21, v2, v6

    aget v22, v2, v25

    move-object/from16 v16, v0

    move-object/from16 v23, v7

    move-object/from16 v24, v4

    invoke-virtual/range {v16 .. v24}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    move-result-object v1

    .line 1961
    aget v3, v4, v6

    aput v3, v2, v6

    .line 1962
    aget v3, v4, v25

    aput v3, v2, v25

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v6

    goto :goto_2

    .line 1965
    :cond_5
    aget v3, v1, v6

    aget v1, v1, v25

    invoke-virtual {v0, v7, v3, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v1

    :goto_2
    if-nez v1, :cond_7

    const/4 v1, -0x1

    if-eq v9, v1, :cond_6

    .line 1972
    new-instance v1, Lcom/android/launcher2/Launcher$12;

    const-string v2, "deleteAppWidgetId"

    invoke-direct {v1, v8, v2, v9}, Lcom/android/launcher2/Launcher$12;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;I)V

    .line 1976
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher$12;->start()V

    .line 1978
    :cond_6
    invoke-virtual {v8, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    return-void

    .line 1983
    :cond_7
    new-instance v5, Lcom/android/launcher2/LauncherAppWidgetInfo;

    iget-object v0, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v5, v9, v0}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1985
    aget v0, v2, v6

    iput v0, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 1986
    aget v0, v2, v25

    iput v0, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 1987
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    iput v0, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanX:I

    .line 1988
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    iput v0, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanY:I

    .line 1990
    aget v16, v7, v6

    aget v17, v7, v25

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v26, v5

    move/from16 v5, v16

    move v11, v6

    move/from16 v6, v17

    move-object v12, v7

    move/from16 v7, v18

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1993
    iget-boolean v0, v8, Lcom/android/launcher2/Launcher;->mIsLoadingWorkspace:Z

    if-eqz v0, :cond_8

    const-string v0, "Just Loading Workspace, force reload"

    .line 1994
    invoke-static {v14, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    .line 1998
    :cond_8
    iget-boolean v0, v8, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v0, :cond_a

    if-nez v10, :cond_9

    .line 2001
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0, v8, v9, v15}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2002
    iget-object v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v9, v15}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_3

    :cond_9
    move-object/from16 v1, v26

    .line 2005
    iput-object v10, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2008
    :goto_3
    iget-object v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2009
    iget-object v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v11}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 2010
    invoke-virtual {v1, v8}, Lcom/android/launcher2/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher2/Launcher;)V

    .line 2012
    iget-object v9, v8, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v10, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    aget v14, v12, v11

    aget v0, v12, v25

    iget v2, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v3, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 2013
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v18

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move-object v4, v15

    move v15, v0

    move/from16 v16, v2

    move/from16 v17, v3

    .line 2012
    invoke-virtual/range {v9 .. v18}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2015
    iget-object v0, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v8, v0, v4}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2017
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    return-void
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-wide/from16 v6, p2

    move/from16 v5, p4

    move/from16 v1, p5

    move/from16 v2, p6

    .line 1829
    iget-object v4, v8, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1830
    iget-object v3, v8, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1831
    invoke-virtual {v8, v6, v7, v5}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v15

    .line 1835
    iget-object v9, v8, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v0, v10}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v14

    .line 1836
    sget-boolean v9, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 1837
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "completeAddShortcut: info = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", data = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", container = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", screen = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", cellX = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", cellY = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Launcher"

    invoke-static {v9, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v14, :cond_1

    return-void

    .line 1845
    :cond_1
    invoke-virtual {v8, v14}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    const/4 v0, 0x1

    if-ltz v1, :cond_4

    if-ltz v2, :cond_4

    .line 1849
    aput v1, v4, v20

    .line 1850
    aput v2, v4, v0

    .line 1854
    iget-object v9, v8, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v10, v19

    move-wide/from16 v11, p2

    move-object v13, v15

    move-object v2, v14

    move-object v14, v4

    move-object v3, v15

    move v15, v1

    invoke-virtual/range {v9 .. v18}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1858
    :cond_2
    new-instance v14, Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {v14}, Lcom/android/launcher2/DropTarget$DragObject;-><init>()V

    .line 1859
    iput-object v2, v14, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 1860
    iget-object v9, v8, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v13, 0x0

    const/4 v15, 0x1

    move-object/from16 v10, v19

    move-object v11, v3

    move-object v12, v4

    invoke-virtual/range {v9 .. v15}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    move-object v1, v3

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_4
    move-object v2, v14

    move-object v1, v15

    if-eqz v3, :cond_6

    .line 1866
    aget v10, v3, v20

    aget v11, v3, v0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v9, v1

    move-object v14, v4

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v3, v20

    goto :goto_1

    .line 1869
    :cond_6
    invoke-virtual {v1, v4, v0, v0}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_7

    .line 1873
    invoke-virtual {v8, v1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    return-void

    .line 1877
    :cond_7
    aget v9, v4, v20

    aget v10, v4, v0

    const/4 v11, 0x0

    move v12, v0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide/from16 v2, p2

    move-object v13, v4

    move/from16 v4, p4

    move v5, v9

    move v6, v10

    move v7, v11

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1879
    iget-boolean v0, v8, Lcom/android/launcher2/Launcher;->mIsLoadingWorkspace:Z

    if-eqz v0, :cond_8

    .line 1880
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    .line 1883
    :cond_8
    iget-boolean v0, v8, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v0, :cond_9

    .line 1884
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    aget v5, v13, v20

    aget v6, v13, v12

    const/4 v7, 0x1

    const/4 v9, 0x1

    .line 1885
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v10

    move-object/from16 v1, v19

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move v8, v9

    move v9, v10

    .line 1884
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    :cond_9
    return-void
.end method

.method private completeTwoStageWidgetDrop(II)V
    .locals 9

    .line 1134
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1135
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher2/CellLayout;

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x3

    .line 1142
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1, p0, p2, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 1145
    new-instance v2, Lcom/android/launcher2/Launcher$5;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V

    move v6, v0

    move-object v7, v1

    move-object v5, v2

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x4

    .line 1156
    new-instance v1, Lcom/android/launcher2/Launcher$6;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;I)V

    move v6, p2

    move-object v7, v0

    move-object v5, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move v6, p1

    move-object v5, v0

    move-object v7, v5

    .line 1164
    :goto_0
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {p1}, Lcom/android/launcher2/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1165
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 1166
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/launcher2/DragView;

    const/4 v8, 0x1

    .line 1165
    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_1

    .line 1170
    :cond_2
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private copyFolderIconToImage(Lcom/android/launcher2/FolderIcon;)V
    .locals 5

    .line 3454
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getMeasuredWidth()I

    move-result v0

    .line 3455
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getMeasuredHeight()I

    move-result v1

    .line 3458
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 3459
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    .line 3461
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 3462
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 3463
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 3464
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    .line 3468
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v2, :cond_3

    .line 3469
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragLayer$LayoutParams;

    goto :goto_0

    .line 3471
    :cond_3
    new-instance v2, Lcom/android/launcher2/DragLayer$LayoutParams;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .line 3476
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v3

    const/4 v4, 0x1

    .line 3477
    iput-boolean v4, v2, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 3478
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v2, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 3479
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v2, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 3480
    iput v0, v2, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    int-to-float v0, v1

    mul-float/2addr v3, v0

    float-to-int v0, v3

    .line 3481
    iput v0, v2, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 3483
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3484
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/FolderIcon;->draw(Landroid/graphics/Canvas;)V

    .line 3485
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3486
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3487
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getPivotXForIconAnimation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 3488
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getPivotYForIconAnimation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 3492
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 3493
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 3495
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3496
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 3497
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->bringToFront()V

    :cond_6
    return-void
.end method

.method private disableOrientationListener()V
    .locals 1

    const/4 v0, 0x0

    .line 5681
    iput v0, p0, Lcom/android/launcher2/Launcher;->mLastOrientation:I

    .line 5682
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method private dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 5384
    invoke-virtual {p1}, Lcom/android/launcher2/Cling;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    .line 5385
    invoke-static {p1, v1, v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p3

    .line 5386
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5387
    new-instance p3, Lcom/android/launcher2/Launcher$36;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/launcher2/Launcher$36;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5403
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 5404
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/HideFromAccessibilityHelper;->restoreImportantForAccessibility(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V
    .locals 1

    .line 3788
    instance-of v0, p1, Lcom/android/launcher2/Launcher$LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 3789
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/Launcher$LauncherTransitionable;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/launcher2/Launcher$LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 3793
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    return-void
.end method

.method private dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V
    .locals 1

    .line 3767
    instance-of v0, p1, Lcom/android/launcher2/Launcher$LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 3768
    check-cast p1, Lcom/android/launcher2/Launcher$LauncherTransitionable;

    invoke-interface {p1, p0, p2, p3}, Lcom/android/launcher2/Launcher$LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V

    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V
    .locals 1

    .line 3773
    instance-of v0, p1, Lcom/android/launcher2/Launcher$LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 3774
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/Launcher$LauncherTransitionable;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/launcher2/Launcher$LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V

    :cond_0
    const/4 p2, 0x0

    .line 3778
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    return-void
.end method

.method private dispatchOnLauncherTransitionStep(Landroid/view/View;F)V
    .locals 1

    .line 3782
    instance-of v0, p1, Lcom/android/launcher2/Launcher$LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 3783
    check-cast p1, Lcom/android/launcher2/Launcher$LauncherTransitionable;

    invoke-interface {p1, p0, p2}, Lcom/android/launcher2/Launcher$LauncherTransitionable;->onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V

    :cond_0
    return-void
.end method

.method public static dumpDebugLogsToConsole()V
    .locals 7

    const-string v0, "Launcher"

    const-string v1, ""

    .line 5535
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "*********************"

    .line 5536
    invoke-static {v0, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Launcher debug logs: "

    .line 5537
    invoke-static {v0, v3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 5538
    :goto_0
    sget-object v4, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 5539
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5541
    :cond_0
    invoke-static {v0, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5542
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentOrientationIndexForGlobalIcons()I
    .locals 1

    .line 4463
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getCurrentScene()Ljava/lang/String;
    .locals 1

    .line 5915
    sget-object v0, Lcom/android/launcher2/SceneManager;->DEFAULT_SCENE:Ljava/lang/String;

    return-object v0
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "Launcher"

    .line 4473
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    .line 4475
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 4478
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 4480
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object p0

    .line 4481
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4490
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load toolbar icon from "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load toolbar icon; "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher2/Launcher;
    .locals 1

    .line 5982
    instance-of v0, p0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    .line 5983
    check-cast p0, Lcom/android/launcher2/Launcher;

    return-object p0

    .line 5985
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Launcher;

    return-object p0
.end method

.method static getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 2

    .line 1904
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object p0

    return-object p0
.end method

.method static getMinSpanForWidget(Landroid/content/Context;Lcom/android/launcher2/PendingAddWidgetInfo;)[I
    .locals 2

    .line 1912
    iget-object v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minResizeWidth:I

    iget p1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minResizeHeight:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object p0

    return-object p0
.end method

.method static getScreen()I
    .locals 2

    .line 999
    sget-object v0, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_0
    sget v1, Lcom/android/launcher2/Launcher;->sScreen:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1001
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 2

    .line 1900
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object p0

    return-object p0
.end method

.method static getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I
    .locals 2

    const/4 v0, 0x0

    .line 1891
    invoke-static {p0, p1, v0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1894
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v1

    .line 1895
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p1

    .line 1896
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2, p3, v0}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object p0

    return-object p0
.end method

.method static getSpanForWidget(Landroid/content/Context;Lcom/android/launcher2/PendingAddWidgetInfo;)[I
    .locals 2

    .line 1908
    iget-object v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    iget p1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object p0

    return-object p0
.end method

.method public static getThemeColor(Landroid/content/res/Resources;I)I
    .locals 3

    .line 5572
    invoke-static {}, Lcom/android/launcher2/Launcher;->getCurrentScene()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    .line 5573
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_scene_color"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "com.android.launcher"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 5576
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 5585
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 0

    .line 1396
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private growAndFadeOutFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "alpha"

    .line 3505
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v0, [F

    const/high16 v4, 0x3fc00000    # 1.5f

    aput v4, v2, v3

    const-string v5, "scaleX"

    .line 3506
    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v5, v0, [F

    aput v4, v5, v3

    const-string v4, "scaleY"

    .line 3507
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 3509
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/FolderInfo;

    .line 3510
    iget-wide v5, v5, Lcom/android/launcher2/FolderInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 3511
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 3512
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3513
    iget v7, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v6, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v5, v7, v6}, Lcom/android/launcher2/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 3517
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->copyFolderIconToImage(Lcom/android/launcher2/FolderIcon;)V

    const/4 v5, 0x4

    .line 3518
    invoke-virtual {p1, v5}, Lcom/android/launcher2/FolderIcon;->setVisibility(I)V

    .line 3520
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v3

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    invoke-static {p1, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3522
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3523
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderIcon;)V
    .locals 4

    .line 3416
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolderInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    .line 3417
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 3421
    iget-boolean v2, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 3422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher2/FolderInfo;->screen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher2/FolderInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher2/FolderInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher"

    invoke-static {v3, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3424
    iput-boolean v2, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 3427
    :cond_0
    iget-boolean v0, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3429
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 3431
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderIcon;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 3436
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v0

    .line 3438
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 3439
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3441
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 3443
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderIcon;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move/from16 v7, p2

    .line 4036
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideAppsCustomzieHelper toState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", animated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", springLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher"

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4041
    :cond_0
    iget-object v1, v6, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 4042
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    .line 4043
    iput-object v1, v6, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 4045
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    .line 4047
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f09000c

    .line 4049
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f090012

    .line 4051
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    .line 4052
    iget-object v8, v6, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    .line 4053
    iget-object v9, v6, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 4056
    sget-object v5, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v5, :cond_2

    const v0, 0x7f09000e

    .line 4057
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 4058
    iget-object v1, v6, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v1, v5, v7, v0}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;

    goto :goto_0

    .line 4060
    :cond_2
    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_3

    .line 4061
    iget-object v0, v6, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;Z)Landroid/animation/Animator;

    .line 4065
    :cond_3
    :goto_0
    invoke-direct {v6, v8, v4}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    const/4 v10, 0x1

    .line 4066
    invoke-virtual {v6, v10}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 4067
    invoke-virtual {v6, v7}, Lcom/android/launcher2/Launcher;->showHotseat(Z)V

    const/4 v11, 0x0

    if-eqz v7, :cond_4

    .line 4069
    new-instance v12, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-direct {v12, v8}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 4072
    invoke-virtual {v12, v4}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, v2

    .line 4073
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v1}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    .line 4074
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v13, 0x2

    new-array v0, v13, [F

    .line 4076
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    .line 4077
    invoke-static {v8, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, v3

    .line 4078
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 4079
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v14, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4080
    new-instance v0, Lcom/android/launcher2/Launcher$23;

    invoke-direct {v0, v6, v8, v9}, Lcom/android/launcher2/Launcher$23;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v14, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4098
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 4100
    invoke-direct {v6, v8, v7, v10}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 4101
    invoke-direct {v6, v9, v7, v10}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 4102
    iget-object v0, v6, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->pauseScrolling()V

    .line 4104
    iget-object v15, v6, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/launcher2/Launcher$24;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, p2

    move-object v4, v9

    move-object v10, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Launcher$24;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v15, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4123
    iget-object v0, v6, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v13, [Landroid/animation/Animator;

    aput-object v12, v1, v11

    const/4 v2, 0x1

    aput-object v14, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4127
    invoke-direct {v6, v8, v7, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 4128
    invoke-direct {v6, v9, v7, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 4129
    iget-object v0, v6, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 4130
    iget-object v1, v6, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v3, Lcom/android/launcher2/Launcher$25;

    invoke-direct {v3, v6, v0}, Lcom/android/launcher2/Launcher$25;-><init>(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    move v2, v10

    const/16 v0, 0x8

    .line 4138
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4139
    invoke-direct {v6, v8, v7, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 4140
    invoke-direct {v6, v8, v7, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 4141
    invoke-direct {v6, v8, v7, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 4142
    invoke-direct {v6, v9, v7, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 4143
    invoke-direct {v6, v9, v7, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 4144
    invoke-direct {v6, v9, v7, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 4145
    iget-object v0, v6, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v11}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 4147
    :goto_1
    invoke-direct {v6, v2, v11}, Lcom/android/launcher2/Launcher;->showCustomer(ZZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initCling(I[IZI)Lcom/android/launcher2/Cling;
    .locals 3

    .line 5351
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    if-eqz v0, :cond_2

    .line 5353
    invoke-virtual {v0, p0, p2}, Lcom/android/launcher2/Cling;->init(Lcom/android/launcher2/Launcher;[I)V

    const/4 p2, 0x0

    .line 5354
    invoke-virtual {v0, p2}, Lcom/android/launcher2/Cling;->setVisibility(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5355
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    .line 5357
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->buildLayer()V

    const/4 p3, 0x0

    .line 5358
    invoke-virtual {v0, p3}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    .line 5359
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 5360
    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 5361
    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 v1, 0x226

    .line 5362
    invoke-virtual {p3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    int-to-long v1, p4

    .line 5363
    invoke-virtual {p3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 5364
    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 5366
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    :goto_0
    const/4 p3, 0x1

    .line 5368
    invoke-virtual {v0, p3}, Lcom/android/launcher2/Cling;->setFocusableInTouchMode(Z)V

    .line 5369
    new-instance p4, Lcom/android/launcher2/Launcher$35;

    invoke-direct {p4, p0, v0}, Lcom/android/launcher2/Launcher$35;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;)V

    invoke-virtual {v0, p4}, Lcom/android/launcher2/Cling;->post(Ljava/lang/Runnable;)Z

    .line 5375
    iget-object p4, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v1, 0x7f080006

    if-ne p1, v1, :cond_1

    move p2, p3

    :cond_1
    invoke-virtual {p4, p0, p2}, Lcom/android/launcher2/HideFromAccessibilityHelper;->setImportantForAccessibilityToNo(Landroid/view/View;Z)V

    :cond_2
    return-object v0
.end method

.method private initMcuManager()V
    .locals 3

    .line 5993
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/carocean/navicar/McuServiceManager;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    .line 5994
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMcuDataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1, v2}, Lcom/carocean/navicar/McuServiceManager;->regCallback([ILcom/carocean/navicar/McuServiceManager$DataListener;)V

    .line 5995
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    invoke-virtual {v0}, Lcom/carocean/navicar/McuServiceManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    const-string v1, " onServiceConnected:0"

    .line 5996
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5997
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onServiceConnected()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x12
        0x18
    .end array-data
.end method

.method private static intToState(I)Lcom/android/launcher2/Launcher$State;
    .locals 4

    .line 1410
    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    .line 1411
    invoke-static {}, Lcom/android/launcher2/Launcher$State;->values()[Lcom/android/launcher2/Launcher$State;

    move-result-object v1

    const/4 v2, 0x0

    .line 1412
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1413
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 1414
    aget-object v0, v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 4555
    instance-of p0, p1, Lcom/android/launcher2/HolographicLinearLayout;

    if-eqz p0, :cond_0

    .line 4556
    check-cast p1, Lcom/android/launcher2/HolographicLinearLayout;

    .line 4557
    invoke-virtual {p1}, Lcom/android/launcher2/HolographicLinearLayout;->invalidatePressedFocusedStates()V

    goto :goto_0

    .line 4558
    :cond_0
    instance-of p0, p2, Lcom/android/launcher2/HolographicImageView;

    if-eqz p0, :cond_1

    .line 4559
    check-cast p2, Lcom/android/launcher2/HolographicImageView;

    .line 4560
    invoke-virtual {p2}, Lcom/android/launcher2/HolographicImageView;->invalidatePressedFocusedStates()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isClingsEnabled()Z
    .locals 0

    .line 5345
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    .line 396
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .locals 5

    .line 5284
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 5286
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_0

    move p1, v1

    :cond_2
    :goto_0
    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 5300
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    .line 5312
    :goto_1
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    add-int/2addr p0, v1

    rem-int/2addr p0, v0

    aget p0, v3, p0

    return p0

    :array_0
    .array-data 4
        0x1
        0x0
        0x9
        0x8
    .end array-data
.end method

.method private onAppWidgetReset()V
    .locals 2

    .line 3097
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    const-string v1, "onAppWidgetReset."

    .line 3098
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz p0, :cond_1

    .line 3102
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    :cond_1
    return-void
.end method

.method private onFloatWindowService(Z)V
    .locals 6

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFloatWindowService: show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFirstStartUp360"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->mFirstStartUp360:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2125
    sget-boolean v2, Lcom/android/launcher2/Launcher;->mFirstStartUp360:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 2126
    sput-boolean v2, Lcom/android/launcher2/Launcher;->mFirstStartUp360:Z

    const-string v2, "persist.sys.ivicar.avm.cicle.enable"

    .line 2127
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2129
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher2/Launcher$14;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Launcher$14;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const-string v2, "persist.sys.ivicar.avm.fb.enable"

    .line 2144
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFloatWindowService: avm floatball enabel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher2/FloatWindowService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 2148
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 2150
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->stopService(Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 5

    const-string v0, "IOException when close file."

    const-string v1, "Launcher"

    const/4 v2, 0x0

    .line 945
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    const-string v4, "launcher.preferences"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 946
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 947
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 948
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-object v2, v3

    goto :goto_0

    :catch_1
    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    :goto_0
    :try_start_3
    const-string p0, "IOException when read configuration."

    .line 952
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    goto :goto_2

    :catch_3
    :goto_1
    const-string p0, "FileNotFoundException when read configuration."

    .line 950
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 956
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 958
    :catch_4
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_3
    return-void

    :goto_4
    if-eqz v2, :cond_1

    .line 956
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 958
    :catch_5
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_1
    :goto_5
    throw p0
.end method

.method private refreshUIByScene()V
    .locals 4

    .line 4835
    invoke-static {}, Lcom/android/launcher2/Launcher;->getCurrentScene()Ljava/lang/String;

    move-result-object v0

    .line 4836
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080016

    .line 4839
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HolographicImageView;

    if-eqz v2, :cond_0

    .line 4841
    invoke-virtual {v2}, Lcom/android/launcher2/HolographicImageView;->invalidatePressedFocusedStates()V

    :cond_0
    const-string v2, "default"

    .line 4845
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_hotseat_scrubber_holo"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "hotseat_scrubber_holo"

    .line 4848
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4869
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz p0, :cond_2

    .line 4870
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->refreshUI()V

    :cond_2
    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .line 2936
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2937
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "content://com.carocean.status.provider/sys/SYS_THEME"

    .line 2939
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private removeCling(I)V
    .locals 2

    .line 5409
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5413
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5415
    new-instance v1, Lcom/android/launcher2/Launcher$37;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher2/Launcher$37;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 5421
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/HideFromAccessibilityHelper;->restoreImportantForAccessibility(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private removeMCUManager()V
    .locals 1

    .line 6002
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMcuDataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, p0}, Lcom/carocean/navicar/McuServiceManager;->unregCallback(Lcom/carocean/navicar/McuServiceManager$DataListener;)V

    return-void
.end method

.method private removeSIMToolOrNot()V
    .locals 0

    return-void
.end method

.method private resetAddInfo()V
    .locals 3

    .line 2734
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 2735
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 2736
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2737
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2738
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 2739
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    return-void
.end method

.method private resetReSyncFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 5893
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOrientationChanged:Z

    .line 5894
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPagesWereRecreated:Z

    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 6

    .line 1427
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreState: savedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1435
    :cond_1
    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v0

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->intToState(I)Lcom/android/launcher2/Launcher$State;

    move-result-object v0

    .line 1436
    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_2

    .line 1437
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 1441
    :cond_2
    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    const-string v0, "launcher.current_screen"

    const/4 v1, -0x1

    .line 1444
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_3

    .line 1446
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_3
    const-string v0, "launcher.add_container"

    const-wide/16 v2, -0x1

    .line 1449
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "launcher.add_screen"

    .line 1450
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    cmp-long v2, v4, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-le v0, v1, :cond_4

    .line 1453
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide v4, v1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1454
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v0, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1455
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v1, "launcher.add_cell_x"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1456
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v1, "launcher.add_cell_y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1457
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v1, "launcher.add_span_x"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1458
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v1, "launcher.add_span_y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    const-string v0, "launcher.add_widget_info"

    .line 1459
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1460
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1461
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    :cond_4
    const/4 v0, 0x0

    const-string v1, "launcher.rename_folder"

    .line 1465
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "launcher.rename_folder_id"

    .line 1467
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1468
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-object v4, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    .line 1469
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 1478
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 1479
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    .line 1478
    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    const-string v0, "apps_customize_currentIndex"

    .line 1482
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1483
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->restorePageForIndex(I)V

    return-void
.end method

.method private roundOrientation(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x2d

    .line 5638
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method private runNewAppsAnimation(Z)V
    .locals 9

    .line 5081
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 5082
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5085
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher2/Launcher$29;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Launcher$29;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 5097
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5098
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5099
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 5100
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v3, p1

    .line 5103
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 5104
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x1

    new-array v7, v6, [F

    aput v2, v7, p1

    const-string v8, "alpha"

    .line 5106
    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, p1

    new-array v7, v6, [F

    aput v2, v7, p1

    const-string v8, "scaleX"

    .line 5107
    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v7, 0x2

    new-array v6, v6, [F

    aput v2, v6, p1

    const-string v8, "scaleY"

    .line 5108
    invoke-static {v8, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v7

    .line 5105
    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1c2

    .line 5109
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    mul-int/lit8 v5, v3, 0x4b

    int-to-long v5, v5

    .line 5110
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 5111
    new-instance v5, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;

    invoke-direct {v5}, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5112
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5114
    :cond_1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 5115
    new-instance p1, Lcom/android/launcher2/Launcher$30;

    invoke-direct {p1, p0}, Lcom/android/launcher2/Launcher$30;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5123
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    const/4 p1, -0x1

    .line 5127
    iput p1, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 5128
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5129
    new-instance p1, Lcom/android/launcher2/Launcher$31;

    const-string v0, "clearNewAppsThread"

    invoke-direct {p1, p0, v0}, Lcom/android/launcher2/Launcher$31;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;)V

    .line 5136
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher$31;->start()V

    return-void
.end method

.method private sendAdvanceMessage(J)V
    .locals 2

    .line 2206
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2207
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2208
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    return-void
.end method

.method private setClingTitleWithThemeColor(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5553
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 5555
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f050007

    invoke-static {p0, p2}, Lcom/android/launcher2/Launcher;->getThemeColor(Landroid/content/res/Resources;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private setPivotsForZoom(Landroid/view/View;F)V
    .locals 0

    .line 3734
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    .line 3735
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method static setScreen(I)V
    .locals 1

    .line 1005
    sget-object v0, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_0
    sput p0, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 1007
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setSwitchPageFlag(Z)Z
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 828
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mSwitchPage:Z

    .line 829
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mSwitchPage:Z

    return v0
.end method

.method private setWorkspaceBackground(Z)V
    .locals 0

    return-void
.end method

.method private setupViews()V
    .locals 6

    .line 1491
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    const v1, 0x7f08004f

    .line 1493
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1495
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    const v2, 0x7f08004c

    .line 1497
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mLauncherView:Landroid/view/View;

    const v2, 0x7f08001f

    .line 1498
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragLayer;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v3, 0x7f0800cb

    .line 1499
    invoke-virtual {v2, v3}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1503
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1504
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070386

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1505
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mBlackBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1508
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher2/DragLayer;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    const v2, 0x7f080030

    .line 1511
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Hotseat;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_1

    .line 1513
    invoke-virtual {v2, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/Launcher;)V

    .line 1517
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 1518
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1519
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/DragController;)V

    .line 1520
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    const v2, 0x7f0800ae

    .line 1522
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popuView/SwitchIconView;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

    const v2, 0x7f0800af

    .line 1525
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popuView/SwitchIconView;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mSwitchIconViewWorkspace:Lcom/android/launcher2/popuView/SwitchIconView;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 1527
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/launcher2/popuView/SwitchIconView;->setPackageIndex(IIZ)V

    .line 1529
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v5, Lcom/android/launcher2/Launcher$8;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Launcher$8;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    .line 1547
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v5, 0x7f0800a3

    invoke-virtual {v2, v5}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SearchDropTargetBar;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    const v2, 0x7f08000e

    .line 1551
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    const v5, 0x7f08000d

    .line 1553
    invoke-virtual {v2, v5}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizePagedView;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 1554
    invoke-virtual {v2, p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 1557
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 1558
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->setScrollView(Landroid/view/View;)V

    .line 1559
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 1560
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1561
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v2, :cond_3

    .line 1562
    invoke-virtual {v2, p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 1565
    :cond_3
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v4, :cond_6

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 1572
    :cond_4
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1573
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popuView/MainCustomer;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    .line 1574
    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getSeletedPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v1}, Lcom/android/launcher2/popuView/MainCustomer;->getPageCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    goto :goto_1

    .line 1576
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popuView/MainCustomer;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    goto :goto_1

    .line 1566
    :cond_6
    :goto_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isJLYCustomer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1567
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popuView/MainCustomerJly;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    .line 1568
    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getSeletedPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->getPageCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    goto :goto_1

    .line 1570
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popuView/MainCustomer;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    :goto_1
    const v0, 0x7f0800bc

    .line 1579
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mVAllapp:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1581
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const v0, 0x7f08000a

    .line 1584
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAppBack:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1586
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1589
    :cond_9
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v4, :cond_d

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-ne v0, v2, :cond_a

    goto :goto_3

    .line 1671
    :cond_a
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1673
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper;

    invoke-direct {v0, v4}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 1674
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->setMMIKeyRegion(I)V

    move v0, v3

    .line 1677
    :goto_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mID8SmallIconsId:[I

    array-length v5, v2

    if-ge v0, v5, :cond_c

    .line 1678
    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1680
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1681
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v5, v2, v1, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1685
    :cond_c
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    new-instance v1, Lcom/android/launcher2/Launcher$11;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    .line 1737
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_THEME"

    invoke-static {v1, v0, v2, v4}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1738
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x64

    .line 1739
    iput v2, v1, Landroid/os/Message;->what:I

    .line 1740
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1741
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 1591
    :cond_d
    :goto_3
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper;

    invoke-direct {v0, v4}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 1592
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->setMMIKeyRegion(I)V

    .line 1594
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLFECustomer()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 1595
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSmallIconsId_lfe:[I

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mSmallIconsId:[I

    :cond_e
    move v0, v3

    .line 1599
    :goto_4
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSmallIconsId:[I

    array-length v4, v2

    if-ge v0, v4, :cond_10

    .line 1600
    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1602
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1603
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v4, v2, v1, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    const v4, 0x7f08007f

    .line 1604
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_f

    .line 1605
    new-instance v4, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1620
    :cond_10
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isJLYCustomer()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1621
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateUiTheme()V

    .line 1624
    :cond_11
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    new-instance v1, Lcom/android/launcher2/Launcher$10;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$10;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    :cond_12
    :goto_5
    return-void
.end method

.method private showAppsCustomizeHelper(ZZ)V
    .locals 17

    move-object/from16 v7, p0

    move/from16 v6, p1

    move/from16 v5, p2

    .line 3842
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAppsCustomizeHelper animated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", springLoaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    :cond_0
    iget-object v0, v7, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 3847
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3848
    iput-object v8, v7, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 3850
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    .line 3852
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f09000b

    .line 3853
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f090012

    .line 3854
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v9, v3

    .line 3855
    iget-object v10, v7, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3856
    iget-object v11, v7, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    const v3, 0x7f09001f

    .line 3858
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3860
    invoke-direct {v7, v11, v9}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 3863
    iget-object v3, v7, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    .line 3864
    invoke-virtual {v3, v4, v6}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;Z)Landroid/animation/Animator;

    const/4 v12, 0x0

    .line 3865
    invoke-direct {v7, v12, v12}, Lcom/android/launcher2/Launcher;->showCustomer(ZZ)V

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v6, :cond_5

    .line 3867
    invoke-virtual {v11, v9}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setScaleX(F)V

    .line 3868
    invoke-virtual {v11, v9}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setScaleY(F)V

    .line 3869
    new-instance v14, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-direct {v14, v11}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 3871
    invoke-virtual {v14, v4}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v4

    move/from16 v16, v9

    int-to-long v8, v1

    .line 3872
    invoke-virtual {v4, v8, v9}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v4, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;

    invoke-direct {v4}, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;-><init>()V

    .line 3873
    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3875
    invoke-virtual {v11, v12}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setVisibility(I)V

    .line 3876
    invoke-virtual {v11, v3}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setAlpha(F)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 3877
    fill-array-data v1, :array_0

    const-string v3, "alpha"

    .line 3878
    invoke-static {v11, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, v2

    .line 3879
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3880
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3881
    new-instance v2, Lcom/android/launcher2/Launcher$19;

    invoke-direct {v2, v7, v10, v11}, Lcom/android/launcher2/Launcher$19;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/popuView/AppsCustomizeFrame;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3904
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, v7, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 3905
    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 3906
    iget-object v0, v7, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 3908
    iget-object v8, v7, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/launcher2/Launcher$20;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v10

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Launcher$20;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/popuView/AppsCustomizeFrame;Landroid/view/View;ZZ)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3954
    invoke-direct {v7, v10, v6, v12}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 3955
    invoke-direct {v7, v11, v6, v12}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 3959
    invoke-interface {v11}, Lcom/android/launcher2/Launcher$LauncherTransitionable;->getContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3960
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3961
    invoke-virtual {v11}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 3962
    :cond_3
    :goto_0
    iget-object v0, v7, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    move v12, v13

    .line 3968
    :goto_1
    iget-object v2, v7, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 3969
    new-instance v9, Lcom/android/launcher2/Launcher$21;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v3, v11

    move/from16 v4, v16

    move-object v5, v10

    move/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Launcher$21;-><init>(Lcom/android/launcher2/Launcher;Landroid/animation/AnimatorSet;Lcom/android/launcher2/popuView/AppsCustomizeFrame;FLandroid/view/View;Z)V

    if-eqz v12, :cond_4

    .line 3990
    new-instance v0, Lcom/android/launcher2/Launcher$22;

    invoke-direct {v0, v7, v11, v9, v8}, Lcom/android/launcher2/Launcher$22;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/popuView/AppsCustomizeFrame;Ljava/lang/Runnable;Landroid/view/ViewTreeObserver;)V

    .line 3996
    invoke-virtual {v8, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2

    .line 3998
    :cond_4
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 4001
    :cond_5
    invoke-virtual {v11, v3}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setTranslationX(F)V

    .line 4002
    invoke-virtual {v11, v3}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setTranslationY(F)V

    .line 4003
    invoke-virtual {v11, v4}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setScaleX(F)V

    .line 4004
    invoke-virtual {v11, v4}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setScaleY(F)V

    .line 4005
    invoke-virtual {v11, v12}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setVisibility(I)V

    .line 4006
    invoke-virtual {v11}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->bringToFront()V

    if-nez v5, :cond_6

    .line 4008
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4010
    iget-object v0, v7, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 4011
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 4014
    iget-object v0, v7, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v0, :cond_6

    .line 4015
    invoke-virtual {v0, v12}, Lcom/android/launcher2/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 4018
    :cond_6
    invoke-direct {v7, v10, v6, v12}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 4019
    invoke-direct {v7, v10, v6, v12}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 4020
    invoke-direct {v7, v10, v6, v12}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 4021
    invoke-direct {v7, v11, v6, v12}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 4022
    invoke-direct {v7, v11, v6, v12}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 4023
    invoke-direct {v7, v11, v6, v12}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 4024
    invoke-virtual {v7, v12}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showCustomer(ZZ)V
    .locals 4

    .line 5954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCustomer: show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " switchMainSubpage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5955
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 5956
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher2/popuView/MainCustomerJly;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 5958
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->toggleMainSubView()V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    .line 5961
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->notifyStatusBar(I)V

    goto :goto_2

    .line 5963
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->notifyStatusBar()V

    goto :goto_2

    .line 5966
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    .line 5967
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/launcher2/popuView/MainCustomer;->setVisibility(I)V

    if-eqz p2, :cond_5

    .line 5969
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->toggleMainSubView()V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    .line 5972
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->notifyStatusBar(I)V

    goto :goto_2

    .line 5974
    :cond_6
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->notifyStatusBar()V

    :cond_7
    :goto_2
    return-void
.end method

.method private shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const-string v4, "alpha"

    .line 3528
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v0, [F

    aput v3, v4, v2

    const-string v5, "scaleX"

    .line 3529
    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v0, [F

    aput v3, v5, v2

    const-string v3, "scaleY"

    .line 3530
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 3532
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 3535
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 3536
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->copyFolderIconToImage(Lcom/android/launcher2/FolderIcon;)V

    .line 3537
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v7, v2

    aput-object v4, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    invoke-static {v6, v7}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3539
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3540
    new-instance v1, Lcom/android/launcher2/Launcher$18;

    invoke-direct {v1, p0, v5, p1}, Lcom/android/launcher2/Launcher$18;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3551
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startWallpaper()V
    .locals 0

    return-void
.end method

.method private updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 2

    .line 4701
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 4702
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x7f0600a7

    .line 4703
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0600a6

    .line 4704
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x0

    .line 4705
    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .line 4550
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 4551
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 4527
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 4528
    invoke-direct {p0, p2, p4}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    .line 4534
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4536
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 4540
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private updateGlobalIcons()V
    .locals 6

    .line 854
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v0

    .line 855
    sget-object v1, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 858
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()Z

    move-result v2

    .line 859
    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v1

    .line 861
    :goto_1
    sget-object v3, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v4, v3, v0

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 862
    aget-object v2, v3, v0

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    move v2, v5

    .line 865
    :cond_2
    sget-object v3, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v4, v3, v0

    if-eqz v4, :cond_3

    .line 866
    aget-object v1, v3, v0

    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    move v1, v5

    .line 869
    :cond_3
    sget-object v3, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v4, v3, v0

    if-eqz v4, :cond_4

    .line 870
    aget-object v0, v3, v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 872
    :cond_4
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz p0, :cond_5

    .line 873
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    :cond_5
    return-void
.end method

.method private updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 3

    const v0, 0x7f0800a9

    .line 4612
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800a8

    .line 4613
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4614
    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 4615
    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private updateGlobalSearchIcon()Z
    .locals 6

    const v0, 0x7f0800a9

    .line 4565
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800a8

    .line 4566
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0800c1

    .line 4567
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800c0

    .line 4568
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "search"

    .line 4572
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 4573
    invoke-virtual {v4}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 4577
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const v2, 0x7f070215

    .line 4591
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_0

    .line 4594
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4595
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4596
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 p0, 0x8

    if-eqz v0, :cond_2

    .line 4600
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz v2, :cond_3

    .line 4601
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 4602
    :cond_3
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4603
    invoke-virtual {v3, p0}, Landroid/view/View;->setVisibility(I)V

    return v5
.end method

.method private updateID8AppCustomizeFrameBackground(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f070017

    goto :goto_0

    :cond_1
    const p1, 0x7f070054

    goto :goto_0

    :cond_2
    const p1, 0x7f07002b

    .line 6093
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 6094
    invoke-virtual {v0, p1}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setBackgroundResource(I)V

    .line 6095
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->bindPackagesUpdated()V

    :cond_3
    return-void
.end method

.method private updateID8LauncherBackground(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f070016

    goto :goto_0

    :cond_1
    const p1, 0x7f070053

    goto :goto_0

    :cond_2
    const p1, 0x7f07002a

    .line 6113
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mLauncherView:Landroid/view/View;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 6114
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    return-void
.end method

.method private updateID8SmallIconsBackground(I)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 6119
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mID8SmallIconsId:[I

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 6120
    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;

    if-eqz v2, :cond_4

    .line 6122
    iget v3, p0, Lcom/android/launcher2/Launcher;->mSelectIndex:I

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mID8SmallIconsId:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getmMMIKeyRegion()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mID8SmallIconsId:[I

    iget v4, p0, Lcom/android/launcher2/Launcher;->mSelectIndex:I

    aget v3, v3, v4

    invoke-virtual {v2}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 6123
    invoke-virtual {v2, v0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->setSelected(Z)V

    :cond_0
    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0x7f070027

    .line 6133
    invoke-virtual {v2, v4}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->setAnimaSelectResource(I)V

    goto :goto_1

    :cond_2
    const v4, 0x7f070064

    .line 6130
    invoke-virtual {v2, v4}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->setAnimaSelectResource(I)V

    goto :goto_1

    :cond_3
    const v4, 0x7f070046

    .line 6127
    invoke-virtual {v2, v4}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->setAnimaSelectResource(I)V

    .line 6136
    :goto_1
    iget v4, p0, Lcom/android/launcher2/Launcher;->mSelectIndex:I

    if-ltz v4, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mID8SmallIconsId:[I

    array-length v5, v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getmMMIKeyRegion()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mID8SmallIconsId:[I

    iget v5, p0, Lcom/android/launcher2/Launcher;->mSelectIndex:I

    aget v4, v4, v5

    invoke-virtual {v2}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->getId()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 6137
    invoke-virtual {v2, v3}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->setSelected(Z)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateID8Theme(I)V
    .locals 2

    .line 6067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateID8Theme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6068
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6071
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->updateID8AppCustomizeFrameBackground(I)V

    .line 6072
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->updateID8LauncherBackground(I)V

    .line 6073
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->updateID8SmallIconsBackground(I)V

    .line 6074
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz p0, :cond_1

    .line 6075
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->updateID8Theme(I)V

    :cond_1
    return-void
.end method

.method private updateRunning()V
    .locals 11

    .line 2213
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2214
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v3, :cond_4

    .line 2215
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    const-wide/16 v3, 0x4e20

    if-eqz v0, :cond_2

    .line 2217
    iget-wide v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v3, v0

    .line 2218
    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    goto :goto_2

    .line 2220
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v5, 0x0

    .line 2222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long/2addr v3, v7

    .line 2221
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 2224
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2225
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 4545
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 4546
    invoke-virtual {p0, p2, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    .line 4500
    invoke-direct {p0, p2, p4}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 4501
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0600a7

    .line 4502
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0600a6

    .line 4503
    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4505
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 4508
    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 4509
    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p0, :cond_0

    .line 4511
    invoke-virtual {p0, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v2

    .line 4515
    :cond_1
    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p0, :cond_2

    .line 4517
    invoke-virtual {p0, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4519
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    return-object p0
.end method

.method private updateUiTheme()V
    .locals 4

    const/4 v0, 0x0

    .line 2274
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSmallIconsId:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 2275
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2277
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeSubid()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x7f07029f

    .line 2285
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const v2, 0x7f0702b9

    .line 2282
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const v2, 0x7f070285

    .line 2279
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 3

    const v0, 0x7f0800c1

    .line 4670
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800c0

    .line 4671
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4672
    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 4673
    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private updateVoiceSearchIcon(Z)Z
    .locals 8

    const v0, 0x7f0800c1

    .line 4619
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800c0

    .line 4620
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "search"

    .line 4625
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    .line 4626
    invoke-virtual {v3}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    const-string v4, "android.speech.action.WEB_SEARCH"

    if-eqz v3, :cond_0

    .line 4631
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4632
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4633
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 4639
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4640
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    :cond_1
    const/4 v4, 0x0

    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    .line 4643
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result p1

    .line 4644
    sget-object v5, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v6, 0x7f070216

    const-string v7, "com.android.launcher.toolbar_voice_search_icon"

    invoke-direct {p0, v1, v3, v6, v7}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    aput-object v7, v5, p1

    .line 4647
    sget-object v5, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v7, v5, p1

    if-nez v7, :cond_2

    const-string v7, "com.android.launcher.toolbar_icon"

    .line 4648
    invoke-direct {p0, v1, v3, v6, v7}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    aput-object v1, v5, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 4652
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4653
    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4657
    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    const/16 p0, 0x8

    if-eqz v0, :cond_5

    .line 4660
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 4661
    :cond_5
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    return v4
.end method

.method private volunteerFreeMemory()V
    .locals 1

    .line 5901
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->onTrimMemory()V

    .line 5904
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {p0}, Lcom/android/launcher2/IconCache;->flush()V

    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 6

    const-string v0, "launcher.preferences"

    const-string v1, "IOException when close file."

    const-string v2, "Launcher"

    const/4 v3, 0x0

    .line 967
    :try_start_0
    new-instance v4, Ljava/io/DataOutputStream;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 968
    :try_start_1
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 969
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 970
    iget p1, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 971
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_4

    :catch_0
    move-object v3, v4

    goto :goto_0

    :catch_1
    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 976
    :catch_2
    :goto_0
    :try_start_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    if-eqz v3, :cond_0

    goto :goto_2

    :catch_3
    :goto_1
    const-string p0, "FileNotFoundException when write configuration."

    .line 973
    invoke-static {v2, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    .line 980
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 982
    :catch_4
    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_3
    return-void

    :goto_4
    if-eqz v3, :cond_1

    .line 980
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 982
    :catch_5
    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_1
    :goto_5
    throw p0
.end method


# virtual methods
.method addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I[I)V
    .locals 2

    .line 2807
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAppWidgetFromDrop: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", container = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 2813
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->container:J

    iput-wide p2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 2814
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput p4, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->screen:I

    iput p4, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 2815
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p7, p2, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 2816
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget p3, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanX:I

    iput p3, p2, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 2817
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget p3, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanY:I

    iput p3, p2, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p5, :cond_1

    .line 2820
    iget-object p4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    aget p7, p5, p3

    iput p7, p4, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2821
    iget-object p4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    aget p5, p5, p2

    iput p5, p4, Lcom/android/launcher2/ItemInfo;->cellY:I

    :cond_1
    if-eqz p6, :cond_2

    .line 2824
    iget-object p4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    aget p3, p6, p3

    iput p3, p4, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2825
    iget-object p3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    aget p2, p6, p2

    iput p2, p3, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 2828
    :cond_2
    iget-object p2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz p2, :cond_3

    .line 2831
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p3

    .line 2832
    iget-object p4, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_1

    .line 2836
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p2

    .line 2837
    iget-object p3, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    if-eqz p3, :cond_4

    .line 2841
    iget-object p4, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object p5, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p4, p2, p5, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p3

    goto :goto_0

    .line 2844
    :cond_4
    iget-object p3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object p4, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p3, p2, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result p3

    :goto_0
    if-eqz p3, :cond_5

    const/4 p3, 0x0

    .line 2848
    iget-object p4, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_1

    .line 2850
    :cond_5
    iget-object p3, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p3, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2851
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "appWidgetId"

    .line 2852
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2853
    iget-object p1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    const-string p2, "appWidgetProvider"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0xb

    .line 2856
    invoke-virtual {p0, p3, p1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 7

    .line 2744
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAppWidgetImpl: appWidgetId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boundWidget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appWidgetInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    :cond_0
    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 2751
    iput-object p4, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2754
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2755
    iget-object p3, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p3, "appWidgetId"

    .line 2756
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x5

    .line 2757
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2760
    :cond_1
    iget-wide v2, p2, Lcom/android/launcher2/ItemInfo;->container:J

    iget v4, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 2763
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)V
    .locals 2

    .line 4449
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExternalItemToScreen itemInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4453
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4454
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    :cond_1
    return-void
.end method

.method addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;
    .locals 20

    move-object/from16 v8, p0

    .line 2890
    new-instance v9, Lcom/android/launcher2/FolderInfo;

    invoke-direct {v9}, Lcom/android/launcher2/FolderInfo;-><init>()V

    const v0, 0x7f0c0048

    .line 2891
    invoke-virtual {v8, v0}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 2894
    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 2896
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v1, v9, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2899
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    const v1, 0x7f0a0038

    move-object/from16 v2, p1

    .line 2900
    invoke-static {v1, v8, v2, v9, v0}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    .line 2901
    iget-object v10, v8, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2902
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v19

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v11, v0

    move-wide/from16 v12, p2

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    .line 2901
    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    return-object v0
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2

    .line 2294
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addWidgetToAutoAdvanceIfNeeded hostView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appWidgetInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 2299
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2302
    :cond_1
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2303
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_2

    .line 2304
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 2306
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 5154
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAllApplications: apps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5158
    :cond_0
    new-instance v0, Lcom/android/launcher2/Launcher$32;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Launcher$32;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V

    .line 5166
    new-instance v1, Lcom/android/launcher2/Launcher$33;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Launcher$33;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V

    .line 5175
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mUnreadLoadCompleted:Z

    if-eqz v2, :cond_1

    .line 5176
    invoke-static {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateUnreadNumInAppInfo(Ljava/util/ArrayList;)V

    .line 5180
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    const v2, 0x7f08000f

    .line 5181
    invoke-virtual {p1, v2}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5183
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5188
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 5189
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-virtual {p1, v1}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5193
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5194
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    .line 5196
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mBindingAppsFinished:Z

    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 12

    .line 4958
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 4964
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 4966
    iget v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4967
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    if-nez v11, :cond_0

    return-void

    .line 4979
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v0, v11}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 4981
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 4982
    invoke-virtual {p1, p0}, Lcom/android/launcher2/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher2/Launcher;)V

    .line 4985
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher2/Workspace;->setAppWidgetIdAndScreen(Landroid/view/View;II)V

    .line 4987
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    iget v5, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 4989
    iget-object p1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, p1, v11}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 4991
    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->requestLayout()V

    return-void
.end method

.method public bindAppWidgetRemoved(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 5205
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppsUpdated: apps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5208
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 5210
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_1

    .line 5211
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addApps(Ljava/util/ArrayList;)V

    .line 5213
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz p0, :cond_2

    .line 5214
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->addApps(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 5248
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppsRemoved: packageNames = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permanent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 5253
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 5256
    :cond_1
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz p2, :cond_2

    .line 5257
    invoke-virtual {p2, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeApps(Ljava/util/ArrayList;)V

    .line 5260
    :cond_2
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz p2, :cond_3

    .line 5261
    invoke-virtual {p2, p1}, Lcom/android/launcher2/popuView/MainCustomer;->removeApps(Ljava/util/ArrayList;)V

    .line 5265
    :cond_3
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher2/DragController;->onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 5224
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppsUpdated: apps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5228
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 5229
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_1

    .line 5230
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 5233
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_2

    .line 5234
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateApps(Ljava/util/ArrayList;)V

    .line 5237
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz p0, :cond_3

    .line 5238
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->updateApps(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method public bindComponentUnreadChanged(Landroid/content/ComponentName;I)V
    .locals 2

    .line 5728
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v0, :cond_0

    .line 5729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindComponentUnreadChanged: component = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unreadNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5733
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/Launcher$38;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/Launcher$38;-><init>(Lcom/android/launcher2/Launcher;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .line 4944
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 4945
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindFolders: this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher"

    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4948
    :cond_0
    sget-object p0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 4949
    sget-object p0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 4880
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 4883
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4884
    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "apps.new.list"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 4886
    iget-object v13, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v14, p2

    :goto_0
    if-ge v14, v1, :cond_6

    move-object/from16 v15, p1

    .line 4888
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/launcher2/ItemInfo;

    .line 4889
    sget-boolean v3, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher"

    .line 4890
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindItems: start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v11, p2

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move/from16 v11, p2

    .line 4895
    :goto_1
    iget-wide v3, v12, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 4900
    :cond_1
    iget v3, v12, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const v3, 0x7f0a0038

    .line 4927
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v12

    check-cast v5, Lcom/android/launcher2/FolderInfo;

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 4926
    invoke-static {v3, v0, v4, v5, v6}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v4

    .line 4929
    iget-wide v5, v12, Lcom/android/launcher2/ItemInfo;->container:J

    iget v7, v12, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v8, v12, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v9, v12, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v10, 0x1

    const/4 v12, 0x1

    const/16 v16, 0x0

    move-object v3, v13

    move v11, v12

    move/from16 v12, v16

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_3

    .line 4903
    :cond_3
    move-object v3, v12

    check-cast v3, Lcom/android/launcher2/ShortcutInfo;

    .line 4904
    iget-object v4, v3, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4905
    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v9

    .line 4906
    iget-wide v5, v12, Lcom/android/launcher2/ItemInfo;->container:J

    iget v7, v12, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v8, v12, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v4, v12, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v3, v13

    move/from16 v19, v4

    move-object v4, v9

    move-object/from16 v20, v9

    move/from16 v9, v19

    move-object/from16 v21, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    move-object v1, v12

    move/from16 v12, v18

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 4909
    monitor-enter v2

    move-object/from16 v3, v21

    .line 4910
    :try_start_0
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4911
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_2

    :cond_4
    move/from16 v11, v16

    .line 4913
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_5

    const/4 v3, 0x0

    move-object/from16 v4, v20

    .line 4916
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4917
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    .line 4918
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    .line 4919
    iget v1, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    iput v1, v0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 4920
    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4921
    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 4913
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4935
    :cond_6
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->requestLayout()V

    return-void
.end method

.method public bindPackagesUpdated()V
    .locals 2

    .line 5272
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    const-string v1, "bindPackagesUpdated."

    .line 5273
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5276
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz p0, :cond_1

    .line 5277
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->onPackagesUpdated()V

    :cond_1
    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 2

    .line 5141
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()Z

    move-result v0

    .line 5142
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v1

    .line 5143
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz p0, :cond_0

    .line 5144
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    :cond_0
    return-void
.end method

.method public bindUnreadInfoIfNeeded()V
    .locals 2

    .line 5760
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v0, :cond_0

    .line 5761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindUnreadInfoIfNeeded: mBindingWorkspaceFinished = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mBindingWorkspaceFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5762
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    .line 5761
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5764
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mBindingWorkspaceFinished:Z

    if-eqz v0, :cond_1

    .line 5765
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->bindWorkspaceUnreadInfo()V

    .line 5768
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mBindingAppsFinished:Z

    if-eqz v0, :cond_2

    .line 5769
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->bindAppsUnreadInfo()V

    :cond_2
    const/4 v0, 0x1

    .line 5771
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUnreadLoadCompleted:Z

    return-void
.end method

.method public closeFolder()V
    .locals 2

    .line 3581
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3583
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3584
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    .line 3586
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    const/4 v0, 0x0

    .line 3589
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->dismissFolderCling(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method closeFolder(Lcom/android/launcher2/Folder;)V
    .locals 2

    .line 3594
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 3596
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3598
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p1, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 3599
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 3601
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->animateClosed()V

    return-void
.end method

.method closeSystemDialogs()V
    .locals 1

    .line 2361
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    const/4 v0, 0x0

    .line 2364
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    return-void
.end method

.method completeAddApplication(Landroid/content/Intent;JIII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 1790
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v6, "Launcher"

    if-eqz v2, :cond_0

    .line 1791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "completeAddApplication: Intent = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", container = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", screen = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", cellX = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", cellY = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    :cond_0
    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1797
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v11, 0x1

    if-ltz v9, :cond_1

    if-ltz v10, :cond_1

    .line 1801
    aput v9, v2, v8

    .line 1802
    aput v10, v2, v11

    goto :goto_0

    .line 1803
    :cond_1
    invoke-virtual {v7, v2, v11, v11}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1804
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    return-void

    .line 1808
    :cond_2
    :goto_0
    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13, v1, p0}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 1811
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/high16 v6, 0x10200000

    invoke-virtual {v12, v1, v6}, Lcom/android/launcher2/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    const-wide/16 v13, -0x1

    .line 1813
    iput-wide v13, v12, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 1814
    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    aget v6, v2, v8

    aget v8, v2, v11

    .line 1815
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v11

    move-object v0, v1

    move-object v1, v12

    move-object v2, v7

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move v7, v8

    move v8, v11

    move/from16 v9, p5

    move/from16 v10, p6

    .line 1814
    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher2/Workspace;->addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V

    goto :goto_1

    .line 1817
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 2

    .line 1776
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/BubbleTextView;

    .line 1777
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher2/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V

    .line 1778
    invoke-virtual {p1, p0}, Lcom/android/launcher2/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1779
    invoke-virtual {p1, p0}, Lcom/android/launcher2/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p1
.end method

.method createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 2

    .line 1763
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1764
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0002

    .line 1763
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method disableWallpaperIfInAllApps()V
    .locals 1

    .line 3740
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3741
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    if-eqz v0, :cond_0

    .line 3742
    invoke-virtual {v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3743
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    :cond_0
    return-void
.end method

.method public dismissAllAppsCling(Landroid/view/View;)V
    .locals 2

    const p1, 0x7f080006

    .line 5496
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/Cling;

    const-string v0, "cling.allapps.dismissed"

    const/16 v1, 0xfa

    .line 5497
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    return-void
.end method

.method public dismissFolderCling(Landroid/view/View;)V
    .locals 2

    const p1, 0x7f080023

    .line 5501
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/Cling;

    const-string v0, "cling.folder.dismissed"

    const/16 v1, 0xfa

    .line 5502
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    return-void
.end method

.method public dismissWorkspaceCling(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 2944
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    if-eqz v0, :cond_0

    .line 2945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent: keyEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 2949
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/16 v3, 0x19

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "launcher_dump_state"

    .line 2953
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2954
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->dumpState()V

    :cond_2
    return v2

    .line 2959
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 2960
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    .line 2966
    :cond_5
    :goto_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x47

    if-eq v0, v2, :cond_14

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-ne v0, v1, :cond_6

    goto/16 :goto_3

    .line 2998
    :cond_6
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2999
    iget v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyRegion:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 3000
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_7

    .line 3001
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->enableID8Animator()Z

    .line 3003
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    .line 3006
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 3007
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 3008
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->enableID8Animator()Z

    .line 3010
    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    .line 3013
    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1c

    .line 3014
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_1c

    .line 3015
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    .line 3016
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppBack:Landroid/view/View;

    if-eqz p0, :cond_d

    .line 3017
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 3019
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_d

    .line 3020
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mAppBack:Landroid/view/View;

    if-eqz p1, :cond_c

    .line 3021
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3023
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    :cond_d
    :goto_1
    return v2

    .line 3029
    :cond_e
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 3030
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    .line 3033
    :cond_f
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 3034
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    .line 3037
    :cond_10
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1c

    .line 3038
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_1c

    .line 3039
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    .line 3040
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppBack:Landroid/view/View;

    if-eqz p0, :cond_13

    .line 3041
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 3043
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_13

    .line 3044
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mAppBack:Landroid/view/View;

    if-eqz p1, :cond_12

    .line 3045
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3047
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    :cond_13
    :goto_2
    return v2

    .line 2967
    :cond_14
    :goto_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/android/launcher2/Launcher;->mMMIKeyRegion:I

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 2968
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    .line 2971
    :cond_15
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 2972
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    .line 2975
    :cond_16
    iget v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyRegion:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 2976
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    .line 2979
    :cond_17
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 2980
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    .line 2983
    :cond_18
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1c

    .line 2984
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_1c

    .line 2985
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    .line 2986
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppBack:Landroid/view/View;

    if-eqz p0, :cond_1b

    .line 2987
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_4

    .line 2989
    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_1b

    .line 2990
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mAppBack:Landroid/view/View;

    if-eqz p1, :cond_1a

    .line 2991
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2993
    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    :cond_1b
    :goto_4
    return v2

    .line 3053
    :cond_1c
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 4712
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 4713
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    .line 4714
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4716
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v2, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v1, v2, :cond_0

    const v1, 0x7f0c0006

    .line 4717
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0009

    .line 4719
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 5526
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p0, " "

    .line 5527
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Debug logs: "

    .line 5528
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 5529
    :goto_0
    sget-object p1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_0

    .line 5530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    .line 5509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5516
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 5518
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz p0, :cond_0

    .line 5519
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->dumpState()V

    :cond_0
    const-string p0, "END launcher2 dump state"

    .line 5521
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableID8Animator()Z
    .locals 4

    .line 3057
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3058
    iget v0, p0, Lcom/android/launcher2/Launcher;->mSelectIndex:I

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mID8SmallIconsId:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 3059
    aget v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;

    .line 3060
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->setEnableAnimator(Z)V

    :cond_0
    return v1
.end method

.method enterSpringLoadedDragMode()V
    .locals 3

    .line 4298
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterSpringLoadedDragMode mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnResumeState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4302
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4303
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V

    .line 4304
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 4305
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    :cond_1
    return-void
.end method

.method exitSpringLoadedDragMode()V
    .locals 2

    .line 4349
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitSpringLoadedDragMode mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4353
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 4356
    invoke-direct {p0, v0, v0}, Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 4357
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    :cond_1
    return-void
.end method

.method exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V
    .locals 2

    .line 4311
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitSpringLoadedDragModeDelayed successfulDrop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extendedDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4316
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4322
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsHomeKeyPressedBeforeExitSpringMode:Z

    .line 4324
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/Launcher$27;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/launcher2/Launcher$27;-><init>(Lcom/android/launcher2/Launcher;ZLjava/lang/Runnable;)V

    if-eqz p2, :cond_2

    const/16 p0, 0x258

    goto :goto_0

    :cond_2
    const/16 p0, 0x12c

    :goto_0
    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public finishBindingItems()V
    .locals 5

    .line 5008
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 5009
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishBindingItems: mSavedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSavedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5014
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 5015
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5016
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 v0, 0x0

    .line 5018
    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 5021
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->restoreInstanceStateForRemainingPages()V

    const/4 v0, 0x0

    move v1, v0

    .line 5025
    :goto_0
    sget-object v2, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5026
    sget-object v2, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher$PendingAddArguments;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5028
    :cond_3
    sget-object v1, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5035
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-eqz v1, :cond_8

    .line 5036
    :cond_4
    new-instance v1, Lcom/android/launcher2/Launcher$28;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$28;-><init>(Lcom/android/launcher2/Launcher;)V

    .line 5043
    iget v3, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 5044
    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    if-eq v3, v4, :cond_5

    move v3, v2

    goto :goto_1

    :cond_5
    move v3, v0

    .line 5045
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->canRunNewAppsAnimation()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    .line 5049
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v4, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher2/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    goto :goto_2

    .line 5051
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V

    goto :goto_2

    .line 5056
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V

    .line 5060
    :cond_8
    :goto_2
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 5063
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUnreadLoadCompleted:Z

    if-eqz v0, :cond_9

    .line 5064
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->bindWorkspaceUnreadInfo()V

    .line 5066
    :cond_9
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mBindingWorkspaceFinished:Z

    return-void
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 0

    .line 2353
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object p0
.end method

.method getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .locals 2

    const-wide/16 v0, -0x65

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 3699
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz p0, :cond_0

    .line 3700
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 3705
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/CellLayout;

    return-object p0
.end method

.method getCurrentBounds()Landroid/graphics/Rect;
    .locals 0

    .line 5596
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mCurrentBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 0

    .line 4784
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz p0, :cond_0

    .line 4785
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getDragController()Lcom/android/launcher2/DragController;
    .locals 0

    .line 2579
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher2/DragLayer;
    .locals 0

    .line 989
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object p0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 0

    .line 3687
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object p0
.end method

.method public getIndexID8FromView(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    .line 1747
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mID8SmallIconsId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1748
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mID8SmallIconsId:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 0

    .line 2357
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object p0
.end method

.method getSearchBar()Lcom/android/launcher2/SearchDropTargetBar;
    .locals 0

    .line 3691
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-object p0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 0

    .line 3710
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object p0
.end method

.method public getmMMIKeyRegion()I
    .locals 0

    .line 464
    iget p0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyRegion:I

    return p0
.end method

.method hideDockDivider()V
    .locals 0

    return-void
.end method

.method hideHotseat(Z)V
    .locals 2

    .line 4426
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v0, :cond_0

    return-void

    .line 4429
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 4431
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 4433
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_1

    .line 4434
    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionOutDuration()I

    move-result p1

    .line 4436
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 4439
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 0

    .line 3721
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz p0, :cond_0

    .line 3722
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAllAppsVisible()Z
    .locals 2

    .line 3716
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isDraggingEnabled()Z
    .locals 0

    .line 995
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->isLoadingWorkspace()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFolderClingVisible()Z
    .locals 1

    const v0, 0x7f080023

    .line 5480
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Cling;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 5482
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1

    .line 3682
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 3683
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRotationEnabled()Z
    .locals 1

    .line 5316
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sForceEnableRotation:Z

    if-nez v0, :cond_1

    .line 5317
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .line 2730
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method lockAllApps()V
    .locals 0

    return-void
.end method

.method public lockScreenOrientation()V
    .locals 1

    .line 5322
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5323
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5324
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 5323
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public notifyOrientationChanged()V
    .locals 2

    .line 5875
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOrientationChanged: mOrientationChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mOrientationChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPaused = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 5879
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOrientationChanged:Z

    return-void
.end method

.method notifyPagesWereRecreated()V
    .locals 1

    const/4 v0, 0x1

    .line 5886
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPagesWereRecreated:Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-ne p1, v4, :cond_3

    if-eqz p3, :cond_0

    .line 1050
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez p2, :cond_1

    .line 1052
    invoke-direct {p0, v3, p1}, Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V

    goto :goto_1

    :cond_1
    if-ne p2, v2, :cond_2

    .line 1054
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object p3, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v4, 0x9

    const/4 v5, 0x1

    if-eq p1, v4, :cond_5

    const/4 v4, 0x5

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v5

    .line 1061
    :goto_3
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1063
    sget-boolean v6, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v7, "Launcher"

    if-eqz v6, :cond_6

    .line 1064
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityResult: requestCode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", resultCode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", data = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mPendingAddInfo = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v4, :cond_9

    if-eqz p3, :cond_7

    .line 1072
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_7
    if-gez v2, :cond_8

    const-string p1, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the \\widget configuration activity."

    .line 1074
    invoke-static {v7, p1}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-direct {p0, v3, v2}, Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V

    goto :goto_4

    .line 1078
    :cond_8
    invoke-direct {p0, p2, v2}, Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V

    :goto_4
    return-void

    :cond_9
    if-ne p2, v2, :cond_b

    .line 1088
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v6, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_b

    .line 1089
    new-instance v0, Lcom/android/launcher2/Launcher$PendingAddArguments;

    invoke-direct {v0, v1}, Lcom/android/launcher2/Launcher$PendingAddArguments;-><init>(Lcom/android/launcher2/Launcher$1;)V

    .line 1090
    iput p1, v0, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    .line 1091
    iput-object p3, v0, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 1092
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v6, p1, Lcom/android/launcher2/ItemInfo;->container:J

    iput-wide v6, v0, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    .line 1093
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget p1, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    iput p1, v0, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    .line 1094
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget p1, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput p1, v0, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    .line 1095
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget p1, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput p1, v0, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    .line 1096
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1097
    sget-object p1, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1099
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z

    move-result p1

    goto :goto_6

    :cond_b
    :goto_5
    move p1, v3

    .line 1102
    :goto_6
    iget-object p3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {p3}, Lcom/android/launcher2/DragLayer;->clearAnimatedView()V

    if-eqz p2, :cond_c

    move v3, v5

    .line 1104
    :cond_c
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 2099
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2100
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    const-string v1, "onAttachedToWindow."

    .line 2101
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 2106
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 2107
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.launcher.action.allapp"

    .line 2108
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.activity.action.STATE_CHANGED"

    .line 2109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 2110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 2111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 2112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yecon.launcher1.action.360.floatball"

    .line 2113
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action.ckx.dsp_type.changed"

    .line 2114
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2115
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 2117
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 2118
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 3068
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Back key pressed, mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnResumeState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3072
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3073
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    goto :goto_0

    .line 3074
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3075
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3076
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3077
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    goto :goto_0

    .line 3079
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    goto :goto_0

    .line 3082
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 3085
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->showOutlinesTemporarily()V

    const/4 v0, 0x0

    .line 3087
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/Launcher;->showCustomer(ZZ)V

    .line 3090
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->cancelLongPressWidgetToAddMessage()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const-string v0, "Launcher.onClick"

    .line 3116
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3118
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "Launcher"

    if-eqz v0, :cond_0

    .line 3119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click on view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Click on a view with no window token, directly return."

    .line 3123
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3127
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "The workspace is in switching state when clicking on view, directly return."

    .line 3128
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3132
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 3133
    instance-of v1, v0, Lcom/android/launcher2/ShortcutInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 3135
    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    iget-object v1, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 3137
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3138
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v4, v3

    aget v7, v4, v2

    aget v8, v4, v3

    .line 3139
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v4, v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v4, v9

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3138
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3141
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3143
    instance-of v0, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v0, :cond_7

    .line 3144
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    .line 3145
    invoke-virtual {v0, v2}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    goto :goto_0

    .line 3147
    :cond_3
    instance-of v0, v0, Lcom/android/launcher2/FolderInfo;

    if-eqz v0, :cond_4

    .line 3148
    instance-of v0, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_7

    .line 3149
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 3150
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->handleFolderClick(Lcom/android/launcher2/FolderIcon;)V

    goto :goto_0

    .line 3152
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mVAllapp:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 3153
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3154
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    goto :goto_0

    .line 3156
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0

    .line 3158
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppBack:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 3159
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    .line 3162
    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080080

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080081

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08007e

    if-eq v0, v1, :cond_8

    .line 3163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080082

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08007d

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08007f

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080083

    if-ne v0, v1, :cond_b

    .line 3164
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->setMMIKeyRegion(I)V

    .line 3165
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    if-eqz v0, :cond_9

    .line 3166
    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v3}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 3168
    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz v0, :cond_a

    .line 3169
    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v3}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 3170
    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-eqz v0, :cond_b

    .line 3171
    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 3174
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3194
    :pswitch_0
    sget-object p0, Lcom/android/launcher2/Launcher;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onZLink(Landroid/content/Context;)V

    goto :goto_1

    .line 3185
    :pswitch_1
    sget-object p0, Lcom/android/launcher2/Launcher;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onSettings(Landroid/content/Context;)V

    goto :goto_1

    .line 3179
    :pswitch_2
    sget-object p0, Lcom/android/launcher2/Launcher;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onNavigation(Landroid/content/Context;)V

    goto :goto_1

    .line 3176
    :pswitch_3
    sget-object p0, Lcom/android/launcher2/Launcher;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onMusic(Landroid/content/Context;)V

    goto :goto_1

    .line 3191
    :pswitch_4
    sget-object p0, Lcom/android/launcher2/Launcher;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onCarMedia(Landroid/content/Context;)V

    goto :goto_1

    .line 3182
    :pswitch_5
    sget-object p0, Lcom/android/launcher2/Launcher;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onBT(Landroid/content/Context;)V

    goto :goto_1

    .line 3188
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    .line 3200
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08007d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 1

    .line 3262
    sget-boolean p1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "Launcher"

    const-string v0, "[All apps launch time][Start] onClickAllAppsButton."

    .line 3263
    invoke-static {p1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3265
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 3266
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    goto :goto_0

    .line 3268
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 3

    .line 3280
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "Launcher"

    if-eqz v0, :cond_0

    .line 3281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickAppMarketButton v = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAppMarketIntent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v1, "app market"

    .line 3285
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "Invalid app market intent."

    .line 3287
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 2

    .line 3216
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClickSearchButton v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 3220
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3222
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    return-void
.end method

.method public onClickVoiceButton(Landroid/view/View;)V
    .locals 5

    const-string v0, "onClickVoiceButton"

    const-string v1, "android.speech.action.WEB_SEARCH"

    .line 3231
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickVoiceButton v = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher"

    invoke-static {v3, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    .line 3235
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 p1, 0x0

    const/high16 v2, 0x10000000

    :try_start_0
    const-string v3, "search"

    .line 3239
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    .line 3240
    invoke-virtual {v3}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 3241
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 3244
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3246
    :cond_1
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    const/high16 v3, 0x7f010000

    const v4, 0x7f010001

    .line 3247
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3249
    :catch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3251
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onCompleteListener()V
    .locals 0

    const-string p0, "onCompleteListener&&&&&&&&&&&&&&&&Launcher&&&&&&&&&&&&&&&&&&&"

    .line 5939
    invoke-static {p0}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, ""

    .line 506
    sput-object v0, Lcom/android/launcher2/Launcher;->mLastBackgroundPackage:Ljava/lang/String;

    .line 507
    sput-object v0, Lcom/android/launcher2/Launcher;->mCurrentForegroundPackage:Ljava/lang/String;

    .line 508
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "kill_background"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mKillBackgroundAppHandlerThread:Landroid/os/HandlerThread;

    .line 509
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 510
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mKillBackgroundAppHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mKillBackgroundAppHandler:Landroid/os/Handler;

    .line 511
    sput-object p0, Lcom/android/launcher2/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 512
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mFirstRunLauncherFlag:Z

    .line 528
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 532
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkDspType()V

    .line 533
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkThemeSetAPP()V

    .line 534
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 535
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v3

    const-string v4, "Launcher"

    const-string v5, "com.mapgoo.diruite"

    const-string v6, "net.mapgoo.m10010"

    const-string v7, "com.car.sohan"

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    .line 536
    invoke-static {p0, v7}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    :try_start_0
    invoke-virtual {v2, v7, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 540
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 543
    :cond_0
    :goto_0
    invoke-static {p0, v6}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 545
    :try_start_1
    invoke-virtual {v2, v6, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 547
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    :cond_1
    :goto_1
    invoke-static {p0, v5}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 552
    :try_start_2
    invoke-virtual {v2, v5, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v3

    .line 554
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 557
    :cond_2
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomer()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 558
    invoke-static {p0, v7}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 560
    :try_start_3
    invoke-virtual {v2, v7, v1, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    .line 562
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    :cond_3
    :goto_2
    invoke-static {p0, v6}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 567
    :try_start_4
    invoke-virtual {v2, v6, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v3

    .line 569
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 572
    :cond_4
    :goto_3
    invoke-static {p0, v5}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 574
    :try_start_5
    invoke-virtual {v2, v5, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v3

    .line 576
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 580
    :cond_5
    invoke-static {p0, v7}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 582
    :try_start_6
    invoke-virtual {v2, v7, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v3

    .line 584
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 587
    :cond_6
    :goto_4
    invoke-static {p0, v6}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 589
    :try_start_7
    invoke-virtual {v2, v6, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception v3

    .line 591
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 594
    :cond_7
    :goto_5
    invoke-static {p0, v5}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "launcher1---com.mapgoo.diruite"

    .line 595
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_8
    invoke-virtual {v2, v5, v1, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    :catch_8
    move-exception v3

    .line 599
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_6
    const-string v3, "com.elinkway.tvlive2"

    .line 604
    invoke-static {p0, v3}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 606
    :try_start_9
    invoke-virtual {v2, v3, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_7

    :catch_9
    move-exception v3

    .line 608
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_7
    const-string v3, "com.carocean.pdfreader"

    .line 612
    invoke-static {p0, v3}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "launcher1---com.carocean.pdfreader"

    .line 613
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v5, Ljava/io/File;

    const-string v6, "/mnt/appconfig/UserGuide.pdf"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 617
    :try_start_a
    invoke-virtual {v2, v3, v1, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_8

    :catch_a
    move-exception v3

    .line 619
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 623
    :cond_a
    :try_start_b
    invoke-virtual {v2, v3, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_8

    :catch_b
    move-exception v3

    .line 625
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_8
    const-string v3, "com.ivicar.avm"

    .line 630
    invoke-static {p0, v3}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "persist.sys.ivicar.avm.enable"

    if-eqz v5, :cond_d

    .line 632
    :try_start_c
    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_c

    move v5, v1

    goto :goto_9

    :cond_c
    move v5, v8

    :goto_9
    invoke-virtual {v2, v3, v5, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_a

    :catch_c
    move-exception v3

    .line 634
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_a
    const-string v3, "com.tencent.android.qqdownloader"

    .line 638
    invoke-static {p0, v3}, Lcom/android/launcher2/uitl/Function;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 640
    :try_start_d
    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v1, :cond_e

    move v8, v1

    :cond_e
    invoke-virtual {v2, v3, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_b

    :catch_d
    move-exception v2

    .line 642
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    :cond_f
    :goto_b
    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/launcher2/LauncherApplication;->m360Type:I

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launcher1---m360Type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/launcher2/LauncherApplication;->m360Type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x384

    const-string v3, "persist.sys.ddr_total_memmb"

    .line 648
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/launcher2/LauncherApplication;->mTotalMemMb:I

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launcher1---mTotalMemMb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/launcher2/LauncherApplication;->mTotalMemMb:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ro.release.oem_name"

    .line 651
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Launcher;->OEM_NAME:Ljava/lang/String;

    const-string v2, "BMW_DFQC"

    .line 652
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 653
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hongfan_key"

    const-string v3, "H1DFQC1707000000"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 654
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hongfan_appsecret"

    const-string v3, "hf4070aa64439118aaf6433183b9aeab60"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 657
    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 658
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11

    const/high16 v2, 0xc000000

    .line 659
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 661
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x700

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v2, -0x80000000

    .line 664
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_c

    .line 665
    :cond_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_12

    const/high16 v2, 0x4000000

    .line 666
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v2, 0x8000000

    .line 667
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 670
    :cond_12
    :goto_c
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 671
    invoke-static {p0}, Lcom/android/launcher2/ThemeManager;->initTeme(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 673
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    if-eqz v2, :cond_skip_del

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->deleteDatabase()V

    :cond_skip_del

    .line 674
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/IconCache;->flush()V

    :cond_13
    # const-string v2, "persist.sys.fristLauncher"
    # const-string v3, "no"
    # invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    # const-string v2, "AudioAddWhiteListName=com.txznet.txz"
    # invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 683
    sput-object v0, Lcom/android/launcher2/Launcher;->sApplication:Lcom/android/launcher2/LauncherApplication;

    .line 684
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v9}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 686
    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 692
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 693
    new-instance v0, Lcom/android/launcher2/DragController;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 694
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 696
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_14

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Launcher)onCreate: savedInstanceState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mModel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIconCache = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", this = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sLocaleChanged = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sLocaleChanged:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_14
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 702
    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHost;

    const/16 v2, 0x400

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Lcom/android/launcher2/Launcher;I)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 703
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 708
    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 709
    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mStoped:Z

    .line 716
    invoke-static {p0}, Lcom/android/launcher2/SceneManager;->loadSceneInfo(Landroid/content/Context;)V

    .line 717
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 719
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 720
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v0

    if-eqz v0, :cond_15

    const v0, 0x7f0a0046

    .line 721
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    goto :goto_d

    .line 722
    :cond_15
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f0a0047

    .line 723
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    goto :goto_d

    .line 724
    :cond_16
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x7f0a0045

    .line 725
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    goto :goto_d

    .line 726
    :cond_17
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isJLYCustomer()Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x7f0a0041

    .line 727
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    goto :goto_d

    :cond_18
    const v0, 0x7f0a0044

    .line 729
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    goto :goto_d

    .line 731
    :cond_19
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f0a0048

    .line 732
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    goto :goto_d

    .line 733
    :cond_1a
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1b

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLFECustomer()Z

    move-result v0

    if-eqz v0, :cond_1b

    const v0, 0x7f0a0049

    .line 734
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    goto :goto_d

    :cond_1b
    const v0, 0x7f0a003e

    .line 736
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 740
    :goto_d
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupViews()V

    .line 742
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->refreshUIByScene()V

    .line 744
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->registerContentObservers()V

    .line 745
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->lockAllApps()V

    .line 747
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 748
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 751
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz p1, :cond_1c

    .line 752
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->onPackagesUpdated()V

    .line 759
    :cond_1c
    iget-boolean p1, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez p1, :cond_1f

    .line 761
    sget-boolean p1, Lcom/android/launcher2/Launcher;->sLocaleChanged:Z

    if-eqz p1, :cond_1d

    .line 762
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p1, v1, v1}, Lcom/android/launcher2/LauncherModel;->resetLoadedState(ZZ)V

    .line 763
    sput-boolean v9, Lcom/android/launcher2/Launcher;->sLocaleChanged:Z

    .line 765
    :cond_1d
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsLoadingWorkspace:Z

    .line 766
    sget-boolean p1, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    if-eqz p1, :cond_1e

    .line 769
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/LauncherModel;->startLoader(ZI)V

    goto :goto_e

    .line 773
    :cond_1e
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/LauncherModel;->startLoader(ZI)V

    .line 777
    :cond_1f
    :goto_e
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherModel;->isAllAppsLoaded()Z

    move-result p1

    if-nez p1, :cond_20

    .line 778
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 779
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0a0010

    invoke-virtual {v0, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 783
    :cond_20
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 784
    invoke-static {p1, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 786
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "ckx.action.ui_theme_sub.changed"

    .line 787
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 793
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    .line 799
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "action.brightness.set"

    .line 800
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mBrightnessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 803
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->initMcuManager()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .line 2661
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2665
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2667
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    .line 2668
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2670
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10200000

    .line 2671
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v4, 0x7f0c0054

    .line 2673
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2674
    new-instance v4, Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2675
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x2

    const v5, 0x7f0c010b

    const/4 v6, 0x1

    .line 2678
    invoke-interface {p1, v6, v2, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x108003f

    .line 2679
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v5, 0x57

    .line 2680
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v2, 0x3

    const v5, 0x7f0c0107

    .line 2681
    invoke-interface {p1, v1, v2, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x1080042

    .line 2682
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2683
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x4d

    .line 2684
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v2, 0x7f0c010a

    .line 2685
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x1080049

    .line 2686
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2687
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x50

    .line 2688
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2689
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x5

    const v0, 0x7f0c0105

    .line 2690
    invoke-interface {p1, v1, p0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x1080040

    .line 2691
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p0

    .line 2692
    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p0

    const/16 p1, 0x48

    .line 2693
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_1
    return v6
.end method

.method public onDestroy()V
    .locals 4

    .line 2520
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 2522
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mFirstRunLauncherFlag:Z

    .line 2524
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v2, "Launcher"

    if-eqz v1, :cond_0

    .line 2525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Launcher)onDestroy: this = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->removeMCUManager()V

    .line 2528
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    if-eqz v1, :cond_1

    .line 2529
    invoke-virtual {v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->release()V

    .line 2531
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz v1, :cond_2

    .line 2532
    invoke-virtual {v1}, Lcom/android/launcher2/popuView/MainCustomer;->release()V

    .line 2535
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2536
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2537
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2540
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 2541
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    const/4 v1, 0x0

    .line 2542
    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    .line 2545
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    .line 2547
    invoke-static {v2, v3, v0}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2549
    :goto_0
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 2551
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2553
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 2557
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v0, :cond_3

    .line 2558
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->unbindItemInfosAndClearQueuedBindRunnables()V

    .line 2561
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2562
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2564
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 2565
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2566
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 2567
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2568
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 2570
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->onDestroyActivity()V

    .line 2575
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mBrightnessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 2156
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 2157
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    const-string v1, "onDetachedFromWindow."

    .line 2158
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 2161
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 2163
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v1, :cond_1

    .line 2164
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2165
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 2167
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1348
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 1349
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 1350
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1351
    :goto_0
    sget-boolean v3, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    if-eqz v3, :cond_1

    .line 1352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onKeyDown: KeyCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", KeyEvent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ", uniChar = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", handled = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", isKeyNotWhitespace = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Launcher"

    invoke-static {v0, p2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 p2, 0x52

    if-ne p1, p2, :cond_2

    return v1

    :cond_2
    return p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 3608
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "Launcher"

    if-eqz v0, :cond_0

    .line 3609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick: View = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", v.getTag() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3613
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isDraggingEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLongClick: isDraggingEnabled() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isDraggingEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3618
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3619
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLongClick: isWorkspaceLocked() mWorkspaceLoading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mWaitingForResult = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3625
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v3, :cond_3

    .line 3626
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLongClick: mState != State.WORKSPACE: = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3630
    :cond_3
    instance-of v0, p1, Lcom/android/launcher2/popuView/MainCustomer;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 3632
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    return v1

    .line 3636
    :cond_4
    :goto_0
    instance-of v0, p1, Lcom/android/launcher2/CellLayout;

    if-nez v0, :cond_5

    .line 3637
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 3640
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 3641
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    if-nez v0, :cond_6

    return v1

    .line 3647
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v2

    .line 3654
    :cond_7
    iget-object v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 3656
    instance-of v4, v3, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_8

    return v2

    .line 3661
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    move p1, v2

    goto :goto_2

    :cond_a
    :goto_1
    move p1, v1

    :goto_2
    if-eqz p1, :cond_c

    .line 3662
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {p1}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_c

    if-nez v3, :cond_b

    .line 3665
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 3667
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    goto :goto_3

    .line 3669
    :cond_b
    instance-of p1, v3, Lcom/android/launcher2/Folder;

    if-nez p1, :cond_c

    .line 3672
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/Workspace;->startDragAppWidget(I)V

    .line 3674
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V

    :cond_c
    :goto_3
    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 2369
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2370
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "show_app"

    const/4 v1, 0x0

    .line 2374
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2375
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne p1, v0, :cond_1

    .line 2376
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    :cond_1
    return-void

    .line 2382
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2384
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v3, :cond_3

    .line 2385
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->setSwitchPageFlag(Z)Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/launcher2/Launcher;->showCustomer(ZZ)V

    .line 2390
    :cond_3
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsHomeKeyPressedBeforeExitSpringMode:Z

    .line 2393
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeSystemDialogs()V

    .line 2396
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_4

    move v1, v2

    .line 2399
    :cond_4
    new-instance p1, Lcom/android/launcher2/Launcher$17;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher2/Launcher$17;-><init>(Lcom/android/launcher2/Launcher;Z)V

    if-eqz v1, :cond_5

    .line 2450
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2453
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2456
    :cond_5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2713
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2719
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 2715
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPageBoundSynchronously(I)V
    .locals 0

    .line 4999
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v0, 0x1

    .line 1282
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 1284
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1285
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Launcher)onPause: this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher"

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetReSyncFlags()V

    .line 1293
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 1294
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 1295
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->resetLastGestureUpTime()V

    .line 1300
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkSwitchPageFlag()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 2700
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2702
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->isTransitioning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2705
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->getVisibility()I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    move v1, v0

    :cond_1
    xor-int/lit8 p0, v1, 0x1

    .line 2706
    invoke-interface {p1, v0, p0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 2464
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2466
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mSavedInstanceState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher"

    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2472
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->restoreInstanceStateForChild(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1178
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mKillBackgroundAppHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1179
    new-instance v1, Lcom/android/launcher2/Launcher$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1194
    :cond_0
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "Launcher"

    if-eqz v0, :cond_1

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Launcher)onResume: mRestoring = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mOnResumeNeedsLoad = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mOrientationChanged = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mOrientationChanged:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mPagesAreRecreated = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mPagesWereRecreated:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mState= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "this = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOrientationChanged:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPagesWereRecreated:Z

    if-eqz v0, :cond_2

    const-string v0, "(Launcher)onResume: mOrientationChanged && mPagesWereRecreated"

    .line 1205
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateAppPages(IZ)V

    .line 1213
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetReSyncFlags()V

    .line 1216
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->onResumeWhenShown(I)V

    .line 1219
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 1220
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1221
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_4

    .line 1223
    iget-object v0, v0, Lcom/android/launcher2/Hotseat;->mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

    if-eqz v0, :cond_4

    .line 1224
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, v0, Lcom/android/launcher2/Hotseat;->mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/FboxPopuWindow;->dismiss()V

    goto :goto_0

    .line 1227
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_4

    .line 1228
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    .line 1230
    :cond_4
    :goto_0
    sget-object v0, Lcom/android/launcher2/Launcher$State;->NONE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 1233
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->setWorkspaceBackground(Z)V

    .line 1236
    invoke-static {p0}, Lcom/android/launcher2/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 1238
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 1239
    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->setSwitchPageFlag(Z)Z

    .line 1240
    sput-boolean v3, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    .line 1241
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v0, :cond_7

    .line 1242
    :cond_6
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 1243
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsLoadingWorkspace:Z

    .line 1244
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/LauncherModel;->startLoader(ZI)V

    .line 1245
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 1246
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 1251
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    if-eqz v0, :cond_8

    .line 1253
    invoke-virtual {v0, v3}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    .line 1255
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_9

    .line 1257
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->resetDrawableState()V

    .line 1263
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->reinflateWidgetsIfNecessary()V

    .line 1271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yecon.action.openvoice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 1306
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRetainNonConfigurationInstance: mSavedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSavedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 1313
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz p0, :cond_1

    .line 1314
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->surrender()V

    .line 1316
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 2478
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v0

    const-string v1, "launcher.current_screen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2479
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2481
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v0

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2484
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2486
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_0

    .line 2488
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-string v2, "launcher.add_container"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2489
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    const-string v1, "launcher.add_screen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2490
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    const-string v1, "launcher.add_cell_x"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2491
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    const-string v1, "launcher.add_cell_y"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2492
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    const-string v1, "launcher.add_span_x"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2493
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    const-string v1, "launcher.add_span_y"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2494
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const-string v1, "launcher.add_widget_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2497
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "launcher.rename_folder"

    .line 2498
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2499
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v0, v0, Lcom/android/launcher2/FolderInfo;->id:J

    const-string v2, "launcher.rename_folder_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2503
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    if-eqz v0, :cond_2

    .line 2508
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getSaveInstanceStateIndex()I

    move-result p0

    const-string v0, "apps_customize_currentIndex"

    .line 2509
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2513
    :cond_2
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 2514
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onSaveInstanceState: outState = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2724
    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return v2
.end method

.method onServiceConnected()V
    .locals 4

    .line 6008
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_MCU_SERVICE_READY"

    const/4 v3, -0x1

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " URI_MCU_SERVICE_READY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 6012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onServiceConnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mIsMcuInited:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6013
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsMcuInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 6014
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsMcuInited:Z

    .line 6015
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p0

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendQueryCmd(II)V

    .line 6016
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p0

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendQueryCmd(II)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1110
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1111
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Launcher)onStart: this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1114
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mStoped:Z

    .line 1116
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1126
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1127
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Launcher)onStop: this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1130
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mStoped:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 3206
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchDownAllAppsButton(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x1

    .line 3276
    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 4152
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 4153
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory: level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x50

    if-lt p1, v0, :cond_2

    .line 4158
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->volunteerFreeMemory()V

    .line 4159
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    if-eqz p1, :cond_1

    .line 4160
    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->onTrimMemory()V

    .line 4162
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz p0, :cond_2

    .line 4163
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->onTrimMemory()V

    :cond_2
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .line 846
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    const/4 p0, 0x1

    .line 847
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4173
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    goto :goto_0

    .line 4176
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v0, Lcom/android/launcher2/Launcher$26;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$26;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2171
    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 2172
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 2176
    iget-boolean p1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-eqz p1, :cond_2

    .line 2177
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-virtual {p1}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->onWindowVisible()V

    .line 2178
    iget-boolean p1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez p1, :cond_1

    .line 2179
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 2184
    new-instance v0, Lcom/android/launcher2/Launcher$15;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Launcher$15;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2201
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    :cond_2
    return-void
.end method

.method public openFolder(Lcom/android/launcher2/FolderIcon;)V
    .locals 3

    .line 3562
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3563
    iget-object v1, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    const/4 v2, 0x1

    .line 3565
    iput-boolean v2, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 3569
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3570
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;)V

    .line 3571
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    goto :goto_0

    .line 3573
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening folder ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") which already has a parent ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3574
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher"

    .line 3573
    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->animateOpen()V

    .line 3577
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->growAndFadeOutFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    return-void
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 4

    .line 2863
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 2864
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2866
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processShortcut: applicationName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shortcutName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher"

    invoke-static {v3, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 2871
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2872
    new-instance p1, Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 2873
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2875
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    .line 2876
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p1, 0x7f0c012f

    .line 2877
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/4 p1, 0x6

    .line 2878
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 2880
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V
    .locals 2

    .line 2777
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processShortcutFromDrop componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", container = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 2783
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 2784
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput p4, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 2785
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p6, p2, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    if-eqz p5, :cond_1

    .line 2788
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 p3, 0x0

    aget p3, p5, p3

    iput p3, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2789
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 p3, 0x1

    aget p3, p5, p3

    iput p3, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 2792
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2793
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2794
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    return-void
.end method

.method processWallpaper(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xa

    .line 2885
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 2

    .line 2322
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAppWidget launcherInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 2327
    iput-object p0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method

.method removeFolder(Lcom/android/launcher2/FolderInfo;)V
    .locals 2

    .line 2907
    sget-object p0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v0, p1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 2

    .line 2311
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeWidgetToAutoAdvance hostView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2316
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2317
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    :cond_1
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    .line 4771
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v0, :cond_0

    .line 4772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLoadOnResume: this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4773
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMMIKeyRegion(I)V
    .locals 2

    .line 447
    iput p1, p0, Lcom/android/launcher2/Launcher;->mMMIKeyRegion:I

    .line 448
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    const v0, 0x7f070151

    const v1, 0x7f070150

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageNewArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 449
    iget p1, p0, Lcom/android/launcher2/Launcher;->mMMIKeyRegion:I

    if-nez p1, :cond_0

    .line 450
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageNewArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 452
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageNewArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 454
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageNewArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 455
    iget p1, p0, Lcom/android/launcher2/Launcher;->mMMIKeyRegion:I

    if-nez p1, :cond_3

    .line 456
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageNewArrow:Landroid/widget/ImageView;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_2

    const v0, 0x7f070065

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 458
    :cond_3
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageNewArrow:Landroid/widget/ImageView;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_4

    const v1, 0x7f070028

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setPackageIndex(IIZ)V
    .locals 2

    .line 5823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPackageIndex CurNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CountNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWorkspace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5824
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/popuView/SwitchIconView;->setPackageIndex(IIZ)V

    if-eqz p3, :cond_0

    .line 5826
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/SwitchIconView;->setVisibility(I)V

    goto :goto_0

    .line 5828
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/SwitchIconView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method showAllApps(Z)V
    .locals 3

    .line 4258
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAllApps: animated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4262
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_1

    return-void

    .line 4265
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_2

    .line 4266
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 4270
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->startCovered(I)V

    const/4 v0, 0x0

    .line 4271
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 4273
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mAppCustomizeFrame:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-virtual {p1}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->requestFocus()Z

    .line 4277
    sget-object p1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 4278
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/launcher2/Hotseat;->showHomeIcon(Z)V

    .line 4281
    :cond_3
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 4282
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 4283
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 4286
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x20

    .line 4287
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4289
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    if-eqz p1, :cond_4

    .line 4290
    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->onShowAllApps()V

    .line 4292
    :cond_4
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz p0, :cond_5

    .line 4293
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->onShowAllApps()V

    :cond_5
    return-void
.end method

.method showDockDivider(Z)V
    .locals 0

    return-void
.end method

.method public showFirstRunAllAppsCling([I)V
    .locals 4

    .line 5455
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v0

    const v1, 0x7f080006

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cling.allapps.dismissed"

    const/4 v3, 0x0

    .line 5456
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5458
    invoke-direct {p0, v1, p1, v0, v3}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    move-result-object p1

    const v0, 0x7f080008

    .line 5459
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Launcher;->setClingTitleWithThemeColor(Landroid/view/View;I)V

    goto :goto_0

    .line 5461
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    :goto_0
    return-void
.end method

.method public showFirstRunFoldersCling()Lcom/android/launcher2/Cling;
    .locals 5

    .line 5469
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v0

    const v1, 0x7f080023

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "cling.folder.dismissed"

    const/4 v4, 0x0

    .line 5470
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5471
    invoke-direct {p0, v1, v2, v0, v4}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    move-result-object v2

    const v0, 0x7f080025

    .line 5472
    invoke-direct {p0, v2, v0}, Lcom/android/launcher2/Launcher;->setClingTitleWithThemeColor(Landroid/view/View;I)V

    goto :goto_0

    .line 5474
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    :goto_0
    return-object v2
.end method

.method public showFirstRunWorkspaceCling()V
    .locals 3

    .line 5440
    invoke-static {p0}, Lcom/android/launcher2/UserInitializeReceiver;->setCompleteListener(Lcom/android/launcher2/UserInitializeReceiver$onBootCompleteListener;)V

    .line 5442
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.fristLauncher"

    const-string v1, "yes"

    .line 5443
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5444
    new-instance v0, Lcom/android/launcher2/popuView/AboutDialog;

    const v1, 0x7f0a003f

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/popuView/AboutDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAboutDialog:Lcom/android/launcher2/popuView/AboutDialog;

    .line 5445
    invoke-virtual {v0}, Lcom/android/launcher2/popuView/AboutDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 5446
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAboutDialog:Lcom/android/launcher2/popuView/AboutDialog;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/AboutDialog;->show()V

    .line 5447
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAboutDialog:Lcom/android/launcher2/popuView/AboutDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popuView/AboutDialog;->setButtonEable(Z)V

    .line 5449
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method showHotseat(Z)V
    .locals 2

    .line 4405
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v0, :cond_0

    return-void

    .line 4407
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 4409
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 4411
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_1

    .line 4412
    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionInDuration()I

    move-result p1

    .line 4414
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 4417
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showLongPressWidgetToAddMessage()V
    .locals 3

    .line 5837
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mLongPressWidgetToAddToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    const v2, 0x7f0c00c8

    if-nez v0, :cond_0

    .line 5838
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mLongPressWidgetToAddToast:Landroid/widget/Toast;

    goto :goto_0

    .line 5841
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 5842
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mLongPressWidgetToAddToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 5844
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mLongPressWidgetToAddToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showOnlyOneWidgetMessage(Lcom/android/launcher2/PendingAddWidgetInfo;)V
    .locals 3

    const/4 v0, 0x0

    .line 2342
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2343
    iget-object p1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0c010d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 2344
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Launcher"

    const-string v2, "Got NameNotFounceException when showOnlyOneWidgetMessage."

    .line 2346
    invoke-static {v1, v2, p1}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    .line 2349
    invoke-virtual {p0, v0, v0, p1}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method showOutOfSpaceMessage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f0c00a9

    goto :goto_0

    :cond_0
    const p1, 0x7f0c010f

    .line 2332
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showWorkspace(Z)V
    .locals 1

    .line 4189
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Workspace;->stopCovered(I)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 4190
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    .line 4192
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Hotseat;->showHomeIcon(Z)V

    :cond_0
    return-void
.end method

.method showWorkspace(ZLjava/lang/Runnable;)V
    .locals 4

    .line 4196
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWorkspace: animated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4200
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    .line 4201
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 4203
    :goto_0
    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v1, p1, v3, p2}, Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V

    .line 4207
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz p2, :cond_2

    .line 4208
    invoke-virtual {p2, v0}, Lcom/android/launcher2/SearchDropTargetBar;->showSearchBar(Z)V

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    move p2, v3

    .line 4212
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Launcher;->showDockDivider(Z)V

    .line 4220
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Launcher;->showCustomer(ZZ)V

    .line 4222
    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/Workspace;->flashScrollingIndicator(Z)V

    .line 4225
    sget-object p1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 4228
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 4229
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 4232
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x20

    .line 4233
    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4235
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result p1

    if-eq p1, v2, :cond_7

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    goto :goto_2

    .line 4241
    :cond_5
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4242
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz p1, :cond_9

    .line 4243
    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomer;->getSeletedPage()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomer;->getPageCount()I

    move-result p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    goto :goto_3

    .line 4246
    :cond_6
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    goto :goto_3

    .line 4236
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    if-eqz p1, :cond_8

    .line 4237
    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->getSeletedPage()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->getPageCount()I

    move-result p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    goto :goto_3

    .line 4238
    :cond_8
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz p1, :cond_9

    .line 4239
    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomer;->getSeletedPage()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p2}, Lcom/android/launcher2/popuView/MainCustomer;->getPageCount()I

    move-result p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    .line 4249
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mMainCustomerJly:Lcom/android/launcher2/popuView/MainCustomerJly;

    if-eqz p1, :cond_a

    .line 4250
    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->onShowWorkspace()V

    .line 4252
    :cond_a
    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMainCustomer:Lcom/android/launcher2/popuView/MainCustomer;

    if-eqz p0, :cond_b

    .line 4253
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->onShowWorkspace()V

    :cond_b
    return-void
.end method

.method startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5

    .line 3333
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "Launcher"

    if-eqz v0, :cond_0

    .line 3334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity v = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", intent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x10000000

    .line 3337
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v3, "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    .line 3343
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    move v3, v2

    :goto_0
    const-string v4, "Launcher.startActivity"

    .line 3346
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    .line 3350
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 3349
    invoke-static {p1, v2, v2, v3, v4}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 3352
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3354
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3358
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_2
    const v0, 0x7f0c0004

    .line 3362
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 3363
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launcher does not have the permission to launch "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity. tag="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " intent="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    .line 2585
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 2587
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 3

    .line 3398
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "Launcher"

    if-eqz v0, :cond_0

    .line 3399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityForResultSafely: intent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", requestCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const v2, 0x7f0c0004

    .line 3404
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3408
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 3409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launcher does not have the permission to launch "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3406
    :catch_1
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 4

    .line 3372
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "Launcher"

    if-eqz v0, :cond_0

    .line 3373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivitySafely v = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", intent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_3

    .line 3377
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3378
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "com.ivicar.avm"

    .line 3379
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.ivicar.modules.main.view.MainActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3380
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 3381
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3382
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    .line 3383
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    const/4 v0, 0x0

    .line 3389
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const v2, 0x7f0c0004

    .line 3391
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 3392
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch. tag="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " intent="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v0
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 3

    .line 3300
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startApplicationDetailsActivity: componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "package"

    const/4 v2, 0x0

    .line 3306
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10800000

    .line 3307
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "startApplicationDetailsActivity"

    .line 3308
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 3

    .line 3312
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startApplicationUninstallActivity: appInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    :cond_0
    iget v0, p1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    const p1, 0x7f0c0134

    const/4 v0, 0x0

    .line 3320
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3322
    :cond_1
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3323
    iget-object p1, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 3324
    new-instance v1, Landroid/content/Intent;

    const-string v2, "package"

    .line 3325
    invoke-static {v2, v0, p1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.DELETE"

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10800000

    .line 3326
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3328
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public startBinding()V
    .locals 6

    .line 4797
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "Launcher"

    if-eqz v0, :cond_0

    .line 4798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBinding: this = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4802
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    if-eqz v0, :cond_1

    .line 4803
    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 4807
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, -0x1

    .line 4809
    iput v2, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 4810
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4811
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->clearDropTargets()V

    .line 4812
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 4815
    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 4816
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 4817
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->requestChildLayout()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4819
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 4820
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4821
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_3

    .line 4822
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 4826
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->refreshUIByScene()V

    .line 4828
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 4829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBinding: mIsLoadingWorkspace = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsLoadingWorkspace:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4831
    :cond_4
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mIsLoadingWorkspace:Z

    return-void
.end method

.method public startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 5

    const-string v0, "search"

    .line 2625
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2626
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "Launcher"

    if-nez v0, :cond_0

    const-string p0, "No global search activity found."

    .line 2628
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2631
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 2632
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2633
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-nez p3, :cond_1

    .line 2636
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 2638
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v3

    :goto_0
    const-string v3, "source"

    .line 2641
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2642
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v3, "app_data"

    .line 2644
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2645
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "query"

    .line 2646
    invoke-virtual {v2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "select_query"

    .line 2649
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2651
    :cond_4
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2653
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2655
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Global search activity not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    .line 2597
    sget-boolean p4, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p4, :cond_0

    const-string p4, "Launcher"

    const-string v0, "startSearch."

    .line 2598
    invoke-static {p4, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p4, 0x1

    .line 2600
    invoke-virtual {p0, p4}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    if-nez p1, :cond_1

    .line 2604
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p3, :cond_2

    .line 2607
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2610
    :cond_2
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 2611
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v0, :cond_3

    .line 2612
    invoke-virtual {v0}, Lcom/android/launcher2/SearchDropTargetBar;->getSearchBarBounds()Landroid/graphics/Rect;

    move-result-object p4

    .line 2615
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher2/Launcher;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    return-void
.end method

.method public switchScene()V
    .locals 3

    .line 5692
    invoke-static {}, Lcom/android/launcher2/Utilities;->clearBitmap()V

    .line 5693
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher2/IconCache;->refreshDefaultIcon()V

    .line 5694
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher2/IconCache;->flush()V

    .line 5695
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    .line 5698
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-nez v0, :cond_0

    goto :goto_1

    .line 5702
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViews()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5706
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5707
    new-instance v1, Landroid/appwidget/AppWidgetHost;

    const/16 v2, 0x400

    invoke-direct {v1, v0, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 5708
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 5709
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5710
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5712
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 5713
    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->resetDropTarget()V

    .line 5715
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 5716
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_2

    .line 5717
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    :cond_2
    return-void
.end method

.method unlockAllApps()V
    .locals 0

    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 3

    .line 5329
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 5331
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    goto :goto_0

    .line 5333
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher2/Launcher$34;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$34;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 3

    .line 3754
    sget-boolean v0, Lcom/android/launcher2/AppsCustomizeTabHost;->NEED_SHOW_WALLPAPER:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/high16 v0, 0x100000

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3758
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v0

    if-eq v1, v2, :cond_2

    .line 3761
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setFlags(II)V

    .line 3763
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->setWorkspaceBackground(Z)V

    return-void
.end method
