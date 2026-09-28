package com.android.launcher2;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import com.android.launcher2.uitl.L;
import com.android.launcher2.uitl.Utils;
import com.carocean.navicar.Navi;
import com.yecon.launcher1.R;
import java.lang.ref.WeakReference;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LauncherModel extends BroadcastReceiver {
    public static final String ACTION_SWITCH_SCENE = "com.mediatek.intent.action.SWITCH_SCENE";
    public static final Comparator<ApplicationInfo> APP_INSTALL_TIME_COMPARATOR;
    static final boolean DEBUG_LOADERS = true;
    private static final boolean DEBUG_LOADERS_REORDER = false;
    private static final String[][] HIDE_COMPONENTS = new String[0][];
    private static final int ITEMS_CHUNK = 4;
    private static final int MAIN_THREAD_BINDING_RUNNABLE = 1;
    private static final int MAIN_THREAD_NORMAL_RUNNABLE = 0;
    static final String TAG = "Launcher.Model";
    private static int mCellCountX;
    private static int mCellCountY;
    static final ArrayList<Runnable> mDeferredBindRunnables;
    static final ArrayList<LauncherAppWidgetInfo> sBgAppWidgets;
    static final HashMap<Object, byte[]> sBgDbIconCache;
    static final HashMap<Long, FolderInfo> sBgFolders;
    static final HashMap<Long, ItemInfo> sBgItemsIdMap;
    static final Object sBgLock;
    static final ArrayList<ItemInfo> sBgWorkspaceItems;
    private static final Handler sWorker;
    private static final HandlerThread sWorkerThread;
    private int mAllAppsLoadDelay;
    private boolean mAllAppsLoaded;
    private final LauncherApplication mApp;
    private int mBatchSize;
    private AllAppsList mBgAllAppsList;
    private WeakReference<Callbacks> mCallbacks;
    private Bitmap mDefaultIcon;
    private boolean mForceFlushCache;
    private IconCache mIconCache;
    private boolean mIsLoaderTaskRunning;
    private LoaderTask mLoaderTask;
    protected int mPreviousConfigMcc;
    protected int mPreviousConfigMnc;
    protected int mPreviousOrientation;
    private boolean mWorkspaceLoaded;
    private final Object mLock = new Object();
    private DeferredHandler mHandler = new DeferredHandler();
    private final boolean mAppsCanBeOnExternalStorage = !Environment.isExternalStorageEmulated();

    public interface Callbacks {
        void bindAllApplications(ArrayList<ApplicationInfo> arrayList);

        void bindAppWidget(LauncherAppWidgetInfo launcherAppWidgetInfo);

        void bindAppWidgetRemoved(ArrayList<String> arrayList, boolean z);

        void bindAppsAdded(ArrayList<ApplicationInfo> arrayList);

        void bindAppsRemoved(ArrayList<String> arrayList, boolean z);

        void bindAppsUpdated(ArrayList<ApplicationInfo> arrayList);

        void bindFolders(HashMap<Long, FolderInfo> map);

        void bindItems(ArrayList<ItemInfo> arrayList, int i, int i2);

        void bindPackagesUpdated();

        void bindSearchablesChanged();

        void finishBindingItems();

        int getCurrentWorkspaceScreen();

        boolean isAllAppsButtonRank(int i);

        boolean isAllAppsVisible();

        void notifyOrientationChanged();

        void onPageBoundSynchronously(int i);

        boolean setLoadOnResume();

        void startBinding();

        void switchScene();
    }

    static int getCellLayoutChildId(long j, int i, int i2, int i3, int i4, int i5) {
        return ((((int) j) & 255) << 24) | ((i & 255) << 16) | ((i2 & 255) << 8) | (i3 & 255);
    }

    static /* synthetic */ int access$1000() {
        return mCellCountY;
    }

    static /* synthetic */ ShortcutInfo access$1100(LauncherModel launcherModel, Cursor cursor, Context context, int i, int i2, int i3, int i4, int i5) {
        return launcherModel.getShortcutInfo(cursor, context, i, i2, i3, i4, i5);
    }

    static /* synthetic */ FolderInfo access$1200(HashMap map, long j) {
        return findOrMakeFolder(map, j);
    }

    static /* synthetic */ LauncherApplication access$800(LauncherModel launcherModel) {
        return launcherModel.mApp;
    }

    static /* synthetic */ int access$900() {
        return mCellCountX;
    }

    static {
        HandlerThread handlerThread = new HandlerThread("launcher-loader");
        sWorkerThread = handlerThread;
        handlerThread.start();
        sWorker = new Handler(handlerThread.getLooper());
        mDeferredBindRunnables = new ArrayList<>();
        sBgLock = new Object();
        sBgItemsIdMap = new HashMap<>();
        sBgWorkspaceItems = new ArrayList<>();
        sBgAppWidgets = new ArrayList<>();
        sBgFolders = new HashMap<>();
        sBgDbIconCache = new HashMap<>();
        APP_INSTALL_TIME_COMPARATOR = new Comparator<ApplicationInfo>() { // from class: com.android.launcher2.LauncherModel.8
            @Override // java.util.Comparator
            public final int compare(ApplicationInfo applicationInfo, ApplicationInfo applicationInfo2) {
                if (applicationInfo.firstInstallTime < applicationInfo2.firstInstallTime) {
                    return 1;
                }
                return applicationInfo.firstInstallTime > applicationInfo2.firstInstallTime ? -1 : 0;
            }
        };
    }

    LauncherModel(LauncherApplication launcherApplication, IconCache iconCache) {
        this.mApp = launcherApplication;
        this.mBgAllAppsList = new AllAppsList(iconCache);
        this.mIconCache = iconCache;
        this.mDefaultIcon = Utilities.createIconBitmap(iconCache.getFullResDefaultActivityIcon(), launcherApplication);
        Resources resources = launcherApplication.getResources();
        this.mAllAppsLoadDelay = resources.getInteger(R.integer.config_allAppsBatchLoadDelay);
        this.mBatchSize = resources.getInteger(R.integer.config_allAppsBatchSize);
        Configuration configuration = resources.getConfiguration();
        this.mPreviousConfigMcc = configuration.mcc;
        this.mPreviousConfigMnc = configuration.mnc;
        this.mPreviousOrientation = configuration.orientation;
    }

    private void runOnMainThread(Runnable runnable) {
        runOnMainThread(runnable, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnMainThread(Runnable runnable, int i) {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            this.mHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    private static void runOnWorkerThread(Runnable runnable) {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            runnable.run();
        } else {
            sWorker.post(runnable);
        }
    }

    public Bitmap getFallbackIcon() {
        return Bitmap.createBitmap(this.mDefaultIcon);
    }

    public void unbindItemInfosAndClearQueuedBindRunnables() {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            throw new RuntimeException("Expected unbindLauncherItemInfos() to be called from the main thread");
        }
        mDeferredBindRunnables.clear();
        this.mHandler.cancelAllRunnablesOfType(1);
        unbindWorkspaceItemsOnMainThread();
    }

    void unbindWorkspaceItemsOnMainThread() {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        synchronized (sBgLock) {
            arrayList.addAll(sBgWorkspaceItems);
            arrayList2.addAll(sBgAppWidgets);
        }
        runOnMainThread(new Runnable() { // from class: com.android.launcher2.LauncherModel.1
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((ItemInfo) it.next()).unbind();
                }
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((ItemInfo) it2.next()).unbind();
                }
            }
        });
    }

    static void addOrMoveItemInDatabase(Context context, ItemInfo itemInfo, long j, int i, int i2, int i3) {
        if (itemInfo.container == -1) {
            addItemToDatabase(context, itemInfo, j, i, i2, i3, false);
        } else {
            moveItemInDatabase(context, itemInfo, j, i, i2, i3);
        }
    }

    static void checkItemInfoLocked(long j, ItemInfo itemInfo, StackTraceElement[] stackTraceElementArr) {
        ItemInfo itemInfo2 = sBgItemsIdMap.get(Long.valueOf(j));
        if (itemInfo2 == null || itemInfo == itemInfo2) {
            return;
        }
        if ((itemInfo2 instanceof ShortcutInfo) && (itemInfo instanceof ShortcutInfo)) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) itemInfo2;
            ShortcutInfo shortcutInfo2 = (ShortcutInfo) itemInfo;
            if (shortcutInfo.title.toString().equals(shortcutInfo2.title.toString()) && shortcutInfo.intent.filterEquals(shortcutInfo2.intent) && shortcutInfo.id == shortcutInfo2.id && shortcutInfo.itemType == shortcutInfo2.itemType && shortcutInfo.container == shortcutInfo2.container && shortcutInfo.screen == shortcutInfo2.screen && shortcutInfo.cellX == shortcutInfo2.cellX && shortcutInfo.cellY == shortcutInfo2.cellY && shortcutInfo.spanX == shortcutInfo2.spanX && shortcutInfo.spanY == shortcutInfo2.spanY) {
                if (shortcutInfo.dropPos == null && shortcutInfo2.dropPos == null) {
                    return;
                }
                if (shortcutInfo.dropPos != null && shortcutInfo2.dropPos != null && shortcutInfo.dropPos[0] == shortcutInfo2.dropPos[0] && shortcutInfo.dropPos[1] == shortcutInfo2.dropPos[1]) {
                    return;
                }
            }
        }
        RuntimeException runtimeException = new RuntimeException("item: " + (itemInfo != null ? itemInfo.toString() : "null") + "modelItem: " + (itemInfo2 != null ? itemInfo2.toString() : "null") + "Error: ItemInfo passed to checkItemInfo doesn't match original");
        if (stackTraceElementArr != null) {
            runtimeException.setStackTrace(stackTraceElementArr);
            throw runtimeException;
        }
        throw runtimeException;
    }

    static void checkItemInfo(final ItemInfo itemInfo) {
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        final long j = itemInfo.id;
        runOnWorkerThread(new Runnable() { // from class: com.android.launcher2.LauncherModel.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (LauncherModel.sBgLock) {
                    LauncherModel.checkItemInfoLocked(j, itemInfo, stackTrace);
                }
            }
        });
    }

    static void updateItemInDatabaseHelper(Context context, final ContentValues contentValues, final ItemInfo itemInfo, String str) {
        final long j = itemInfo.id;
        final Uri contentUri = LauncherSettings.Favorites.getContentUri(j, false);
        final ContentResolver contentResolver = context.getContentResolver();
        if (L.DEBUG) {
            L.d(TAG, "updateItemInDatabaseHelper values = " + contentValues + ", item = " + itemInfo);
        }
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        runOnWorkerThread(new Runnable() { // from class: com.android.launcher2.LauncherModel.3
            @Override // java.lang.Runnable
            public void run() {
                contentResolver.update(contentUri, contentValues, null, null);
                synchronized (LauncherModel.sBgLock) {
                    LauncherModel.checkItemInfoLocked(j, itemInfo, stackTrace);
                    if (itemInfo.container != -100 && itemInfo.container != -101 && !LauncherModel.sBgFolders.containsKey(Long.valueOf(itemInfo.container))) {
                        L.e(LauncherModel.TAG, "item: " + itemInfo + " container being set to: " + itemInfo.container + ", not in the list of folders");
                        Launcher.dumpDebugLogsToConsole();
                    }
                    ItemInfo itemInfo2 = LauncherModel.sBgItemsIdMap.get(Long.valueOf(j));
                    if (itemInfo2.container == -100 || itemInfo2.container == -101) {
                        int i = itemInfo2.itemType;
                        if ((i == 0 || i == 1 || i == 2) && !LauncherModel.sBgWorkspaceItems.contains(itemInfo2)) {
                            LauncherModel.sBgWorkspaceItems.add(itemInfo2);
                        }
                    } else {
                        LauncherModel.sBgWorkspaceItems.remove(itemInfo2);
                    }
                }
            }
        });
    }

    static void moveItemInDatabase(Context context, ItemInfo itemInfo, long j, int i, int i2, int i3) {
        String str = "DbDebug    Modify item (" + ((Object) itemInfo.title) + ") in db, id: " + itemInfo.id + " (" + itemInfo.container + ", " + itemInfo.screen + ", " + itemInfo.cellX + ", " + itemInfo.cellY + ") --> (" + j + ", " + i + ", " + i2 + ", " + i3 + ")";
        Launcher.sDumpLogs.add(str);
        L.d(TAG, str);
        if (L.DEBUG) {
            L.d(TAG, "moveItemInDatabase: item = " + itemInfo + ", container = " + j + ", screen = " + i + ", cellX = " + i2 + ", cellY = " + i3 + ", context = " + context);
        }
        itemInfo.container = j;
        itemInfo.cellX = i2;
        itemInfo.cellY = i3;
        if ((context instanceof Launcher) && i < 0 && j == -101) {
            itemInfo.screen = ((Launcher) context).getHotseat().getOrderInHotseat(i2, i3);
        } else {
            itemInfo.screen = i;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("container", Long.valueOf(itemInfo.container));
        contentValues.put("cellX", Integer.valueOf(itemInfo.cellX));
        contentValues.put("cellY", Integer.valueOf(itemInfo.cellY));
        contentValues.put("screen", Integer.valueOf(itemInfo.screen));
        updateItemInDatabaseHelper(context, contentValues, itemInfo, "moveItemInDatabase");
    }

    static void modifyItemInDatabase(Context context, ItemInfo itemInfo, long j, int i, int i2, int i3, int i4, int i5) {
        String str = "DbDebug    Modify item (" + ((Object) itemInfo.title) + ") in db, id: " + itemInfo.id + " (" + itemInfo.container + ", " + itemInfo.screen + ", " + itemInfo.cellX + ", " + itemInfo.cellY + ") --> (" + j + ", " + i + ", " + i2 + ", " + i3 + ")";
        Launcher.sDumpLogs.add(str);
        L.d(TAG, str);
        if (L.DEBUG) {
            L.d(TAG, "modifyItemInDatabase: item = " + itemInfo + ", container = " + j + ", screen = " + i + ", cellX = " + i2 + ", cellY = " + i3 + ", spanX = " + i4 + ", spanY = " + i5);
        }
        itemInfo.cellX = i2;
        itemInfo.cellY = i3;
        itemInfo.spanX = i4;
        itemInfo.spanY = i5;
        if ((context instanceof Launcher) && i < 0 && j == -101) {
            itemInfo.screen = ((Launcher) context).getHotseat().getOrderInHotseat(i2, i3);
        } else {
            itemInfo.screen = i;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("container", Long.valueOf(itemInfo.container));
        contentValues.put("cellX", Integer.valueOf(itemInfo.cellX));
        contentValues.put("cellY", Integer.valueOf(itemInfo.cellY));
        contentValues.put("spanX", Integer.valueOf(itemInfo.spanX));
        contentValues.put("spanY", Integer.valueOf(itemInfo.spanY));
        contentValues.put("screen", Integer.valueOf(itemInfo.screen));
        updateItemInDatabaseHelper(context, contentValues, itemInfo, "modifyItemInDatabase");
    }

    static void updateItemInDatabase(Context context, ItemInfo itemInfo) {
        if (L.DEBUG) {
            L.d(TAG, "updateItemInDatabase: item = " + itemInfo);
        }
        ContentValues contentValues = new ContentValues();
        itemInfo.onAddToDatabase(contentValues);
        itemInfo.updateValuesWithCoordinates(contentValues, itemInfo.cellX, itemInfo.cellY);
        updateItemInDatabaseHelper(context, contentValues, itemInfo, "updateItemInDatabase");
    }

    static boolean shortcutExists(Context context, String str, Intent intent) {
        intent.addFlags(270532608);
        Cursor cursorQuery = context.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, new String[]{"title", LauncherSettings.BaseLauncherColumns.INTENT}, "title=? and intent=?", new String[]{str, intent.toUri(0)}, null);
        try {
            return cursorQuery.moveToFirst();
        } finally {
            cursorQuery.close();
        }
    }

    static ArrayList<ItemInfo> getItemsInLocalCoordinates(Context context) {
        ArrayList<ItemInfo> arrayList = new ArrayList<>();
        Cursor cursorQuery = context.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, new String[]{LauncherSettings.BaseLauncherColumns.ITEM_TYPE, "container", "screen", "cellX", "cellY", "spanX", "spanY"}, null, null, null);
        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ITEM_TYPE);
        int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("container");
        int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("screen");
        int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow("cellX");
        int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow("cellY");
        int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow("spanX");
        int columnIndexOrThrow7 = cursorQuery.getColumnIndexOrThrow("spanY");
        while (cursorQuery.moveToNext()) {
            try {
                try {
                    ItemInfo itemInfo = new ItemInfo();
                    itemInfo.cellX = cursorQuery.getInt(columnIndexOrThrow4);
                    itemInfo.cellY = cursorQuery.getInt(columnIndexOrThrow5);
                    itemInfo.spanX = cursorQuery.getInt(columnIndexOrThrow6);
                    itemInfo.spanY = cursorQuery.getInt(columnIndexOrThrow7);
                    itemInfo.container = cursorQuery.getInt(columnIndexOrThrow2);
                    itemInfo.itemType = cursorQuery.getInt(columnIndexOrThrow);
                    itemInfo.screen = cursorQuery.getInt(columnIndexOrThrow3);
                    arrayList.add(itemInfo);
                } catch (Exception unused) {
                    arrayList.clear();
                }
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    FolderInfo getFolderById(Context context, HashMap<Long, FolderInfo> map, long j) {
        Cursor cursorQuery = context.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, null, "_id=? and (itemType=? or itemType=?)", new String[]{String.valueOf(j), String.valueOf(2)}, null);
        try {
            FolderInfo folderInfoFindOrMakeFolder = null;
            if (!cursorQuery.moveToFirst()) {
                return null;
            }
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ITEM_TYPE);
            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("title");
            int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("container");
            int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow("screen");
            int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow("cellX");
            int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow("cellY");
            if (cursorQuery.getInt(columnIndexOrThrow) == 2) {
                folderInfoFindOrMakeFolder = findOrMakeFolder(map, j);
            }
            folderInfoFindOrMakeFolder.title = cursorQuery.getString(columnIndexOrThrow2);
            folderInfoFindOrMakeFolder.id = j;
            folderInfoFindOrMakeFolder.container = cursorQuery.getInt(columnIndexOrThrow3);
            folderInfoFindOrMakeFolder.screen = cursorQuery.getInt(columnIndexOrThrow4);
            folderInfoFindOrMakeFolder.cellX = cursorQuery.getInt(columnIndexOrThrow5);
            folderInfoFindOrMakeFolder.cellY = cursorQuery.getInt(columnIndexOrThrow6);
            return folderInfoFindOrMakeFolder;
        } finally {
            cursorQuery.close();
        }
    }

    static void addItemToDatabase(Context context, final ItemInfo itemInfo, final long j, final int i, final int i2, final int i3, final boolean z) {
        if (L.DEBUG) {
            L.d(TAG, "addItemToDatabase item = " + itemInfo + ", container = " + j + ", screen = " + i + ", cellX " + i2 + ", cellY = " + i3 + ", notify = " + z);
        }
        itemInfo.container = j;
        itemInfo.cellX = i2;
        itemInfo.cellY = i3;
        if ((context instanceof Launcher) && i < 0 && j == -101) {
            itemInfo.screen = ((Launcher) context).getHotseat().getOrderInHotseat(i2, i3);
        } else {
            itemInfo.screen = i;
        }
        final ContentValues contentValues = new ContentValues();
        final ContentResolver contentResolver = context.getContentResolver();
        itemInfo.onAddToDatabase(contentValues);
        itemInfo.id = ((LauncherApplication) context.getApplicationContext()).getLauncherProvider().generateNewId();
        contentValues.put("_id", Long.valueOf(itemInfo.id));
        itemInfo.updateValuesWithCoordinates(contentValues, itemInfo.cellX, itemInfo.cellY);
        runOnWorkerThread(new Runnable() { // from class: com.android.launcher2.LauncherModel.4
            /* JADX WARN: Code duplicated, block: B:32:0x0150 A[Catch: all -> 0x0159, TryCatch #0 {, blocks: (B:8:0x0078, B:10:0x0095, B:11:0x00bd, B:33:0x0157, B:20:0x00ce, B:22:0x00db, B:23:0x00f6, B:24:0x0107, B:26:0x0111, B:29:0x011c, B:31:0x012c, B:32:0x0150), top: B:38:0x0078 }] */
            @Override // java.lang.Runnable
            public void run() {
                String str = "DbDebug    Add item (" + ((Object) itemInfo.title) + ") to db, id: " + itemInfo.id + " (" + j + ", " + i + ", " + i2 + ", " + i3 + ")";
                Launcher.sDumpLogs.add(str);
                L.d(LauncherModel.TAG, str);
                contentResolver.insert(z ? LauncherSettings.Favorites.CONTENT_URI : LauncherSettings.Favorites.CONTENT_URI_NO_NOTIFICATION, contentValues);
                synchronized (LauncherModel.sBgLock) {
                    LauncherModel.checkItemInfoLocked(itemInfo.id, itemInfo, null);
                    LauncherModel.sBgItemsIdMap.put(Long.valueOf(itemInfo.id), itemInfo);
                    if (L.DEBUG) {
                        L.d(LauncherModel.TAG, "addItemToDatabase sBgItemsIdMap.put = " + itemInfo.id + ", item = " + itemInfo);
                    }
                    int i4 = itemInfo.itemType;
                    if (i4 == 0 || i4 == 1) {
                        if (itemInfo.container != -100 || itemInfo.container == -101) {
                            LauncherModel.sBgWorkspaceItems.add(itemInfo);
                        } else if (!LauncherModel.sBgFolders.containsKey(Long.valueOf(itemInfo.container))) {
                            L.e(LauncherModel.TAG, "adding item: " + itemInfo + " to a folder that  doesn't exist");
                            Launcher.dumpDebugLogsToConsole();
                        }
                    } else if (i4 == 2) {
                        LauncherModel.sBgFolders.put(Long.valueOf(itemInfo.id), (FolderInfo) itemInfo);
                        if (itemInfo.container != -100) {
                            LauncherModel.sBgWorkspaceItems.add(itemInfo);
                        } else {
                            LauncherModel.sBgWorkspaceItems.add(itemInfo);
                        }
                    } else if (i4 == 4) {
                        LauncherModel.sBgAppWidgets.add((LauncherAppWidgetInfo) itemInfo);
                        if (L.DEBUG) {
                            L.d(LauncherModel.TAG, "addItemToDatabase sAppWidgets.add = " + itemInfo);
                        }
                    }
                }
            }
        });
    }

    static int getCellCountX() {
        return mCellCountX;
    }

    static int getCellCountY() {
        return mCellCountY;
    }

    static void updateWorkspaceLayoutCells(int i, int i2) {
        mCellCountX = i;
        mCellCountY = i2;
    }

    static void deleteItemFromDatabase(Context context, final ItemInfo itemInfo) {
        if (L.DEBUG) {
            L.d(TAG, "deleteItemFromDatabase item = " + itemInfo);
        }
        final ContentResolver contentResolver = context.getContentResolver();
        final Uri contentUri = LauncherSettings.Favorites.getContentUri(itemInfo.id, false);
        runOnWorkerThread(new Runnable() { // from class: com.android.launcher2.LauncherModel.5
            @Override // java.lang.Runnable
            public void run() {
                String str = "DbDebug    Delete item (" + ((Object) itemInfo.title) + ") from db, id: " + itemInfo.id + " (" + itemInfo.container + ", " + itemInfo.screen + ", " + itemInfo.cellX + ", " + itemInfo.cellY + ")";
                Launcher.sDumpLogs.add(str);
                L.d(LauncherModel.TAG, str);
                contentResolver.delete(contentUri, null, null);
                synchronized (LauncherModel.sBgLock) {
                    int i = itemInfo.itemType;
                    if (i == 0 || i == 1) {
                        LauncherModel.sBgWorkspaceItems.remove(itemInfo);
                    } else if (i == 2) {
                        LauncherModel.sBgFolders.remove(Long.valueOf(itemInfo.id));
                        for (ItemInfo itemInfo2 : LauncherModel.sBgItemsIdMap.values()) {
                            if (itemInfo2.container == itemInfo.id) {
                                L.e(LauncherModel.TAG, "deleting a folder (" + itemInfo + ") which still contains items (" + itemInfo2 + ")");
                                Launcher.dumpDebugLogsToConsole();
                            }
                        }
                        LauncherModel.sBgWorkspaceItems.remove(itemInfo);
                    } else if (i == 4) {
                        LauncherModel.sBgAppWidgets.remove((LauncherAppWidgetInfo) itemInfo);
                    }
                    LauncherModel.sBgItemsIdMap.remove(Long.valueOf(itemInfo.id));
                    LauncherModel.sBgDbIconCache.remove(itemInfo);
                }
                if (L.DEBUG) {
                    L.d(LauncherModel.TAG, "deleteItemFromDatabase sAppWidgets.remove = " + itemInfo + ", sItemsIdMap.remove = " + itemInfo.id);
                }
            }
        });
    }

    static void deleteFolderContentsFromDatabase(Context context, final FolderInfo folderInfo) {
        if (L.DEBUG) {
            L.d(TAG, "deleteFolderContentsFromDatabase info = " + folderInfo);
        }
        final ContentResolver contentResolver = context.getContentResolver();
        runOnWorkerThread(new Runnable() { // from class: com.android.launcher2.LauncherModel.6
            @Override // java.lang.Runnable
            public void run() {
                contentResolver.delete(LauncherSettings.Favorites.getContentUri(folderInfo.id, false), null, null);
                synchronized (LauncherModel.sBgLock) {
                    LauncherModel.sBgItemsIdMap.remove(Long.valueOf(folderInfo.id));
                    LauncherModel.sBgFolders.remove(Long.valueOf(folderInfo.id));
                    LauncherModel.sBgDbIconCache.remove(folderInfo);
                    LauncherModel.sBgWorkspaceItems.remove(folderInfo);
                    if (L.DEBUG) {
                        L.d(LauncherModel.TAG, "deleteFolderContentsFromDatabase sBgItemsIdMap.remove = " + folderInfo.id);
                    }
                }
                contentResolver.delete(LauncherSettings.Favorites.CONTENT_URI_NO_NOTIFICATION, "container=" + folderInfo.id, null);
                synchronized (LauncherModel.sBgLock) {
                    for (ShortcutInfo shortcutInfo : folderInfo.contents) {
                        LauncherModel.sBgItemsIdMap.remove(Long.valueOf(shortcutInfo.id));
                        LauncherModel.sBgDbIconCache.remove(shortcutInfo);
                        if (L.DEBUG) {
                            L.d(LauncherModel.TAG, "deleteFolderContentsFromDatabase sItemsIdMap.remove = " + shortcutInfo.id);
                        }
                    }
                }
            }
        });
    }

    public void initialize(Callbacks callbacks) {
        synchronized (this.mLock) {
            this.mCallbacks = new WeakReference<>(callbacks);
        }
    }

    /* JADX WARN: Code duplicated, block: B:62:0x017c  */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Callbacks callbacks;
        Callbacks callbacks2;
        L.d(TAG, "onReceive intent=" + intent);
        String action = intent.getAction();
        if ("android.intent.action.PACKAGE_CHANGED".equals(action) || "android.intent.action.PACKAGE_REMOVED".equals(action) || "android.intent.action.PACKAGE_ADDED".equals(action)) {
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
            if (schemeSpecificPart == null || schemeSpecificPart.length() == 0) {
                return;
            }
            int i = 2;
            if (!"android.intent.action.PACKAGE_CHANGED".equals(action)) {
                if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                    if (booleanExtra) {
                        i = 0;
                    } else {
                        i = 3;
                    }
                } else if (!"android.intent.action.PACKAGE_ADDED".equals(action)) {
                    i = 0;
                } else if (!booleanExtra) {
                    i = 1;
                }
            }
            if (i != 0) {
                enqueuePackageUpdated(new PackageUpdatedTask(i, new String[]{schemeSpecificPart}));
                return;
            }
            return;
        }
        if ("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE".equals(action)) {
            enqueuePackageUpdated(new PackageUpdatedTask(1, intent.getStringArrayExtra("android.intent.extra.changed_package_list")));
            startLoaderFromBackground();
            return;
        }
        if ("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE".equals(action)) {
            enqueuePackageUpdated(new PackageUpdatedTask(4, intent.getStringArrayExtra("android.intent.extra.changed_package_list")));
            return;
        }
        if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
            L.d(TAG, "LOCALE_CHANGED: config = " + context.getResources().getConfiguration());
            forceReload();
            return;
        }
        if ("android.intent.action.CONFIGURATION_CHANGED".equals(action)) {
            Configuration configuration = context.getResources().getConfiguration();
            if (this.mPreviousConfigMcc != configuration.mcc || this.mPreviousConfigMnc != configuration.mnc) {
                L.d(TAG, "Reload apps on config change. curr_mcc:" + configuration.mcc + ", prevmcc:" + this.mPreviousConfigMcc + ",mPreviousConfigMnc = " + this.mPreviousConfigMnc + ",currentConfig.mnc = " + configuration.mnc + ", currentConfig = " + configuration);
                forceReload();
            }
            this.mPreviousConfigMcc = configuration.mcc;
            this.mPreviousConfigMnc = configuration.mnc;
            if (this.mPreviousOrientation != configuration.orientation) {
                WeakReference<Callbacks> weakReference = this.mCallbacks;
                if (weakReference != null && (callbacks2 = weakReference.get()) != null) {
                    callbacks2.notifyOrientationChanged();
                }
                this.mPreviousOrientation = configuration.orientation;
                return;
            }
            return;
        }
        if ("android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED".equals(action) || "android.search.action.SEARCHABLES_CHANGED".equals(action) || !ACTION_SWITCH_SCENE.equals(action)) {
            return;
        }
        WeakReference<Callbacks> weakReference2 = this.mCallbacks;
        if (weakReference2 != null && (callbacks = weakReference2.get()) != null) {
            callbacks.switchScene();
        }
        updateDatabaseAndSetWallpaper();
    }

    void forceReload() {
        resetLoadedState(true, true);
        L.d(TAG, "forceReload: mLoaderTask =" + this.mLoaderTask + ", mAllAppsLoaded = " + this.mAllAppsLoaded + ", mWorkspaceLoaded = " + this.mWorkspaceLoaded + ", this = " + this);
        startLoaderFromBackground();
    }

    public void resetLoadedState(boolean z, boolean z2) {
        synchronized (this.mLock) {
            if (L.DEBUG_LOADER) {
                L.d(TAG, "resetLoadedState: mLoaderTask =" + this.mLoaderTask + ", this = " + this);
            }
            stopLoaderLocked();
            if (z) {
                this.mAllAppsLoaded = false;
            }
            if (z2) {
                this.mWorkspaceLoaded = false;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0085  */
    public void startLoaderFromBackground() {
        boolean z;
        if (L.DEBUG) {
            L.d(TAG, "startLoaderFromBackground: mCallbacks = " + this.mCallbacks + ", this = " + this);
        }
        WeakReference<Callbacks> weakReference = this.mCallbacks;
        if (weakReference != null) {
            Callbacks callbacks = weakReference.get();
            if (L.DEBUG) {
                L.d(TAG, "startLoaderFromBackground: callbacks = " + callbacks + ", this = " + this);
            }
            if (callbacks == null) {
                z = false;
            } else {
                if (L.DEBUG) {
                    L.d(TAG, "startLoaderFromBackground: callbacks.setLoadOnResume() = " + callbacks.setLoadOnResume() + ", this = " + this);
                }
                if (callbacks.setLoadOnResume()) {
                    z = false;
                } else {
                    z = true;
                }
            }
        } else {
            z = false;
        }
        if (z) {
            startLoader(false, -1);
        }
    }

    private boolean stopLoaderLocked() {
        boolean zIsLaunching;
        LoaderTask loaderTask = this.mLoaderTask;
        if (loaderTask != null) {
            zIsLaunching = loaderTask.isLaunching();
            loaderTask.stopLocked();
        } else {
            zIsLaunching = false;
        }
        L.d(TAG, "stopLoaderLocked: mLoaderTask =" + this.mLoaderTask + ", isLaunching = " + zIsLaunching + ", this = " + this);
        return zIsLaunching;
    }

    public void startLoader(boolean z, int i) {
        synchronized (this.mLock) {
            L.d(TAG, "startLoader: isLaunching=" + z + ", mCallbacks = " + this.mCallbacks);
            mDeferredBindRunnables.clear();
            WeakReference<Callbacks> weakReference = this.mCallbacks;
            if (weakReference != null && weakReference.get() != null) {
                boolean z2 = z || stopLoaderLocked();
                AllAppsList.loadTopPackage(this.mApp);
                this.mLoaderTask = new LoaderTask(this.mApp, z2);
                if (L.DEBUG) {
                    L.d(TAG, "startLoader: mAllAppsLoaded = " + this.mAllAppsLoaded + ",mWorkspaceLoaded = " + this.mWorkspaceLoaded + ",synchronousBindPage = " + i + ",mIsLoaderTaskRunning = " + this.mIsLoaderTaskRunning + ",mLoaderTask = " + this.mLoaderTask, new Throwable("startLoader"));
                }
                if (i > -1 && this.mAllAppsLoaded && this.mWorkspaceLoaded && !this.mIsLoaderTaskRunning) {
                    this.mLoaderTask.runBindSynchronousPage(i);
                } else {
                    sWorkerThread.setPriority(5);
                    sWorker.post(this.mLoaderTask);
                }
            }
        }
    }

    void bindRemainingSynchronousPages() {
        ArrayList<Runnable> arrayList = mDeferredBindRunnables;
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator<Runnable> it = arrayList.iterator();
        while (it.hasNext()) {
            this.mHandler.post(it.next(), 1);
        }
        mDeferredBindRunnables.clear();
    }

    public void stopLoader() {
        synchronized (this.mLock) {
            if (this.mLoaderTask != null) {
                if (L.DEBUG) {
                    L.d(TAG, "stopLoader: mLoaderTask = " + this.mLoaderTask + ",mIsLoaderTaskRunning = " + this.mIsLoaderTaskRunning);
                }
                this.mLoaderTask.stopLocked();
            }
        }
    }

    public boolean isAllAppsLoaded() {
        return this.mAllAppsLoaded;
    }

    boolean isLoadingWorkspace() {
        synchronized (this.mLock) {
            LoaderTask loaderTask = this.mLoaderTask;
            if (loaderTask == null) {
                return false;
            }
            return loaderTask.isLoadingWorkspace();
        }
    }

    private class LoaderTask implements Runnable {
        private Context mContext;
        private boolean mIsLaunching;
        private boolean mIsLoadingAndBindingWorkspace;
        private HashMap<Object, CharSequence> mLabelCache = new HashMap<>();
        private boolean mLoadAndBindStepFinished;
        private boolean mStopped;

        LoaderTask(Context context, boolean z) {
            this.mContext = context;
            this.mIsLaunching = z;
            L.d(LauncherModel.TAG, "LoaderTask construct: mLabelCache = " + this.mLabelCache + ", mIsLaunching = " + this.mIsLaunching + ", this = " + this);
        }

        boolean isLaunching() {
            return this.mIsLaunching;
        }

        boolean isLoadingWorkspace() {
            return this.mIsLoadingAndBindingWorkspace;
        }

        private void loadAndBindWorkspace() {
            this.mIsLoadingAndBindingWorkspace = true;
            L.d(LauncherModel.TAG, "loadAndBindWorkspace mWorkspaceLoaded=" + LauncherModel.this.mWorkspaceLoaded);
            if (!LauncherModel.this.mWorkspaceLoaded) {
                loadWorkspace();
                synchronized (this) {
                    if (!this.mStopped) {
                        LauncherModel.this.mWorkspaceLoaded = true;
                    } else {
                        L.d(LauncherModel.TAG, "loadAndBindWorkspace returned by stop flag.");
                        return;
                    }
                }
            }
            bindWorkspace(-1);
        }

        private void waitForIdle() {
            synchronized (this) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                L.d(LauncherModel.TAG, "waitForIdle start, workspaceWaitTime : " + jUptimeMillis + "ms, Thread priority :" + Thread.currentThread().getPriority() + ", this = " + this);
                LauncherModel.this.mHandler.postIdle(new Runnable() { // from class: com.android.launcher2.LauncherModel.LoaderTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (LoaderTask.this) {
                            LoaderTask.this.mLoadAndBindStepFinished = true;
                            L.d(LauncherModel.TAG, "done with previous binding step");
                            LoaderTask.this.notify();
                        }
                    }
                });
                while (!this.mStopped && !this.mLoadAndBindStepFinished) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                }
                L.d(LauncherModel.TAG, "waited " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms for previous step to finish binding, mStopped = " + this.mStopped + ",mLoadAndBindStepFinished = " + this.mLoadAndBindStepFinished);
            }
        }

        void runBindSynchronousPage(int i) {
            if (L.DEBUG) {
                L.d(LauncherModel.TAG, "runBindSynchronousPage: mAllAppsLoaded = " + LauncherModel.this.mAllAppsLoaded + ",mWorkspaceLoaded = " + LauncherModel.this.mWorkspaceLoaded + ",synchronousBindPage = " + i + ",mIsLoaderTaskRunning = " + LauncherModel.this.mIsLoaderTaskRunning + ",mStopped = " + this.mStopped + ",this = " + this);
            }
            if (i >= 0) {
                if (LauncherModel.this.mAllAppsLoaded && LauncherModel.this.mWorkspaceLoaded) {
                    synchronized (LauncherModel.this.mLock) {
                        if (LauncherModel.this.mIsLoaderTaskRunning) {
                            throw new RuntimeException("Error! Background loading is already running");
                        }
                    }
                    LauncherModel.this.mHandler.flush();
                    bindWorkspace(i);
                    onlyBindAllApps();
                    return;
                }
                throw new RuntimeException("Expecting AllApps and Workspace to be loaded");
            }
            throw new RuntimeException("Should not call runBindSynchronousPage() without valid page index");
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            synchronized (LauncherModel.this.mLock) {
                L.d(LauncherModel.TAG, "Set load task running flag >>>>, mIsLaunching = " + this.mIsLaunching + ",this = " + this);
                z = true;
                LauncherModel.this.mIsLoaderTaskRunning = true;
            }
            Callbacks callbacks = (Callbacks) LauncherModel.this.mCallbacks.get();
            if (callbacks != null && callbacks.isAllAppsVisible()) {
                z = false;
            }
            synchronized (LauncherModel.this.mLock) {
                L.d(LauncherModel.TAG, "Setting thread priority to " + (this.mIsLaunching ? "DEFAULT" : "BACKGROUND"));
                Process.setThreadPriority(this.mIsLaunching ? 0 : 10);
            }
            if (z) {
                L.d(LauncherModel.TAG, "step 1: loading workspace this = " + this);
                loadAndBindWorkspace();
            } else {
                L.d(LauncherModel.TAG, "step 1: special: loading all apps this = " + this);
                loadAndBindAllApps();
            }
            if (!this.mStopped) {
                synchronized (LauncherModel.this.mLock) {
                    if (this.mIsLaunching) {
                        L.d(LauncherModel.TAG, "Setting thread priority to BACKGROUND");
                        Process.setThreadPriority(10);
                    }
                }
                waitForIdle();
                if (z) {
                    L.d(LauncherModel.TAG, "step 2: loading all apps this = " + this);
                    loadAndBindAllApps();
                } else {
                    L.d(LauncherModel.TAG, "step 2: special: loading workspace this = " + this);
                    loadAndBindWorkspace();
                }
                synchronized (LauncherModel.this.mLock) {
                    Process.setThreadPriority(0);
                }
            } else {
                L.i(LauncherModel.TAG, "LoadTask break in the middle, this = " + this);
            }
            L.d(LauncherModel.TAG, "Comparing loaded icons to database icons");
            synchronized (LauncherModel.sBgLock) {
                for (Object obj : LauncherModel.sBgDbIconCache.keySet()) {
                    LauncherModel.this.updateSavedIcon(this.mContext, (ShortcutInfo) obj, LauncherModel.sBgDbIconCache.get(obj));
                }
                LauncherModel.sBgDbIconCache.clear();
            }
            this.mContext = null;
            synchronized (LauncherModel.this.mLock) {
                if (LauncherModel.this.mLoaderTask == this) {
                    LauncherModel.this.mLoaderTask = null;
                }
                L.d(LauncherModel.TAG, "Reset load task running flag <<<<, this = " + this);
                LauncherModel.this.mIsLoaderTaskRunning = false;
            }
        }

        public void stopLocked() {
            synchronized (this) {
                this.mStopped = true;
                notify();
            }
            L.d(LauncherModel.TAG, "stopLocked completed, this = " + this + ", mLoaderTask = " + LauncherModel.this.mLoaderTask + ",mIsLoaderTaskRunning = " + LauncherModel.this.mIsLoaderTaskRunning);
        }

        Callbacks tryGetCallbacks(Callbacks callbacks) {
            synchronized (LauncherModel.this.mLock) {
                if (!this.mStopped) {
                    if (LauncherModel.this.mCallbacks == null) {
                        return null;
                    }
                    Callbacks callbacks2 = (Callbacks) LauncherModel.this.mCallbacks.get();
                    if (callbacks2 != callbacks) {
                        return null;
                    }
                    if (callbacks2 != null) {
                        return callbacks2;
                    }
                    L.w(LauncherModel.TAG, "no mCallbacks");
                    return null;
                }
                L.i(LauncherModel.TAG, "tryGetCallbacks returned null by stop flag.");
                return null;
            }
        }

        private boolean checkItemPlacement(ItemInfo[][][] itemInfoArr, ItemInfo itemInfo) {
            int i = itemInfo.screen;
            if (itemInfo.container == -101) {
                if (LauncherModel.this.mCallbacks == null || ((Callbacks) LauncherModel.this.mCallbacks.get()).isAllAppsButtonRank(itemInfo.screen)) {
                    return false;
                }
                if (itemInfoArr[2][itemInfo.screen][0] != null) {
                    L.e(LauncherModel.TAG, "Error loading shortcut into hotseat " + itemInfo + " into position (" + itemInfo.screen + ":" + itemInfo.cellX + "," + itemInfo.cellY + ") occupied by " + itemInfoArr[2][itemInfo.screen][0]);
                    return false;
                }
                itemInfoArr[2][itemInfo.screen][0] = itemInfo;
                return true;
            }
            if (itemInfo.container != -100) {
                return true;
            }
            for (int i2 = itemInfo.cellX; i2 < itemInfo.cellX + itemInfo.spanX; i2++) {
                for (int i3 = itemInfo.cellY; i3 < itemInfo.cellY + itemInfo.spanY; i3++) {
                    if (itemInfoArr[i][i2][i3] != null) {
                        L.e(LauncherModel.TAG, "Error loading shortcut " + itemInfo + " into cell (" + i + "-" + itemInfo.screen + ":" + i2 + "," + i3 + ") occupied by " + itemInfoArr[i][i2][i3]);
                        return false;
                    }
                }
            }
            for (int i4 = itemInfo.cellX; i4 < itemInfo.cellX + itemInfo.spanX; i4++) {
                for (int i5 = itemInfo.cellY; i5 < itemInfo.cellY + itemInfo.spanY; i5++) {
                    itemInfoArr[i][i4][i5] = itemInfo;
                }
            }
            return true;
        }

        /*  JADX ERROR: Type inference failed
            jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 15791. Try increasing type updates limit count.
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
            */
        private void loadWorkspace() {
            /*
                Method dump skipped, instruction units count: 1579
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher2.LauncherModel.LoaderTask.loadWorkspace():void");
        }

        private void filterCurrentWorkspaceItems(int i, ArrayList<ItemInfo> arrayList, ArrayList<ItemInfo> arrayList2, ArrayList<ItemInfo> arrayList3) {
            Iterator<ItemInfo> it = arrayList.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    it.remove();
                }
            }
            if (i < 0) {
                arrayList2.addAll(arrayList);
            }
            HashSet hashSet = new HashSet();
            Collections.sort(arrayList, new Comparator<ItemInfo>() { // from class: com.android.launcher2.LauncherModel.LoaderTask.2
                @Override // java.util.Comparator
                public int compare(ItemInfo itemInfo, ItemInfo itemInfo2) {
                    return (int) (itemInfo.container - itemInfo2.container);
                }
            });
            for (ItemInfo itemInfo : arrayList) {
                if (itemInfo.container == -100) {
                    if (itemInfo.screen == i) {
                        arrayList2.add(itemInfo);
                        hashSet.add(Long.valueOf(itemInfo.id));
                    } else {
                        arrayList3.add(itemInfo);
                    }
                } else if (itemInfo.container == -101) {
                    arrayList2.add(itemInfo);
                    hashSet.add(Long.valueOf(itemInfo.id));
                } else if (hashSet.contains(Long.valueOf(itemInfo.container))) {
                    arrayList2.add(itemInfo);
                    hashSet.add(Long.valueOf(itemInfo.id));
                } else {
                    arrayList3.add(itemInfo);
                }
            }
        }

        private void filterCurrentAppWidgets(int i, ArrayList<LauncherAppWidgetInfo> arrayList, ArrayList<LauncherAppWidgetInfo> arrayList2, ArrayList<LauncherAppWidgetInfo> arrayList3) {
            if (i < 0) {
                arrayList2.addAll(arrayList);
            }
            for (LauncherAppWidgetInfo launcherAppWidgetInfo : arrayList) {
                if (launcherAppWidgetInfo != null) {
                    if (launcherAppWidgetInfo.container == -100 && launcherAppWidgetInfo.screen == i) {
                        arrayList2.add(launcherAppWidgetInfo);
                    } else {
                        arrayList3.add(launcherAppWidgetInfo);
                    }
                }
            }
        }

        private void filterCurrentFolders(int i, HashMap<Long, ItemInfo> map, HashMap<Long, FolderInfo> map2, HashMap<Long, FolderInfo> map3, HashMap<Long, FolderInfo> map4) {
            if (i < 0) {
                map3.putAll(map2);
            }
            Iterator<Long> it = map2.keySet().iterator();
            while (it.hasNext()) {
                long jLongValue = it.next().longValue();
                ItemInfo itemInfo = map.get(Long.valueOf(jLongValue));
                FolderInfo folderInfo = map2.get(Long.valueOf(jLongValue));
                if (itemInfo != null && folderInfo != null) {
                    if (itemInfo.container == -100 && itemInfo.screen == i) {
                        map3.put(Long.valueOf(jLongValue), folderInfo);
                    } else {
                        map4.put(Long.valueOf(jLongValue), folderInfo);
                    }
                }
            }
        }

        private void sortWorkspaceItemsSpatially(ArrayList<ItemInfo> arrayList) {
            Collections.sort(arrayList, new Comparator<ItemInfo>() { // from class: com.android.launcher2.LauncherModel.LoaderTask.3
                @Override // java.util.Comparator
                public int compare(ItemInfo itemInfo, ItemInfo itemInfo2) {
                    int cellCountX = LauncherModel.getCellCountX();
                    int cellCountY = LauncherModel.getCellCountY() * cellCountX;
                    long j = cellCountY * 3;
                    return (int) (((((itemInfo.container * j) + ((long) (itemInfo.screen * cellCountY))) + ((long) (itemInfo.cellY * cellCountX))) + ((long) itemInfo.cellX)) - ((((itemInfo2.container * j) + ((long) (itemInfo2.screen * cellCountY))) + ((long) (itemInfo2.cellY * cellCountX))) + ((long) itemInfo2.cellX)));
                }
            });
        }

        private void bindWorkspaceItems(final Callbacks callbacks, final ArrayList<ItemInfo> arrayList, ArrayList<LauncherAppWidgetInfo> arrayList2, final HashMap<Long, FolderInfo> map, ArrayList<Runnable> arrayList3) {
            boolean z = arrayList3 != null;
            int size = arrayList.size();
            final int i = 0;
            while (i < size) {
                int i2 = i + 4;
                final int i3 = i2 <= size ? 4 : size - i;
                Runnable runnable = new Runnable() { // from class: com.android.launcher2.LauncherModel.LoaderTask.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacksTryGetCallbacks = LoaderTask.this.tryGetCallbacks(callbacks);
                        if (callbacksTryGetCallbacks != null) {
                            ArrayList<ItemInfo> arrayList4 = arrayList;
                            int i4 = i;
                            callbacksTryGetCallbacks.bindItems(arrayList4, i4, i3 + i4);
                        }
                    }
                };
                if (!z) {
                    LauncherModel.this.runOnMainThread(runnable, 1);
                } else {
                    arrayList3.add(runnable);
                }
                i = i2;
            }
            if (!map.isEmpty()) {
                Runnable runnable2 = new Runnable() { // from class: com.android.launcher2.LauncherModel.LoaderTask.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacksTryGetCallbacks = LoaderTask.this.tryGetCallbacks(callbacks);
                        if (callbacksTryGetCallbacks != null) {
                            callbacksTryGetCallbacks.bindFolders(map);
                        }
                    }
                };
                if (!z) {
                    LauncherModel.this.runOnMainThread(runnable2, 1);
                } else {
                    arrayList3.add(runnable2);
                }
            }
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                final LauncherAppWidgetInfo launcherAppWidgetInfo = arrayList2.get(i4);
                Runnable runnable3 = new Runnable() { // from class: com.android.launcher2.LauncherModel.LoaderTask.6
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacksTryGetCallbacks = LoaderTask.this.tryGetCallbacks(callbacks);
                        if (callbacksTryGetCallbacks != null) {
                            callbacksTryGetCallbacks.bindAppWidget(launcherAppWidgetInfo);
                        }
                    }
                };
                if (!z) {
                    LauncherModel.this.runOnMainThread(runnable3, 1);
                } else {
                    arrayList3.add(runnable3);
                }
            }
        }

        private void bindWorkspace(int i) {
            final long jUptimeMillis = SystemClock.uptimeMillis();
            final Callbacks callbacks = (Callbacks) LauncherModel.this.mCallbacks.get();
            if (callbacks == null) {
                L.w(LauncherModel.TAG, "LoaderTask running with no launcher");
                return;
            }
            boolean z = i > -1;
            final int currentWorkspaceScreen = z ? i : callbacks.getCurrentWorkspaceScreen();
            LauncherModel.this.unbindWorkspaceItemsOnMainThread();
            ArrayList<ItemInfo> arrayList = new ArrayList<>();
            ArrayList<LauncherAppWidgetInfo> arrayList2 = new ArrayList<>();
            HashMap<Long, FolderInfo> map = new HashMap<>();
            HashMap<Long, ItemInfo> map2 = new HashMap<>();
            synchronized (LauncherModel.sBgLock) {
                arrayList.addAll(LauncherModel.sBgWorkspaceItems);
                arrayList2.addAll(LauncherModel.sBgAppWidgets);
                map.putAll(LauncherModel.sBgFolders);
                map2.putAll(LauncherModel.sBgItemsIdMap);
            }
            ArrayList<ItemInfo> arrayList3 = new ArrayList<>();
            ArrayList<ItemInfo> arrayList4 = new ArrayList<>();
            ArrayList<LauncherAppWidgetInfo> arrayList5 = new ArrayList<>();
            ArrayList<LauncherAppWidgetInfo> arrayList6 = new ArrayList<>();
            HashMap<Long, FolderInfo> map3 = new HashMap<>();
            HashMap<Long, FolderInfo> map4 = new HashMap<>();
            filterCurrentWorkspaceItems(currentWorkspaceScreen, arrayList, arrayList3, arrayList4);
            filterCurrentAppWidgets(currentWorkspaceScreen, arrayList2, arrayList5, arrayList6);
            filterCurrentFolders(currentWorkspaceScreen, map2, map, map3, map4);
            sortWorkspaceItemsSpatially(arrayList3);
            sortWorkspaceItemsSpatially(arrayList4);
            LauncherModel.this.runOnMainThread(new Runnable() { // from class: com.android.launcher2.LauncherModel.LoaderTask.7
                @Override // java.lang.Runnable
                public void run() {
                    Callbacks callbacksTryGetCallbacks = LoaderTask.this.tryGetCallbacks(callbacks);
                    if (callbacksTryGetCallbacks != null) {
                        callbacksTryGetCallbacks.startBinding();
                    }
                }
            }, 1);
            bindWorkspaceItems(callbacks, arrayList3, arrayList5, map3, null);
            if (z) {
                LauncherModel.this.runOnMainThread(new Runnable() { // from class: com.android.launcher2.LauncherModel.LoaderTask.8
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacksTryGetCallbacks = LoaderTask.this.tryGetCallbacks(callbacks);
                        if (callbacksTryGetCallbacks != null) {
                            callbacksTryGetCallbacks.onPageBoundSynchronously(currentWorkspaceScreen);
                        }
                    }
                }, 1);
            }
            LauncherModel.mDeferredBindRunnables.clear();
            bindWorkspaceItems(callbacks, arrayList4, arrayList6, map4, z ? LauncherModel.mDeferredBindRunnables : null);
            Runnable runnable = new Runnable() { // from class: com.android.launcher2.LauncherModel.LoaderTask.9
                @Override // java.lang.Runnable
                public void run() {
                    Callbacks callbacksTryGetCallbacks = LoaderTask.this.tryGetCallbacks(callbacks);
                    if (callbacksTryGetCallbacks != null) {
                        callbacksTryGetCallbacks.finishBindingItems();
                    }
                    InstallShortcutHelper.setInstallingShortcut(false);
                    L.d(LauncherModel.TAG, "bound workspace in " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
                    LoaderTask.this.mIsLoadingAndBindingWorkspace = false;
                }
            };
            if (!z) {
                LauncherModel.this.runOnMainThread(runnable, 1);
            } else {
                LauncherModel.mDeferredBindRunnables.add(runnable);
            }
        }

        private void loadAndBindAllApps() {
            if (L.DEBUG_LOADER) {
                L.d(LauncherModel.TAG, "loadAndBindAllApps: mAllAppsLoaded =" + LauncherModel.this.mAllAppsLoaded + ", mStopped = " + this.mStopped + ", this = " + this);
            }
            if (!LauncherModel.this.mAllAppsLoaded) {
                loadAllAppsByBatch();
                synchronized (this) {
                    if (!this.mStopped) {
                        LauncherModel.this.mAllAppsLoaded = true;
                        return;
                    } else {
                        L.d(LauncherModel.TAG, "loadAndBindAllApps returned by stop flag.");
                        return;
                    }
                }
            }
            onlyBindAllApps();
        }

        private void onlyBindAllApps() {
            final Callbacks callbacks = (Callbacks) LauncherModel.this.mCallbacks.get();
            if (callbacks == null) {
                L.w(LauncherModel.TAG, "LoaderTask running with no launcher (onlyBindAllApps)");
                return;
            }
            L.d(LauncherModel.TAG, "onlyBindAllApps: oldCallbacks =" + callbacks + ", this = " + this);
            final ArrayList arrayList = (ArrayList) LauncherModel.this.mBgAllAppsList.data.clone();
            Runnable runnable = new Runnable() { // from class: com.android.launcher2.LauncherModel.LoaderTask.10
                @Override // java.lang.Runnable
                public void run() {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    Callbacks callbacksTryGetCallbacks = LoaderTask.this.tryGetCallbacks(callbacks);
                    if (callbacksTryGetCallbacks != null) {
                        callbacksTryGetCallbacks.bindAllApplications(arrayList);
                    }
                    L.d(LauncherModel.TAG, "bound all " + arrayList.size() + " apps from cache in " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
                }
            };
            boolean z = LauncherModel.sWorkerThread.getThreadId() != Process.myTid();
            if (!callbacks.isAllAppsVisible() || !z) {
                LauncherModel.this.mHandler.post(runnable);
            } else {
                runnable.run();
            }
        }

        private void loadAllAppsByBatch() {
            long jUptimeMillis = SystemClock.uptimeMillis();
            Callbacks callbacks = (Callbacks) LauncherModel.this.mCallbacks.get();
            if (callbacks == null) {
                L.w(LauncherModel.TAG, "LoaderTask running with no launcher (loadAllAppsByBatch)");
                return;
            }
            List<ResolveInfo> list = null;
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            PackageManager packageManager = this.mContext.getPackageManager();
            int i = Integer.MAX_VALUE;
            int i2 = -1;
            int i3 = 0;
            int i4 = 0;
            while (i4 < i && !this.mStopped) {
                if (i4 == 0) {
                    LauncherModel.this.mBgAllAppsList.clear();
                    long jUptimeMillis2 = SystemClock.uptimeMillis();
                    List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, i3);
                    L.d(LauncherModel.TAG, "queryIntentActivities took " + (SystemClock.uptimeMillis() - jUptimeMillis2) + "ms");
                    if (listQueryIntentActivities == null) {
                        return;
                    }
                    int size = listQueryIntentActivities.size();
                    L.d(LauncherModel.TAG, "queryIntentActivities got " + size + " apps, mBatchSize = " + LauncherModel.this.mBatchSize + ", this = " + this);
                    if (size == 0) {
                        return;
                    }
                    int i5 = LauncherModel.this.mBatchSize == 0 ? size : LauncherModel.this.mBatchSize;
                    LauncherModel.this.flushCacheIfNeeded(this.mLabelCache);
                    L.d(LauncherModel.TAG, "sort took " + (SystemClock.uptimeMillis() - SystemClock.uptimeMillis()) + "ms, this = " + this);
                    int i6 = i5;
                    i = size;
                    list = listQueryIntentActivities;
                    i2 = i6;
                }
                long jUptimeMillis3 = SystemClock.uptimeMillis();
                int i7 = i4;
                int i8 = 0;
                while (i7 < i && i8 < i2) {
                    Intent intent2 = intent;
                    List<ResolveInfo> list2 = list;
                    long j = jUptimeMillis;
                    ApplicationInfo applicationInfo = new ApplicationInfo(packageManager, list.get(i7), LauncherModel.this.mIconCache, this.mLabelCache);
                    if (!Utils.isMaskClassName(applicationInfo.componentName)) {
                        LauncherModel.this.mBgAllAppsList.add(applicationInfo);
                    }
                    i7++;
                    i8++;
                    intent = intent2;
                    list = list2;
                    jUptimeMillis = j;
                }
                long j2 = jUptimeMillis;
                Intent intent3 = intent;
                List<ResolveInfo> list3 = list;
                final boolean z = i7 <= i2;
                final Callbacks callbacksTryGetCallbacks = tryGetCallbacks(callbacks);
                final ArrayList<ApplicationInfo> arrayList = LauncherModel.this.mBgAllAppsList.added;
                LauncherModel.this.mBgAllAppsList.added = new ArrayList<>();
                LauncherModel.this.mHandler.post(new Runnable() { // from class: com.android.launcher2.LauncherModel.LoaderTask.11
                    @Override // java.lang.Runnable
                    public void run() {
                        long jUptimeMillis4 = SystemClock.uptimeMillis();
                        Callbacks callbacks2 = callbacksTryGetCallbacks;
                        if (callbacks2 != null) {
                            if (z) {
                                callbacks2.bindAllApplications(arrayList);
                            } else {
                                callbacks2.bindAppsAdded(arrayList);
                            }
                            L.d(LauncherModel.TAG, "bound " + arrayList.size() + " apps in " + (SystemClock.uptimeMillis() - jUptimeMillis4) + "ms");
                            return;
                        }
                        L.i(LauncherModel.TAG, "not binding apps: no Launcher activity");
                    }
                });
                L.d(LauncherModel.TAG, "batch of " + (i7 - i4) + " icons processed in " + (SystemClock.uptimeMillis() - jUptimeMillis3) + "ms");
                if (LauncherModel.this.mAllAppsLoadDelay > 0 && i7 < i) {
                    try {
                        L.d(LauncherModel.TAG, "sleeping for " + LauncherModel.this.mAllAppsLoadDelay + "ms");
                        Thread.sleep(LauncherModel.this.mAllAppsLoadDelay);
                    } catch (InterruptedException unused) {
                    }
                }
                i4 = i7;
                intent = intent3;
                list = list3;
                jUptimeMillis = j2;
                i3 = 0;
            }
            L.d(LauncherModel.TAG, "cached all " + i + " apps in " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms" + (LauncherModel.this.mAllAppsLoadDelay > 0 ? " (including delay)" : ""));
        }

        public void dumpState() {
            synchronized (LauncherModel.sBgLock) {
                L.d(LauncherModel.TAG, "mLoaderTask.mContext=" + this.mContext);
                L.d(LauncherModel.TAG, "mLoaderTask.mIsLaunching=" + this.mIsLaunching);
                L.d(LauncherModel.TAG, "mLoaderTask.mStopped=" + this.mStopped);
                L.d(LauncherModel.TAG, "mLoaderTask.mLoadAndBindStepFinished=" + this.mLoadAndBindStepFinished);
                L.d(LauncherModel.TAG, "mItems size=" + LauncherModel.sBgWorkspaceItems.size());
            }
        }
    }

    void enqueuePackageUpdated(PackageUpdatedTask packageUpdatedTask) {
        sWorker.post(packageUpdatedTask);
    }

    private class PackageUpdatedTask implements Runnable {
        public static final int OP_ADD = 1;
        public static final int OP_NONE = 0;
        public static final int OP_REMOVE = 3;
        public static final int OP_UNAVAILABLE = 4;
        public static final int OP_UPDATE = 2;
        int mOp;
        String[] mPackages;

        public PackageUpdatedTask(int i, String[] strArr) {
            this.mOp = i;
            this.mPackages = strArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            final ArrayList arrayList;
            final ArrayList arrayList2;
            ArrayList<String> arrayList3;
            LauncherApplication launcherApplication = LauncherModel.this.mApp;
            String[] strArr = this.mPackages;
            int length = strArr.length;
            int i = this.mOp;
            if (i == 1) {
                for (int i2 = 0; i2 < length; i2++) {
                    L.d(LauncherModel.TAG, "mAllAppsList.addPackage " + strArr[i2]);
                    LauncherModel.this.mBgAllAppsList.addPackage(launcherApplication, strArr[i2]);
                }
            } else if (i == 2) {
                for (int i3 = 0; i3 < length; i3++) {
                    L.d(LauncherModel.TAG, "mAllAppsList.updatePackage " + strArr[i3]);
                    LauncherModel.this.mBgAllAppsList.updatePackage(launcherApplication, strArr[i3]);
                }
            } else if (i == 3 || i == 4) {
                for (int i4 = 0; i4 < length; i4++) {
                    L.d(LauncherModel.TAG, "mAllAppsList.removePackage " + strArr[i4]);
                    LauncherModel.this.mBgAllAppsList.removePackage(strArr[i4]);
                }
            }
            if (LauncherModel.this.mBgAllAppsList.added.size() > 0) {
                arrayList = new ArrayList(LauncherModel.this.mBgAllAppsList.added);
                LauncherModel.this.mBgAllAppsList.added.clear();
            } else {
                arrayList = null;
            }
            if (LauncherModel.this.mBgAllAppsList.modified.size() > 0) {
                arrayList2 = new ArrayList(LauncherModel.this.mBgAllAppsList.modified);
                LauncherModel.this.mBgAllAppsList.modified.clear();
            } else {
                arrayList2 = null;
            }
            final ArrayList arrayList4 = new ArrayList();
            if (LauncherModel.this.mBgAllAppsList.removed.size() > 0) {
                LauncherModel.this.mBgAllAppsList.removed.clear();
                for (String str : strArr) {
                    arrayList4.add(str);
                }
            }
            if (LauncherModel.this.mBgAllAppsList.appwidgetRemoved.size() > 0) {
                arrayList3 = LauncherModel.this.mBgAllAppsList.appwidgetRemoved;
                LauncherModel.this.mBgAllAppsList.appwidgetRemoved = new ArrayList<>();
            } else {
                arrayList3 = null;
            }
            final Callbacks callbacks = LauncherModel.this.mCallbacks != null ? (Callbacks) LauncherModel.this.mCallbacks.get() : null;
            if (callbacks == null) {
                L.w(LauncherModel.TAG, "Nobody to tell about the new app.  Launcher is probably loading.");
                return;
            }
            if (L.DEBUG) {
                L.d(LauncherModel.TAG, "PackageUpdatedTask: added = " + arrayList + ",modified = " + arrayList2 + ",removedPackageNames = " + arrayList4 + ",appWidgetRemoved = " + arrayList3);
            }
            if (arrayList != null) {
                LauncherModel.this.mHandler.post(new Runnable() { // from class: com.android.launcher2.LauncherModel.PackageUpdatedTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacks2 = LauncherModel.this.mCallbacks != null ? (Callbacks) LauncherModel.this.mCallbacks.get() : null;
                        Callbacks callbacks3 = callbacks;
                        if (callbacks3 != callbacks2 || callbacks2 == null) {
                            return;
                        }
                        callbacks3.bindAppsAdded(arrayList);
                    }
                });
            }
            if (arrayList2 != null) {
                LauncherModel.this.mHandler.post(new Runnable() { // from class: com.android.launcher2.LauncherModel.PackageUpdatedTask.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacks2 = LauncherModel.this.mCallbacks != null ? (Callbacks) LauncherModel.this.mCallbacks.get() : null;
                        Callbacks callbacks3 = callbacks;
                        if (callbacks3 != callbacks2 || callbacks2 == null) {
                            return;
                        }
                        callbacks3.bindAppsUpdated(arrayList2);
                    }
                });
            }
            if (!arrayList4.isEmpty()) {
                final boolean z = this.mOp != 4;
                LauncherModel.this.mHandler.post(new Runnable() { // from class: com.android.launcher2.LauncherModel.PackageUpdatedTask.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacks2 = LauncherModel.this.mCallbacks != null ? (Callbacks) LauncherModel.this.mCallbacks.get() : null;
                        Callbacks callbacks3 = callbacks;
                        if (callbacks3 != callbacks2 || callbacks2 == null) {
                            return;
                        }
                        callbacks3.bindAppsRemoved(arrayList4, z);
                    }
                });
            }
            LauncherModel.this.mHandler.post(new Runnable() { // from class: com.android.launcher2.LauncherModel.PackageUpdatedTask.4
                @Override // java.lang.Runnable
                public void run() {
                    Callbacks callbacks2 = LauncherModel.this.mCallbacks != null ? (Callbacks) LauncherModel.this.mCallbacks.get() : null;
                    Callbacks callbacks3 = callbacks;
                    if (callbacks3 != callbacks2 || callbacks2 == null) {
                        return;
                    }
                    callbacks3.bindPackagesUpdated();
                }
            });
        }
    }

    public ShortcutInfo getShortcutInfo(PackageManager packageManager, Intent intent, Context context) {
        return getShortcutInfo(packageManager, intent, context, (Cursor) null, -1, -1, (HashMap<Object, CharSequence>) null);
    }

    public ShortcutInfo getShortcutInfo(PackageManager packageManager, Intent intent, Context context, Cursor cursor, int i, int i2, HashMap<Object, CharSequence> map) {
        ShortcutInfo shortcutInfo = new ShortcutInfo();
        ComponentName component = intent.getComponent();
        if (component == null) {
            return null;
        }
        shortcutInfo.componentName = component;
        try {
            if (!packageManager.getPackageInfo(component.getPackageName(), 0).applicationInfo.enabled) {
                return null;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            L.d(TAG, "getPackInfo failed for package " + component.getPackageName());
        }
        ComponentName component2 = intent.getComponent();
        Intent intent2 = new Intent(intent.getAction(), (Uri) null);
        intent2.addCategory("android.intent.category.LAUNCHER");
        intent2.setPackage(component2.getPackageName());
        ResolveInfo resolveInfoResolveActivity = null;
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent2, 0)) {
            if (new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name).equals(component2)) {
                resolveInfoResolveActivity = resolveInfo;
            }
        }
        if (resolveInfoResolveActivity == null) {
            resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        }
        Bitmap icon = resolveInfoResolveActivity != null ? this.mIconCache.getIcon(component, resolveInfoResolveActivity, map) : null;
        if (icon == null && cursor != null) {
            icon = getIconFromCursor(cursor, i, context);
        }
        if (icon == null) {
            icon = getFallbackIcon();
            shortcutInfo.usingFallbackIcon = true;
        }
        shortcutInfo.setIcon(icon);
        if (resolveInfoResolveActivity != null) {
            ComponentName componentNameFromResolveInfo = getComponentNameFromResolveInfo(resolveInfoResolveActivity);
            if (map != null && map.containsKey(componentNameFromResolveInfo)) {
                shortcutInfo.title = map.get(componentNameFromResolveInfo);
            } else {
                shortcutInfo.title = resolveInfoResolveActivity.activityInfo.loadLabel(packageManager);
                if (map != null) {
                    map.put(componentNameFromResolveInfo, shortcutInfo.title);
                }
            }
        }
        if (shortcutInfo.title == null && cursor != null) {
            shortcutInfo.title = cursor.getString(i2);
        }
        if (shortcutInfo.title == null) {
            shortcutInfo.title = component.getClassName();
        }
        shortcutInfo.itemType = 0;
        if (Utils.isMaskClassName(shortcutInfo.componentName)) {
            return null;
        }
        return shortcutInfo;
    }

    static ArrayList<ItemInfo> getWorkspaceShortcutItemInfosWithIntent(Intent intent) {
        ArrayList<ItemInfo> arrayList = new ArrayList<>();
        synchronized (sBgLock) {
            for (ItemInfo itemInfo : sBgWorkspaceItems) {
                if (itemInfo instanceof ShortcutInfo) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) itemInfo;
                    if (shortcutInfo.intent.toUri(0).equals(intent.toUri(0))) {
                        arrayList.add(shortcutInfo);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ShortcutInfo getShortcutInfo(Cursor cursor, Context context, int i, int i2, int i3, int i4, int i5) {
        Bitmap iconFromCursor;
        Bitmap fallbackIcon;
        Resources resources;
        int identifier;
        ShortcutInfo shortcutInfo = new ShortcutInfo();
        shortcutInfo.itemType = 1;
        shortcutInfo.title = cursor.getString(i5);
        int i6 = cursor.getInt(i);
        if (i6 == 0) {
            String string = cursor.getString(i2);
            String string2 = cursor.getString(i3);
            PackageManager packageManager = context.getPackageManager();
            shortcutInfo.customIcon = false;
            Bitmap bitmapCreateIconBitmap = null;
            try {
                Resources resourcesForApplication = packageManager.getResourcesForApplication(string);
                if (resourcesForApplication != null) {
                    int identifier2 = resourcesForApplication.getIdentifier(string2, null, null);
                    SceneInfo newCurrentSceneInfo = SceneManager.getNewCurrentSceneInfo(context);
                    newCurrentSceneInfo.setShortcut();
                    if (Navi.PackageName.SETTINGS_PACKAGE_NAME.equals(string) && (identifier = (resources = context.getResources()).getIdentifier(Launcher.getCurrentScene() + "_" + convertToIconResName(string), "drawable", context.getPackageName())) > 0) {
                        if (shortcutInfo.container == -101) {
                            newCurrentSceneInfo.setHotseat(15);
                        }
                        bitmapCreateIconBitmap = Utilities.createIconBitmap(this.mIconCache.getFullResIcon(resources, identifier), context, newCurrentSceneInfo);
                        newCurrentSceneInfo.setHotseat(13);
                    } else {
                        bitmapCreateIconBitmap = Utilities.createIconBitmap(this.mIconCache.getFullResIcon(resourcesForApplication, identifier2), context, newCurrentSceneInfo);
                    }
                }
            } catch (Exception unused) {
            }
            iconFromCursor = bitmapCreateIconBitmap == null ? getIconFromCursor(cursor, i4, context) : bitmapCreateIconBitmap;
            if (iconFromCursor == null) {
                fallbackIcon = getFallbackIcon();
                shortcutInfo.usingFallbackIcon = true;
            } else {
                fallbackIcon = iconFromCursor;
            }
        } else if (i6 == 1) {
            iconFromCursor = getIconFromCursor(cursor, i4, context);
            if (iconFromCursor == null) {
                fallbackIcon = getFallbackIcon();
                shortcutInfo.customIcon = false;
                shortcutInfo.usingFallbackIcon = true;
            } else {
                shortcutInfo.customIcon = true;
                fallbackIcon = iconFromCursor;
            }
        } else {
            fallbackIcon = getFallbackIcon();
            shortcutInfo.usingFallbackIcon = true;
            shortcutInfo.customIcon = false;
        }
        shortcutInfo.setIcon(fallbackIcon);
        return shortcutInfo;
    }

    Bitmap getIconFromCursor(Cursor cursor, int i, Context context) {
        byte[] blob = cursor.getBlob(i);
        try {
            return Utilities.createIconBitmap(BitmapFactory.decodeByteArray(blob, 0, blob.length), context);
        } catch (Exception unused) {
            return null;
        }
    }

    ShortcutInfo addShortcut(Context context, Intent intent, long j, int i, int i2, int i3, boolean z) {
        ShortcutInfo shortcutInfoInfoFromShortcutIntent = infoFromShortcutIntent(context, intent, null);
        if (shortcutInfoInfoFromShortcutIntent == null) {
            return null;
        }
        addItemToDatabase(context, shortcutInfoInfoFromShortcutIntent, j, i, i2, i3, z);
        return shortcutInfoInfoFromShortcutIntent;
    }

    AppWidgetProviderInfo findAppWidgetProviderInfoWithComponent(Context context, ComponentName componentName) {
        for (AppWidgetProviderInfo appWidgetProviderInfo : AppWidgetManager.getInstance(context).getInstalledProviders()) {
            if (appWidgetProviderInfo.provider.equals(componentName)) {
                return appWidgetProviderInfo;
            }
        }
        return null;
    }

    List<InstallWidgetReceiver.WidgetMimeTypeHandlerData> resolveWidgetsForMimeType(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        Intent intent = new Intent(InstallWidgetReceiver.ACTION_SUPPORTS_CLIPDATA_MIMETYPE);
        intent.setType(str);
        List<AppWidgetProviderInfo> installedProviders = AppWidgetManager.getInstance(context).getInstalledProviders();
        HashMap map = new HashMap();
        for (AppWidgetProviderInfo appWidgetProviderInfo : installedProviders) {
            map.put(appWidgetProviderInfo.configure, appWidgetProviderInfo);
        }
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 65536)) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
            if (map.containsKey(componentName)) {
                arrayList.add(new InstallWidgetReceiver.WidgetMimeTypeHandlerData(resolveInfo, (AppWidgetProviderInfo) map.get(componentName)));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00e0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ec  */
    ShortcutInfo infoFromShortcutIntent(Context context, Intent intent, Bitmap bitmap) {
        Intent.ShortcutIconResource shortcutIconResource;
        Bitmap bitmap2;
        Bitmap bitmapCreateIconBitmap;
        Resources resources;
        int identifier;
        ShortcutInfo shortcutInfo;
        Bitmap fallbackIcon;
        Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.shortcut.ICON");
        if (intent2 == null) {
            L.e(TAG, "Can't construct ShorcutInfo with null intent");
            return null;
        }
        boolean z = false;
        SceneInfo newCurrentSceneInfo = SceneManager.getNewCurrentSceneInfo(context);
        newCurrentSceneInfo.setShortcut();
        if (parcelableExtra != null && (parcelableExtra instanceof Bitmap)) {
            bitmapCreateIconBitmap = Utilities.createIconBitmap(new FastBitmapDrawable((Bitmap) parcelableExtra), context, newCurrentSceneInfo);
            shortcutIconResource = null;
            z = true;
        } else {
            Parcelable parcelableExtra2 = intent.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            if (parcelableExtra2 == null || !(parcelableExtra2 instanceof Intent.ShortcutIconResource)) {
                shortcutIconResource = null;
            } else {
                try {
                    shortcutIconResource = (Intent.ShortcutIconResource) parcelableExtra2;
                    try {
                        Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(shortcutIconResource.packageName);
                        int identifier2 = resourcesForApplication.getIdentifier(shortcutIconResource.resourceName, null, null);
                        String resourcePackageName = resourcesForApplication.getResourcePackageName(identifier2);
                        if (Navi.PackageName.SETTINGS_PACKAGE_NAME.equals(resourcePackageName) && (identifier = (resources = context.getResources()).getIdentifier(Launcher.getCurrentScene() + "_" + convertToIconResName(resourcePackageName), "drawable", context.getPackageName())) > 0) {
                            bitmapCreateIconBitmap = Utilities.createIconBitmap(this.mIconCache.getFullResIcon(resources, identifier), context, newCurrentSceneInfo);
                        } else {
                            bitmapCreateIconBitmap = Utilities.createIconBitmap(this.mIconCache.getFullResIcon(resourcesForApplication, identifier2), context, newCurrentSceneInfo);
                        }
                    } catch (Exception unused) {
                        L.w(TAG, "Could not load shortcut icon: " + parcelableExtra2);
                        bitmap2 = null;
                    }
                } catch (Exception unused2) {
                    shortcutIconResource = null;
                }
            }
            bitmap2 = null;
            shortcutInfo = new ShortcutInfo();
            if (bitmap2 == null) {
                fallbackIcon = bitmap2;
            } else if (bitmap != null) {
                fallbackIcon = bitmap;
            } else {
                fallbackIcon = getFallbackIcon();
                shortcutInfo.usingFallbackIcon = true;
            }
            shortcutInfo.setIcon(fallbackIcon);
            shortcutInfo.title = stringExtra;
            shortcutInfo.intent = intent2;
            shortcutInfo.customIcon = z;
            shortcutInfo.iconResource = shortcutIconResource;
            return shortcutInfo;
        }
        bitmap2 = bitmapCreateIconBitmap;
        shortcutInfo = new ShortcutInfo();
        if (bitmap2 == null) {
            fallbackIcon = bitmap2;
        } else if (bitmap != null) {
            fallbackIcon = bitmap;
        } else {
            fallbackIcon = getFallbackIcon();
            shortcutInfo.usingFallbackIcon = true;
        }
        shortcutInfo.setIcon(fallbackIcon);
        shortcutInfo.title = stringExtra;
        shortcutInfo.intent = intent2;
        shortcutInfo.customIcon = z;
        shortcutInfo.iconResource = shortcutIconResource;
        return shortcutInfo;
    }

    private String convertToIconResName(String str) {
        return (str == null || str.equals("")) ? str : str.replace('.', '_').toLowerCase();
    }

    boolean queueIconToBeChecked(HashMap<Object, byte[]> map, ShortcutInfo shortcutInfo, Cursor cursor, int i) {
        if (!this.mAppsCanBeOnExternalStorage || shortcutInfo.customIcon || shortcutInfo.usingFallbackIcon) {
            return false;
        }
        map.put(shortcutInfo, cursor.getBlob(i));
        return true;
    }

    void updateSavedIcon(Context context, ShortcutInfo shortcutInfo, byte[] bArr) {
        boolean zSameAs = true;
        if (bArr != null) {
            try {
                zSameAs = true ^ BitmapFactory.decodeByteArray(bArr, 0, bArr.length).sameAs(shortcutInfo.getIcon(this.mIconCache));
            } catch (Exception unused) {
            }
        }
        if (zSameAs) {
            L.d(TAG, "going to save icon bitmap for info=" + shortcutInfo);
            updateItemInDatabase(context, shortcutInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static FolderInfo findOrMakeFolder(HashMap<Long, FolderInfo> map, long j) {
        FolderInfo folderInfo = map.get(Long.valueOf(j));
        if (folderInfo != null) {
            return folderInfo;
        }
        FolderInfo folderInfo2 = new FolderInfo();
        map.put(Long.valueOf(j), folderInfo2);
        return folderInfo2;
    }

    public static final Comparator<ApplicationInfo> getAppNameComparator() {
        final Collator collator = Collator.getInstance();
        return new Comparator<ApplicationInfo>() { // from class: com.android.launcher2.LauncherModel.7
            @Override // java.util.Comparator
            public final int compare(ApplicationInfo applicationInfo, ApplicationInfo applicationInfo2) {
                int iCompare = collator.compare(applicationInfo.title.toString(), applicationInfo2.title.toString());
                return iCompare == 0 ? applicationInfo.componentName.compareTo(applicationInfo2.componentName) : iCompare;
            }
        };
    }

    public static final Comparator<AppWidgetProviderInfo> getWidgetNameComparator() {
        final Collator collator = Collator.getInstance();
        return new Comparator<AppWidgetProviderInfo>() { // from class: com.android.launcher2.LauncherModel.9
            @Override // java.util.Comparator
            public final int compare(AppWidgetProviderInfo appWidgetProviderInfo, AppWidgetProviderInfo appWidgetProviderInfo2) {
                return collator.compare(appWidgetProviderInfo.label.toString(), appWidgetProviderInfo2.label.toString());
            }
        };
    }

    static ComponentName getComponentNameFromResolveInfo(ResolveInfo resolveInfo) {
        if (resolveInfo.activityInfo != null) {
            return new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        }
        return new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
    }

    public static class ShortcutNameComparator implements Comparator<ResolveInfo> {
        private Collator mCollator;
        private HashMap<Object, CharSequence> mLabelCache;
        private PackageManager mPackageManager;

        ShortcutNameComparator(PackageManager packageManager) {
            this.mPackageManager = packageManager;
            this.mLabelCache = new HashMap<>();
            this.mCollator = Collator.getInstance();
        }

        ShortcutNameComparator(PackageManager packageManager, HashMap<Object, CharSequence> map) {
            this.mPackageManager = packageManager;
            this.mLabelCache = map;
            this.mCollator = Collator.getInstance();
        }

        @Override // java.util.Comparator
        public final int compare(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
            CharSequence string;
            CharSequence string2;
            ComponentName componentNameFromResolveInfo = LauncherModel.getComponentNameFromResolveInfo(resolveInfo);
            ComponentName componentNameFromResolveInfo2 = LauncherModel.getComponentNameFromResolveInfo(resolveInfo2);
            if (this.mLabelCache.containsKey(componentNameFromResolveInfo)) {
                string = this.mLabelCache.get(componentNameFromResolveInfo);
            } else {
                string = resolveInfo.loadLabel(this.mPackageManager).toString();
                this.mLabelCache.put(componentNameFromResolveInfo, string);
            }
            if (this.mLabelCache.containsKey(componentNameFromResolveInfo2)) {
                string2 = this.mLabelCache.get(componentNameFromResolveInfo2);
            } else {
                string2 = resolveInfo2.loadLabel(this.mPackageManager).toString();
                this.mLabelCache.put(componentNameFromResolveInfo2, string2);
            }
            return this.mCollator.compare(string, string2);
        }
    }

    public static class WidgetAndShortcutNameComparator implements Comparator<Object> {
        private PackageManager mPackageManager;
        private HashMap<Object, String> mLabelCache = new HashMap<>();
        private Collator mCollator = Collator.getInstance();

        WidgetAndShortcutNameComparator(PackageManager packageManager) {
            this.mPackageManager = packageManager;
        }

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            String str;
            String str2;
            if (this.mLabelCache.containsKey(obj)) {
                str = this.mLabelCache.get(obj);
            } else {
                String string = obj instanceof AppWidgetProviderInfo ? ((AppWidgetProviderInfo) obj).label : ((ResolveInfo) obj).loadLabel(this.mPackageManager).toString();
                this.mLabelCache.put(obj, string);
                str = string;
            }
            if (this.mLabelCache.containsKey(obj2)) {
                str2 = this.mLabelCache.get(obj2);
            } else {
                String string2 = obj2 instanceof AppWidgetProviderInfo ? ((AppWidgetProviderInfo) obj2).label : ((ResolveInfo) obj2).loadLabel(this.mPackageManager).toString();
                this.mLabelCache.put(obj2, string2);
                str2 = string2;
            }
            return this.mCollator.compare(str, str2);
        }
    }

    public void dumpState() {
        L.d(TAG, "mCallbacks=" + this.mCallbacks);
        ApplicationInfo.dumpApplicationInfoList(TAG, "mAllAppsList.data", this.mBgAllAppsList.data);
        ApplicationInfo.dumpApplicationInfoList(TAG, "mAllAppsList.added", this.mBgAllAppsList.added);
        ApplicationInfo.dumpApplicationInfoList(TAG, "mAllAppsList.removed", this.mBgAllAppsList.removed);
        ApplicationInfo.dumpApplicationInfoList(TAG, "mAllAppsList.modified", this.mBgAllAppsList.modified);
        LoaderTask loaderTask = this.mLoaderTask;
        if (loaderTask != null) {
            loaderTask.dumpState();
        } else {
            L.d(TAG, "mLoaderTask=null");
        }
    }

    synchronized void setFlushCache() {
        L.d(TAG, "Set flush cache flag for locale changed.");
        this.mForceFlushCache = true;
    }

    synchronized void flushCacheIfNeeded(HashMap<Object, CharSequence> map) {
        if (L.DEBUG) {
            L.d(TAG, "flushCacheIfNeeded: sForceFlushCache = " + this.mForceFlushCache + ", mLoaderTask = " + this.mLoaderTask + ", labelCache = " + map);
        }
        if (this.mForceFlushCache) {
            map.clear();
            this.mIconCache.flush();
            this.mForceFlushCache = false;
        }
    }

    public AllAppsList getAllAppsList() {
        return this.mBgAllAppsList;
    }

    public static void resetScene(Context context, String str) {
        context.getContentResolver().delete(LauncherSettings.Favorites.CONTENT_URI, "scene = '" + str + "'", null);
    }

    public static boolean exists(Context context, String str) {
        Cursor cursorQuery = context.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, new String[]{"scene"}, null, null, null);
        try {
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("scene");
            while (cursorQuery.moveToNext()) {
                if (str.equalsIgnoreCase(cursorQuery.getString(columnIndexOrThrow))) {
                    return true;
                }
            }
            return false;
        } finally {
            cursorQuery.close();
        }
    }

    private void updateDatabaseAndSetWallpaper() {
        boolean z = L.DEBUG;
        LauncherProvider.DatabaseHelper openHelper = LauncherProvider.getOpenHelper();
        openHelper.getWritableDatabase();
        openHelper.close();
        forceReload();
    }
}
