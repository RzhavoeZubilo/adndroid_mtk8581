package com.android.launcher2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.SearchManager;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioSystem;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemProperties;
import android.os.Trace;
import android.provider.Settings;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.Advanceable;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.ViewCompat;
import com.android.launcher2.popuView.AboutDialog;
import com.android.launcher2.popuView.AnimationLeftToRightFrameLayout;
import com.android.launcher2.popuView.AppsCustomizeFrame;
import com.android.launcher2.popuView.MainCustomer;
import com.android.launcher2.popuView.MainCustomerJly;
import com.android.launcher2.popuView.SwitchIconView;
import com.android.launcher2.uitl.Function;
import com.android.launcher2.uitl.L;
import com.android.launcher2.uitl.Utils;
import com.carocean.navicar.MMIKeyHelper;
import com.carocean.navicar.McuServiceManager;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import com.carocean.navicar.PerSysDef;
import com.carocean.navicar.util.McuUtils;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.BuildConfig;
import com.yecon.launcher1.R;
import java.io.File;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Launcher extends Activity implements View.OnClickListener, View.OnLongClickListener, LauncherModel.Callbacks, View.OnTouchListener, UserInitializeReceiver.onBootCompleteListener {
    private static final String ACTION_360_FLOAT_BALL = "com.yecon.launcher1.action.360.floatball";
    static final String ACTION_ACTIVITY_BACKGROUND = "android.activity.action.STATE_CHANGED";
    static final int APPWIDGET_HOST_ID = 1024;
    private static final String CMD_360_FLOAT_BALL_NEED_SHOW = "360_floatball_needshow";
    static final boolean DEBUG_STRICT_MODE = false;
    static final boolean DEBUG_WIDGETS = false;
    static final int DEFAULT_SCREEN = 0;
    private static final int DISMISS_CLING_DURATION = 250;
    static final String DUMP_STATE_PROPERTY = "launcher_dump_state";
    private static final int EXIT_SPRINGLOADED_MODE_LONG_TIMEOUT = 600;
    private static final int EXIT_SPRINGLOADED_MODE_SHORT_TIMEOUT = 300;
    static final String EXTRA_SHORTCUT_DUPLICATE = "duplicate";
    static final String INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION = "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION";
    static final boolean LOGD = false;
    static final int MAX_UNREAD_COUNT = 99;
    private static final int MENU_GROUP_WALLPAPER = 1;
    private static final int MENU_HELP = 5;
    private static final int MENU_MANAGE_APPS = 3;
    private static final int MENU_SYSTEM_SETTINGS = 4;
    private static final int MENU_WALLPAPER_SETTINGS = 2;
    private static final int MSG_THEME_CHANGE = 100;
    private static int NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS = 10;
    public static String OEM_NAME = "";
    private static final int ORIENTATION_0 = 0;
    private static final int ORIENTATION_180 = 180;
    private static final int ORIENTATION_270 = 270;
    private static final int ORIENTATION_90 = 90;
    private static final String PREFERENCES = "launcher.preferences";
    static final boolean PROFILE_STARTUP = false;
    private static final int REQUEST_BIND_APPWIDGET = 11;
    private static final int REQUEST_CREATE_APPWIDGET = 5;
    private static final int REQUEST_CREATE_SHORTCUT = 1;
    private static final int REQUEST_PICK_APPLICATION = 6;
    private static final int REQUEST_PICK_APPWIDGET = 9;
    private static final int REQUEST_PICK_SHORTCUT = 7;
    private static final int REQUEST_PICK_WALLPAPER = 10;
    private static final String RUNTIME_STATE = "launcher.state";
    private static final String RUNTIME_STATE_CURRENT_SCREEN = "launcher.current_screen";
    private static final String RUNTIME_STATE_PENDING_ADD_CELL_X = "launcher.add_cell_x";
    private static final String RUNTIME_STATE_PENDING_ADD_CELL_Y = "launcher.add_cell_y";
    private static final String RUNTIME_STATE_PENDING_ADD_CONTAINER = "launcher.add_container";
    private static final String RUNTIME_STATE_PENDING_ADD_SCREEN = "launcher.add_screen";
    private static final String RUNTIME_STATE_PENDING_ADD_SPAN_X = "launcher.add_span_x";
    private static final String RUNTIME_STATE_PENDING_ADD_SPAN_Y = "launcher.add_span_y";
    private static final String RUNTIME_STATE_PENDING_ADD_WIDGET_INFO = "launcher.add_widget_info";
    private static final String RUNTIME_STATE_PENDING_FOLDER_RENAME = "launcher.rename_folder";
    private static final String RUNTIME_STATE_PENDING_FOLDER_RENAME_ID = "launcher.rename_folder_id";
    private static final String SCENE_COLOR_SUFFIX = "_scene_color";
    static final int SCREEN_COUNT = 2;
    private static final int SHOW_CLING_DURATION = 550;
    static final String TAG = "Launcher";
    private static final String TOOLBAR_ICON_METADATA_NAME = "com.android.launcher.toolbar_icon";
    private static final String TOOLBAR_SEARCH_ICON_METADATA_NAME = "com.android.launcher.toolbar_search_icon";
    private static final String TOOLBAR_VOICE_SEARCH_ICON_METADATA_NAME = "com.android.launcher.toolbar_voice_search_icon";
    private static final String URI_THEME = "content://com.carocean.status.provider/sys/SYS_THEME";
    private static Context mContext = null;
    private static String mCurrentForegroundPackage = "";
    private static String mLastBackgroundPackage = "";
    private static LauncherApplication sApplication = null;
    private static LocaleConfiguration sLocaleConfiguration = null;
    private static boolean sPausedFromUserAction = false;
    private static int sScreen;
    private final ContentObserver contentObserver;
    private AboutDialog mAboutDialog;
    private View mAppBack;
    private AppsCustomizeFrame mAppCustomizeFrame;
    private LauncherAppWidgetHost mAppWidgetHost;
    private AppWidgetManager mAppWidgetManager;
    private AppsCustomizePagedView mAppsCustomizeContent;
    private long mAutoAdvanceSentTime;
    private Drawable mBlackBackgroundDrawable;
    private AnimatorSet mDividerAnimator;
    private DragController mDragController;
    private DragLayer mDragLayer;
    private Bitmap mFolderIconBitmap;
    private Canvas mFolderIconCanvas;
    private ImageView mFolderIconImageView;
    private FolderInfo mFolderInfo;
    private final Handler mHandler;
    private Hotseat mHotseat;
    private IconCache mIconCache;
    private LayoutInflater mInflater;
    private boolean mIsHomeKeyPressedBeforeExitSpringMode;
    private boolean mIsLoadingWorkspace;
    private boolean mIsMcuInited;
    private Handler mKillBackgroundAppHandler;
    private HandlerThread mKillBackgroundAppHandlerThread;
    private View mLauncherView;
    private Toast mLongPressWidgetToAddToast;
    public MMIKeyHelper mMMIKeyHelper;
    private MainCustomer mMainCustomer;
    private MainCustomerJly mMainCustomerJly;
    McuServiceManager.DataListener mMcuDataListener;
    private McuServiceManager mMcuServiceManager;
    private LauncherModel mModel;
    private boolean mOnResumeNeedsLoad;
    private boolean mOrientationChanged;
    private OrientationEventListener mOrientationListener;
    private boolean mPagesWereRecreated;
    private AppWidgetProviderInfo mPendingAddWidgetInfo;
    private boolean mRestoring;
    private Bundle mSavedInstanceState;
    private Bundle mSavedState;
    private SearchDropTargetBar mSearchDropTargetBar;
    private SharedPreferences mSharedPrefs;
    private AnimatorSet mStateAnimation;
    private boolean mStoped;
    private SwitchIconView mSwitchIconView;
    private SwitchIconView mSwitchIconViewWorkspace;
    private MTKUnreadLoader mUnreadLoader;
    private View mVAllapp;
    private boolean mWaitingForResult;
    private BubbleTextView mWaitingForResume;
    private Workspace mWorkspace;
    private Drawable mWorkspaceBackgroundDrawable;
    private static final Object sLock = new Object();
    private static HashMap<Long, FolderInfo> sFolders = new HashMap<>();
    private static Drawable.ConstantState[] sGlobalSearchIcon = new Drawable.ConstantState[2];
    private static Drawable.ConstantState[] sVoiceSearchIcon = new Drawable.ConstantState[2];
    private static Drawable.ConstantState[] sAppMarketIcon = new Drawable.ConstantState[2];
    static final ArrayList<String> sDumpLogs = new ArrayList<>();
    private static ArrayList<PendingAddArguments> sPendingAddList = new ArrayList<>();
    static final String FORCE_ENABLE_ROTATION_PROPERTY = "launcher_force_rotate";
    private static boolean sForceEnableRotation = isPropertyEnabled(FORCE_ENABLE_ROTATION_PROPERTY);
    private static boolean sLocaleChanged = false;
    private static boolean mFirstStartUp360 = true;
    private boolean mFirstRunLauncherFlag = false;
    private int mDspType = 0;
    private State mState = State.WORKSPACE;
    private final BroadcastReceiver mCloseSystemDialogsReceiver = new CloseSystemDialogsIntentReceiver();
    private final ContentObserver mWidgetObserver = new AppWidgetResetObserver();
    private ItemInfo mPendingAddInfo = new ItemInfo();
    private int[] mTmpAddItemCellCoordinates = new int[2];
    private boolean mAutoAdvanceRunning = false;
    private State mOnResumeState = State.NONE;
    private SpannableStringBuilder mDefaultKeySsb = null;
    private boolean mWorkspaceLoading = true;
    private boolean mPaused = true;
    private boolean mUserPresent = true;
    private boolean mVisible = false;
    private boolean mAttached = false;
    private Intent mAppMarketIntent = null;
    private final int ADVANCE_MSG = 1;
    private final int DISSFIRSTLAUNCHER = 2;
    private final int MSG_SWITCH_PAGE_FLAG = 3;
    private final int MSG_BOOTANIMATION_EXIT = 4;
    private final int MSG_UI_THEME_SUB_CHANGED = 5;
    private final int mAdvanceInterval = 20000;
    private final int mAdvanceStagger = DISMISS_CLING_DURATION;
    private long mAutoAdvanceTimeLeft = -1;
    private HashMap<View, AppWidgetProviderInfo> mWidgetsToAdvance = new HashMap<>();
    private final int mRestoreScreenOrientationDelay = 500;
    private final ArrayList<Integer> mSynchronouslyBoundPages = new ArrayList<>();
    private int mNewShortcutAnimatePage = -1;
    private ArrayList<View> mNewShortcutAnimateViews = new ArrayList<>();
    private Rect mRectForFolderAnimation = new Rect();
    private HideFromAccessibilityHelper mHideFromAccessibilityHelper = new HideFromAccessibilityHelper();
    private Runnable mBuildLayersRunnable = new Runnable() { // from class: com.android.launcher2.Launcher.1
        @Override // java.lang.Runnable
        public void run() {
            if (Launcher.this.mWorkspace != null) {
                Launcher.this.mWorkspace.buildPageHardwareLayers();
            }
        }
    };
    private int mLastOrientation = 0;
    private boolean mUnreadLoadCompleted = false;
    private boolean mBindingWorkspaceFinished = false;
    private boolean mBindingAppsFinished = false;
    private Rect mCurrentBounds = new Rect();
    private int[] mSmallIconsId = {R.id.main_s_music, R.id.main_s_navi, R.id.main_s_bt, R.id.main_s_settings, R.id.main_s_car, R.id.main_s_apps};
    private int[] mSmallIconsId_lfe = {R.id.main_s_navi, R.id.main_s_zlink, R.id.main_s_bt, R.id.main_s_apps, R.id.main_s_settings};
    private int[] mID8SmallIconsId = {R.id.main_s_apps, R.id.main_s_music, R.id.main_s_bt, R.id.main_s_navi, R.id.main_s_settings};
    private int mMMIKeyRegion = 0;
    private int mSelectIndex = 0;
    BroadcastReceiver mBrightnessReceiver = new BroadcastReceiver() { // from class: com.android.launcher2.Launcher.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!"action.brightness.set".equals(intent.getAction()) || Launcher.this.mHotseat.mFboxPopu.settingGrid == null) {
                return;
            }
            Launcher.this.mHotseat.mFboxPopu.settingGrid.ResetAdapter();
        }
    };
    private boolean mSwitchPage = true;
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.android.launcher2.Launcher.13
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                Launcher.this.mUserPresent = false;
                Launcher.this.mDragLayer.clearAllResizeFrames();
                Launcher.this.updateRunning();
                if (Launcher.this.mAppCustomizeFrame == null || Launcher.this.mPendingAddInfo.container != -1) {
                    return;
                }
                Launcher.this.showWorkspace(false);
                return;
            }
            if ("android.intent.action.USER_PRESENT".equals(action)) {
                Launcher.this.mUserPresent = true;
                Launcher.this.updateRunning();
                return;
            }
            if (Utils.LAUNCHER_ACTION_ALLAPP.equals(action)) {
                if (Launcher.this.mWorkspace.isFinishedSwitchingState()) {
                    if (Launcher.this.mState == State.WORKSPACE) {
                        Launcher.this.showAllApps(true);
                        return;
                    }
                    return;
                }
                L.d(Launcher.TAG, "The workspace is in switching state when clicking on view, directly return.");
                return;
            }
            if ("android.activity.action.STATE_CHANGED".equals(action)) {
                String stringExtra = intent.getStringExtra("state");
                L.d(Launcher.TAG, "launcher2---: activity_state=" + stringExtra + ",package=" + intent.getStringExtra("package"));
                if (stringExtra != null) {
                    if (stringExtra.equals("background")) {
                        String unused = Launcher.mLastBackgroundPackage = intent.getStringExtra("package");
                    } else if (stringExtra.equals("foreground")) {
                        String unused2 = Launcher.mCurrentForegroundPackage = intent.getStringExtra("package");
                    }
                    if (BuildConfig.APPLICATION_ID.equals(Launcher.mCurrentForegroundPackage)) {
                        final String str = Launcher.mLastBackgroundPackage;
                        if (Launcher.this.mKillBackgroundAppHandler != null) {
                            Launcher.this.mKillBackgroundAppHandler.post(new Runnable() { // from class: com.android.launcher2.Launcher.13.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (LauncherApplication.mTotalMemMb < 2048) {
                                        if (Launcher.this.mFirstRunLauncherFlag) {
                                            Launcher.this.mFirstRunLauncherFlag = false;
                                            killApps.killOneProcess(Launcher.mContext, "com.qiyi.video.pad");
                                        } else {
                                            killApps.killOneProcess(Launcher.mContext, str);
                                        }
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if ("android.intent.action.LOCKED_BOOT_COMPLETED".equals(action) || "android.intent.action.BOOT_COMPLETED".equals(action)) {
                L.d(Launcher.TAG, "mReceiver:" + action);
                return;
            }
            if ("android.intent.action.USER_UNLOCKED".equals(action)) {
                L.d(Launcher.TAG, "mReceiver:" + action);
                Launcher.this.onFloatWindowService(SystemProperties.getInt(PerSysDef.PERSYS_IVICAR_AVM_ENABLE, 0) == 1);
                Launcher.this.mModel.forceReload();
            } else {
                if (Navi.Action.ACTION_DSPTYPE_CHANGED.equals(action)) {
                    int i = SystemProperties.getInt(PerSysDef.PERSYS_DSP_TYPE, 0);
                    if (i != Launcher.this.mDspType) {
                        Launcher.this.mDspType = i;
                        Launcher.this.checkDspType();
                        return;
                    }
                    return;
                }
                if (Launcher.ACTION_360_FLOAT_BALL.equals(action)) {
                    Launcher.this.onFloatWindowService(intent.getBooleanExtra(Launcher.CMD_360_FLOAT_BALL_NEED_SHOW, false));
                }
            }
        }
    };

    public interface LauncherTransitionable {
        View getContent();

        void onLauncherTransitionEnd(Launcher launcher, boolean z, boolean z2);

        void onLauncherTransitionPrepare(Launcher launcher, boolean z, boolean z2);

        void onLauncherTransitionStart(Launcher launcher, boolean z, boolean z2);

        void onLauncherTransitionStep(Launcher launcher, float f);
    }

    private enum State {
        NONE,
        WORKSPACE,
        APPS_CUSTOMIZE,
        APPS_CUSTOMIZE_SPRING_LOADED
    }

    private void removeSIMToolOrNot() {
    }

    private void setWorkspaceBackground(boolean z) {
    }

    private void startWallpaper() {
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void bindAppWidgetRemoved(ArrayList<String> arrayList, boolean z) {
    }

    public void dismissWorkspaceCling(View view) {
    }

    void hideDockDivider() {
    }

    void lockAllApps() {
    }

    void showDockDivider(boolean z) {
    }

    void unlockAllApps() {
    }

    public Launcher() {
        Handler handler = new Handler() { // from class: com.android.launcher2.Launcher.16
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = 0;
                if (message.what == 1) {
                    for (View view : Launcher.this.mWidgetsToAdvance.keySet()) {
                        final View viewFindViewById = view.findViewById(((AppWidgetProviderInfo) Launcher.this.mWidgetsToAdvance.get(view)).autoAdvanceViewId);
                        int i2 = i * Launcher.DISMISS_CLING_DURATION;
                        if (viewFindViewById instanceof Advanceable) {
                            postDelayed(new Runnable() { // from class: com.android.launcher2.Launcher.16.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ((Advanceable) viewFindViewById).advance();
                                }
                            }, i2);
                        }
                        i++;
                    }
                    Launcher.this.sendAdvanceMessage(20000L);
                    return;
                }
                if (message.what == 2) {
                    SystemProperties.set("persist.sys.fristLauncher", "no");
                    if (Launcher.this.mAboutDialog != null) {
                        Launcher.this.mAboutDialog.setButtonEable(true);
                        return;
                    }
                    return;
                }
                if (3 == message.what) {
                    Launcher.this.mSwitchPage = false;
                    return;
                }
                if (4 == message.what) {
                    SystemProperties.set("service.bootanim.exit", "1");
                    return;
                }
                if (5 == message.what) {
                    if (ZHTDOEMManager.isJLYCustomer()) {
                        Launcher.this.updateUiTheme();
                        Launcher.this.mMainCustomerJly.updateUiTheme();
                        return;
                    }
                    return;
                }
                if (100 == message.what) {
                    Launcher.this.updateID8Theme(message.arg1);
                }
            }
        };
        this.mHandler = handler;
        this.mMcuServiceManager = McuServiceManager.getInstance();
        this.mIsMcuInited = false;
        this.mMcuDataListener = new McuServiceManager.DataListener() { // from class: com.android.launcher2.Launcher.41
            @Override // com.carocean.navicar.McuServiceManager.DataListener
            public void onReceive(int i, byte[] bArr) {
                Log.d(Launcher.TAG, "cmdcode: " + String.format("0x%02X ", Integer.valueOf(i)));
                if (bArr != null) {
                    Log.d(Launcher.TAG, "data: " + bArr.length);
                }
                if (i != 18) {
                    if (i == 24) {
                        if (Launcher.this.mMainCustomer != null) {
                            Launcher.this.mMainCustomer.refreshCarInfoViews(i, bArr);
                            return;
                        }
                        return;
                    } else {
                        if (i != 255) {
                            return;
                        }
                        Log.d(Launcher.TAG, " onServiceConnected:1");
                        Launcher.this.onServiceConnected();
                        return;
                    }
                }
                if (Launcher.this.mMainCustomer != null) {
                    Launcher.this.mMainCustomer.refreshCarInfoViews(i, bArr);
                }
                if (bArr == null || bArr.length < 2 || (bArr[1] & 255) != 1 || SystemProperties.getInt(PerSysDef.PERSYS_IVICAR_AVM_ENABLE, 0) != 1 || Launcher.this.mKillBackgroundAppHandler == null) {
                    return;
                }
                Launcher.this.mKillBackgroundAppHandler.post(new Runnable() { // from class: com.android.launcher2.Launcher.41.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (LauncherApplication.mTotalMemMb < 2048) {
                            killApps.killOneProcess(Launcher.this, Function.CHROME_PACKAGE_NAME);
                        }
                    }
                });
            }
        };
        this.contentObserver = new ContentObserver(handler) { // from class: com.android.launcher2.Launcher.42
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                super.onChange(z, uri);
                if (Launcher.URI_THEME.equals(uri.toString())) {
                    int i = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, Launcher.this.getContentResolver(), Navi.Status.SYS_THEME, 1);
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 100;
                    messageObtain.arg1 = i;
                    Launcher.this.mHandler.sendMessage(messageObtain);
                }
            }
        };
    }

    private static class PendingAddArguments {
        int cellX;
        int cellY;
        long container;
        Intent intent;
        int requestCode;
        int screen;

        private PendingAddArguments() {
        }
    }

    private static boolean isPropertyEnabled(String str) {
        return Log.isLoggable(str, 2);
    }

    public void setMMIKeyRegion(int i) {
        this.mMMIKeyRegion = i;
        MainCustomerJly mainCustomerJly = this.mMainCustomerJly;
        int i2 = R.drawable.desk_bmw6_arrow_right;
        int i3 = R.drawable.desk_bmw6_arrow_left;
        if (mainCustomerJly != null && mainCustomerJly.mMainPageNewArrow != null) {
            if (this.mMMIKeyRegion == 0) {
                this.mMainCustomerJly.mMainPageNewArrow.setImageResource(R.drawable.desk_bmw6_arrow_right);
                return;
            } else {
                this.mMainCustomerJly.mMainPageNewArrow.setImageResource(R.drawable.desk_bmw6_arrow_left);
                return;
            }
        }
        MainCustomer mainCustomer = this.mMainCustomer;
        if (mainCustomer == null || mainCustomer.mMainPageNewArrow == null) {
            return;
        }
        if (this.mMMIKeyRegion == 0) {
            ImageView imageView = this.mMainCustomer.mMainPageNewArrow;
            if (ZHTDOEMManager.ensureID8()) {
                i2 = R.drawable.bmw_id8_right;
            }
            imageView.setImageResource(i2);
            return;
        }
        ImageView imageView2 = this.mMainCustomer.mMainPageNewArrow;
        if (ZHTDOEMManager.ensureID8()) {
            i3 = R.drawable.bmw_id8_left;
        }
        imageView2.setImageResource(i3);
    }

    public int getmMMIKeyRegion() {
        return this.mMMIKeyRegion;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDspType() {
        try {
            this.mDspType = SystemProperties.getInt(PerSysDef.PERSYS_DSP_TYPE, 0);
            Log.i(TAG, "checkDspType, mDspType = " + this.mDspType);
            PackageManager packageManager = getPackageManager();
            ComponentName componentName = new ComponentName("com.carocean.settings", "com.carocean.settings.CustomEqActivity");
            packageManager.getComponentEnabledSetting(componentName);
            if (this.mDspType == 0) {
                packageManager.setComponentEnabledSetting(componentName, 2, 1);
            } else {
                packageManager.setComponentEnabledSetting(componentName, 0, 1);
            }
            Log.i(TAG, "checkDspType, done");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void checkThemeSetAPP() {
        try {
            PackageManager packageManager = getPackageManager();
            ComponentName componentName = new ComponentName("com.carocean.settings", "com.carocean.settings.CustomThemeSetActivity");
            if (!ZHTDOEMManager.isLFECustomer()) {
                packageManager.setComponentEnabledSetting(componentName, 2, 1);
            } else {
                packageManager.setComponentEnabledSetting(componentName, 0, 1);
            }
            Log.i(TAG, "checkThemeSetAPP, done");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        mLastBackgroundPackage = "";
        mCurrentForegroundPackage = "";
        HandlerThread handlerThread = new HandlerThread("kill_background");
        this.mKillBackgroundAppHandlerThread = handlerThread;
        handlerThread.start();
        this.mKillBackgroundAppHandler = new Handler(this.mKillBackgroundAppHandlerThread.getLooper());
        mContext = this;
        this.mFirstRunLauncherFlag = true;
        super.onCreate(bundle);
        checkDspType();
        checkThemeSetAPP();
        PackageManager packageManager = getPackageManager();
        if (ZHTDOEMManager.isLCCustomer()) {
            if (Function.isAppInstalled(this, "com.car.sohan")) {
                try {
                    packageManager.setApplicationEnabledSetting("com.car.sohan", 2, 0);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (Function.isAppInstalled(this, "net.mapgoo.m10010")) {
                try {
                    packageManager.setApplicationEnabledSetting("net.mapgoo.m10010", 2, 0);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (Function.isAppInstalled(this, "com.mapgoo.diruite")) {
                try {
                    packageManager.setApplicationEnabledSetting("com.mapgoo.diruite", 2, 0);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        } else if (ZHTDOEMManager.isZLHCustomer()) {
            if (Function.isAppInstalled(this, "com.car.sohan")) {
                try {
                    packageManager.setApplicationEnabledSetting("com.car.sohan", 1, 0);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (Function.isAppInstalled(this, "net.mapgoo.m10010")) {
                try {
                    packageManager.setApplicationEnabledSetting("net.mapgoo.m10010", 2, 0);
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
            if (Function.isAppInstalled(this, "com.mapgoo.diruite")) {
                try {
                    packageManager.setApplicationEnabledSetting("com.mapgoo.diruite", 2, 0);
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
        } else {
            if (Function.isAppInstalled(this, "com.car.sohan")) {
                try {
                    packageManager.setApplicationEnabledSetting("com.car.sohan", 2, 0);
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
            if (Function.isAppInstalled(this, "net.mapgoo.m10010")) {
                try {
                    packageManager.setApplicationEnabledSetting("net.mapgoo.m10010", 2, 0);
                } catch (Exception e8) {
                    e8.printStackTrace();
                }
            }
            if (Function.isAppInstalled(this, "com.mapgoo.diruite")) {
                Log.i(TAG, "launcher1---com.mapgoo.diruite");
                try {
                    packageManager.setApplicationEnabledSetting("com.mapgoo.diruite", 1, 0);
                } catch (Exception e9) {
                    e9.printStackTrace();
                }
            }
        }
        if (Function.isAppInstalled(this, "com.elinkway.tvlive2")) {
            try {
                packageManager.setApplicationEnabledSetting("com.elinkway.tvlive2", 2, 0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (Function.isAppInstalled(this, "com.carocean.pdfreader")) {
            Log.i(TAG, "launcher1---com.carocean.pdfreader");
            File file = new File("/mnt/appconfig/UserGuide.pdf");
            if (file.exists() && file.isFile()) {
                try {
                    packageManager.setApplicationEnabledSetting("com.carocean.pdfreader", 1, 0);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            } else {
                try {
                    packageManager.setApplicationEnabledSetting("com.carocean.pdfreader", 2, 0);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
        if (Function.isAppInstalled(this, "com.ivicar.avm")) {
            try {
                packageManager.setApplicationEnabledSetting("com.ivicar.avm", SystemProperties.getInt(PerSysDef.PERSYS_IVICAR_AVM_ENABLE, 0) == 1 ? 1 : 2, 0);
            } catch (Exception e13) {
                e13.printStackTrace();
            }
        }
        if (Function.isAppInstalled(this, "com.tencent.android.qqdownloader")) {
            try {
                packageManager.setApplicationEnabledSetting("com.tencent.android.qqdownloader", SystemProperties.getInt(PerSysDef.PERSYS_IVICAR_AVM_ENABLE, 0) != 1 ? 1 : 2, 0);
            } catch (Exception e14) {
                e14.printStackTrace();
            }
        }
        LauncherApplication.m360Type = SystemProperties.getInt(PerSysDef.PERSYS_IVICAR_AVM_ENABLE, 0);
        Log.i(TAG, "launcher1---m360Type=" + LauncherApplication.m360Type);
        LauncherApplication.mTotalMemMb = SystemProperties.getInt(PerSysDef.PERSYS_DDR_TOTAL_MEMMB, 900);
        Log.i(TAG, "launcher1---mTotalMemMb=" + LauncherApplication.mTotalMemMb);
        String str = SystemProperties.get("ro.release.oem_name", "");
        OEM_NAME = str;
        if (str.equals("BMW_DFQC")) {
            Settings.System.putString(getContentResolver(), "hongfan_key", "H1DFQC1707000000");
            Settings.System.putString(getContentResolver(), "hongfan_appsecret", "hf4070aa64439118aaf6433183b9aeab60");
        }
        Window window = getWindow();
        if (Build.VERSION.SDK_INT >= 21) {
            window.clearFlags(201326592);
            window.getDecorView().setSystemUiVisibility(1792);
            window.addFlags(Integer.MIN_VALUE);
        } else if (Build.VERSION.SDK_INT >= 19) {
            window.addFlags(67108864);
            window.addFlags(134217728);
        }
        LauncherApplication launcherApplication = (LauncherApplication) getApplication();
        if (ThemeManager.initTeme(this)) {
            launcherApplication.getLauncherProvider().deleteDatabase();
            launcherApplication.getIconCache().flush();
        }
        SystemProperties.set("persist.sys.fristLauncher", "no");
        AudioSystem.setParameters("AudioAddWhiteListName=com.txznet.txz");
        sApplication = launcherApplication;
        this.mSharedPrefs = getSharedPreferences(LauncherApplication.getSharedPreferencesKey(), 0);
        this.mModel = launcherApplication.setLauncher(this);
        this.mIconCache = launcherApplication.getIconCache();
        this.mDragController = new DragController(this);
        this.mInflater = getLayoutInflater();
        if (L.DEBUG) {
            L.d(TAG, "(Launcher)onCreate: savedInstanceState = " + bundle + ", mModel = " + this.mModel + ", mIconCache = " + this.mIconCache + ", this = " + this + ", sLocaleChanged = " + sLocaleChanged);
        }
        this.mAppWidgetManager = AppWidgetManager.getInstance(this);
        LauncherAppWidgetHost launcherAppWidgetHost = new LauncherAppWidgetHost(this, 1024);
        this.mAppWidgetHost = launcherAppWidgetHost;
        launcherAppWidgetHost.startListening();
        this.mPaused = false;
        this.mStoped = false;
        SceneManager.loadSceneInfo(this);
        checkForLocaleChange();
        if (ZHTDOEMManager.getUIThemeid() == 1) {
            if (ZHTDOEMManager.isMRWCustomer()) {
                setContentView(R.layout.launcher_theme1_mrw);
            } else if (ZHTDOEMManager.isYZGCustomer()) {
                setContentView(R.layout.launcher_theme1_yzg);
            } else if (ZHTDOEMManager.isLCCustomer()) {
                setContentView(R.layout.launcher_theme1_lc);
            } else if (ZHTDOEMManager.isJLYCustomer()) {
                setContentView(R.layout.launcher_jly);
            } else {
                setContentView(R.layout.launcher_theme1);
            }
        } else if (ZHTDOEMManager.ensureID8()) {
            setContentView(R.layout.launcher_theme2);
        } else if (ZHTDOEMManager.getUIThemeid() == 3 && ZHTDOEMManager.isLFECustomer()) {
            setContentView(R.layout.launcher_theme3);
        } else {
            setContentView(R.layout.launcher);
        }
        setupViews();
        refreshUIByScene();
        registerContentObservers();
        lockAllApps();
        this.mSavedState = bundle;
        restoreState(bundle);
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizeContent;
        if (appsCustomizePagedView != null) {
            appsCustomizePagedView.onPackagesUpdated();
        }
        if (!this.mRestoring) {
            if (sLocaleChanged) {
                this.mModel.resetLoadedState(true, true);
                sLocaleChanged = false;
            }
            this.mIsLoadingWorkspace = true;
            if (sPausedFromUserAction) {
                this.mModel.startLoader(true, -1);
            } else {
                this.mModel.startLoader(true, this.mWorkspace.getCurrentPage());
            }
        }
        if (!this.mModel.isAllAppsLoaded()) {
            this.mInflater.inflate(R.layout.apps_customize_progressbar, (ViewGroup) this.mAppsCustomizeContent.getParent());
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        this.mDefaultKeySsb = spannableStringBuilder;
        Selection.setSelection(spannableStringBuilder, 0);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        intentFilter.addAction("ckx.action.ui_theme_sub.changed");
        registerReceiver(this.mCloseSystemDialogsReceiver, intentFilter);
        unlockScreenOrientation(true);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("action.brightness.set");
        registerReceiver(this.mBrightnessReceiver, intentFilter2);
        initMcuManager();
    }

    private void checkSwitchPageFlag() {
        this.mHandler.removeMessages(3);
        this.mHandler.sendEmptyMessageDelayed(3, 100L);
    }

    private boolean setSwitchPageFlag(boolean z) {
        this.mHandler.removeMessages(3);
        boolean z2 = this.mSwitchPage;
        this.mSwitchPage = z;
        return z2;
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        sPausedFromUserAction = true;
    }

    private void updateGlobalIcons() {
        boolean zUpdateVoiceSearchIcon;
        int currentOrientationIndexForGlobalIcons = getCurrentOrientationIndexForGlobalIcons();
        boolean zUpdateGlobalSearchIcon = false;
        if (sGlobalSearchIcon[currentOrientationIndexForGlobalIcons] == null || sVoiceSearchIcon[currentOrientationIndexForGlobalIcons] == null || sAppMarketIcon[currentOrientationIndexForGlobalIcons] == null) {
            zUpdateGlobalSearchIcon = updateGlobalSearchIcon();
            zUpdateVoiceSearchIcon = updateVoiceSearchIcon(zUpdateGlobalSearchIcon);
        } else {
            zUpdateVoiceSearchIcon = false;
        }
        Drawable.ConstantState[] constantStateArr = sGlobalSearchIcon;
        if (constantStateArr[currentOrientationIndexForGlobalIcons] != null) {
            updateGlobalSearchIcon(constantStateArr[currentOrientationIndexForGlobalIcons]);
            zUpdateGlobalSearchIcon = true;
        }
        Drawable.ConstantState[] constantStateArr2 = sVoiceSearchIcon;
        if (constantStateArr2[currentOrientationIndexForGlobalIcons] != null) {
            updateVoiceSearchIcon(constantStateArr2[currentOrientationIndexForGlobalIcons]);
            zUpdateVoiceSearchIcon = true;
        }
        Drawable.ConstantState[] constantStateArr3 = sAppMarketIcon;
        if (constantStateArr3[currentOrientationIndexForGlobalIcons] != null) {
            updateAppMarketIcon(constantStateArr3[currentOrientationIndexForGlobalIcons]);
        }
        SearchDropTargetBar searchDropTargetBar = this.mSearchDropTargetBar;
        if (searchDropTargetBar != null) {
            searchDropTargetBar.onSearchPackagesChanged(zUpdateGlobalSearchIcon, zUpdateVoiceSearchIcon);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.android.launcher2.Launcher$3] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.launcher2.Launcher$4] */
    public void checkForLocaleChange() {
        if (sLocaleConfiguration == null) {
            new AsyncTask<Void, Void, LocaleConfiguration>() { // from class: com.android.launcher2.Launcher.3
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public LocaleConfiguration doInBackground(Void... voidArr) throws Throwable {
                    LocaleConfiguration localeConfiguration = new LocaleConfiguration();
                    Launcher.readConfiguration(Launcher.this, localeConfiguration);
                    return localeConfiguration;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public void onPostExecute(LocaleConfiguration localeConfiguration) {
                    LocaleConfiguration unused = Launcher.sLocaleConfiguration = localeConfiguration;
                    Launcher.this.checkForLocaleChange();
                }
            }.execute(new Void[0]);
            return;
        }
        Configuration configuration = getResources().getConfiguration();
        String str = sLocaleConfiguration.locale;
        String string = configuration.locale.toString();
        int i = sLocaleConfiguration.mcc;
        int i2 = configuration.mcc;
        int i3 = sLocaleConfiguration.mnc;
        int i4 = configuration.mnc;
        boolean z = (string.equals(str) && i2 == i && i4 == i3) ? false : true;
        if (L.DEBUG) {
            L.d(TAG, "checkForLocaleChange: previousLocale = " + str + ", locale = " + string + ", previousMcc = " + i + ", mcc = " + i2 + ", previousMnc = " + i3 + ", mnc = " + i4 + ", localeChanged = " + z + ", this = " + this);
        }
        if (z) {
            sLocaleConfiguration.locale = string;
            sLocaleConfiguration.mcc = i2;
            sLocaleConfiguration.mnc = i4;
            sLocaleChanged = z;
            this.mModel.setFlushCache();
            this.mIconCache.flush();
            final LocaleConfiguration localeConfiguration = sLocaleConfiguration;
            new Thread("WriteLocaleConfiguration") { // from class: com.android.launcher2.Launcher.4
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws Throwable {
                    Launcher.writeConfiguration(Launcher.this, localeConfiguration);
                }
            }.start();
        }
    }

    private static class LocaleConfiguration {
        public String locale;
        public int mcc;
        public int mnc;

        private LocaleConfiguration() {
            this.mcc = -1;
            this.mnc = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        if (r2 != null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void readConfiguration(android.content.Context r5, com.android.launcher2.Launcher.LocaleConfiguration r6) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "IOException when close file."
            java.lang.String r1 = "Launcher"
            r2 = 0
            java.io.DataInputStream r3 = new java.io.DataInputStream     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L2f java.io.FileNotFoundException -> L37
            java.lang.String r4 = "launcher.preferences"
            java.io.FileInputStream r5 = r5.openFileInput(r4)     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L2f java.io.FileNotFoundException -> L37
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L2f java.io.FileNotFoundException -> L37
            java.lang.String r5 = r3.readUTF()     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L29 java.io.FileNotFoundException -> L2b
            r6.locale = r5     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L29 java.io.FileNotFoundException -> L2b
            int r5 = r3.readInt()     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L29 java.io.FileNotFoundException -> L2b
            r6.mcc = r5     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L29 java.io.FileNotFoundException -> L2b
            int r5 = r3.readInt()     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L29 java.io.FileNotFoundException -> L2b
            r6.mnc = r5     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L29 java.io.FileNotFoundException -> L2b
            r3.close()     // Catch: java.io.IOException -> L42
            goto L45
        L26:
            r5 = move-exception
            r2 = r3
            goto L46
        L29:
            r2 = r3
            goto L2f
        L2b:
            r2 = r3
            goto L37
        L2d:
            r5 = move-exception
            goto L46
        L2f:
            java.lang.String r5 = "IOException when read configuration."
            com.android.launcher2.uitl.L.d(r1, r5)     // Catch: java.lang.Throwable -> L2d
            if (r2 == 0) goto L45
            goto L3e
        L37:
            java.lang.String r5 = "FileNotFoundException when read configuration."
            com.android.launcher2.uitl.L.d(r1, r5)     // Catch: java.lang.Throwable -> L2d
            if (r2 == 0) goto L45
        L3e:
            r2.close()     // Catch: java.io.IOException -> L42
            goto L45
        L42:
            com.android.launcher2.uitl.L.d(r1, r0)
        L45:
            return
        L46:
            if (r2 == 0) goto L4f
            r2.close()     // Catch: java.io.IOException -> L4c
            goto L4f
        L4c:
            com.android.launcher2.uitl.L.d(r1, r0)
        L4f:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher2.Launcher.readConfiguration(android.content.Context, com.android.launcher2.Launcher$LocaleConfiguration):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003f, code lost:
    
        if (r3 != null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void writeConfiguration(android.content.Context r6, com.android.launcher2.Launcher.LocaleConfiguration r7) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "launcher.preferences"
            java.lang.String r1 = "IOException when close file."
            java.lang.String r2 = "Launcher"
            r3 = 0
            java.io.DataOutputStream r4 = new java.io.DataOutputStream     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30 java.io.FileNotFoundException -> L3a
            r5 = 0
            java.io.FileOutputStream r5 = r6.openFileOutput(r0, r5)     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30 java.io.FileNotFoundException -> L3a
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30 java.io.FileNotFoundException -> L3a
            java.lang.String r3 = r7.locale     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L2a java.io.FileNotFoundException -> L2c
            r4.writeUTF(r3)     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L2a java.io.FileNotFoundException -> L2c
            int r3 = r7.mcc     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L2a java.io.FileNotFoundException -> L2c
            r4.writeInt(r3)     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L2a java.io.FileNotFoundException -> L2c
            int r7 = r7.mnc     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L2a java.io.FileNotFoundException -> L2c
            r4.writeInt(r7)     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L2a java.io.FileNotFoundException -> L2c
            r4.flush()     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L2a java.io.FileNotFoundException -> L2c
            r4.close()     // Catch: java.io.IOException -> L45
            goto L48
        L27:
            r6 = move-exception
            r3 = r4
            goto L49
        L2a:
            r3 = r4
            goto L30
        L2c:
            r3 = r4
            goto L3a
        L2e:
            r6 = move-exception
            goto L49
        L30:
            java.io.File r6 = r6.getFileStreamPath(r0)     // Catch: java.lang.Throwable -> L2e
            r6.delete()     // Catch: java.lang.Throwable -> L2e
            if (r3 == 0) goto L48
            goto L41
        L3a:
            java.lang.String r6 = "FileNotFoundException when write configuration."
            com.android.launcher2.uitl.L.d(r2, r6)     // Catch: java.lang.Throwable -> L2e
            if (r3 == 0) goto L48
        L41:
            r3.close()     // Catch: java.io.IOException -> L45
            goto L48
        L45:
            com.android.launcher2.uitl.L.d(r2, r1)
        L48:
            return
        L49:
            if (r3 == 0) goto L52
            r3.close()     // Catch: java.io.IOException -> L4f
            goto L52
        L4f:
            com.android.launcher2.uitl.L.d(r2, r1)
        L52:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher2.Launcher.writeConfiguration(android.content.Context, com.android.launcher2.Launcher$LocaleConfiguration):void");
    }

    public DragLayer getDragLayer() {
        return this.mDragLayer;
    }

    boolean isDraggingEnabled() {
        return !this.mModel.isLoadingWorkspace();
    }

    static int getScreen() {
        int i;
        synchronized (sLock) {
            i = sScreen;
        }
        return i;
    }

    static void setScreen(int i) {
        synchronized (sLock) {
            sScreen = i;
        }
    }

    private boolean completeAdd(PendingAddArguments pendingAddArguments) {
        int i = pendingAddArguments.requestCode;
        boolean z = true;
        if (i == 1) {
            completeAddShortcut(pendingAddArguments.intent, pendingAddArguments.container, pendingAddArguments.screen, pendingAddArguments.cellX, pendingAddArguments.cellY);
        } else if (i != 5) {
            if (i == 6) {
                completeAddApplication(pendingAddArguments.intent, pendingAddArguments.container, pendingAddArguments.screen, pendingAddArguments.cellX, pendingAddArguments.cellY);
            } else if (i == 7) {
                processShortcut(pendingAddArguments.intent);
            }
            z = false;
        } else {
            completeAddAppWidget(pendingAddArguments.intent.getIntExtra("appWidgetId", -1), pendingAddArguments.container, pendingAddArguments.screen, null, null);
        }
        resetAddInfo();
        return z;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        boolean zCompleteAdd;
        if (i == 11) {
            int intExtra = intent != null ? intent.getIntExtra("appWidgetId", -1) : -1;
            if (i2 == 0) {
                completeTwoStageWidgetDrop(0, intExtra);
                return;
            } else {
                if (i2 == -1) {
                    addAppWidgetImpl(intExtra, this.mPendingAddInfo, null, this.mPendingAddWidgetInfo);
                    return;
                }
                return;
            }
        }
        boolean z = i == 9 || i == 5;
        this.mWaitingForResult = false;
        if (L.DEBUG) {
            L.d(TAG, "onActivityResult: requestCode = " + i + ", resultCode = " + i2 + ", data = " + intent + ", mPendingAddInfo = " + this.mPendingAddInfo);
        }
        if (z) {
            int intExtra2 = intent != null ? intent.getIntExtra("appWidgetId", -1) : -1;
            if (intExtra2 < 0) {
                L.e(TAG, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the \\widget configuration activity.");
                completeTwoStageWidgetDrop(0, intExtra2);
                return;
            } else {
                completeTwoStageWidgetDrop(i2, intExtra2);
                return;
            }
        }
        if (i2 != -1 || this.mPendingAddInfo.container == -1) {
            zCompleteAdd = false;
        } else {
            PendingAddArguments pendingAddArguments = new PendingAddArguments();
            pendingAddArguments.requestCode = i;
            pendingAddArguments.intent = intent;
            pendingAddArguments.container = this.mPendingAddInfo.container;
            pendingAddArguments.screen = this.mPendingAddInfo.screen;
            pendingAddArguments.cellX = this.mPendingAddInfo.cellX;
            pendingAddArguments.cellY = this.mPendingAddInfo.cellY;
            if (isWorkspaceLocked()) {
                sPendingAddList.add(pendingAddArguments);
                zCompleteAdd = false;
            } else {
                zCompleteAdd = completeAdd(pendingAddArguments);
            }
        }
        this.mDragLayer.clearAnimatedView();
        exitSpringLoadedDragModeDelayed(i2 != 0, zCompleteAdd, null);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        if (L.DEBUG) {
            L.d(TAG, "(Launcher)onStart: this = " + this);
        }
        this.mStoped = false;
        isAllAppsVisible();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (L.DEBUG) {
            L.d(TAG, "(Launcher)onStop: this = " + this);
        }
        this.mStoped = true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void completeTwoStageWidgetDrop(final int i, final int i2) {
        int i3;
        Runnable runnable;
        AppWidgetHostView appWidgetHostView;
        CellLayout cellLayout = (CellLayout) this.mWorkspace.getChildAt(this.mPendingAddInfo.screen);
        if (i == -1) {
            final AppWidgetHostView appWidgetHostViewCreateView = this.mAppWidgetHost.createView(this, i2, this.mPendingAddWidgetInfo);
            i3 = 3;
            appWidgetHostView = appWidgetHostViewCreateView;
            runnable = new Runnable() { // from class: com.android.launcher2.Launcher.5
                @Override // java.lang.Runnable
                public void run() {
                    Launcher launcher = Launcher.this;
                    launcher.completeAddAppWidget(i2, launcher.mPendingAddInfo.container, Launcher.this.mPendingAddInfo.screen, appWidgetHostViewCreateView, null);
                    Launcher.this.exitSpringLoadedDragModeDelayed(i != 0, false, null);
                }
            };
        } else if (i == 0) {
            i3 = 4;
            appWidgetHostView = null;
            runnable = new Runnable() { // from class: com.android.launcher2.Launcher.6
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.exitSpringLoadedDragModeDelayed(i != 0, false, null);
                }
            };
        } else {
            i3 = 0;
            runnable = null;
            appWidgetHostView = null;
        }
        if (this.mDragLayer.getAnimatedView() != null) {
            this.mWorkspace.animateWidgetDrop(this.mPendingAddInfo, cellLayout, (DragView) this.mDragLayer.getAnimatedView(), runnable, i3, appWidgetHostView, true);
        } else {
            runnable.run();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Handler handler = this.mKillBackgroundAppHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.android.launcher2.Launcher.7
                @Override // java.lang.Runnable
                public void run() {
                    if (LauncherApplication.mTotalMemMb < 2048) {
                        if (Launcher.this.mFirstRunLauncherFlag) {
                            Launcher.this.mFirstRunLauncherFlag = false;
                            killApps.killOneProcess(Launcher.mContext, "com.qiyi.video.pad");
                        } else {
                            killApps.killOneProcess(Launcher.mContext, Launcher.mLastBackgroundPackage);
                        }
                    }
                }
            });
        }
        if (L.DEBUG) {
            L.d(TAG, "(Launcher)onResume: mRestoring = " + this.mRestoring + ", mOnResumeNeedsLoad = " + this.mOnResumeNeedsLoad + ",mOrientationChanged = " + this.mOrientationChanged + ",mPagesAreRecreated = " + this.mPagesWereRecreated + " mState= " + this.mState + "this = " + this);
        }
        if (this.mOrientationChanged && this.mPagesWereRecreated) {
            L.d(TAG, "(Launcher)onResume: mOrientationChanged && mPagesWereRecreated");
            AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizeContent;
            appsCustomizePagedView.invalidateAppPages(appsCustomizePagedView.getCurrentPage(), true);
        }
        resetReSyncFlags();
        Workspace workspace = this.mWorkspace;
        workspace.onResumeWhenShown(workspace.getCurrentPage());
        if (this.mOnResumeState == State.WORKSPACE) {
            showWorkspace(false);
            Hotseat hotseat = this.mHotseat;
            if (hotseat != null && hotseat.mFboxPopu != null) {
                this.mHotseat.mFboxPopu.dismiss();
            }
        } else if (this.mOnResumeState == State.APPS_CUSTOMIZE) {
            showAllApps(false);
        }
        this.mOnResumeState = State.NONE;
        setWorkspaceBackground(this.mState == State.WORKSPACE);
        InstallShortcutReceiver.flushInstallQueue(this);
        this.mPaused = false;
        setSwitchPageFlag(true);
        sPausedFromUserAction = false;
        if (this.mRestoring || this.mOnResumeNeedsLoad) {
            this.mWorkspaceLoading = true;
            this.mIsLoadingWorkspace = true;
            this.mModel.startLoader(true, -1);
            this.mRestoring = false;
            this.mOnResumeNeedsLoad = false;
        }
        BubbleTextView bubbleTextView = this.mWaitingForResume;
        if (bubbleTextView != null) {
            bubbleTextView.setStayPressed(false);
        }
        AppsCustomizePagedView appsCustomizePagedView2 = this.mAppsCustomizeContent;
        if (appsCustomizePagedView2 != null) {
            appsCustomizePagedView2.resetDrawableState();
        }
        getWorkspace().reinflateWidgetsIfNecessary();
        sendBroadcast(new Intent("com.yecon.action.openvoice"));
    }

    @Override // android.app.Activity
    protected void onPause() {
        updateWallpaperVisibility(true);
        super.onPause();
        if (L.DEBUG) {
            L.d(TAG, "(Launcher)onPause: this = " + this);
        }
        resetReSyncFlags();
        this.mPaused = true;
        this.mDragController.cancelDrag();
        this.mDragController.resetLastGestureUpTime();
        checkSwitchPageFlag();
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        if (L.DEBUG) {
            L.d(TAG, "onRetainNonConfigurationInstance: mSavedState = " + this.mSavedState + ", mSavedInstanceState = " + this.mSavedInstanceState);
        }
        this.mModel.stopLoader();
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizeContent;
        if (appsCustomizePagedView != null) {
            appsCustomizePagedView.surrender();
        }
        return Boolean.TRUE;
    }

    private boolean acceptFilter() {
        return !((InputMethodManager) getSystemService("input_method")).isFullscreenMode();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int unicodeChar = keyEvent.getUnicodeChar();
        boolean zOnKeyDown = super.onKeyDown(i, keyEvent);
        boolean z = unicodeChar > 0 && !Character.isWhitespace(unicodeChar);
        if (L.DEBUG_KEY) {
            L.d(TAG, " onKeyDown: KeyCode = " + i + ", KeyEvent = " + keyEvent + ", uniChar = " + unicodeChar + ", handled = " + zOnKeyDown + ", isKeyNotWhitespace = " + z);
        }
        if (i == 82) {
            return true;
        }
        return zOnKeyDown;
    }

    private String getTypedText() {
        return this.mDefaultKeySsb.toString();
    }

    private void clearTypedText() {
        this.mDefaultKeySsb.clear();
        this.mDefaultKeySsb.clearSpans();
        Selection.setSelection(this.mDefaultKeySsb, 0);
    }

    private static State intToState(int i) {
        State state = State.WORKSPACE;
        State[] stateArrValues = State.values();
        for (int i2 = 0; i2 < stateArrValues.length; i2++) {
            if (stateArrValues[i2].ordinal() == i) {
                return stateArrValues[i2];
            }
        }
        return state;
    }

    private void restoreState(Bundle bundle) {
        if (L.DEBUG) {
            L.d(TAG, "restoreState: savedState = " + bundle);
        }
        if (bundle == null) {
            return;
        }
        if (intToState(bundle.getInt(RUNTIME_STATE, State.WORKSPACE.ordinal())) == State.APPS_CUSTOMIZE) {
            this.mOnResumeState = State.APPS_CUSTOMIZE;
        }
        this.mOnResumeState = State.WORKSPACE;
        int i = bundle.getInt(RUNTIME_STATE_CURRENT_SCREEN, -1);
        if (i > -1) {
            this.mWorkspace.setCurrentPage(i);
        }
        long j = bundle.getLong(RUNTIME_STATE_PENDING_ADD_CONTAINER, -1L);
        int i2 = bundle.getInt(RUNTIME_STATE_PENDING_ADD_SCREEN, -1);
        if (j != -1 && i2 > -1) {
            this.mPendingAddInfo.container = j;
            this.mPendingAddInfo.screen = i2;
            this.mPendingAddInfo.cellX = bundle.getInt(RUNTIME_STATE_PENDING_ADD_CELL_X);
            this.mPendingAddInfo.cellY = bundle.getInt(RUNTIME_STATE_PENDING_ADD_CELL_Y);
            this.mPendingAddInfo.spanX = bundle.getInt(RUNTIME_STATE_PENDING_ADD_SPAN_X);
            this.mPendingAddInfo.spanY = bundle.getInt(RUNTIME_STATE_PENDING_ADD_SPAN_Y);
            this.mPendingAddWidgetInfo = (AppWidgetProviderInfo) bundle.getParcelable(RUNTIME_STATE_PENDING_ADD_WIDGET_INFO);
            this.mWaitingForResult = true;
            this.mRestoring = true;
        }
        if (bundle.getBoolean(RUNTIME_STATE_PENDING_FOLDER_RENAME, false)) {
            this.mFolderInfo = this.mModel.getFolderById(this, sFolders, bundle.getLong(RUNTIME_STATE_PENDING_FOLDER_RENAME_ID));
            this.mRestoring = true;
        }
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizeContent;
        appsCustomizePagedView.loadAssociatedPages(appsCustomizePagedView.getCurrentPage());
        this.mAppsCustomizeContent.restorePageForIndex(bundle.getInt("apps_customize_currentIndex"));
    }

    private void setupViews() {
        DragController dragController = this.mDragController;
        View viewFindViewById = findViewById(R.id.layout_custom);
        if (viewFindViewById != null) {
            viewFindViewById.setOnLongClickListener(this);
        }
        this.mLauncherView = findViewById(R.id.launcher);
        DragLayer dragLayer = (DragLayer) findViewById(R.id.drag_layer);
        this.mDragLayer = dragLayer;
        this.mWorkspace = (Workspace) dragLayer.findViewById(R.id.workspace);
        this.mLauncherView.setSystemUiVisibility(1024);
        this.mWorkspaceBackgroundDrawable = getResources().getDrawable(R.drawable.workspace_bg);
        this.mBlackBackgroundDrawable = new ColorDrawable(ViewCompat.MEASURED_STATE_MASK);
        this.mDragLayer.setup(this, dragController);
        Hotseat hotseat = (Hotseat) findViewById(R.id.hotseat);
        this.mHotseat = hotseat;
        if (hotseat != null) {
            hotseat.setup(this);
        }
        this.mWorkspace.setHapticFeedbackEnabled(false);
        this.mWorkspace.setOnLongClickListener(this);
        this.mWorkspace.setup(dragController);
        dragController.addDragListener(this.mWorkspace);
        this.mSwitchIconView = (SwitchIconView) findViewById(R.id.switchIconView);
        SwitchIconView switchIconView = (SwitchIconView) findViewById(R.id.switchIconViewWorkspace);
        this.mSwitchIconViewWorkspace = switchIconView;
        if (switchIconView != null) {
            switchIconView.setPackageIndex(0, this.mWorkspace.getChildCount(), true);
        }
        this.mWorkspace.setPageSwitchListener(new PagedView.PageSwitchListener() { // from class: com.android.launcher2.Launcher.8
            @Override // com.android.launcher2.PagedView.PageSwitchListener
            public void onPageSwitch(View view, int i) {
                Launcher launcher = Launcher.this;
                launcher.setPackageIndex(i, launcher.mWorkspace.getChildCount(), true);
            }
        });
        this.mSearchDropTargetBar = (SearchDropTargetBar) this.mDragLayer.findViewById(R.id.qsb_bar);
        AppsCustomizeFrame appsCustomizeFrame = (AppsCustomizeFrame) findViewById(R.id.apps_customize_pane_only);
        this.mAppCustomizeFrame = appsCustomizeFrame;
        AppsCustomizePagedView appsCustomizePagedView = (AppsCustomizePagedView) appsCustomizeFrame.findViewById(R.id.apps_customize_pane_content);
        this.mAppsCustomizeContent = appsCustomizePagedView;
        appsCustomizePagedView.setup(this, dragController);
        dragController.setDragScoller(this.mWorkspace);
        dragController.setScrollView(this.mDragLayer);
        dragController.setMoveTarget(this.mWorkspace);
        dragController.addDropTarget(this.mWorkspace);
        SearchDropTargetBar searchDropTargetBar = this.mSearchDropTargetBar;
        if (searchDropTargetBar != null) {
            searchDropTargetBar.setup(this, dragController);
        }
        if (ZHTDOEMManager.getUIThemeid() == 1 || ZHTDOEMManager.getUIThemeid() == 3) {
            if (ZHTDOEMManager.isJLYCustomer()) {
                MainCustomerJly mainCustomerJly = (MainCustomerJly) findViewById(R.id.layout_custom);
                this.mMainCustomerJly = mainCustomerJly;
                setPackageIndex(mainCustomerJly.getSeletedPage(), this.mMainCustomerJly.getPageCount(), false);
            } else {
                this.mMainCustomer = (MainCustomer) findViewById(R.id.layout_custom);
            }
        } else if (ZHTDOEMManager.ensureID8()) {
            MainCustomer mainCustomer = (MainCustomer) findViewById(R.id.layout_custom);
            this.mMainCustomer = mainCustomer;
            setPackageIndex(mainCustomer.getSeletedPage(), this.mMainCustomer.getPageCount(), false);
        } else {
            this.mMainCustomer = (MainCustomer) findViewById(R.id.layout_custom);
        }
        View viewFindViewById2 = findViewById(R.id.vAllapp);
        this.mVAllapp = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this);
        }
        View viewFindViewById3 = findViewById(R.id.app_back);
        this.mAppBack = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this);
        }
        if (ZHTDOEMManager.getUIThemeid() == 1 || ZHTDOEMManager.getUIThemeid() == 3) {
            this.mMMIKeyHelper = new MMIKeyHelper(1);
            setMMIKeyRegion(1);
            if (ZHTDOEMManager.isLFECustomer() && ZHTDOEMManager.getUIThemeid() == 3) {
                this.mSmallIconsId = this.mSmallIconsId_lfe;
            }
            int i = 0;
            while (true) {
                int[] iArr = this.mSmallIconsId;
                if (i >= iArr.length) {
                    break;
                }
                View viewFindViewById4 = findViewById(iArr[i]);
                if (viewFindViewById4 != null) {
                    viewFindViewById4.setOnClickListener(this);
                    this.mMMIKeyHelper.addView(viewFindViewById4, 5, 0);
                    if (R.id.main_s_car == viewFindViewById4.getId()) {
                        viewFindViewById4.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.launcher2.Launcher.9
                            @Override // android.view.View.OnLongClickListener
                            public boolean onLongClick(View view) {
                                if (Launcher.this.mMainCustomerJly == null && Launcher.this.mMainCustomer != null) {
                                    Launcher.this.mMainCustomer.updateCarIcon(true);
                                }
                                return true;
                            }
                        });
                    }
                }
                i++;
            }
            if (ZHTDOEMManager.isJLYCustomer()) {
                updateUiTheme();
            }
            this.mMMIKeyHelper.setCustomCallback(new MMIKeyHelper.CallbackEx() { // from class: com.android.launcher2.Launcher.10
                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onFocused(View view, boolean z) {
                }

                @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                public void onMenuUp(int i2, int i3) {
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onMenuUpEnd() {
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onTurnning(View view, boolean z) {
                }

                @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                public void onMenuDown(int i2, int i3) {
                    if (i3 != 0 && i3 == 1) {
                        Launcher.this.setMMIKeyRegion(1);
                        Launcher.this.mMMIKeyHelper.showSelectedStatus(false);
                        if (Launcher.this.mMainCustomerJly != null) {
                            Launcher.this.mMainCustomerJly.mMainPageAdapter.mMMIKeyHelper.setSelected(0, Launcher.this.mMainCustomerJly.mMainPageAdapter.mMMIKeyHelper.getSelectedIndex());
                        } else if (Launcher.this.mMainCustomer != null) {
                            Launcher.this.mMainCustomer.mMainPageAdapter.mMMIKeyHelper.setSelected(0, Launcher.this.mMainCustomer.mMainPageAdapter.mMMIKeyHelper.getSelectedIndex());
                        }
                    }
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onSelectChanged(View view, boolean z) {
                    if (view.isSelected() != z) {
                        view.setSelected(z);
                    }
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onEnter(View view) {
                    Launcher.this.onClick(view);
                }
            });
            return;
        }
        if (!ZHTDOEMManager.ensureID8()) {
            return;
        }
        this.mMMIKeyHelper = new MMIKeyHelper(1);
        setMMIKeyRegion(1);
        int i2 = 0;
        while (true) {
            int[] iArr2 = this.mID8SmallIconsId;
            if (i2 < iArr2.length) {
                View viewFindViewById5 = findViewById(iArr2[i2]);
                if (viewFindViewById5 != null) {
                    viewFindViewById5.setOnClickListener(this);
                    this.mMMIKeyHelper.addView(viewFindViewById5, 5, 0);
                }
                i2++;
            } else {
                this.mMMIKeyHelper.setCustomCallback(new MMIKeyHelper.CallbackEx() { // from class: com.android.launcher2.Launcher.11
                    @Override // com.carocean.navicar.MMIKeyHelper.Callback
                    public void onFocused(View view, boolean z) {
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                    public void onMenuUp(int i3, int i4) {
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.Callback
                    public void onMenuUpEnd() {
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.Callback
                    public void onTurnning(View view, boolean z) {
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                    public void onMenuDown(int i3, int i4) {
                        if (i4 != 0 && i4 == 1) {
                            Launcher.this.setMMIKeyRegion(1);
                            Launcher.this.mMMIKeyHelper.showSelectedStatus(false);
                            if (Launcher.this.mMainCustomer != null) {
                                Launcher.this.mMainCustomer.mMainPageAdapter.mMMIKeyHelper.setSelected(0, Launcher.this.mMainCustomer.mMainPageAdapter.mMMIKeyHelper.getSelectedIndex());
                            }
                        }
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.Callback
                    public void onSelectChanged(View view, boolean z) {
                        if (view.isSelected() != z) {
                            view.setSelected(z);
                        }
                        int indexID8FromView = Launcher.this.getIndexID8FromView(view);
                        Log.i(Launcher.TAG, "onSelectChanged , index=" + indexID8FromView + ", mSelectIndex=" + Launcher.this.mSelectIndex);
                        if (indexID8FromView < 0 || Launcher.this.mSelectIndex == indexID8FromView) {
                            return;
                        }
                        Launcher.this.mSelectIndex = indexID8FromView;
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.Callback
                    public void onEnter(View view) {
                        Launcher.this.onClick(view);
                    }
                });
                int i3 = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, getContentResolver(), Navi.Status.SYS_THEME, 1);
                Message messageObtain = Message.obtain();
                messageObtain.what = 100;
                messageObtain.arg1 = i3;
                this.mHandler.sendMessage(messageObtain);
                return;
            }
        }
    }

    public int getIndexID8FromView(View view) {
        for (int i = 0; i < this.mID8SmallIconsId.length; i++) {
            if (view.getId() == this.mID8SmallIconsId[i]) {
                return i;
            }
        }
        return -1;
    }

    View createShortcut(ShortcutInfo shortcutInfo) {
        Workspace workspace = this.mWorkspace;
        return createShortcut(R.layout.application, (ViewGroup) workspace.getChildAt(workspace.getCurrentPage()), shortcutInfo);
    }

    View createShortcut(int i, ViewGroup viewGroup, ShortcutInfo shortcutInfo) {
        BubbleTextView bubbleTextView = (BubbleTextView) this.mInflater.inflate(i, viewGroup, false);
        bubbleTextView.applyFromShortcutInfo(shortcutInfo, this.mIconCache);
        bubbleTextView.setOnClickListener(this);
        bubbleTextView.setOnLongClickListener(this);
        return bubbleTextView;
    }

    void completeAddApplication(Intent intent, long j, int i, int i2, int i3) {
        if (L.DEBUG) {
            L.d(TAG, "completeAddApplication: Intent = " + intent + ", container = " + j + ", screen = " + i + ", cellX = " + i2 + ", cellY = " + i3);
        }
        int[] iArr = this.mTmpAddItemCellCoordinates;
        CellLayout cellLayout = getCellLayout(j, i);
        if (i2 >= 0 && i3 >= 0) {
            iArr[0] = i2;
            iArr[1] = i3;
        } else if (!cellLayout.findCellForSpan(iArr, 1, 1)) {
            showOutOfSpaceMessage(isHotseatLayout(cellLayout));
            return;
        }
        ShortcutInfo shortcutInfo = this.mModel.getShortcutInfo(getPackageManager(), intent, this);
        if (shortcutInfo != null) {
            shortcutInfo.setActivity(intent.getComponent(), 270532608);
            shortcutInfo.container = -1L;
            this.mWorkspace.addApplicationShortcut(shortcutInfo, cellLayout, j, i, iArr[0], iArr[1], isWorkspaceLocked(), i2, i3);
            return;
        }
        L.e(TAG, "Couldn't find ActivityInfo for selected application: " + intent);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:28:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:30:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:33:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:35:? A[RETURN, SYNTHETIC] */
    private void completeAddShortcut(Intent intent, long j, int i, int i2, int i3) {
        ShortcutInfo shortcutInfo;
        CellLayout cellLayout;
        boolean zFindCellForSpan;
        int[] iArr = this.mTmpAddItemCellCoordinates;
        int[] iArr2 = this.mPendingAddInfo.dropPos;
        CellLayout cellLayout2 = getCellLayout(j, i);
        ShortcutInfo shortcutInfoInfoFromShortcutIntent = this.mModel.infoFromShortcutIntent(this, intent, null);
        if (L.DEBUG) {
            L.d(TAG, "completeAddShortcut: info = " + shortcutInfoInfoFromShortcutIntent + ", data = " + intent + ", container = " + j + ", screen = " + i + ", cellX = " + i2 + ", cellY = " + i3);
        }
        if (shortcutInfoInfoFromShortcutIntent == null) {
            return;
        }
        View viewCreateShortcut = createShortcut(shortcutInfoInfoFromShortcutIntent);
        if (i2 < 0 || i3 < 0) {
            shortcutInfo = shortcutInfoInfoFromShortcutIntent;
            cellLayout = cellLayout2;
            if (iArr2 != null) {
                if (cellLayout.findNearestVacantArea(iArr2[0], iArr2[1], 1, 1, iArr) == null) {
                    zFindCellForSpan = false;
                }
            } else {
                zFindCellForSpan = cellLayout.findCellForSpan(iArr, 1, 1);
            }
            if (!zFindCellForSpan) {
                showOutOfSpaceMessage(isHotseatLayout(cellLayout));
                return;
            }
            LauncherModel.addItemToDatabase(this, shortcutInfo, j, i, iArr[0], iArr[1], false);
            if (this.mIsLoadingWorkspace) {
                this.mModel.forceReload();
            }
            if (this.mRestoring) {
            }
            this.mWorkspace.addInScreen(viewCreateShortcut, j, i, iArr[0], iArr[1], 1, 1, isWorkspaceLocked());
        }
        iArr[0] = i2;
        iArr[1] = i3;
        shortcutInfo = shortcutInfoInfoFromShortcutIntent;
        if (this.mWorkspace.createUserFolderIfNecessary(viewCreateShortcut, j, cellLayout2, iArr, 0.0f, true, null, null)) {
            return;
        }
        DropTarget.DragObject dragObject = new DropTarget.DragObject();
        dragObject.dragInfo = shortcutInfo;
        if (this.mWorkspace.addToExistingFolderIfNecessary(viewCreateShortcut, cellLayout2, iArr, 0.0f, dragObject, true)) {
            return;
        } else {
            cellLayout = cellLayout2;
        }
        zFindCellForSpan = true;
        if (!zFindCellForSpan) {
            showOutOfSpaceMessage(isHotseatLayout(cellLayout));
            return;
        }
        LauncherModel.addItemToDatabase(this, shortcutInfo, j, i, iArr[0], iArr[1], false);
        if (this.mIsLoadingWorkspace) {
            this.mModel.forceReload();
        }
        if (this.mRestoring) {
            this.mWorkspace.addInScreen(viewCreateShortcut, j, i, iArr[0], iArr[1], 1, 1, isWorkspaceLocked());
        }
    }

    static int[] getSpanForWidget(Context context, ComponentName componentName, int i, int i2) {
        Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(context, componentName, null);
        return CellLayout.rectToCell(context.getResources(), i + defaultPaddingForWidget.left + defaultPaddingForWidget.right, i2 + defaultPaddingForWidget.top + defaultPaddingForWidget.bottom, null);
    }

    static int[] getSpanForWidget(Context context, AppWidgetProviderInfo appWidgetProviderInfo) {
        return getSpanForWidget(context, appWidgetProviderInfo.provider, appWidgetProviderInfo.minWidth, appWidgetProviderInfo.minHeight);
    }

    static int[] getMinSpanForWidget(Context context, AppWidgetProviderInfo appWidgetProviderInfo) {
        return getSpanForWidget(context, appWidgetProviderInfo.provider, appWidgetProviderInfo.minResizeWidth, appWidgetProviderInfo.minResizeHeight);
    }

    static int[] getSpanForWidget(Context context, PendingAddWidgetInfo pendingAddWidgetInfo) {
        return getSpanForWidget(context, pendingAddWidgetInfo.componentName, pendingAddWidgetInfo.minWidth, pendingAddWidgetInfo.minHeight);
    }

    static int[] getMinSpanForWidget(Context context, PendingAddWidgetInfo pendingAddWidgetInfo) {
        return getSpanForWidget(context, pendingAddWidgetInfo.componentName, pendingAddWidgetInfo.minResizeWidth, pendingAddWidgetInfo.minResizeHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:27:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:30:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:32:0x010a  */
    /* JADX WARN: Code duplicated, block: B:35:0x0118 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x011a  */
    /* JADX WARN: Code duplicated, block: B:37:0x012a  */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.android.launcher2.Launcher$12] */
    public void completeAddAppWidget(final int i, long j, int i2, AppWidgetHostView appWidgetHostView, AppWidgetProviderInfo appWidgetProviderInfo) {
        boolean zFindCellForSpan;
        LauncherAppWidgetInfo launcherAppWidgetInfo;
        LauncherAppWidgetInfo launcherAppWidgetInfo2;
        AppWidgetProviderInfo appWidgetInfo = appWidgetProviderInfo == null ? this.mAppWidgetManager.getAppWidgetInfo(i) : appWidgetProviderInfo;
        if (L.DEBUG) {
            L.d(TAG, "completeAddAppWidget: appWidgetId = " + i + ", container = " + j + ", screen = " + i2);
        }
        CellLayout cellLayout = getCellLayout(j, i2);
        if (cellLayout == null) {
            cellLayout = this.mWorkspace.getCurrentDropLayout();
        }
        int[] minSpanForWidget = getMinSpanForWidget(this, appWidgetInfo);
        int[] spanForWidget = getSpanForWidget(this, appWidgetInfo);
        int[] iArr = this.mTmpAddItemCellCoordinates;
        int[] iArr2 = this.mPendingAddInfo.dropPos;
        int[] iArr3 = new int[2];
        if (this.mPendingAddInfo.cellX < 0 || this.mPendingAddInfo.cellY < 0) {
            if (iArr2 != null) {
                int[] iArrFindNearestVacantArea = cellLayout.findNearestVacantArea(iArr2[0], iArr2[1], minSpanForWidget[0], minSpanForWidget[1], spanForWidget[0], spanForWidget[1], iArr, iArr3);
                spanForWidget[0] = iArr3[0];
                spanForWidget[1] = iArr3[1];
                if (iArrFindNearestVacantArea == null) {
                    zFindCellForSpan = false;
                }
            } else {
                zFindCellForSpan = cellLayout.findCellForSpan(iArr, minSpanForWidget[0], minSpanForWidget[1]);
            }
            if (!zFindCellForSpan) {
                if (i != -1) {
                    new Thread("deleteAppWidgetId") { // from class: com.android.launcher2.Launcher.12
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            Launcher.this.mAppWidgetHost.deleteAppWidgetId(i);
                        }
                    }.start();
                }
                showOutOfSpaceMessage(isHotseatLayout(cellLayout));
                return;
            }
            launcherAppWidgetInfo = new LauncherAppWidgetInfo(i, appWidgetInfo.provider);
            launcherAppWidgetInfo.spanX = spanForWidget[0];
            launcherAppWidgetInfo.spanY = spanForWidget[1];
            launcherAppWidgetInfo.minSpanX = this.mPendingAddInfo.minSpanX;
            launcherAppWidgetInfo.minSpanY = this.mPendingAddInfo.minSpanY;
            LauncherModel.addItemToDatabase(this, launcherAppWidgetInfo, j, i2, iArr[0], iArr[1], false);
            if (this.mIsLoadingWorkspace) {
                L.d(TAG, "Just Loading Workspace, force reload");
                this.mModel.forceReload();
            }
            if (!this.mRestoring) {
                if (appWidgetHostView == null) {
                    launcherAppWidgetInfo2 = launcherAppWidgetInfo;
                    launcherAppWidgetInfo2.hostView = this.mAppWidgetHost.createView(this, i, appWidgetInfo);
                    launcherAppWidgetInfo2.hostView.setAppWidget(i, appWidgetInfo);
                } else {
                    launcherAppWidgetInfo2 = launcherAppWidgetInfo;
                    launcherAppWidgetInfo2.hostView = appWidgetHostView;
                }
                launcherAppWidgetInfo2.hostView.setTag(launcherAppWidgetInfo2);
                launcherAppWidgetInfo2.hostView.setVisibility(0);
                launcherAppWidgetInfo2.notifyWidgetSizeChanged(this);
                this.mWorkspace.addInScreen(launcherAppWidgetInfo2.hostView, j, i2, iArr[0], iArr[1], launcherAppWidgetInfo2.spanX, launcherAppWidgetInfo2.spanY, isWorkspaceLocked());
                addWidgetToAutoAdvanceIfNeeded(launcherAppWidgetInfo2.hostView, appWidgetInfo);
            }
            resetAddInfo();
        }
        iArr[0] = this.mPendingAddInfo.cellX;
        iArr[1] = this.mPendingAddInfo.cellY;
        spanForWidget[0] = this.mPendingAddInfo.spanX;
        spanForWidget[1] = this.mPendingAddInfo.spanY;
        zFindCellForSpan = true;
        if (!zFindCellForSpan) {
            if (i != -1) {
                new Thread("deleteAppWidgetId") { // from class: com.android.launcher2.Launcher.12
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        Launcher.this.mAppWidgetHost.deleteAppWidgetId(i);
                    }
                }.start();
            }
            showOutOfSpaceMessage(isHotseatLayout(cellLayout));
            return;
        }
        launcherAppWidgetInfo = new LauncherAppWidgetInfo(i, appWidgetInfo.provider);
        launcherAppWidgetInfo.spanX = spanForWidget[0];
        launcherAppWidgetInfo.spanY = spanForWidget[1];
        launcherAppWidgetInfo.minSpanX = this.mPendingAddInfo.minSpanX;
        launcherAppWidgetInfo.minSpanY = this.mPendingAddInfo.minSpanY;
        LauncherModel.addItemToDatabase(this, launcherAppWidgetInfo, j, i2, iArr[0], iArr[1], false);
        if (this.mIsLoadingWorkspace) {
            L.d(TAG, "Just Loading Workspace, force reload");
            this.mModel.forceReload();
        }
        if (!this.mRestoring) {
            if (appWidgetHostView == null) {
                launcherAppWidgetInfo2 = launcherAppWidgetInfo;
                launcherAppWidgetInfo2.hostView = this.mAppWidgetHost.createView(this, i, appWidgetInfo);
                launcherAppWidgetInfo2.hostView.setAppWidget(i, appWidgetInfo);
            } else {
                launcherAppWidgetInfo2 = launcherAppWidgetInfo;
                launcherAppWidgetInfo2.hostView = appWidgetHostView;
            }
            launcherAppWidgetInfo2.hostView.setTag(launcherAppWidgetInfo2);
            launcherAppWidgetInfo2.hostView.setVisibility(0);
            launcherAppWidgetInfo2.notifyWidgetSizeChanged(this);
            this.mWorkspace.addInScreen(launcherAppWidgetInfo2.hostView, j, i2, iArr[0], iArr[1], launcherAppWidgetInfo2.spanX, launcherAppWidgetInfo2.spanY, isWorkspaceLocked());
            addWidgetToAutoAdvanceIfNeeded(launcherAppWidgetInfo2.hostView, appWidgetInfo);
        }
        resetAddInfo();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (L.DEBUG) {
            L.d(TAG, "onAttachedToWindow.");
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction(Utils.LAUNCHER_ACTION_ALLAPP);
        intentFilter.addAction("android.activity.action.STATE_CHANGED");
        intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
        intentFilter.addAction("android.intent.action.LOCKED_BOOT_COMPLETED");
        intentFilter.addAction("android.intent.action.USER_UNLOCKED");
        intentFilter.addAction(ACTION_360_FLOAT_BALL);
        intentFilter.addAction(Navi.Action.ACTION_DSPTYPE_CHANGED);
        registerReceiver(this.mReceiver, intentFilter);
        this.mAttached = true;
        this.mVisible = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFloatWindowService(boolean z) {
        Log.d(TAG, "onFloatWindowService: show = " + z + ",mFirstStartUp360" + mFirstStartUp360);
        if (z && mFirstStartUp360) {
            mFirstStartUp360 = false;
            if (SystemProperties.getBoolean(PerSysDef.PERSYS_IVICAR_AVM_3D_CICLE_ENABLE, true)) {
                this.mHandler.postDelayed(new Runnable() { // from class: com.android.launcher2.Launcher.14
                    @Override // java.lang.Runnable
                    public void run() {
                        Intent intent = new Intent();
                        intent.addCategory("android.intent.category.LAUNCHER");
                        intent.setComponent(new ComponentName("com.ivicar.avm", "com.ivicar.modules.main.view.MainActivity"));
                        intent.addFlags(270532608);
                        Launcher.this.startActivity(intent);
                        Launcher.this.stopService(new Intent(Launcher.this, (Class<?>) FloatWindowService.class));
                    }
                }, 3000L);
            }
        }
        boolean z2 = SystemProperties.getBoolean(PerSysDef.PERSYS_IVICAR_AVM_FLOATBALL_ENABLE, true);
        Log.d(TAG, "onFloatWindowService: avm floatball enabel = " + z2);
        Intent intent = new Intent(this, (Class<?>) FloatWindowService.class);
        if (z && z2) {
            startService(intent);
        } else {
            stopService(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (L.DEBUG) {
            L.d(TAG, "onDetachedFromWindow.");
        }
        this.mVisible = false;
        if (this.mAttached) {
            unregisterReceiver(this.mReceiver);
            this.mAttached = false;
        }
        updateRunning();
    }

    public void onWindowVisibilityChanged(int i) {
        this.mVisible = i == 0;
        updateRunning();
        if (this.mVisible) {
            this.mAppCustomizeFrame.onWindowVisible();
            if (!this.mWorkspaceLoading) {
                final ViewTreeObserver viewTreeObserver = this.mWorkspace.getViewTreeObserver();
                viewTreeObserver.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.launcher2.Launcher.15
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        Launcher.this.mWorkspace.postDelayed(Launcher.this.mBuildLayersRunnable, 500L);
                        viewTreeObserver.removeOnPreDrawListener(this);
                        return true;
                    }
                });
            }
            clearTypedText();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAdvanceMessage(long j) {
        this.mHandler.removeMessages(1);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1), j);
        this.mAutoAdvanceSentTime = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRunning() {
        boolean z = this.mVisible && this.mUserPresent && !this.mWidgetsToAdvance.isEmpty();
        if (z != this.mAutoAdvanceRunning) {
            this.mAutoAdvanceRunning = z;
            if (z) {
                long j = this.mAutoAdvanceTimeLeft;
                sendAdvanceMessage(j != -1 ? j : 20000L);
            } else {
                if (!this.mWidgetsToAdvance.isEmpty()) {
                    this.mAutoAdvanceTimeLeft = Math.max(0L, 20000 - (System.currentTimeMillis() - this.mAutoAdvanceSentTime));
                }
                this.mHandler.removeMessages(1);
                this.mHandler.removeMessages(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUiTheme() {
        int i = 0;
        while (true) {
            int[] iArr = this.mSmallIconsId;
            if (i >= iArr.length) {
                return;
            }
            View viewFindViewById = findViewById(iArr[i]);
            if (viewFindViewById != null) {
                int uIThemeSubid = ZHTDOEMManager.getUIThemeSubid();
                if (uIThemeSubid == 0) {
                    viewFindViewById.setBackgroundResource(R.drawable.jly_bmw_blue_leftbar_icon_bg);
                } else if (uIThemeSubid == 1) {
                    viewFindViewById.setBackgroundResource(R.drawable.jly_bmw_red_leftbar_icon_bg);
                } else if (uIThemeSubid == 2) {
                    viewFindViewById.setBackgroundResource(R.drawable.jly_bmw_pink_leftbar_icon_bg);
                }
            }
            i++;
        }
    }

    void addWidgetToAutoAdvanceIfNeeded(View view, AppWidgetProviderInfo appWidgetProviderInfo) {
        if (L.DEBUG) {
            L.d(TAG, "addWidgetToAutoAdvanceIfNeeded hostView = " + view + ", appWidgetInfo = " + appWidgetProviderInfo);
        }
        if (appWidgetProviderInfo == null || appWidgetProviderInfo.autoAdvanceViewId == -1) {
            return;
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(appWidgetProviderInfo.autoAdvanceViewId);
        if (callbackFindViewById instanceof Advanceable) {
            this.mWidgetsToAdvance.put(view, appWidgetProviderInfo);
            ((Advanceable) callbackFindViewById).fyiWillBeAdvancedByHostKThx();
            updateRunning();
        }
    }

    void removeWidgetToAutoAdvance(View view) {
        if (L.DEBUG) {
            L.d(TAG, "removeWidgetToAutoAdvance hostView = " + view);
        }
        if (this.mWidgetsToAdvance.containsKey(view)) {
            this.mWidgetsToAdvance.remove(view);
            updateRunning();
        }
    }

    public void removeAppWidget(LauncherAppWidgetInfo launcherAppWidgetInfo) {
        if (L.DEBUG) {
            L.d(TAG, "removeAppWidget launcherInfo = " + launcherAppWidgetInfo);
        }
        removeWidgetToAutoAdvance(launcherAppWidgetInfo.hostView);
        launcherAppWidgetInfo.hostView = null;
    }

    void showOutOfSpaceMessage(boolean z) {
        Toast.makeText(this, getString(z ? R.string.hotseat_out_of_space : R.string.out_of_space), 0).show();
    }

    void showOnlyOneWidgetMessage(PendingAddWidgetInfo pendingAddWidgetInfo) {
        try {
            PackageManager packageManager = getPackageManager();
            Toast.makeText(this, getString(R.string.one_video_widget, new Object[]{packageManager.getApplicationLabel(packageManager.getApplicationInfo(pendingAddWidgetInfo.componentName.getPackageName(), 0)).toString()}), 0).show();
        } catch (PackageManager.NameNotFoundException e) {
            L.e(TAG, "Got NameNotFounceException when showOnlyOneWidgetMessage.", e);
        }
        exitSpringLoadedDragModeDelayed(false, false, null);
    }

    public LauncherAppWidgetHost getAppWidgetHost() {
        return this.mAppWidgetHost;
    }

    public LauncherModel getModel() {
        return this.mModel;
    }

    void closeSystemDialogs() {
        getWindow().closeAllPanels();
        this.mWaitingForResult = false;
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (L.DEBUG) {
            L.d(TAG, "onNewIntent: intent = " + intent + " mPaused=" + this.mPaused);
        }
        if (intent.getBooleanExtra("show_app", false)) {
            if (this.mState == State.WORKSPACE) {
                showAllApps(true);
            }
        } else if ("android.intent.action.MAIN".equals(intent.getAction())) {
            if (this.mState == State.WORKSPACE) {
                showCustomer(true, setSwitchPageFlag(false));
            }
            this.mIsHomeKeyPressedBeforeExitSpringMode = true;
            closeSystemDialogs();
            final boolean z = (intent.getFlags() & 4194304) != 4194304;
            Runnable runnable = new Runnable() { // from class: com.android.launcher2.Launcher.17
                @Override // java.lang.Runnable
                public void run() {
                    if (Launcher.this.mWorkspace == null) {
                        return;
                    }
                    Folder openFolder = Launcher.this.mWorkspace.getOpenFolder();
                    Launcher.this.mWorkspace.exitWidgetResizeMode();
                    if (z && Launcher.this.mState == State.WORKSPACE && !Launcher.this.mWorkspace.isTouchActive() && openFolder == null) {
                        Launcher.this.mWorkspace.moveOutAppWidget(Launcher.this.mWorkspace.getCurrentPage());
                        Launcher.this.mWorkspace.moveToDefaultScreen(true);
                    }
                    Launcher.this.closeFolder();
                    if (z) {
                        Launcher.this.showWorkspace(true);
                        if (Launcher.this.mHotseat != null && Launcher.this.mHotseat.mFboxPopu != null) {
                            Launcher.this.mHotseat.mFboxPopu.dismiss();
                        }
                    } else {
                        Launcher.this.mOnResumeState = State.WORKSPACE;
                    }
                    View viewPeekDecorView = Launcher.this.getWindow().peekDecorView();
                    if (viewPeekDecorView != null && viewPeekDecorView.getWindowToken() != null) {
                        ((InputMethodManager) Launcher.this.getSystemService("input_method")).hideSoftInputFromWindow(viewPeekDecorView.getWindowToken(), 0);
                    }
                    if (z || Launcher.this.mAppCustomizeFrame == null) {
                        return;
                    }
                    Launcher.this.mAppCustomizeFrame.reset();
                }
            };
            if (z && !this.mWorkspace.hasWindowFocus()) {
                this.mWorkspace.postDelayed(runnable, 350L);
            } else {
                runnable.run();
            }
        }
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (L.DEBUG) {
            L.d(TAG, "onRestoreInstanceState: state = " + bundle + ", mSavedInstanceState = " + this.mSavedInstanceState);
        }
        Iterator<Integer> it = this.mSynchronouslyBoundPages.iterator();
        while (it.hasNext()) {
            this.mWorkspace.restoreInstanceStateForChild(it.next().intValue());
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(RUNTIME_STATE_CURRENT_SCREEN, this.mWorkspace.getNextPage());
        super.onSaveInstanceState(bundle);
        bundle.putInt(RUNTIME_STATE, this.mState.ordinal());
        closeFolder();
        if (this.mPendingAddInfo.container != -1 && this.mPendingAddInfo.screen > -1 && this.mWaitingForResult) {
            bundle.putLong(RUNTIME_STATE_PENDING_ADD_CONTAINER, this.mPendingAddInfo.container);
            bundle.putInt(RUNTIME_STATE_PENDING_ADD_SCREEN, this.mPendingAddInfo.screen);
            bundle.putInt(RUNTIME_STATE_PENDING_ADD_CELL_X, this.mPendingAddInfo.cellX);
            bundle.putInt(RUNTIME_STATE_PENDING_ADD_CELL_Y, this.mPendingAddInfo.cellY);
            bundle.putInt(RUNTIME_STATE_PENDING_ADD_SPAN_X, this.mPendingAddInfo.spanX);
            bundle.putInt(RUNTIME_STATE_PENDING_ADD_SPAN_Y, this.mPendingAddInfo.spanY);
            bundle.putParcelable(RUNTIME_STATE_PENDING_ADD_WIDGET_INFO, this.mPendingAddWidgetInfo);
        }
        if (this.mFolderInfo != null && this.mWaitingForResult) {
            bundle.putBoolean(RUNTIME_STATE_PENDING_FOLDER_RENAME, true);
            bundle.putLong(RUNTIME_STATE_PENDING_FOLDER_RENAME_ID, this.mFolderInfo.id);
        }
        if (this.mAppCustomizeFrame != null) {
            bundle.putInt("apps_customize_currentIndex", this.mAppsCustomizeContent.getSaveInstanceStateIndex());
        }
        if (L.DEBUG) {
            L.d(TAG, " onSaveInstanceState: outState = " + bundle);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFirstRunLauncherFlag = false;
        if (L.DEBUG) {
            L.d(TAG, "(Launcher)onDestroy: this = " + this);
        }
        removeMCUManager();
        MainCustomerJly mainCustomerJly = this.mMainCustomerJly;
        if (mainCustomerJly != null) {
            mainCustomerJly.release();
        }
        MainCustomer mainCustomer = this.mMainCustomer;
        if (mainCustomer != null) {
            mainCustomer.release();
        }
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(0);
        this.mWorkspace.removeCallbacks(this.mBuildLayersRunnable);
        LauncherApplication launcherApplication = (LauncherApplication) getApplication();
        this.mModel.stopLoader();
        launcherApplication.setLauncher(null);
        try {
            this.mAppWidgetHost.stopListening();
        } catch (NullPointerException e) {
            L.w(TAG, "problem while stopping AppWidgetHost during Launcher destruction", e);
        }
        this.mAppWidgetHost = null;
        this.mWidgetsToAdvance.clear();
        TextKeyListener.getInstance().release();
        LauncherModel launcherModel = this.mModel;
        if (launcherModel != null) {
            launcherModel.unbindItemInfosAndClearQueuedBindRunnables();
        }
        getContentResolver().unregisterContentObserver(this.mWidgetObserver);
        unregisterReceiver(this.mCloseSystemDialogsReceiver);
        this.mDragLayer.clearAllResizeFrames();
        ((ViewGroup) this.mWorkspace.getParent()).removeAllViews();
        this.mWorkspace.removeAllViews();
        this.mWorkspace = null;
        this.mDragController = null;
        LauncherAnimUtils.onDestroyActivity();
        unregisterReceiver(this.mBrightnessReceiver);
    }

    public DragController getDragController() {
        return this.mDragController;
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (i >= 0) {
            this.mWaitingForResult = true;
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startSearch(String str, boolean z, Bundle bundle, boolean z2) {
        if (L.DEBUG) {
            L.d(TAG, "startSearch.");
        }
        showWorkspace(true);
        if (str == null) {
            str = getTypedText();
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        Rect rect = new Rect();
        SearchDropTargetBar searchDropTargetBar = this.mSearchDropTargetBar;
        if (searchDropTargetBar != null) {
            rect = searchDropTargetBar.getSearchBarBounds();
        }
        startGlobalSearch(str, z, bundle, rect);
    }

    public void startGlobalSearch(String str, boolean z, Bundle bundle, Rect rect) {
        Bundle bundle2;
        ComponentName globalSearchActivity = ((SearchManager) getSystemService("search")).getGlobalSearchActivity();
        if (globalSearchActivity == null) {
            L.w(TAG, "No global search activity found.");
            return;
        }
        Intent intent = new Intent("android.search.action.GLOBAL_SEARCH");
        intent.addFlags(268435456);
        intent.setComponent(globalSearchActivity);
        if (bundle == null) {
            bundle2 = new Bundle();
        } else {
            bundle2 = new Bundle(bundle);
        }
        if (!bundle2.containsKey("source")) {
            bundle2.putString("source", getPackageName());
        }
        intent.putExtra("app_data", bundle2);
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("query", str);
        }
        if (z) {
            intent.putExtra("select_query", z);
        }
        intent.setSourceBounds(rect);
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            L.e(TAG, "Global search activity not found: " + globalSearchActivity);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (isWorkspaceLocked()) {
            return false;
        }
        super.onCreateOptionsMenu(menu);
        Intent intent = new Intent("android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS");
        intent.setFlags(276824064);
        Intent intent2 = new Intent("android.settings.SETTINGS");
        intent2.setFlags(270532608);
        String string = getString(R.string.help_url);
        Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse(string));
        intent3.setFlags(276824064);
        menu.add(1, 2, 0, R.string.menu_wallpaper).setIcon(android.R.drawable.ic_menu_gallery).setAlphabeticShortcut('W');
        menu.add(0, 3, 0, R.string.menu_manage_apps).setIcon(android.R.drawable.ic_menu_manage).setIntent(intent).setAlphabeticShortcut('M');
        menu.add(0, 4, 0, R.string.menu_settings).setIcon(android.R.drawable.ic_menu_preferences).setIntent(intent2).setAlphabeticShortcut('P');
        if (!string.isEmpty()) {
            menu.add(0, 5, 0, R.string.menu_help).setIcon(android.R.drawable.ic_menu_help).setIntent(intent3).setAlphabeticShortcut('H');
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        if (this.mAppCustomizeFrame.isTransitioning()) {
            return false;
        }
        menu.setGroupVisible(1, !(this.mAppCustomizeFrame.getVisibility() == 0));
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 2) {
            startWallpaper();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        startSearch(null, false, null, true);
        return true;
    }

    public boolean isWorkspaceLocked() {
        return this.mWorkspaceLoading || this.mWaitingForResult;
    }

    private void resetAddInfo() {
        this.mPendingAddInfo.container = -1L;
        this.mPendingAddInfo.screen = -1;
        ItemInfo itemInfo = this.mPendingAddInfo;
        itemInfo.cellY = -1;
        itemInfo.cellX = -1;
        ItemInfo itemInfo2 = this.mPendingAddInfo;
        itemInfo2.spanY = -1;
        itemInfo2.spanX = -1;
        ItemInfo itemInfo3 = this.mPendingAddInfo;
        itemInfo3.minSpanY = -1;
        itemInfo3.minSpanX = -1;
        this.mPendingAddInfo.dropPos = null;
    }

    void addAppWidgetImpl(int i, ItemInfo itemInfo, AppWidgetHostView appWidgetHostView, AppWidgetProviderInfo appWidgetProviderInfo) {
        if (L.DEBUG) {
            L.d(TAG, "addAppWidgetImpl: appWidgetId = " + i + ", info = " + itemInfo + ", boundWidget = " + appWidgetHostView + ", appWidgetInfo = " + appWidgetProviderInfo);
        }
        if (appWidgetProviderInfo.configure != null) {
            this.mPendingAddWidgetInfo = appWidgetProviderInfo;
            Intent intent = new Intent("android.appwidget.action.APPWIDGET_CONFIGURE");
            intent.setComponent(appWidgetProviderInfo.configure);
            intent.putExtra("appWidgetId", i);
            startActivityForResultSafely(intent, 5);
            return;
        }
        completeAddAppWidget(i, itemInfo.container, itemInfo.screen, appWidgetHostView, appWidgetProviderInfo);
        exitSpringLoadedDragModeDelayed(true, false, null);
    }

    void processShortcutFromDrop(ComponentName componentName, long j, int i, int[] iArr, int[] iArr2) {
        if (L.DEBUG) {
            L.d(TAG, "processShortcutFromDrop componentName = " + componentName + ", container = " + j + ", screen = " + i);
        }
        resetAddInfo();
        this.mPendingAddInfo.container = j;
        this.mPendingAddInfo.screen = i;
        this.mPendingAddInfo.dropPos = iArr2;
        if (iArr != null) {
            this.mPendingAddInfo.cellX = iArr[0];
            this.mPendingAddInfo.cellY = iArr[1];
        }
        Intent intent = new Intent("android.intent.action.CREATE_SHORTCUT");
        intent.setComponent(componentName);
        processShortcut(intent);
    }

    void addAppWidgetFromDrop(PendingAddWidgetInfo pendingAddWidgetInfo, long j, int i, int[] iArr, int[] iArr2, int[] iArr3) {
        boolean zBindAppWidgetIdIfAllowed;
        if (L.DEBUG) {
            L.d(TAG, "addAppWidgetFromDrop: info = " + pendingAddWidgetInfo + ", container = " + j + ", screen = " + i);
        }
        resetAddInfo();
        ItemInfo itemInfo = this.mPendingAddInfo;
        pendingAddWidgetInfo.container = j;
        itemInfo.container = j;
        ItemInfo itemInfo2 = this.mPendingAddInfo;
        pendingAddWidgetInfo.screen = i;
        itemInfo2.screen = i;
        this.mPendingAddInfo.dropPos = iArr3;
        this.mPendingAddInfo.minSpanX = pendingAddWidgetInfo.minSpanX;
        this.mPendingAddInfo.minSpanY = pendingAddWidgetInfo.minSpanY;
        if (iArr != null) {
            this.mPendingAddInfo.cellX = iArr[0];
            this.mPendingAddInfo.cellY = iArr[1];
        }
        if (iArr2 != null) {
            this.mPendingAddInfo.spanX = iArr2[0];
            this.mPendingAddInfo.spanY = iArr2[1];
        }
        AppWidgetHostView appWidgetHostView = pendingAddWidgetInfo.boundWidget;
        if (appWidgetHostView != null) {
            addAppWidgetImpl(appWidgetHostView.getAppWidgetId(), pendingAddWidgetInfo, appWidgetHostView, pendingAddWidgetInfo.info);
            return;
        }
        int iAllocateAppWidgetId = getAppWidgetHost().allocateAppWidgetId();
        Bundle bundle = pendingAddWidgetInfo.bindOptions;
        if (bundle != null) {
            zBindAppWidgetIdIfAllowed = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, pendingAddWidgetInfo.componentName, bundle);
        } else {
            zBindAppWidgetIdIfAllowed = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, pendingAddWidgetInfo.componentName);
        }
        if (zBindAppWidgetIdIfAllowed) {
            addAppWidgetImpl(iAllocateAppWidgetId, pendingAddWidgetInfo, null, pendingAddWidgetInfo.info);
            return;
        }
        this.mPendingAddWidgetInfo = pendingAddWidgetInfo.info;
        Intent intent = new Intent("android.appwidget.action.APPWIDGET_BIND");
        intent.putExtra("appWidgetId", iAllocateAppWidgetId);
        intent.putExtra("appWidgetProvider", pendingAddWidgetInfo.componentName);
        startActivityForResult(intent, 11);
    }

    void processShortcut(Intent intent) {
        String string = getResources().getString(R.string.group_applications);
        String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        if (L.DEBUG) {
            L.d(TAG, "processShortcut: applicationName = " + string + ", shortcutName = " + stringExtra + ", intent = " + intent);
        }
        if (string != null && string.equals(stringExtra)) {
            Intent intent2 = new Intent("android.intent.action.MAIN", (Uri) null);
            intent2.addCategory("android.intent.category.LAUNCHER");
            Intent intent3 = new Intent("android.intent.action.PICK_ACTIVITY");
            intent3.putExtra("android.intent.extra.INTENT", intent2);
            intent3.putExtra("android.intent.extra.TITLE", getText(R.string.title_select_application));
            startActivityForResultSafely(intent3, 6);
            return;
        }
        startActivityForResultSafely(intent, 1);
    }

    void processWallpaper(Intent intent) {
        startActivityForResult(intent, 10);
    }

    FolderIcon addFolder(CellLayout cellLayout, long j, int i, int i2, int i3) {
        FolderInfo folderInfo = new FolderInfo();
        folderInfo.title = getText(R.string.folder_name);
        LauncherModel.addItemToDatabase(this, folderInfo, j, i, i2, i3, false);
        sFolders.put(Long.valueOf(folderInfo.id), folderInfo);
        FolderIcon folderIconFromXml = FolderIcon.fromXml(R.layout.folder_icon, this, cellLayout, folderInfo, this.mIconCache);
        this.mWorkspace.addInScreen(folderIconFromXml, j, i, i2, i3, 1, 1, isWorkspaceLocked());
        return folderIconFromXml;
    }

    void removeFolder(FolderInfo folderInfo) {
        sFolders.remove(Long.valueOf(folderInfo.id));
    }

    private void registerContentObservers() {
        ContentResolver contentResolver = getContentResolver();
        contentResolver.registerContentObserver(LauncherProvider.CONTENT_APPWIDGET_RESET_URI, true, this.mWidgetObserver);
        contentResolver.registerContentObserver(Uri.parse(URI_THEME), true, this.contentObserver);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        MainCustomer mainCustomer;
        MainCustomer mainCustomer2;
        if (L.DEBUG_KEY) {
            L.d(TAG, "dispatchKeyEvent: keyEvent = " + keyEvent);
        }
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 3) {
                if (keyCode == 25 && isPropertyEnabled(DUMP_STATE_PROPERTY)) {
                    dumpState();
                }
            }
            return true;
        }
        if (keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 3) {
            return true;
        }
        if (ZHTDOEMManager.getUIThemeid() == 1 || ZHTDOEMManager.getUIThemeid() == 3) {
            MainCustomerJly mainCustomerJly = this.mMainCustomerJly;
            if (mainCustomerJly != null && this.mMMIKeyRegion == 0 && mainCustomerJly.getVisibility() == 0) {
                if (this.mMMIKeyHelper.handlerMMIKeys(keyEvent)) {
                    return true;
                }
            } else {
                MainCustomerJly mainCustomerJly2 = this.mMainCustomerJly;
                if (mainCustomerJly2 != null && mainCustomerJly2.getVisibility() == 0) {
                    if (this.mMainCustomerJly.handleKeyEvent(keyEvent)) {
                        return true;
                    }
                } else if (this.mMMIKeyRegion == 0 && (mainCustomer = this.mMainCustomer) != null && mainCustomer.getVisibility() == 0) {
                    if (this.mMMIKeyHelper.handlerMMIKeys(keyEvent)) {
                        return true;
                    }
                } else {
                    MainCustomer mainCustomer3 = this.mMainCustomer;
                    if (mainCustomer3 != null && mainCustomer3.getVisibility() == 0) {
                        if (this.mMainCustomer.handleKeyEvent(keyEvent)) {
                            return true;
                        }
                    } else if (this.mState == State.APPS_CUSTOMIZE && keyEvent.getKeyCode() == 71) {
                        if (keyEvent.getAction() == 0) {
                            View view = this.mAppBack;
                            if (view != null) {
                                view.setPressed(true);
                            }
                        } else if (keyEvent.getAction() == 1) {
                            View view2 = this.mAppBack;
                            if (view2 != null) {
                                view2.setPressed(false);
                            }
                            onBackPressed();
                        }
                        return true;
                    }
                }
            }
        } else if (ZHTDOEMManager.ensureID8()) {
            if (this.mMMIKeyRegion == 0 && (mainCustomer2 = this.mMainCustomer) != null && mainCustomer2.getVisibility() == 0) {
                if (keyEvent.getKeyCode() == 72) {
                    this.mMainCustomer.enableID8Animator();
                }
                if (this.mMMIKeyHelper.handlerMMIKeys(keyEvent)) {
                    return true;
                }
            } else {
                MainCustomer mainCustomer4 = this.mMainCustomer;
                if (mainCustomer4 != null && mainCustomer4.getVisibility() == 0) {
                    if (keyEvent.getKeyCode() == 71) {
                        enableID8Animator();
                    }
                    if (this.mMainCustomer.handleKeyEvent(keyEvent)) {
                        return true;
                    }
                } else if (this.mState == State.APPS_CUSTOMIZE && keyEvent.getKeyCode() == 71) {
                    if (keyEvent.getAction() == 0) {
                        View view3 = this.mAppBack;
                        if (view3 != null) {
                            view3.setPressed(true);
                        }
                    } else if (keyEvent.getAction() == 1) {
                        View view4 = this.mAppBack;
                        if (view4 != null) {
                            view4.setPressed(false);
                        }
                        onBackPressed();
                    }
                    return true;
                }
            }
        } else {
            MainCustomerJly mainCustomerJly3 = this.mMainCustomerJly;
            if (mainCustomerJly3 != null && mainCustomerJly3.getVisibility() == 0) {
                if (this.mMainCustomerJly.handleKeyEvent(keyEvent)) {
                    return true;
                }
            } else {
                MainCustomer mainCustomer5 = this.mMainCustomer;
                if (mainCustomer5 != null && mainCustomer5.getVisibility() == 0) {
                    if (this.mMainCustomer.handleKeyEvent(keyEvent)) {
                        return true;
                    }
                } else if (this.mState == State.APPS_CUSTOMIZE && keyEvent.getKeyCode() == 71) {
                    if (keyEvent.getAction() == 0) {
                        View view5 = this.mAppBack;
                        if (view5 != null) {
                            view5.setPressed(true);
                        }
                    } else if (keyEvent.getAction() == 1) {
                        View view6 = this.mAppBack;
                        if (view6 != null) {
                            view6.setPressed(false);
                        }
                        onBackPressed();
                    }
                    return true;
                }
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean enableID8Animator() {
        int i;
        if (ZHTDOEMManager.ensureID8() && (i = this.mSelectIndex) >= 0) {
            int[] iArr = this.mID8SmallIconsId;
            if (i < iArr.length) {
                ((AnimationLeftToRightFrameLayout) findViewById(iArr[i])).setEnableAnimator(true);
            }
        }
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (L.DEBUG) {
            L.d(TAG, "Back key pressed, mState = " + this.mState + ", mOnResumeState = " + this.mOnResumeState);
        }
        if (isAllAppsVisible()) {
            showWorkspace(true);
        } else if (this.mWorkspace.getOpenFolder() != null) {
            Folder openFolder = this.mWorkspace.getOpenFolder();
            if (openFolder.isEditingName()) {
                openFolder.dismissEditingName();
            } else {
                closeFolder();
            }
        } else {
            this.mWorkspace.exitWidgetResizeMode();
            this.mWorkspace.showOutlinesTemporarily();
            showCustomer(true, false);
        }
        cancelLongPressWidgetToAddMessage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAppWidgetReset() {
        if (L.DEBUG) {
            L.d(TAG, "onAppWidgetReset.");
        }
        LauncherAppWidgetHost launcherAppWidgetHost = this.mAppWidgetHost;
        if (launcherAppWidgetHost != null) {
            launcherAppWidgetHost.startListening();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Trace.beginSection("Launcher.onClick");
        if (L.DEBUG) {
            L.d(TAG, "Click on view " + view);
        }
        if (view.getWindowToken() == null) {
            L.d(TAG, "Click on a view with no window token, directly return.");
            return;
        }
        if (!this.mWorkspace.isFinishedSwitchingState()) {
            L.d(TAG, "The workspace is in switching state when clicking on view, directly return.");
            return;
        }
        Object tag = view.getTag();
        if (tag instanceof ShortcutInfo) {
            Intent intent = ((ShortcutInfo) tag).intent;
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            intent.setSourceBounds(new Rect(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight()));
            if (startActivitySafely(view, intent, tag) && (view instanceof BubbleTextView)) {
                BubbleTextView bubbleTextView = (BubbleTextView) view;
                this.mWaitingForResume = bubbleTextView;
                bubbleTextView.setStayPressed(true);
            }
        } else if (tag instanceof FolderInfo) {
            if (view instanceof FolderIcon) {
                handleFolderClick((FolderIcon) view);
            }
        } else if (view == this.mVAllapp) {
            if (isAllAppsVisible()) {
                showWorkspace(true);
            } else {
                onClickAllAppsButton(view);
            }
        } else if (view == this.mAppBack) {
            onBackPressed();
        }
        if (view.getId() == R.id.main_s_music || view.getId() == R.id.main_s_navi || view.getId() == R.id.main_s_bt || view.getId() == R.id.main_s_settings || view.getId() == R.id.main_s_apps || view.getId() == R.id.main_s_car || view.getId() == R.id.main_s_zlink) {
            setMMIKeyRegion(0);
            MainCustomerJly mainCustomerJly = this.mMainCustomerJly;
            if (mainCustomerJly != null) {
                mainCustomerJly.mMainPageAdapter.mMMIKeyHelper.showSelectedStatus(false);
            }
            MainCustomer mainCustomer = this.mMainCustomer;
            if (mainCustomer != null) {
                mainCustomer.mMainPageAdapter.mMMIKeyHelper.showSelectedStatus(false);
            }
            MMIKeyHelper mMIKeyHelper = this.mMMIKeyHelper;
            if (mMIKeyHelper != null) {
                mMIKeyHelper.setSelected(view);
            }
        }
        switch (view.getId()) {
            case R.id.main_s_apps /* 2131230845 */:
                onClickAllAppsButton(view);
                break;
            case R.id.main_s_bt /* 2131230846 */:
                Function.onBT(mContext);
                break;
            case R.id.main_s_car /* 2131230847 */:
                Function.onCarMedia(mContext);
                break;
            case R.id.main_s_music /* 2131230848 */:
                Function.onMusic(mContext);
                break;
            case R.id.main_s_navi /* 2131230849 */:
                Function.onNavigation(mContext);
                break;
            case R.id.main_s_settings /* 2131230850 */:
                Function.onSettings(mContext);
                break;
            case R.id.main_s_zlink /* 2131230851 */:
                Function.onZLink(mContext);
                break;
        }
        Trace.endSection();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        showWorkspace(true);
        return false;
    }

    public void onClickSearchButton(View view) {
        if (L.DEBUG) {
            L.d(TAG, "onClickSearchButton v = " + view);
        }
        view.performHapticFeedback(1);
        onSearchRequested();
    }

    public void onClickVoiceButton(View view) {
        if (L.DEBUG) {
            L.d(TAG, "onClickVoiceButton v = " + view);
        }
        view.performHapticFeedback(1);
        try {
            ComponentName globalSearchActivity = ((SearchManager) getSystemService("search")).getGlobalSearchActivity();
            Intent intent = new Intent("android.speech.action.WEB_SEARCH");
            intent.setFlags(268435456);
            if (globalSearchActivity != null) {
                intent.setPackage(globalSearchActivity.getPackageName());
            }
            startActivity(null, intent, "onClickVoiceButton");
            overridePendingTransition(R.anim.fade_in_fast, R.anim.fade_out_fast);
        } catch (ActivityNotFoundException unused) {
            Intent intent2 = new Intent("android.speech.action.WEB_SEARCH");
            intent2.setFlags(268435456);
            startActivitySafely(null, intent2, "onClickVoiceButton");
        }
    }

    public void onClickAllAppsButton(View view) {
        if (L.DEBUG) {
            L.d(TAG, "[All apps launch time][Start] onClickAllAppsButton.");
        }
        if (this.mState == State.WORKSPACE) {
            showAllApps(true);
        } else {
            onBackPressed();
        }
    }

    public void onTouchDownAllAppsButton(View view) {
        view.performHapticFeedback(1);
    }

    public void onClickAppMarketButton(View view) {
        if (L.DEBUG) {
            L.d(TAG, "onClickAppMarketButton v = " + view + ", mAppMarketIntent = " + this.mAppMarketIntent);
        }
        Intent intent = this.mAppMarketIntent;
        if (intent != null) {
            startActivitySafely(view, intent, "app market");
        } else {
            L.e(TAG, "Invalid app market intent.");
        }
    }

    void startApplicationDetailsActivity(ComponentName componentName) {
        if (L.DEBUG) {
            L.d(TAG, "startApplicationDetailsActivity: componentName = " + componentName);
        }
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts("package", componentName.getPackageName(), null));
        intent.setFlags(276824064);
        startActivitySafely(null, intent, "startApplicationDetailsActivity");
    }

    void startApplicationUninstallActivity(ApplicationInfo applicationInfo) {
        if (L.DEBUG) {
            L.d(TAG, "startApplicationUninstallActivity: appInfo = " + applicationInfo);
        }
        if ((applicationInfo.flags & 1) == 0) {
            Toast.makeText(this, R.string.uninstall_system_app_text, 0).show();
            return;
        }
        Intent intent = new Intent("android.intent.action.DELETE", Uri.fromParts("package", applicationInfo.componentName.getPackageName(), applicationInfo.componentName.getClassName()));
        intent.setFlags(276824064);
        startActivity(intent);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0045  */
    boolean startActivity(View view, Intent intent, Object obj) {
        boolean z;
        if (L.DEBUG) {
            L.d(TAG, "startActivity v = " + view + ", intent = " + intent + ", tag = " + obj);
        }
        intent.addFlags(268435456);
        if (view != null) {
            try {
                if (intent.hasExtra(INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION)) {
                    z = false;
                } else {
                    z = true;
                }
            } catch (SecurityException e) {
                Toast.makeText(this, R.string.activity_not_found, 0).show();
                L.e(TAG, "Launcher does not have the permission to launch " + intent + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity. tag=" + obj + " intent=" + intent, e);
                return false;
            }
        } else {
            z = false;
        }
        Trace.beginSection("Launcher.startActivity");
        if (z) {
            startActivity(intent, ActivityOptions.makeScaleUpAnimation(view, 0, 0, view.getMeasuredWidth(), view.getMeasuredHeight()).toBundle());
        } else {
            startActivity(intent);
        }
        Trace.endSection();
        return true;
    }

    boolean startActivitySafely(View view, Intent intent, Object obj) {
        if (L.DEBUG) {
            L.d(TAG, "startActivitySafely v = " + view + ", intent = " + intent + ", tag = " + obj);
        }
        if (intent != null) {
            String packageName = intent.getComponent() == null ? null : intent.getComponent().getPackageName();
            String className = intent.getComponent() != null ? intent.getComponent().getClassName() : null;
            if ("com.ivicar.avm".equals(packageName) && "com.ivicar.modules.main.view.MainActivity".equals(className)) {
                intent = new Intent();
                intent.addCategory("android.intent.category.LAUNCHER");
                intent.setComponent(new ComponentName("com.ivicar.avm", "com.ivicar.modules.main.view.MainActivity"));
                intent.addFlags(270532608);
            }
        }
        try {
            return startActivity(view, intent, obj);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(this, R.string.activity_not_found, 0).show();
            L.e(TAG, "Unable to launch. tag=" + obj + " intent=" + intent, e);
            return false;
        }
    }

    void startActivityForResultSafely(Intent intent, int i) {
        if (L.DEBUG) {
            L.d(TAG, "startActivityForResultSafely: intent = " + intent + ", requestCode = " + i);
        }
        try {
            startActivityForResult(intent, i);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(this, R.string.activity_not_found, 0).show();
        } catch (SecurityException e) {
            Toast.makeText(this, R.string.activity_not_found, 0).show();
            L.e(TAG, "Launcher does not have the permission to launch " + intent + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.", e);
        }
    }

    private void handleFolderClick(FolderIcon folderIcon) {
        FolderInfo folderInfo = folderIcon.getFolderInfo();
        Folder folderForTag = this.mWorkspace.getFolderForTag(folderInfo);
        if (folderInfo.opened && folderForTag == null) {
            L.d(TAG, "Folder info marked as open, but associated folder is not open. Screen: " + folderInfo.screen + " (" + folderInfo.cellX + ", " + folderInfo.cellY + ")");
            folderInfo.opened = false;
        }
        if (!folderInfo.opened && !folderIcon.getFolder().isDestroyed()) {
            closeFolder();
            openFolder(folderIcon);
        } else if (folderForTag != null) {
            int pageForView = this.mWorkspace.getPageForView(folderForTag);
            closeFolder(folderForTag);
            if (pageForView != this.mWorkspace.getCurrentPage()) {
                closeFolder();
                openFolder(folderIcon);
            }
        }
    }

    private void copyFolderIconToImage(FolderIcon folderIcon) {
        DragLayer.LayoutParams layoutParams;
        int measuredWidth = folderIcon.getMeasuredWidth();
        int measuredHeight = folderIcon.getMeasuredHeight();
        if (this.mFolderIconImageView == null) {
            this.mFolderIconImageView = new ImageView(this);
        }
        Bitmap bitmap = this.mFolderIconBitmap;
        if (bitmap == null || bitmap.getWidth() != measuredWidth || this.mFolderIconBitmap.getHeight() != measuredHeight) {
            this.mFolderIconBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
            this.mFolderIconCanvas = new Canvas(this.mFolderIconBitmap);
        }
        if (this.mFolderIconImageView.getLayoutParams() instanceof DragLayer.LayoutParams) {
            layoutParams = (DragLayer.LayoutParams) this.mFolderIconImageView.getLayoutParams();
        } else {
            layoutParams = new DragLayer.LayoutParams(measuredWidth, measuredHeight);
        }
        float descendantRectRelativeToSelf = this.mDragLayer.getDescendantRectRelativeToSelf(folderIcon, this.mRectForFolderAnimation);
        layoutParams.customPosition = true;
        layoutParams.x = this.mRectForFolderAnimation.left;
        layoutParams.y = this.mRectForFolderAnimation.top;
        layoutParams.width = (int) (measuredWidth * descendantRectRelativeToSelf);
        layoutParams.height = (int) (descendantRectRelativeToSelf * measuredHeight);
        this.mFolderIconCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        folderIcon.draw(this.mFolderIconCanvas);
        this.mFolderIconImageView.setImageBitmap(this.mFolderIconBitmap);
        if (folderIcon.getFolder() != null) {
            this.mFolderIconImageView.setPivotX(folderIcon.getFolder().getPivotXForIconAnimation());
            this.mFolderIconImageView.setPivotY(folderIcon.getFolder().getPivotYForIconAnimation());
        }
        if (this.mDragLayer.indexOfChild(this.mFolderIconImageView) != -1) {
            this.mDragLayer.removeView(this.mFolderIconImageView);
        }
        this.mDragLayer.addView(this.mFolderIconImageView, layoutParams);
        if (folderIcon.getFolder() != null) {
            folderIcon.getFolder().bringToFront();
        }
    }

    private void growAndFadeOutFolderIcon(FolderIcon folderIcon) {
        if (folderIcon == null) {
            return;
        }
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat("alpha", 0.0f);
        PropertyValuesHolder propertyValuesHolderOfFloat2 = PropertyValuesHolder.ofFloat("scaleX", 1.5f);
        PropertyValuesHolder propertyValuesHolderOfFloat3 = PropertyValuesHolder.ofFloat("scaleY", 1.5f);
        if (((FolderInfo) folderIcon.getTag()).container == -101) {
            CellLayout cellLayout = (CellLayout) folderIcon.getParent().getParent();
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) folderIcon.getLayoutParams();
            cellLayout.setFolderLeaveBehindCell(layoutParams.cellX, layoutParams.cellY);
        }
        copyFolderIconToImage(folderIcon);
        folderIcon.setVisibility(4);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = LauncherAnimUtils.ofPropertyValuesHolder(this.mFolderIconImageView, propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2, propertyValuesHolderOfFloat3);
        objectAnimatorOfPropertyValuesHolder.setDuration(getResources().getInteger(R.integer.config_folderAnimDuration));
        objectAnimatorOfPropertyValuesHolder.start();
    }

    private void shrinkAndFadeInFolderIcon(final FolderIcon folderIcon) {
        if (folderIcon == null) {
            return;
        }
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat("alpha", 1.0f);
        PropertyValuesHolder propertyValuesHolderOfFloat2 = PropertyValuesHolder.ofFloat("scaleX", 1.0f);
        PropertyValuesHolder propertyValuesHolderOfFloat3 = PropertyValuesHolder.ofFloat("scaleY", 1.0f);
        final CellLayout cellLayout = (CellLayout) folderIcon.getParent().getParent();
        this.mDragLayer.removeView(this.mFolderIconImageView);
        copyFolderIconToImage(folderIcon);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = LauncherAnimUtils.ofPropertyValuesHolder(this.mFolderIconImageView, propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2, propertyValuesHolderOfFloat3);
        objectAnimatorOfPropertyValuesHolder.setDuration(getResources().getInteger(R.integer.config_folderAnimDuration));
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.Launcher.18
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CellLayout cellLayout2 = cellLayout;
                if (cellLayout2 != null) {
                    cellLayout2.clearFolderLeaveBehind();
                    Launcher.this.mDragLayer.removeView(Launcher.this.mFolderIconImageView);
                    folderIcon.setVisibility(0);
                }
            }
        });
        objectAnimatorOfPropertyValuesHolder.start();
    }

    public void openFolder(FolderIcon folderIcon) {
        Folder folder = folderIcon.getFolder();
        folder.mInfo.opened = true;
        if (folder.getParent() == null) {
            this.mDragLayer.addView(folder);
            this.mDragController.addDropTarget(folder);
        } else {
            L.w(TAG, "Opening folder (" + folder + ") which already has a parent (" + folder.getParent() + ").");
        }
        folder.animateOpen();
        growAndFadeOutFolderIcon(folderIcon);
    }

    public void closeFolder() {
        Folder openFolder = this.mWorkspace.getOpenFolder();
        if (openFolder != null) {
            if (openFolder.isEditingName()) {
                openFolder.dismissEditingName();
            }
            closeFolder(openFolder);
            dismissFolderCling(null);
        }
    }

    void closeFolder(Folder folder) {
        folder.getInfo().opened = false;
        if (((ViewGroup) folder.getParent().getParent()) != null) {
            shrinkAndFadeInFolderIcon((FolderIcon) this.mWorkspace.getViewForTag(folder.mInfo));
        }
        folder.animateClosed();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (L.DEBUG) {
            L.d(TAG, "onLongClick: View = " + view + ", v.getTag() = " + view.getTag() + ", mState = " + this.mState);
        }
        if (!isDraggingEnabled()) {
            L.d(TAG, "onLongClick: isDraggingEnabled() = " + isDraggingEnabled());
            return false;
        }
        if (isWorkspaceLocked()) {
            L.d(TAG, "onLongClick: isWorkspaceLocked() mWorkspaceLoading " + this.mWorkspaceLoading + ", mWaitingForResult = " + this.mWaitingForResult);
            return false;
        }
        if (this.mState != State.WORKSPACE) {
            L.d(TAG, "onLongClick: mState != State.WORKSPACE: = " + this.mState);
            return false;
        }
        if (view instanceof MainCustomer) {
            startWallpaper();
            return true;
        }
        while (!(view instanceof CellLayout)) {
            view = (View) view.getParent();
        }
        resetAddInfo();
        CellLayout.CellInfo cellInfo = (CellLayout.CellInfo) view.getTag();
        if (cellInfo == null) {
            return true;
        }
        if (isHotseatLayout(view)) {
            return false;
        }
        View view2 = cellInfo.cell;
        if (view2 instanceof AppWidgetHostView) {
            return false;
        }
        if ((isHotseatLayout(view) || this.mWorkspace.allowLongPress()) && !this.mDragController.isDragging()) {
            if (view2 == null) {
                this.mWorkspace.performHapticFeedback(0, 1);
                startWallpaper();
            } else if (!(view2 instanceof Folder)) {
                Workspace workspace = this.mWorkspace;
                workspace.startDragAppWidget(workspace.getCurrentPage());
                this.mWorkspace.startDrag(cellInfo);
            }
        }
        return true;
    }

    boolean isHotseatLayout(View view) {
        Hotseat hotseat = this.mHotseat;
        return hotseat != null && view != null && (view instanceof CellLayout) && view == hotseat.getLayout();
    }

    Hotseat getHotseat() {
        return this.mHotseat;
    }

    SearchDropTargetBar getSearchBar() {
        return this.mSearchDropTargetBar;
    }

    CellLayout getCellLayout(long j, int i) {
        if (j == -101) {
            Hotseat hotseat = this.mHotseat;
            if (hotseat != null) {
                return hotseat.getLayout();
            }
            return null;
        }
        return (CellLayout) this.mWorkspace.getChildAt(i);
    }

    Workspace getWorkspace() {
        return this.mWorkspace;
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public boolean isAllAppsVisible() {
        return this.mState == State.APPS_CUSTOMIZE || this.mOnResumeState == State.APPS_CUSTOMIZE;
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public boolean isAllAppsButtonRank(int i) {
        Hotseat hotseat = this.mHotseat;
        if (hotseat != null) {
            return hotseat.isAllAppsButtonRank(i);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPivotsForZoom(View view, float f) {
        view.setPivotX(view.getWidth() / 2.0f);
        view.setPivotY(view.getHeight() / 2.0f);
    }

    void disableWallpaperIfInAllApps() {
        AppsCustomizeFrame appsCustomizeFrame;
        if (!isAllAppsVisible() || (appsCustomizeFrame = this.mAppCustomizeFrame) == null || appsCustomizeFrame.isTransitioning()) {
            return;
        }
        updateWallpaperVisibility(false);
    }

    void updateWallpaperVisibility(boolean z) {
        if (AppsCustomizeTabHost.NEED_SHOW_WALLPAPER) {
            z = true;
        }
        int i = z ? 1048576 : 0;
        if (i != (getWindow().getAttributes().flags & 1048576)) {
            getWindow().setFlags(i, 1048576);
        }
        setWorkspaceBackground(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void dispatchOnLauncherTransitionPrepare(View view, boolean z, boolean z2) {
        if (view instanceof LauncherTransitionable) {
            ((LauncherTransitionable) view).onLauncherTransitionPrepare(this, z, z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void dispatchOnLauncherTransitionStart(View view, boolean z, boolean z2) {
        if (view instanceof LauncherTransitionable) {
            ((LauncherTransitionable) view).onLauncherTransitionStart(this, z, z2);
        }
        dispatchOnLauncherTransitionStep(view, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void dispatchOnLauncherTransitionStep(View view, float f) {
        if (view instanceof LauncherTransitionable) {
            ((LauncherTransitionable) view).onLauncherTransitionStep(this, f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void dispatchOnLauncherTransitionEnd(View view, boolean z, boolean z2) {
        if (view instanceof LauncherTransitionable) {
            ((LauncherTransitionable) view).onLauncherTransitionEnd(this, z, z2);
        }
        dispatchOnLauncherTransitionStep(view, 1.0f);
    }

    private void showAppsCustomizeHelper(final boolean z, final boolean z2) {
        final ViewTreeObserver viewTreeObserver;
        if (L.DEBUG) {
            L.d(TAG, "showAppsCustomizeHelper animated = " + z + ", springLoaded = " + z2);
        }
        AnimatorSet animatorSet = this.mStateAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.mStateAnimation = null;
        }
        Resources resources = getResources();
        int integer = resources.getInteger(R.integer.config_appsCustomizeZoomInTime);
        int integer2 = resources.getInteger(R.integer.config_appsCustomizeFadeInTime);
        final float integer3 = resources.getInteger(R.integer.config_appsCustomizeZoomScaleFactor);
        final View view = this.mWorkspace;
        final AppsCustomizeFrame appsCustomizeFrame = this.mAppCustomizeFrame;
        int integer4 = resources.getInteger(R.integer.config_workspaceAppsCustomizeAnimationStagger);
        setPivotsForZoom(appsCustomizeFrame, integer3);
        this.mWorkspace.getChangeStateAnimation(Workspace.State.SMALL, z);
        boolean z3 = false;
        showCustomer(false, false);
        if (z) {
            appsCustomizeFrame.setScaleX(integer3);
            appsCustomizeFrame.setScaleY(integer3);
            LauncherViewPropertyAnimator launcherViewPropertyAnimator = new LauncherViewPropertyAnimator(appsCustomizeFrame);
            launcherViewPropertyAnimator.scaleX(1.0f).scaleY(1.0f).setDuration(integer).setInterpolator(new Workspace.ZoomOutInterpolator());
            appsCustomizeFrame.setVisibility(0);
            appsCustomizeFrame.setAlpha(0.0f);
            ObjectAnimator duration = ObjectAnimator.ofFloat(appsCustomizeFrame, "alpha", 0.0f, 1.0f).setDuration(integer2);
            duration.setInterpolator(new DecelerateInterpolator(1.5f));
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.Launcher.19
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (valueAnimator == null) {
                        throw new RuntimeException("animation is null");
                    }
                    if (AppsCustomizeTabHost.NEED_SHOW_WALLPAPER) {
                        if (Launcher.this.mWorkspace != null) {
                            Launcher.this.mWorkspace.hideScrollingIndicator(true);
                        }
                        if (Launcher.this.mHotseat != null) {
                            Launcher.this.mHotseat.setVisibility(4);
                        }
                    }
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    Launcher.this.dispatchOnLauncherTransitionStep(view, fFloatValue);
                    Launcher.this.dispatchOnLauncherTransitionStep(appsCustomizeFrame, fFloatValue);
                }
            });
            AnimatorSet animatorSetCreateAnimatorSet = LauncherAnimUtils.createAnimatorSet();
            this.mStateAnimation = animatorSetCreateAnimatorSet;
            long j = integer4;
            animatorSetCreateAnimatorSet.play(launcherViewPropertyAnimator).after(j);
            this.mStateAnimation.play(duration).after(j);
            this.mStateAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.Launcher.20
                boolean animationCancelled = false;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    Launcher.this.updateWallpaperVisibility(true);
                    appsCustomizeFrame.setTranslationX(0.0f);
                    appsCustomizeFrame.setTranslationY(0.0f);
                    appsCustomizeFrame.setVisibility(0);
                    appsCustomizeFrame.bringToFront();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Launcher.this.dispatchOnLauncherTransitionEnd(view, z, false);
                    Launcher.this.dispatchOnLauncherTransitionEnd(appsCustomizeFrame, z, false);
                    if (Launcher.this.mWorkspace != null && !z2 && !LauncherApplication.isScreenLarge()) {
                        Launcher.this.mWorkspace.hideScrollingIndicator(true);
                        Launcher.this.hideDockDivider();
                    }
                    if (!this.animationCancelled) {
                        Launcher.this.updateWallpaperVisibility(false);
                    }
                    if (Launcher.this.mSearchDropTargetBar != null) {
                        Launcher.this.mSearchDropTargetBar.hideSearchBar(false);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    this.animationCancelled = true;
                }
            });
            dispatchOnLauncherTransitionPrepare(view, z, false);
            dispatchOnLauncherTransitionPrepare(appsCustomizeFrame, z, false);
            if (appsCustomizeFrame.getContent().getMeasuredWidth() == 0 || this.mWorkspace.getMeasuredWidth() == 0 || appsCustomizeFrame.getMeasuredWidth() == 0) {
                viewTreeObserver = this.mWorkspace.getViewTreeObserver();
                z3 = true;
            } else {
                viewTreeObserver = null;
            }
            final AnimatorSet animatorSet2 = this.mStateAnimation;
            final Runnable runnable = new Runnable() { // from class: com.android.launcher2.Launcher.21
                @Override // java.lang.Runnable
                public void run() {
                    if (Launcher.this.mStateAnimation != animatorSet2) {
                        return;
                    }
                    Launcher.this.setPivotsForZoom(appsCustomizeFrame, integer3);
                    Launcher.this.dispatchOnLauncherTransitionStart(view, z, false);
                    Launcher.this.dispatchOnLauncherTransitionStart(appsCustomizeFrame, z, false);
                    appsCustomizeFrame.post(new Runnable() { // from class: com.android.launcher2.Launcher.21.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Launcher.this.mStateAnimation != animatorSet2) {
                                return;
                            }
                            Launcher.this.mStateAnimation.start();
                        }
                    });
                }
            };
            if (z3) {
                viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.launcher2.Launcher.22
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        appsCustomizeFrame.post(runnable);
                        viewTreeObserver.removeOnGlobalLayoutListener(this);
                    }
                });
                return;
            } else {
                runnable.run();
                return;
            }
        }
        appsCustomizeFrame.setTranslationX(0.0f);
        appsCustomizeFrame.setTranslationY(0.0f);
        appsCustomizeFrame.setScaleX(1.0f);
        appsCustomizeFrame.setScaleY(1.0f);
        appsCustomizeFrame.setVisibility(0);
        appsCustomizeFrame.bringToFront();
        if (!z2 && !LauncherApplication.isScreenLarge()) {
            this.mWorkspace.hideScrollingIndicator(true);
            hideDockDivider();
            SearchDropTargetBar searchDropTargetBar = this.mSearchDropTargetBar;
            if (searchDropTargetBar != null) {
                searchDropTargetBar.hideSearchBar(false);
            }
        }
        dispatchOnLauncherTransitionPrepare(view, z, false);
        dispatchOnLauncherTransitionStart(view, z, false);
        dispatchOnLauncherTransitionEnd(view, z, false);
        dispatchOnLauncherTransitionPrepare(appsCustomizeFrame, z, false);
        dispatchOnLauncherTransitionStart(appsCustomizeFrame, z, false);
        dispatchOnLauncherTransitionEnd(appsCustomizeFrame, z, false);
        updateWallpaperVisibility(false);
    }

    private void hideAppsCustomizeHelper(State state, final boolean z, boolean z2, final Runnable runnable) {
        boolean z3;
        if (L.DEBUG) {
            L.d(TAG, "hideAppsCustomzieHelper toState = " + state + ", animated = " + z + ", springLoaded = " + z2);
        }
        AnimatorSet animatorSet = this.mStateAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.mStateAnimation = null;
        }
        Resources resources = getResources();
        int integer = resources.getInteger(R.integer.config_appsCustomizeZoomOutTime);
        int integer2 = resources.getInteger(R.integer.config_appsCustomizeFadeOutTime);
        float integer3 = resources.getInteger(R.integer.config_appsCustomizeZoomScaleFactor);
        final AppsCustomizeFrame appsCustomizeFrame = this.mAppCustomizeFrame;
        final Workspace workspace = this.mWorkspace;
        if (state == State.WORKSPACE) {
            this.mWorkspace.getChangeStateAnimation(Workspace.State.NORMAL, z, resources.getInteger(R.integer.config_appsCustomizeWorkspaceAnimationStagger));
        } else if (state == State.APPS_CUSTOMIZE_SPRING_LOADED) {
            this.mWorkspace.getChangeStateAnimation(Workspace.State.SPRING_LOADED, z);
        }
        setPivotsForZoom(appsCustomizeFrame, integer3);
        updateWallpaperVisibility(true);
        showHotseat(z);
        if (z) {
            LauncherViewPropertyAnimator launcherViewPropertyAnimator = new LauncherViewPropertyAnimator(appsCustomizeFrame);
            launcherViewPropertyAnimator.scaleX(integer3).scaleY(integer3).setDuration(integer).setInterpolator(new Workspace.ZoomInInterpolator());
            ObjectAnimator duration = ObjectAnimator.ofFloat(appsCustomizeFrame, "alpha", 1.0f, 0.0f).setDuration(integer2);
            duration.setInterpolator(new AccelerateDecelerateInterpolator());
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.Launcher.23
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float fFloatValue = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    Launcher.this.dispatchOnLauncherTransitionStep(appsCustomizeFrame, fFloatValue);
                    Launcher.this.dispatchOnLauncherTransitionStep(workspace, fFloatValue);
                    if (AppsCustomizeTabHost.NEED_SHOW_WALLPAPER) {
                        Launcher.this.mWorkspace.showScrollingIndicator(true);
                        if (Launcher.this.mHotseat != null) {
                            Launcher.this.mHotseat.setVisibility(0);
                        }
                    }
                }
            });
            this.mStateAnimation = LauncherAnimUtils.createAnimatorSet();
            dispatchOnLauncherTransitionPrepare(appsCustomizeFrame, z, true);
            dispatchOnLauncherTransitionPrepare(workspace, z, true);
            this.mAppsCustomizeContent.pauseScrolling();
            this.mStateAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.Launcher.24
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Launcher.this.updateWallpaperVisibility(true);
                    appsCustomizeFrame.setVisibility(8);
                    Launcher.this.dispatchOnLauncherTransitionEnd(appsCustomizeFrame, z, true);
                    Launcher.this.dispatchOnLauncherTransitionEnd(workspace, z, true);
                    if (Launcher.this.mWorkspace != null) {
                        Launcher.this.mWorkspace.hideScrollingIndicator(false);
                    }
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                    Launcher.this.mAppsCustomizeContent.updateCurrentPageScroll();
                    Launcher.this.mAppsCustomizeContent.resumeScrolling();
                    L.d(Launcher.TAG, "[PerfTest --> drag widget] end process.");
                }
            });
            z3 = true;
            this.mStateAnimation.playTogether(launcherViewPropertyAnimator, duration);
            dispatchOnLauncherTransitionStart(appsCustomizeFrame, z, true);
            dispatchOnLauncherTransitionStart(workspace, z, true);
            final AnimatorSet animatorSet2 = this.mStateAnimation;
            this.mWorkspace.post(new Runnable() { // from class: com.android.launcher2.Launcher.25
                @Override // java.lang.Runnable
                public void run() {
                    if (animatorSet2 != Launcher.this.mStateAnimation) {
                        return;
                    }
                    Launcher.this.mStateAnimation.start();
                }
            });
        } else {
            z3 = true;
            appsCustomizeFrame.setVisibility(8);
            dispatchOnLauncherTransitionPrepare(appsCustomizeFrame, z, true);
            dispatchOnLauncherTransitionStart(appsCustomizeFrame, z, true);
            dispatchOnLauncherTransitionEnd(appsCustomizeFrame, z, true);
            dispatchOnLauncherTransitionPrepare(workspace, z, true);
            dispatchOnLauncherTransitionStart(workspace, z, true);
            dispatchOnLauncherTransitionEnd(workspace, z, true);
            this.mWorkspace.hideScrollingIndicator(false);
        }
        showCustomer(z3, false);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (L.DEBUG) {
            L.d(TAG, "onTrimMemory: level = " + i);
        }
        if (i >= 80) {
            volunteerFreeMemory();
            MainCustomerJly mainCustomerJly = this.mMainCustomerJly;
            if (mainCustomerJly != null) {
                mainCustomerJly.onTrimMemory();
            }
            MainCustomer mainCustomer = this.mMainCustomer;
            if (mainCustomer != null) {
                mainCustomer.onTrimMemory();
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (!z) {
            updateWallpaperVisibility(true);
        } else {
            this.mWorkspace.postDelayed(new Runnable() { // from class: com.android.launcher2.Launcher.26
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.disableWallpaperIfInAllApps();
                }
            }, 500L);
        }
    }

    void showWorkspace(boolean z) {
        Workspace workspace = this.mWorkspace;
        workspace.stopCovered(workspace.getCurrentPage());
        showWorkspace(false, null);
        Hotseat hotseat = this.mHotseat;
        if (hotseat != null) {
            hotseat.showHomeIcon(false);
        }
    }

    void showWorkspace(boolean z, Runnable runnable) {
        if (L.DEBUG) {
            L.d(TAG, "showWorkspace: animated = " + z + ", mState = " + this.mState);
        }
        if (this.mState != State.WORKSPACE) {
            boolean z2 = this.mState == State.APPS_CUSTOMIZE_SPRING_LOADED;
            hideAppsCustomizeHelper(State.WORKSPACE, z, false, runnable);
            SearchDropTargetBar searchDropTargetBar = this.mSearchDropTargetBar;
            if (searchDropTargetBar != null) {
                searchDropTargetBar.showSearchBar(z2);
            }
            showDockDivider(z && z2);
        }
        showCustomer(true, false);
        this.mWorkspace.flashScrollingIndicator(z);
        this.mState = State.WORKSPACE;
        this.mUserPresent = true;
        updateRunning();
        getWindow().getDecorView().sendAccessibilityEvent(32);
        if (ZHTDOEMManager.getUIThemeid() == 1 || ZHTDOEMManager.getUIThemeid() == 3) {
            MainCustomerJly mainCustomerJly = this.mMainCustomerJly;
            if (mainCustomerJly != null) {
                setPackageIndex(mainCustomerJly.getSeletedPage(), this.mMainCustomerJly.getPageCount(), false);
            } else {
                MainCustomer mainCustomer = this.mMainCustomer;
                if (mainCustomer != null) {
                    setPackageIndex(mainCustomer.getSeletedPage(), this.mMainCustomer.getPageCount(), false);
                }
            }
        } else if (ZHTDOEMManager.ensureID8()) {
            MainCustomer mainCustomer2 = this.mMainCustomer;
            if (mainCustomer2 != null) {
                setPackageIndex(mainCustomer2.getSeletedPage(), this.mMainCustomer.getPageCount(), false);
            }
        } else {
            setPackageIndex(this.mWorkspace.getCurrentPage(), this.mWorkspace.getChildCount(), true);
        }
        MainCustomerJly mainCustomerJly2 = this.mMainCustomerJly;
        if (mainCustomerJly2 != null) {
            mainCustomerJly2.onShowWorkspace();
        }
        MainCustomer mainCustomer3 = this.mMainCustomer;
        if (mainCustomer3 != null) {
            mainCustomer3.onShowWorkspace();
        }
    }

    void showAllApps(boolean z) {
        if (L.DEBUG) {
            L.d(TAG, "showAllApps: animated = " + z + ", mState = " + this.mState + ", mCurrentBounds = " + this.mCurrentBounds);
        }
        if (this.mState != State.WORKSPACE) {
            return;
        }
        Workspace workspace = this.mWorkspace;
        if (workspace != null) {
            this.mDragLayer.getDescendantRectRelativeToSelf(workspace.getCurrentDropLayout(), this.mCurrentBounds);
        }
        Workspace workspace2 = this.mWorkspace;
        workspace2.startCovered(workspace2.getCurrentPage());
        showAppsCustomizeHelper(z, false);
        this.mAppCustomizeFrame.requestFocus();
        this.mState = State.APPS_CUSTOMIZE;
        Hotseat hotseat = this.mHotseat;
        if (hotseat != null) {
            hotseat.showHomeIcon(true);
        }
        this.mUserPresent = false;
        updateRunning();
        closeFolder();
        getWindow().getDecorView().sendAccessibilityEvent(32);
        MainCustomerJly mainCustomerJly = this.mMainCustomerJly;
        if (mainCustomerJly != null) {
            mainCustomerJly.onShowAllApps();
        }
        MainCustomer mainCustomer = this.mMainCustomer;
        if (mainCustomer != null) {
            mainCustomer.onShowAllApps();
        }
    }

    void enterSpringLoadedDragMode() {
        if (L.DEBUG) {
            L.d(TAG, "enterSpringLoadedDragMode mState = " + this.mState + ", mOnResumeState = " + this.mOnResumeState);
        }
        if (isAllAppsVisible()) {
            hideAppsCustomizeHelper(State.APPS_CUSTOMIZE_SPRING_LOADED, true, true, null);
            hideDockDivider();
            this.mState = State.APPS_CUSTOMIZE_SPRING_LOADED;
        }
    }

    void exitSpringLoadedDragModeDelayed(final boolean z, boolean z2, final Runnable runnable) {
        if (L.DEBUG) {
            L.d(TAG, "exitSpringLoadedDragModeDelayed successfulDrop = " + z + ", extendedDelay = " + z2 + ", mState = " + this.mState);
        }
        if (this.mState != State.APPS_CUSTOMIZE_SPRING_LOADED) {
            return;
        }
        this.mIsHomeKeyPressedBeforeExitSpringMode = false;
        this.mHandler.postDelayed(new Runnable() { // from class: com.android.launcher2.Launcher.27
            @Override // java.lang.Runnable
            public void run() {
                if (Launcher.this.mIsHomeKeyPressedBeforeExitSpringMode) {
                    return;
                }
                if (z) {
                    Launcher.this.mAppCustomizeFrame.setVisibility(8);
                    Launcher.this.showWorkspace(true, runnable);
                } else {
                    Launcher.this.exitSpringLoadedDragMode();
                }
            }
        }, z2 ? EXIT_SPRINGLOADED_MODE_LONG_TIMEOUT : 300);
    }

    void exitSpringLoadedDragMode() {
        if (L.DEBUG) {
            L.d(TAG, "exitSpringLoadedDragMode mState = " + this.mState);
        }
        if (this.mState == State.APPS_CUSTOMIZE_SPRING_LOADED) {
            showAppsCustomizeHelper(true, true);
            this.mState = State.APPS_CUSTOMIZE;
        }
    }

    void showHotseat(boolean z) {
        if (this.mHotseat == null || LauncherApplication.isScreenLarge()) {
            return;
        }
        if (!z) {
            this.mHotseat.setAlpha(1.0f);
        } else if (this.mHotseat.getAlpha() != 1.0f) {
            SearchDropTargetBar searchDropTargetBar = this.mSearchDropTargetBar;
            this.mHotseat.animate().alpha(1.0f).setDuration(searchDropTargetBar != null ? searchDropTargetBar.getTransitionInDuration() : 0);
        }
    }

    void hideHotseat(boolean z) {
        if (this.mHotseat == null || LauncherApplication.isScreenLarge()) {
            return;
        }
        if (!z) {
            this.mHotseat.setAlpha(0.0f);
        } else if (this.mHotseat.getAlpha() != 0.0f) {
            SearchDropTargetBar searchDropTargetBar = this.mSearchDropTargetBar;
            this.mHotseat.animate().alpha(0.0f).setDuration(searchDropTargetBar != null ? searchDropTargetBar.getTransitionOutDuration() : 0);
        }
    }

    void addExternalItemToScreen(ItemInfo itemInfo, CellLayout cellLayout) {
        if (L.DEBUG) {
            L.d(TAG, "addExternalItemToScreen itemInfo = " + itemInfo + ", layout = " + cellLayout);
        }
        if (this.mWorkspace.addExternalItemToScreen(itemInfo, cellLayout)) {
            return;
        }
        showOutOfSpaceMessage(isHotseatLayout(cellLayout));
    }

    private int getCurrentOrientationIndexForGlobalIcons() {
        return getResources().getConfiguration().orientation != 2 ? 0 : 1;
    }

    private Drawable getExternalPackageToolbarIcon(ComponentName componentName, String str) {
        int i;
        try {
            PackageManager packageManager = getPackageManager();
            Bundle bundle = packageManager.getActivityInfo(componentName, 128).metaData;
            if (bundle == null || (i = bundle.getInt(str)) == 0) {
                return null;
            }
            return packageManager.getResourcesForActivity(componentName).getDrawable(i);
        } catch (PackageManager.NameNotFoundException e) {
            L.w(TAG, "Failed to load toolbar icon; " + componentName.flattenToShortString() + " not found", e);
            return null;
        } catch (Resources.NotFoundException e2) {
            L.w(TAG, "Failed to load toolbar icon from " + componentName.flattenToShortString(), e2);
            return null;
        }
    }

    private Drawable.ConstantState updateTextButtonWithIconFromExternalActivity(int i, ComponentName componentName, int i2, String str) {
        Drawable externalPackageToolbarIcon = getExternalPackageToolbarIcon(componentName, str);
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.toolbar_external_icon_width);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.toolbar_external_icon_height);
        TextView textView = (TextView) findViewById(i);
        if (externalPackageToolbarIcon == null) {
            Drawable drawable = resources.getDrawable(i2);
            drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize2);
            if (textView != null) {
                textView.setCompoundDrawables(drawable, null, null, null);
            }
            return null;
        }
        externalPackageToolbarIcon.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize2);
        if (textView != null) {
            textView.setCompoundDrawables(externalPackageToolbarIcon, null, null, null);
        }
        return externalPackageToolbarIcon.getConstantState();
    }

    private Drawable.ConstantState updateButtonWithIconFromExternalActivity(int i, ComponentName componentName, int i2, String str) {
        ImageView imageView = (ImageView) findViewById(i);
        Drawable externalPackageToolbarIcon = getExternalPackageToolbarIcon(componentName, str);
        if (imageView != null) {
            if (externalPackageToolbarIcon == null) {
                imageView.setImageResource(i2);
            } else {
                imageView.setImageDrawable(externalPackageToolbarIcon);
            }
        }
        if (externalPackageToolbarIcon != null) {
            return externalPackageToolbarIcon.getConstantState();
        }
        return null;
    }

    private void updateTextButtonWithDrawable(int i, Drawable drawable) {
        ((TextView) findViewById(i)).setCompoundDrawables(drawable, null, null, null);
    }

    private void updateButtonWithDrawable(int i, Drawable.ConstantState constantState) {
        ((ImageView) findViewById(i)).setImageDrawable(constantState.newDrawable(getResources()));
    }

    private void invalidatePressedFocusedStates(View view, View view2) {
        if (view instanceof HolographicLinearLayout) {
            ((HolographicLinearLayout) view).invalidatePressedFocusedStates();
        } else if (view2 instanceof HolographicImageView) {
            ((HolographicImageView) view2).invalidatePressedFocusedStates();
        }
    }

    private boolean updateGlobalSearchIcon() {
        View viewFindViewById = findViewById(R.id.search_button_container);
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        View viewFindViewById2 = findViewById(R.id.voice_button_container);
        View viewFindViewById3 = findViewById(R.id.voice_button);
        if (((SearchManager) getSystemService("search")).getGlobalSearchActivity() != null) {
            boolean z = L.DEBUG;
            imageView.setImageResource(R.drawable.ic_home_search_normal_holo);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            imageView.setVisibility(0);
            invalidatePressedFocusedStates(viewFindViewById, imageView);
            return true;
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        imageView.setVisibility(8);
        viewFindViewById3.setVisibility(8);
        return false;
    }

    private void updateGlobalSearchIcon(Drawable.ConstantState constantState) {
        View viewFindViewById = findViewById(R.id.search_button_container);
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        updateButtonWithDrawable(R.id.search_button, constantState);
        invalidatePressedFocusedStates(viewFindViewById, imageView);
    }

    private boolean updateVoiceSearchIcon(boolean z) {
        ComponentName componentNameResolveActivity;
        View viewFindViewById = findViewById(R.id.voice_button_container);
        View viewFindViewById2 = findViewById(R.id.voice_button);
        ComponentName globalSearchActivity = ((SearchManager) getSystemService("search")).getGlobalSearchActivity();
        if (globalSearchActivity != null) {
            Intent intent = new Intent("android.speech.action.WEB_SEARCH");
            intent.setPackage(globalSearchActivity.getPackageName());
            componentNameResolveActivity = intent.resolveActivity(getPackageManager());
        } else {
            componentNameResolveActivity = null;
        }
        if (componentNameResolveActivity == null) {
            componentNameResolveActivity = new Intent("android.speech.action.WEB_SEARCH").resolveActivity(getPackageManager());
        }
        if (z && componentNameResolveActivity != null) {
            int currentOrientationIndexForGlobalIcons = getCurrentOrientationIndexForGlobalIcons();
            sVoiceSearchIcon[currentOrientationIndexForGlobalIcons] = updateButtonWithIconFromExternalActivity(R.id.voice_button, componentNameResolveActivity, R.drawable.ic_home_voice_search_holo, TOOLBAR_VOICE_SEARCH_ICON_METADATA_NAME);
            Drawable.ConstantState[] constantStateArr = sVoiceSearchIcon;
            if (constantStateArr[currentOrientationIndexForGlobalIcons] == null) {
                constantStateArr[currentOrientationIndexForGlobalIcons] = updateButtonWithIconFromExternalActivity(R.id.voice_button, componentNameResolveActivity, R.drawable.ic_home_voice_search_holo, TOOLBAR_ICON_METADATA_NAME);
            }
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            viewFindViewById2.setVisibility(0);
            invalidatePressedFocusedStates(viewFindViewById, viewFindViewById2);
            return true;
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        viewFindViewById2.setVisibility(8);
        return false;
    }

    private void updateVoiceSearchIcon(Drawable.ConstantState constantState) {
        View viewFindViewById = findViewById(R.id.voice_button_container);
        View viewFindViewById2 = findViewById(R.id.voice_button);
        updateButtonWithDrawable(R.id.voice_button, constantState);
        invalidatePressedFocusedStates(viewFindViewById, viewFindViewById2);
    }

    private void updateAppMarketIcon(Drawable.ConstantState constantState) {
        Resources resources = getResources();
        constantState.newDrawable(resources).setBounds(0, 0, resources.getDimensionPixelSize(R.dimen.toolbar_external_icon_width), resources.getDimensionPixelSize(R.dimen.toolbar_external_icon_height));
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        boolean zDispatchPopulateAccessibilityEvent = super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        List<CharSequence> text = accessibilityEvent.getText();
        text.clear();
        if (this.mState == State.APPS_CUSTOMIZE) {
            text.add(getString(R.string.all_apps_button_label));
        } else {
            text.add(getString(R.string.all_apps_home_button_label));
        }
        return zDispatchPopulateAccessibilityEvent;
    }

    private class CloseSystemDialogsIntentReceiver extends BroadcastReceiver {
        private CloseSystemDialogsIntentReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (L.DEBUG) {
                L.d(Launcher.TAG, "Close system dialogs: intent = " + intent);
            }
            if ("ckx.action.ui_theme_sub.changed".equals(intent.getAction())) {
                Launcher.this.mHandler.removeMessages(5);
                Launcher.this.mHandler.sendEmptyMessageDelayed(5, 500L);
            } else {
                Launcher.this.closeSystemDialogs();
            }
        }
    }

    private class AppWidgetResetObserver extends ContentObserver {
        public AppWidgetResetObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Launcher.this.onAppWidgetReset();
        }
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public boolean setLoadOnResume() {
        if (!this.mPaused) {
            return false;
        }
        L.i(TAG, "setLoadOnResume: this = " + this);
        this.mOnResumeNeedsLoad = true;
        return true;
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public int getCurrentWorkspaceScreen() {
        Workspace workspace = this.mWorkspace;
        if (workspace != null) {
            return workspace.getCurrentPage();
        }
        return 1;
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void startBinding() {
        if (L.DEBUG) {
            L.d(TAG, "startBinding: this = " + this);
        }
        DragController dragController = this.mDragController;
        if (dragController != null) {
            dragController.cancelDrag();
        }
        Workspace workspace = this.mWorkspace;
        this.mNewShortcutAnimatePage = -1;
        this.mNewShortcutAnimateViews.clear();
        this.mWorkspace.clearDropTargets();
        int childCount = workspace.getChildCount();
        for (int i = 0; i < childCount; i++) {
            CellLayout cellLayout = (CellLayout) workspace.getChildAt(i);
            cellLayout.removeAllViewsInLayout();
            cellLayout.requestChildLayout();
        }
        workspace.invalidate();
        this.mWidgetsToAdvance.clear();
        Hotseat hotseat = this.mHotseat;
        if (hotseat != null) {
            hotseat.resetLayout();
        }
        refreshUIByScene();
        if (L.DEBUG) {
            L.d(TAG, "startBinding: mIsLoadingWorkspace = " + this.mIsLoadingWorkspace);
        }
        this.mIsLoadingWorkspace = false;
    }

    private void refreshUIByScene() {
        String currentScene = getCurrentScene();
        Resources resources = getResources();
        HolographicImageView holographicImageView = (HolographicImageView) findViewById(R.id.change_scene_button);
        if (holographicImageView != null) {
            holographicImageView.invalidatePressedFocusedStates();
        }
        resources.getIdentifier(!"default".equals(currentScene) ? currentScene + "_hotseat_scrubber_holo" : "hotseat_scrubber_holo", "drawable", getPackageName());
        Workspace workspace = this.mWorkspace;
        if (workspace != null) {
            workspace.refreshUI();
        }
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void bindItems(ArrayList<ItemInfo> arrayList, int i, int i2) {
        boolean zRemove;
        setLoadOnResume();
        Set<String> stringSet = this.mSharedPrefs.getStringSet(InstallShortcutReceiver.NEW_APPS_LIST_KEY, new HashSet());
        Workspace workspace = this.mWorkspace;
        for (int i3 = i; i3 < i2; i3++) {
            ItemInfo itemInfo = arrayList.get(i3);
            if (L.DEBUG) {
                L.d(TAG, "bindItems: start = " + i + ", end = " + i2 + "item = " + itemInfo + ", this = " + this);
            }
            if (itemInfo.container != -101 || this.mHotseat != null) {
                int i4 = itemInfo.itemType;
                if (i4 == 0 || i4 == 1) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) itemInfo;
                    String string = shortcutInfo.intent.toUri(0).toString();
                    View viewCreateShortcut = createShortcut(shortcutInfo);
                    workspace.addInScreen(viewCreateShortcut, itemInfo.container, itemInfo.screen, itemInfo.cellX, itemInfo.cellY, 1, 1, false);
                    synchronized (stringSet) {
                        zRemove = stringSet.contains(string) ? stringSet.remove(string) : false;
                    }
                    if (zRemove) {
                        viewCreateShortcut.setAlpha(0.0f);
                        viewCreateShortcut.setScaleX(0.0f);
                        viewCreateShortcut.setScaleY(0.0f);
                        this.mNewShortcutAnimatePage = itemInfo.screen;
                        if (!this.mNewShortcutAnimateViews.contains(viewCreateShortcut)) {
                            this.mNewShortcutAnimateViews.add(viewCreateShortcut);
                        }
                    }
                } else if (i4 == 2) {
                    workspace.addInScreen(FolderIcon.fromXml(R.layout.folder_icon, this, (ViewGroup) workspace.getChildAt(workspace.getCurrentPage()), (FolderInfo) itemInfo, this.mIconCache), itemInfo.container, itemInfo.screen, itemInfo.cellX, itemInfo.cellY, 1, 1, false);
                }
            }
        }
        workspace.requestLayout();
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void bindFolders(HashMap<Long, FolderInfo> map) {
        setLoadOnResume();
        if (L.DEBUG) {
            L.d(TAG, "bindFolders: this = " + this);
        }
        sFolders.clear();
        sFolders.putAll(map);
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void bindAppWidget(LauncherAppWidgetInfo launcherAppWidgetInfo) {
        setLoadOnResume();
        Workspace workspace = this.mWorkspace;
        int i = launcherAppWidgetInfo.appWidgetId;
        AppWidgetProviderInfo appWidgetInfo = this.mAppWidgetManager.getAppWidgetInfo(i);
        if (appWidgetInfo == null) {
            return;
        }
        launcherAppWidgetInfo.hostView = this.mAppWidgetHost.createView(this, i, appWidgetInfo);
        launcherAppWidgetInfo.hostView.setTag(launcherAppWidgetInfo);
        launcherAppWidgetInfo.onBindAppWidget(this);
        this.mWorkspace.setAppWidgetIdAndScreen(launcherAppWidgetInfo.hostView, this.mWorkspace.getCurrentPage(), i);
        workspace.addInScreen(launcherAppWidgetInfo.hostView, launcherAppWidgetInfo.container, launcherAppWidgetInfo.screen, launcherAppWidgetInfo.cellX, launcherAppWidgetInfo.cellY, launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.spanY, false);
        addWidgetToAutoAdvanceIfNeeded(launcherAppWidgetInfo.hostView, appWidgetInfo);
        workspace.requestLayout();
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void onPageBoundSynchronously(int i) {
        this.mSynchronouslyBoundPages.add(Integer.valueOf(i));
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void finishBindingItems() {
        setLoadOnResume();
        if (L.DEBUG) {
            L.d(TAG, "finishBindingItems: mSavedState = " + this.mSavedState + ", mSavedInstanceState = " + this.mSavedInstanceState + ", this = " + this);
        }
        if (this.mSavedState != null) {
            if (!this.mWorkspace.hasFocus()) {
                Workspace workspace = this.mWorkspace;
                workspace.getChildAt(workspace.getCurrentPage()).requestFocus();
            }
            this.mSavedState = null;
        }
        this.mWorkspace.restoreInstanceStateForRemainingPages();
        for (int i = 0; i < sPendingAddList.size(); i++) {
            completeAdd(sPendingAddList.get(i));
        }
        sPendingAddList.clear();
        if (this.mVisible || this.mWorkspaceLoading) {
            Runnable runnable = new Runnable() { // from class: com.android.launcher2.Launcher.28
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.runNewAppsAnimation(false);
                }
            };
            int i2 = this.mNewShortcutAnimatePage;
            boolean z = i2 > -1 && i2 != this.mWorkspace.getCurrentPage();
            if (!canRunNewAppsAnimation()) {
                runNewAppsAnimation(z);
            } else if (z) {
                this.mWorkspace.snapToPage(this.mNewShortcutAnimatePage, runnable);
            } else {
                runNewAppsAnimation(false);
            }
        }
        this.mWorkspaceLoading = false;
        if (this.mUnreadLoadCompleted) {
            bindWorkspaceUnreadInfo();
        }
        this.mBindingWorkspaceFinished = true;
    }

    private boolean canRunNewAppsAnimation() {
        return System.currentTimeMillis() - this.mDragController.getLastGestureUpTime() > ((long) (NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS * 1000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r10v5, types: [com.android.launcher2.Launcher$31] */
    public void runNewAppsAnimation(boolean z) {
        AnimatorSet animatorSetCreateAnimatorSet = LauncherAnimUtils.createAnimatorSet();
        ArrayList arrayList = new ArrayList();
        Collections.sort(this.mNewShortcutAnimateViews, new Comparator<View>() { // from class: com.android.launcher2.Launcher.29
            @Override // java.util.Comparator
            public int compare(View view, View view2) {
                CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
                CellLayout.LayoutParams layoutParams2 = (CellLayout.LayoutParams) view2.getLayoutParams();
                int cellCountX = LauncherModel.getCellCountX();
                return ((layoutParams.cellY * cellCountX) + layoutParams.cellX) - ((layoutParams2.cellY * cellCountX) + layoutParams2.cellX);
            }
        });
        if (z) {
            for (View view : this.mNewShortcutAnimateViews) {
                view.setAlpha(1.0f);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
            }
        } else {
            for (int i = 0; i < this.mNewShortcutAnimateViews.size(); i++) {
                ObjectAnimator objectAnimatorOfPropertyValuesHolder = LauncherAnimUtils.ofPropertyValuesHolder(this.mNewShortcutAnimateViews.get(i), PropertyValuesHolder.ofFloat("alpha", 1.0f), PropertyValuesHolder.ofFloat("scaleX", 1.0f), PropertyValuesHolder.ofFloat("scaleY", 1.0f));
                objectAnimatorOfPropertyValuesHolder.setDuration(450L);
                objectAnimatorOfPropertyValuesHolder.setStartDelay(i * 75);
                objectAnimatorOfPropertyValuesHolder.setInterpolator(new SmoothPagedView.OvershootInterpolator());
                arrayList.add(objectAnimatorOfPropertyValuesHolder);
            }
            animatorSetCreateAnimatorSet.playTogether(arrayList);
            animatorSetCreateAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.Launcher.30
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (Launcher.this.mWorkspace != null) {
                        Launcher.this.mWorkspace.postDelayed(Launcher.this.mBuildLayersRunnable, 500L);
                    }
                }
            });
            animatorSetCreateAnimatorSet.start();
        }
        this.mNewShortcutAnimatePage = -1;
        this.mNewShortcutAnimateViews.clear();
        new Thread("clearNewAppsThread") { // from class: com.android.launcher2.Launcher.31
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Launcher.this.mSharedPrefs.edit().putInt(InstallShortcutReceiver.NEW_APPS_PAGE_KEY, -1).putStringSet(InstallShortcutReceiver.NEW_APPS_LIST_KEY, null).commit();
            }
        }.start();
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void bindSearchablesChanged() {
        boolean zUpdateGlobalSearchIcon = updateGlobalSearchIcon();
        boolean zUpdateVoiceSearchIcon = updateVoiceSearchIcon(zUpdateGlobalSearchIcon);
        SearchDropTargetBar searchDropTargetBar = this.mSearchDropTargetBar;
        if (searchDropTargetBar != null) {
            searchDropTargetBar.onSearchPackagesChanged(zUpdateGlobalSearchIcon, zUpdateVoiceSearchIcon);
        }
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void bindAllApplications(final ArrayList<ApplicationInfo> arrayList) {
        if (L.DEBUG) {
            L.d(TAG, "bindAllApplications: apps = " + arrayList);
        }
        Runnable runnable = new Runnable() { // from class: com.android.launcher2.Launcher.32
            @Override // java.lang.Runnable
            public void run() {
                if (Launcher.this.mAppsCustomizeContent != null) {
                    Launcher.this.mAppsCustomizeContent.setApps(arrayList);
                }
            }
        };
        Runnable runnable2 = new Runnable() { // from class: com.android.launcher2.Launcher.33
            @Override // java.lang.Runnable
            public void run() {
                if (Launcher.this.mMainCustomer != null) {
                    Launcher.this.mMainCustomer.setApps(arrayList);
                }
            }
        };
        if (this.mUnreadLoadCompleted) {
            AppsCustomizePagedView.updateUnreadNumInAppInfo(arrayList);
        }
        View viewFindViewById = this.mAppCustomizeFrame.findViewById(R.id.apps_customize_progress_bar);
        if (viewFindViewById != null) {
            ((ViewGroup) viewFindViewById.getParent()).removeView(viewFindViewById);
            this.mAppCustomizeFrame.post(runnable);
            this.mAppCustomizeFrame.post(runnable2);
        } else {
            runnable.run();
            runnable2.run();
        }
        this.mBindingAppsFinished = true;
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void bindAppsAdded(ArrayList<ApplicationInfo> arrayList) {
        if (L.DEBUG) {
            L.d(TAG, "bindAppsUpdated: apps = " + arrayList);
        }
        setLoadOnResume();
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizeContent;
        if (appsCustomizePagedView != null) {
            appsCustomizePagedView.addApps(arrayList);
        }
        MainCustomer mainCustomer = this.mMainCustomer;
        if (mainCustomer != null) {
            mainCustomer.addApps(arrayList);
        }
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void bindAppsUpdated(ArrayList<ApplicationInfo> arrayList) {
        if (L.DEBUG) {
            L.d(TAG, "bindAppsUpdated: apps = " + arrayList);
        }
        setLoadOnResume();
        Workspace workspace = this.mWorkspace;
        if (workspace != null) {
            workspace.updateShortcuts(arrayList);
        }
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizeContent;
        if (appsCustomizePagedView != null) {
            appsCustomizePagedView.updateApps(arrayList);
        }
        MainCustomer mainCustomer = this.mMainCustomer;
        if (mainCustomer != null) {
            mainCustomer.updateApps(arrayList);
        }
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void bindAppsRemoved(ArrayList<String> arrayList, boolean z) {
        if (L.DEBUG) {
            L.d(TAG, "bindAppsRemoved: packageNames = " + arrayList + ", permanent = " + z);
        }
        if (z) {
            this.mWorkspace.removeItems(arrayList);
        }
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizeContent;
        if (appsCustomizePagedView != null) {
            appsCustomizePagedView.removeApps(arrayList);
        }
        MainCustomer mainCustomer = this.mMainCustomer;
        if (mainCustomer != null) {
            mainCustomer.removeApps(arrayList);
        }
        this.mDragController.onAppsRemoved(arrayList, this);
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void bindPackagesUpdated() {
        if (L.DEBUG) {
            L.d(TAG, "bindPackagesUpdated.");
        }
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizeContent;
        if (appsCustomizePagedView != null) {
            appsCustomizePagedView.onPackagesUpdated();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    /* JADX WARN: Code duplicated, block: B:8:0x0017  */
    /* JADX WARN: Code duplicated, block: B:9:0x0019 A[DONT_INVERT] */
    private int mapConfigurationOriActivityInfoOri(int i) {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        int rotation = defaultDisplay.getRotation();
        if (rotation != 0) {
            if (rotation == 1) {
                if (i == 2) {
                    i = 1;
                } else {
                    i = 2;
                }
            } else if (rotation != 2) {
                if (rotation != 3) {
                    i = 2;
                } else if (i == 2) {
                    i = 1;
                } else {
                    i = 2;
                }
            }
        }
        return new int[]{1, 0, 9, 8}[(defaultDisplay.getRotation() + (i != 2 ? 0 : 1)) % 4];
    }

    public boolean isRotationEnabled() {
        return sForceEnableRotation || getResources().getBoolean(R.bool.allow_rotation);
    }

    public void lockScreenOrientation() {
        if (isRotationEnabled()) {
            setRequestedOrientation(mapConfigurationOriActivityInfoOri(getResources().getConfiguration().orientation));
        }
    }

    public void unlockScreenOrientation(boolean z) {
        if (isRotationEnabled()) {
            if (z) {
                setRequestedOrientation(-1);
            } else {
                this.mHandler.postDelayed(new Runnable() { // from class: com.android.launcher2.Launcher.34
                    @Override // java.lang.Runnable
                    public void run() {
                        Launcher.this.setRequestedOrientation(-1);
                    }
                }, 500L);
            }
        }
    }

    private boolean isClingsEnabled() {
        return !ActivityManager.isRunningInTestHarness();
    }

    private Cling initCling(int i, int[] iArr, boolean z, int i2) {
        final Cling cling = (Cling) findViewById(i);
        if (cling != null) {
            cling.init(this, iArr);
            cling.setVisibility(0);
            cling.setLayerType(2, null);
            if (z) {
                cling.buildLayer();
                cling.setAlpha(0.0f);
                cling.animate().alpha(1.0f).setInterpolator(new AccelerateInterpolator()).setDuration(550L).setStartDelay(i2).start();
            } else {
                cling.setAlpha(1.0f);
            }
            cling.setFocusableInTouchMode(true);
            cling.post(new Runnable() { // from class: com.android.launcher2.Launcher.35
                @Override // java.lang.Runnable
                public void run() {
                    cling.setFocusable(true);
                    cling.requestFocus();
                }
            });
            this.mHideFromAccessibilityHelper.setImportantForAccessibilityToNo(this.mDragLayer, i == R.id.all_apps_cling);
        }
        return cling;
    }

    private void dismissCling(final Cling cling, final String str, int i) {
        if (cling == null || cling.getVisibility() == 8) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = LauncherAnimUtils.ofFloat(cling, "alpha", 0.0f);
        objectAnimatorOfFloat.setDuration(i);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.Launcher.36
            /* JADX WARN: Type inference failed for: r2v3, types: [com.android.launcher2.Launcher$36$1] */
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                cling.setVisibility(8);
                cling.cleanup();
                new Thread("dismissClingThread") { // from class: com.android.launcher2.Launcher.36.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        SharedPreferences.Editor editorEdit = Launcher.this.mSharedPrefs.edit();
                        editorEdit.putBoolean(str, true);
                        editorEdit.commit();
                    }
                }.start();
            }
        });
        objectAnimatorOfFloat.start();
        this.mHideFromAccessibilityHelper.restoreImportantForAccessibility(this.mDragLayer);
    }

    private void removeCling(int i) {
        final View viewFindViewById = findViewById(i);
        if (viewFindViewById != null) {
            final ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            viewGroup.post(new Runnable() { // from class: com.android.launcher2.Launcher.37
                @Override // java.lang.Runnable
                public void run() {
                    viewGroup.removeView(viewFindViewById);
                }
            });
            this.mHideFromAccessibilityHelper.restoreImportantForAccessibility(this.mDragLayer);
        }
    }

    public void showFirstRunWorkspaceCling() {
        UserInitializeReceiver.setCompleteListener(this);
        if (isClingsEnabled() && SystemProperties.get("persist.sys.fristLauncher", "yes").equals("yes")) {
            AboutDialog aboutDialog = new AboutDialog(this, R.layout.launcher_cling);
            this.mAboutDialog = aboutDialog;
            aboutDialog.getWindow().setLayout(-1, -1);
            this.mAboutDialog.show();
            this.mAboutDialog.setButtonEable(false);
            this.mHandler.sendEmptyMessageDelayed(2, 5000L);
        }
    }

    public void showFirstRunAllAppsCling(int[] iArr) {
        if (isClingsEnabled() && !this.mSharedPrefs.getBoolean("cling.allapps.dismissed", false)) {
            setClingTitleWithThemeColor(initCling(R.id.all_apps_cling, iArr, true, 0), R.id.all_apps_cling_title);
        } else {
            removeCling(R.id.all_apps_cling);
        }
    }

    public Cling showFirstRunFoldersCling() {
        if (isClingsEnabled() && !this.mSharedPrefs.getBoolean("cling.folder.dismissed", false)) {
            Cling clingInitCling = initCling(R.id.folder_cling, null, true, 0);
            setClingTitleWithThemeColor(clingInitCling, R.id.folder_cling_title);
            return clingInitCling;
        }
        removeCling(R.id.folder_cling);
        return null;
    }

    public boolean isFolderClingVisible() {
        Cling cling = (Cling) findViewById(R.id.folder_cling);
        return cling != null && cling.getVisibility() == 0;
    }

    public void dismissAllAppsCling(View view) {
        dismissCling((Cling) findViewById(R.id.all_apps_cling), "cling.allapps.dismissed", DISMISS_CLING_DURATION);
    }

    public void dismissFolderCling(View view) {
        dismissCling((Cling) findViewById(R.id.folder_cling), "cling.folder.dismissed", DISMISS_CLING_DURATION);
    }

    public void dumpState() {
        L.d(TAG, "BEGIN launcher2 dump state for launcher " + this);
        L.d(TAG, "mSavedState=" + this.mSavedState);
        L.d(TAG, "mWorkspaceLoading=" + this.mWorkspaceLoading);
        L.d(TAG, "mRestoring=" + this.mRestoring);
        L.d(TAG, "mWaitingForResult=" + this.mWaitingForResult);
        L.d(TAG, "mSavedInstanceState=" + this.mSavedInstanceState);
        L.d(TAG, "sFolders.size=" + sFolders.size());
        this.mModel.dumpState();
        AppsCustomizePagedView appsCustomizePagedView = this.mAppsCustomizeContent;
        if (appsCustomizePagedView != null) {
            appsCustomizePagedView.dumpState();
        }
        L.d(TAG, "END launcher2 dump state");
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.println(" ");
        printWriter.println("Debug logs: ");
        int i = 0;
        while (true) {
            ArrayList<String> arrayList = sDumpLogs;
            if (i >= arrayList.size()) {
                return;
            }
            printWriter.println("  " + arrayList.get(i));
            i++;
        }
    }

    public static void dumpDebugLogsToConsole() {
        L.d(TAG, "");
        L.d(TAG, "*********************");
        L.d(TAG, "Launcher debug logs: ");
        int i = 0;
        while (true) {
            ArrayList<String> arrayList = sDumpLogs;
            if (i < arrayList.size()) {
                L.d(TAG, "  " + arrayList.get(i));
                i++;
            } else {
                L.d(TAG, "*********************");
                L.d(TAG, "");
                return;
            }
        }
    }

    private void setClingTitleWithThemeColor(View view, int i) {
        TextView textView;
        if (view == null || (textView = (TextView) view.findViewById(i)) == null) {
            return;
        }
        textView.setTextColor(getThemeColor(getResources(), R.color.cling_title_text_color));
    }

    public static int getThemeColor(Resources resources, int i) {
        int identifier;
        String currentScene = getCurrentScene();
        if (!currentScene.equals("default") && (identifier = resources.getIdentifier(currentScene + SCENE_COLOR_SUFFIX, "color", "com.android.launcher")) > 0) {
            return resources.getColor(identifier);
        }
        return resources.getColor(i);
    }

    Rect getCurrentBounds() {
        return this.mCurrentBounds;
    }

    private int roundOrientation(int i) {
        return (((i + 45) / 90) * 90) % 360;
    }

    private void disableOrientationListener() {
        this.mLastOrientation = 0;
        this.mOrientationListener.disable();
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void switchScene() {
        Utilities.clearBitmap();
        this.mIconCache.refreshDefaultIcon();
        this.mIconCache.flush();
        this.mWorkspace.moveToDefaultScreen(false);
        for (int i = 0; i < 2; i++) {
            CellLayout cellLayout = (CellLayout) this.mWorkspace.getChildAt(i);
            if (cellLayout != null) {
                cellLayout.removeAllViews();
            }
        }
        Context applicationContext = getApplicationContext();
        new AppWidgetHost(applicationContext, 1024).deleteHost();
        applicationContext.getContentResolver().notifyChange(LauncherProvider.CONTENT_APPWIDGET_RESET_URI, null);
        DragController dragController = this.mDragController;
        dragController.resetDropTarget();
        dragController.addDropTarget(this.mWorkspace);
        SearchDropTargetBar searchDropTargetBar = this.mSearchDropTargetBar;
        if (searchDropTargetBar != null) {
            searchDropTargetBar.setup(this, dragController);
        }
    }

    public void bindComponentUnreadChanged(final ComponentName componentName, final int i) {
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "bindComponentUnreadChanged: component = " + componentName + ", unreadNum = " + i + ", this = " + this);
        }
        this.mHandler.post(new Runnable() { // from class: com.android.launcher2.Launcher.38
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (L.DEBUG_PERFORMANCE) {
                    L.d(Launcher.TAG, "bindComponentUnreadChanged begin: component = " + componentName + ", unreadNum = " + i + ", start = " + jCurrentTimeMillis);
                }
                if (Launcher.this.mWorkspace != null) {
                    Launcher.this.mWorkspace.updateComponentUnreadChanged(componentName, i);
                }
                if (Launcher.this.mAppsCustomizeContent != null) {
                    Launcher.this.mAppsCustomizeContent.updateAppsUnreadChanged(componentName, i);
                }
                if (L.DEBUG_PERFORMANCE) {
                    L.d(Launcher.TAG, "bindComponentUnreadChanged end: current time = " + System.currentTimeMillis() + ", time used = " + (System.currentTimeMillis() - jCurrentTimeMillis));
                }
            }
        });
    }

    public void bindUnreadInfoIfNeeded() {
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "bindUnreadInfoIfNeeded: mBindingWorkspaceFinished = " + this.mBindingWorkspaceFinished + ", thread = " + Thread.currentThread());
        }
        if (this.mBindingWorkspaceFinished) {
            bindWorkspaceUnreadInfo();
        }
        if (this.mBindingAppsFinished) {
            bindAppsUnreadInfo();
        }
        this.mUnreadLoadCompleted = true;
    }

    private void bindWorkspaceUnreadInfo() {
        this.mHandler.post(new Runnable() { // from class: com.android.launcher2.Launcher.39
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (L.DEBUG_PERFORMANCE) {
                    L.d(Launcher.TAG, "bindWorkspaceUnreadInfo begin: start = " + jCurrentTimeMillis);
                }
                if (Launcher.this.mWorkspace != null) {
                    Launcher.this.mWorkspace.updateShortcutsAndFoldersUnread();
                }
                if (L.DEBUG_PERFORMANCE) {
                    L.d(Launcher.TAG, "bindWorkspaceUnreadInfo end: current time = " + System.currentTimeMillis() + ",time used = " + (System.currentTimeMillis() - jCurrentTimeMillis));
                }
            }
        });
    }

    private void bindAppsUnreadInfo() {
        this.mHandler.post(new Runnable() { // from class: com.android.launcher2.Launcher.40
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (L.DEBUG_PERFORMANCE) {
                    L.d(Launcher.TAG, "bindAppsUnreadInfo begin: start = " + jCurrentTimeMillis);
                }
                if (Launcher.this.mAppsCustomizeContent != null) {
                    Launcher.this.mAppsCustomizeContent.updateAppsUnread();
                }
                if (L.DEBUG_PERFORMANCE) {
                    L.d(Launcher.TAG, "bindAppsUnreadInfo end: current time = " + System.currentTimeMillis() + ",time used = " + (System.currentTimeMillis() - jCurrentTimeMillis));
                }
            }
        });
    }

    public void setPackageIndex(int i, int i2, boolean z) {
        Log.d(TAG, "setPackageIndex CurNum = " + i + ", CountNum = " + i2 + ", isWorkspace = " + z);
        this.mSwitchIconView.setPackageIndex(i, i2, z);
        if (z) {
            this.mSwitchIconView.setVisibility(8);
        } else {
            this.mSwitchIconView.setVisibility(0);
        }
    }

    public void showLongPressWidgetToAddMessage() {
        Toast toast = this.mLongPressWidgetToAddToast;
        if (toast == null) {
            this.mLongPressWidgetToAddToast = Toast.makeText(getApplicationContext(), R.string.long_press_widget_to_add, 0);
        } else {
            toast.setText(R.string.long_press_widget_to_add);
            this.mLongPressWidgetToAddToast.setDuration(0);
        }
        this.mLongPressWidgetToAddToast.show();
    }

    private void cancelLongPressWidgetToAddMessage() {
        Toast toast = this.mLongPressWidgetToAddToast;
        if (toast != null) {
            toast.cancel();
        }
    }

    @Override // com.android.launcher2.LauncherModel.Callbacks
    public void notifyOrientationChanged() {
        if (L.DEBUG) {
            L.d(TAG, "notifyOrientationChanged: mOrientationChanged = " + this.mOrientationChanged + ", mPaused = " + this.mPaused);
        }
        this.mOrientationChanged = true;
    }

    void notifyPagesWereRecreated() {
        this.mPagesWereRecreated = true;
    }

    private void resetReSyncFlags() {
        this.mOrientationChanged = false;
        this.mPagesWereRecreated = false;
    }

    private void volunteerFreeMemory() {
        this.mAppCustomizeFrame.onTrimMemory();
        this.mIconCache.flush();
    }

    public static String getCurrentScene() {
        return SceneManager.DEFAULT_SCENE;
    }

    @Override // com.android.launcher2.UserInitializeReceiver.onBootCompleteListener
    public void onCompleteListener() {
        L.v("onCompleteListener&&&&&&&&&&&&&&&&Launcher&&&&&&&&&&&&&&&&&&&");
    }

    private void showCustomer(boolean z, boolean z2) {
        Log.i(TAG, "showCustomer: show:" + z + " switchMainSubpage:" + z2);
        MainCustomerJly mainCustomerJly = this.mMainCustomerJly;
        if (mainCustomerJly != null) {
            mainCustomerJly.setVisibility(z ? 0 : 4);
            if (z2) {
                this.mMainCustomerJly.toggleMainSubView();
                return;
            } else if (!z) {
                this.mMainCustomerJly.notifyStatusBar(2);
                return;
            } else {
                this.mMainCustomerJly.notifyStatusBar();
                return;
            }
        }
        MainCustomer mainCustomer = this.mMainCustomer;
        if (mainCustomer != null) {
            mainCustomer.setVisibility(z ? 0 : 4);
            if (z2) {
                this.mMainCustomer.toggleMainSubView();
            } else if (!z) {
                this.mMainCustomer.notifyStatusBar(2);
            } else {
                this.mMainCustomer.notifyStatusBar();
            }
        }
    }

    public static Launcher getLauncher(Context context) {
        if (context instanceof Launcher) {
            return (Launcher) context;
        }
        return (Launcher) ((ContextWrapper) context).getBaseContext();
    }

    private void initMcuManager() {
        McuServiceManager.getInstance().initialize(this, null);
        this.mMcuServiceManager.regCallback(new int[]{18, 24}, this.mMcuDataListener);
        if (this.mMcuServiceManager.isServiceConnected()) {
            Log.d(TAG, " onServiceConnected:0");
            onServiceConnected();
        }
    }

    private void removeMCUManager() {
        this.mMcuServiceManager.unregCallback(this.mMcuDataListener);
    }

    void onServiceConnected() {
        int i = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, getContentResolver(), Navi.Status.SYS_MCU_SERVICE_READY, -1);
        Log.d(TAG, " URI_MCU_SERVICE_READY:" + i);
        if (i >= 1) {
            Log.d(TAG, " onServiceConnected: " + this.mIsMcuInited);
            if (this.mIsMcuInited) {
                return;
            }
            this.mIsMcuInited = true;
            McuUtils.getInstance().sendQueryCmd(18, 0);
            McuUtils.getInstance().sendQueryCmd(24, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateID8Theme(int i) {
        Log.i(TAG, "updateID8Theme: " + i);
        if (ZHTDOEMManager.ensureID8()) {
            updateID8AppCustomizeFrameBackground(i);
            updateID8LauncherBackground(i);
            updateID8SmallIconsBackground(i);
            MainCustomer mainCustomer = this.mMainCustomer;
            if (mainCustomer != null) {
                mainCustomer.updateID8Theme(i);
            }
        }
    }

    private void updateID8AppCustomizeFrameBackground(int i) {
        int i2;
        if (i == 1) {
            i2 = R.drawable.bmw_id8_orange_bg_apps;
        } else if (i != 2) {
            i2 = i != 3 ? 0 : R.drawable.bmw_id8_blue_bg_apps;
        } else {
            i2 = R.drawable.bmw_id8_red_bg_apps;
        }
        AppsCustomizeFrame appsCustomizeFrame = this.mAppCustomizeFrame;
        if (appsCustomizeFrame == null || i2 == 0) {
            return;
        }
        appsCustomizeFrame.setBackgroundResource(i2);
        bindPackagesUpdated();
    }

    private void updateID8LauncherBackground(int i) {
        int i2;
        if (i == 1) {
            i2 = R.drawable.bmw_id8_orange_bg;
        } else if (i != 2) {
            i2 = i != 3 ? 0 : R.drawable.bmw_id8_blue_bg;
        } else {
            i2 = R.drawable.bmw_id8_red_bg;
        }
        View view = this.mLauncherView;
        if (view == null || i2 == 0) {
            return;
        }
        view.setBackgroundResource(i2);
    }

    private void updateID8SmallIconsBackground(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = this.mID8SmallIconsId;
            if (i2 >= iArr.length) {
                return;
            }
            AnimationLeftToRightFrameLayout animationLeftToRightFrameLayout = (AnimationLeftToRightFrameLayout) findViewById(iArr[i2]);
            if (animationLeftToRightFrameLayout != null) {
                int i3 = this.mSelectIndex;
                if (i3 >= 0 && i3 < this.mID8SmallIconsId.length && getmMMIKeyRegion() == 0 && this.mID8SmallIconsId[this.mSelectIndex] == animationLeftToRightFrameLayout.getId()) {
                    animationLeftToRightFrameLayout.setSelected(false);
                }
                if (i == 1) {
                    animationLeftToRightFrameLayout.setAnimaSelectResource(R.drawable.bmw_id8_orange_leftbar_icon_bg_selector);
                } else if (i == 2) {
                    animationLeftToRightFrameLayout.setAnimaSelectResource(R.drawable.bmw_id8_red_leftbar_icon_bg_selector);
                } else if (i == 3) {
                    animationLeftToRightFrameLayout.setAnimaSelectResource(R.drawable.bmw_id8_blue_leftbar_icon_bg_selector);
                }
                int i4 = this.mSelectIndex;
                if (i4 >= 0 && i4 < this.mID8SmallIconsId.length && getmMMIKeyRegion() == 0 && this.mID8SmallIconsId[this.mSelectIndex] == animationLeftToRightFrameLayout.getId()) {
                    animationLeftToRightFrameLayout.setSelected(true);
                }
            }
            i2++;
        }
    }
}
