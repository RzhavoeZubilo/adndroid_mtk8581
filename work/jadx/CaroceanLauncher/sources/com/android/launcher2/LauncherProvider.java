package com.android.launcher2;

import android.app.SearchManager;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.database.sqlite.SQLiteStatement;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.core.view.PointerIconCompat;
import com.android.internal.util.XmlUtils;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class LauncherProvider extends ContentProvider {
    private static final String ACTION_APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE = "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE";
    static final String AUTHORITY = "com.yecon.launcher1.settings";
    private static final String DATABASE_NAME = "launcher.db";
    private static final int DATABASE_VERSION = 12;
    static final String DB_CREATED_BUT_DEFAULT_WORKSPACE_NOT_LOADED = "DB_CREATED_BUT_DEFAULT_WORKSPACE_NOT_LOADED";
    static final String DEFAULT_WORKSPACE_RESOURCE_ID = "DEFAULT_WORKSPACE_RESOURCE_ID";
    private static final boolean LOGD = false;
    static final String PARAMETER_NOTIFY = "notify";
    static final String TABLE_FAVORITES = "favorites";
    private static final String TAG = "LauncherProvider";
    private static DatabaseHelper sOpenHelper;
    static final Uri CONTENT_APPWIDGET_RESET_URI = Uri.parse("content://com.yecon.launcher1.settings/appWidgetReset");
    private static boolean sIsTablet = "tablet".equals(SystemProperties.get("ro.build.characteristics"));

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        sOpenHelper = new DatabaseHelper(getContext());
        ((LauncherApplication) getContext()).setLauncherProvider(this);
        return true;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        SqlArguments sqlArguments = new SqlArguments(uri, null, null);
        if (TextUtils.isEmpty(sqlArguments.where)) {
            return "vnd.android.cursor.dir/" + sqlArguments.table;
        }
        return "vnd.android.cursor.item/" + sqlArguments.table;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SqlArguments sqlArguments = new SqlArguments(uri, str, strArr2);
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables(sqlArguments.table);
        Cursor cursorQuery = sQLiteQueryBuilder.query(sOpenHelper.getWritableDatabase(), strArr, sqlArguments.where, sqlArguments.args, null, null, str2);
        cursorQuery.setNotificationUri(getContext().getContentResolver(), uri);
        return cursorQuery;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long dbInsertAndCheck(DatabaseHelper databaseHelper, SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) {
        if (!contentValues.containsKey("_id")) {
            throw new RuntimeException("Error: attempting to add item without specifying an id");
        }
        return sQLiteDatabase.insert(str, str2, contentValues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteId(SQLiteDatabase sQLiteDatabase, long j) {
        SqlArguments sqlArguments = new SqlArguments(LauncherSettings.Favorites.getContentUri(j, false), null, null);
        sQLiteDatabase.delete(sqlArguments.table, sqlArguments.where, sqlArguments.args);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        SqlArguments sqlArguments = new SqlArguments(uri);
        long jDbInsertAndCheck = dbInsertAndCheck(sOpenHelper, sOpenHelper.getWritableDatabase(), sqlArguments.table, null, contentValues);
        if (jDbInsertAndCheck <= 0) {
            return null;
        }
        Uri uriWithAppendedId = ContentUris.withAppendedId(uri, jDbInsertAndCheck);
        sendNotify(uriWithAppendedId);
        return uriWithAppendedId;
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        SqlArguments sqlArguments = new SqlArguments(uri);
        SQLiteDatabase writableDatabase = sOpenHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            for (ContentValues contentValues : contentValuesArr) {
                if (dbInsertAndCheck(sOpenHelper, writableDatabase, sqlArguments.table, null, contentValues) < 0) {
                    writableDatabase.endTransaction();
                    return 0;
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            sendNotify(uri);
            return contentValuesArr.length;
        } catch (Throwable th) {
            writableDatabase.endTransaction();
            throw th;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        SqlArguments sqlArguments = new SqlArguments(uri, str, strArr);
        int iDelete = sOpenHelper.getWritableDatabase().delete(sqlArguments.table, sqlArguments.where, sqlArguments.args);
        if (iDelete > 0) {
            sendNotify(uri);
        }
        return iDelete;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        SqlArguments sqlArguments = new SqlArguments(uri, str, strArr);
        int iUpdate = sOpenHelper.getWritableDatabase().update(sqlArguments.table, contentValues, sqlArguments.where, sqlArguments.args);
        if (iUpdate > 0) {
            sendNotify(uri);
        }
        return iUpdate;
    }

    private void sendNotify(Uri uri) {
        String queryParameter = uri.getQueryParameter(PARAMETER_NOTIFY);
        if (queryParameter == null || "true".equals(queryParameter)) {
            getContext().getContentResolver().notifyChange(uri, null);
        }
    }

    public long generateNewId() {
        return sOpenHelper.generateNewId();
    }

    public static DatabaseHelper getOpenHelper() {
        return sOpenHelper;
    }

    public synchronized void loadDefaultFavoritesIfNecessary(int i) {
        SharedPreferences sharedPreferences = getContext().getSharedPreferences(LauncherApplication.getSharedPreferencesKey(), 0);
        if (sharedPreferences.getBoolean(DB_CREATED_BUT_DEFAULT_WORKSPACE_NOT_LOADED, false)) {
            int i2 = i == 0 ? sharedPreferences.getInt(DEFAULT_WORKSPACE_RESOURCE_ID, SceneManager.getDefaultWorkspaceResId(getContext())) : i;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove(DB_CREATED_BUT_DEFAULT_WORKSPACE_NOT_LOADED);
            if (i != 0) {
                editorEdit.putInt(DEFAULT_WORKSPACE_RESOURCE_ID, i);
            }
            DatabaseHelper databaseHelper = sOpenHelper;
            databaseHelper.loadFavorites(databaseHelper.getWritableDatabase(), i2);
            DatabaseHelper databaseHelper2 = sOpenHelper;
            databaseHelper2.updateSceneField(databaseHelper2.getWritableDatabase(), SceneManager.DEFAULT_SCENE);
            editorEdit.commit();
        }
    }

    public void deleteDatabase() {
        File file = new File(sOpenHelper.getWritableDatabase().getPath());
        sOpenHelper.close();
        if (file.exists()) {
            SQLiteDatabase.deleteDatabase(file);
        }
        sOpenHelper = new DatabaseHelper(getContext());
    }

    static class DatabaseHelper extends SQLiteOpenHelper {
        private static final ArrayList<MotaUpdate> MOTA_UPDATE_APPS = new ArrayList<>();
        private static final String TAG_APPWIDGET = "appwidget";
        private static final String TAG_CLOCK = "clock";
        private static final String TAG_EXTRA = "extra";
        private static final String TAG_FAVORITE = "favorite";
        private static final String TAG_FAVORITES = "favorites";
        private static final String TAG_FOLDER = "folder";
        private static final String TAG_MOTAUPDATE = "mota-update";
        private static final String TAG_SEARCH = "search";
        private static final String TAG_SHORTCUT = "shortcut";
        private final AppWidgetHost mAppWidgetHost;
        private final Context mContext;
        private long mMaxId;

        class MotaUpdate {
            ComponentName mNewComponent;
            ComponentName mOldComponent;

            public MotaUpdate(String str, String str2, String str3, String str4) {
                this.mOldComponent = new ComponentName(str, str2);
                this.mNewComponent = new ComponentName(str3, str4);
            }
        }

        DatabaseHelper(Context context) {
            super(context, LauncherProvider.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 12);
            this.mMaxId = -1L;
            this.mContext = context;
            this.mAppWidgetHost = new AppWidgetHost(context, 1024);
            if (this.mMaxId == -1) {
                this.mMaxId = initializeMaxId(getWritableDatabase());
            }
        }

        private void sendAppWidgetResetNotify() {
            this.mContext.getContentResolver().notifyChange(LauncherProvider.CONTENT_APPWIDGET_RESET_URI, null);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.mMaxId = 1L;
            sQLiteDatabase.execSQL("CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,scene TEXT);");
            AppWidgetHost appWidgetHost = this.mAppWidgetHost;
            if (appWidgetHost != null) {
                appWidgetHost.deleteHost();
                sendAppWidgetResetNotify();
            }
            if (convertDatabase(sQLiteDatabase)) {
                return;
            }
            setFlagToLoadDefaultWorkspaceLater();
        }

        private void setFlagToLoadDefaultWorkspaceLater() {
            SharedPreferences.Editor editorEdit = this.mContext.getSharedPreferences(LauncherApplication.getSharedPreferencesKey(), 0).edit();
            editorEdit.putBoolean(LauncherProvider.DB_CREATED_BUT_DEFAULT_WORKSPACE_NOT_LOADED, true);
            editorEdit.commit();
        }

        private boolean convertDatabase(SQLiteDatabase sQLiteDatabase) throws Throwable {
            Cursor cursorQuery;
            Uri uri = Uri.parse("content://settings/old_favorites?notify=true");
            ContentResolver contentResolver = this.mContext.getContentResolver();
            try {
                cursorQuery = contentResolver.query(uri, null, null, null, null);
            } catch (Exception unused) {
                cursorQuery = null;
            }
            boolean z = false;
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                try {
                    z = copyFromCursor(sQLiteDatabase, cursorQuery) > 0;
                    cursorQuery.close();
                    if (z) {
                        contentResolver.delete(uri, null, null);
                    }
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            if (z) {
                convertWidgets(sQLiteDatabase);
            }
            return z;
        }

        private int copyFromCursor(SQLiteDatabase sQLiteDatabase, Cursor cursor) throws Throwable {
            Throwable th;
            Cursor cursor2 = cursor;
            String str = "_id";
            int columnIndexOrThrow = cursor2.getColumnIndexOrThrow("_id");
            int columnIndexOrThrow2 = cursor2.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.INTENT);
            int columnIndexOrThrow3 = cursor2.getColumnIndexOrThrow("title");
            int columnIndexOrThrow4 = cursor2.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ICON_TYPE);
            int columnIndexOrThrow5 = cursor2.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ICON);
            int columnIndexOrThrow6 = cursor2.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE);
            int columnIndexOrThrow7 = cursor2.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ICON_RESOURCE);
            String str2 = LauncherSettings.BaseLauncherColumns.ICON_RESOURCE;
            String str3 = "container";
            int columnIndexOrThrow8 = cursor2.getColumnIndexOrThrow("container");
            int columnIndexOrThrow9 = cursor2.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ITEM_TYPE);
            int columnIndexOrThrow10 = cursor2.getColumnIndexOrThrow("screen");
            String str4 = "screen";
            String str5 = "cellX";
            int columnIndexOrThrow11 = cursor2.getColumnIndexOrThrow("cellX");
            int columnIndexOrThrow12 = cursor2.getColumnIndexOrThrow("cellY");
            int columnIndexOrThrow13 = cursor2.getColumnIndexOrThrow("uri");
            String str6 = "uri";
            int columnIndexOrThrow14 = cursor2.getColumnIndexOrThrow("displayMode");
            int columnIndexOrThrow15 = cursor2.getColumnIndexOrThrow("scene");
            int count = cursor.getCount();
            ContentValues[] contentValuesArr = new ContentValues[count];
            int i = 0;
            while (cursor.moveToNext()) {
                int i2 = count;
                ContentValues[] contentValuesArr2 = contentValuesArr;
                ContentValues contentValues = new ContentValues(cursor.getColumnCount());
                contentValues.put(str, Long.valueOf(cursor2.getLong(columnIndexOrThrow)));
                contentValues.put(LauncherSettings.BaseLauncherColumns.INTENT, cursor2.getString(columnIndexOrThrow2));
                contentValues.put("title", cursor2.getString(columnIndexOrThrow3));
                contentValues.put(LauncherSettings.BaseLauncherColumns.ICON_TYPE, Integer.valueOf(cursor2.getInt(columnIndexOrThrow4)));
                contentValues.put(LauncherSettings.BaseLauncherColumns.ICON, cursor2.getBlob(columnIndexOrThrow5));
                contentValues.put(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE, cursor2.getString(columnIndexOrThrow6));
                String str7 = str;
                String str8 = str2;
                contentValues.put(str8, cursor2.getString(columnIndexOrThrow7));
                int i3 = columnIndexOrThrow8;
                int i4 = columnIndexOrThrow;
                String str9 = str3;
                contentValues.put(str9, Integer.valueOf(cursor2.getInt(i3)));
                str3 = str9;
                contentValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, Integer.valueOf(cursor2.getInt(columnIndexOrThrow9)));
                contentValues.put("appWidgetId", (Integer) (-1));
                String str10 = str4;
                contentValues.put(str10, Integer.valueOf(cursor2.getInt(columnIndexOrThrow10)));
                int i5 = columnIndexOrThrow11;
                Integer numValueOf = Integer.valueOf(cursor2.getInt(i5));
                String str11 = str5;
                contentValues.put(str11, numValueOf);
                str5 = str11;
                contentValues.put("cellY", Integer.valueOf(cursor2.getInt(columnIndexOrThrow12)));
                String str12 = str6;
                contentValues.put(str12, cursor2.getString(columnIndexOrThrow13));
                int i6 = columnIndexOrThrow14;
                contentValues.put("displayMode", Integer.valueOf(cursor2.getInt(i6)));
                contentValues.put("scene", cursor2.getString(columnIndexOrThrow15));
                contentValuesArr2[i] = contentValues;
                i++;
                columnIndexOrThrow = i4;
                str2 = str8;
                count = i2;
                str = str7;
                cursor2 = cursor;
                columnIndexOrThrow8 = i3;
                contentValuesArr = contentValuesArr2;
                columnIndexOrThrow11 = i5;
                str4 = str10;
                columnIndexOrThrow14 = i6;
                str6 = str12;
            }
            ContentValues[] contentValuesArr3 = contentValuesArr;
            int i7 = count;
            sQLiteDatabase.beginTransaction();
            int i8 = 0;
            for (int i9 = 0; i9 < i7; i9++) {
                try {
                    try {
                        if (LauncherProvider.dbInsertAndCheck(this, sQLiteDatabase, "favorites", null, contentValuesArr3[i9]) < 0) {
                            sQLiteDatabase.endTransaction();
                            return 0;
                        }
                        i8++;
                    } catch (Throwable th2) {
                        th = th2;
                        sQLiteDatabase.endTransaction();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    sQLiteDatabase.endTransaction();
                    throw th;
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            return i8;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws Throwable {
            if (i < 3) {
                sQLiteDatabase.beginTransaction();
                try {
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;");
                        sQLiteDatabase.setTransactionSuccessful();
                        sQLiteDatabase.endTransaction();
                        i = 3;
                    } catch (SQLException e) {
                        L.e(LauncherProvider.TAG, e.getMessage(), e);
                        sQLiteDatabase.endTransaction();
                    }
                    if (i == 3) {
                        convertWidgets(sQLiteDatabase);
                    }
                } catch (Throwable th) {
                    sQLiteDatabase.endTransaction();
                    throw th;
                }
            }
            if (i < 4) {
                i = 4;
            }
            if (i < 6) {
                sQLiteDatabase.beginTransaction();
                try {
                    try {
                        sQLiteDatabase.execSQL("UPDATE favorites SET screen=(screen + 1);");
                        sQLiteDatabase.setTransactionSuccessful();
                    } catch (SQLException e2) {
                        L.e(LauncherProvider.TAG, e2.getMessage(), e2);
                    }
                    sQLiteDatabase.endTransaction();
                    if (updateContactsShortcuts(sQLiteDatabase)) {
                        i = 6;
                    }
                } catch (Throwable th2) {
                    sQLiteDatabase.endTransaction();
                    throw th2;
                }
            }
            if (i < 7) {
                convertWidgets(sQLiteDatabase);
                i = 7;
            }
            if (i < 8) {
                normalizeIcons(sQLiteDatabase);
                i = 8;
            }
            if (i < 9) {
                if (this.mMaxId == -1) {
                    this.mMaxId = initializeMaxId(sQLiteDatabase);
                }
                loadFavorites(sQLiteDatabase, R.xml.update_workspace);
                i = 9;
            }
            if (i < 10) {
                sQLiteDatabase.beginTransaction();
                try {
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE favorites ADD COLUMN scene TEXT ;");
                        sQLiteDatabase.setTransactionSuccessful();
                        sQLiteDatabase.endTransaction();
                        i = 10;
                    } catch (SQLException e3) {
                        L.e(LauncherProvider.TAG, e3.getMessage(), e3);
                        sQLiteDatabase.endTransaction();
                    }
                    updateSceneField(sQLiteDatabase, this.mContext.getString(R.string.scene_name_default));
                } catch (Throwable th3) {
                    sQLiteDatabase.endTransaction();
                    throw th3;
                }
            }
            if (i < 12) {
                updateContactsShortcuts(sQLiteDatabase);
                if (LauncherProvider.sIsTablet) {
                    sQLiteDatabase.beginTransaction();
                    try {
                        try {
                            sQLiteDatabase.execSQL("UPDATE favorites SET screen=(screen+1), cellX=(cellX+1) WHERE container = -101;");
                            sQLiteDatabase.setTransactionSuccessful();
                        } catch (SQLException e4) {
                            L.e(LauncherProvider.TAG, e4.getMessage(), e4);
                        }
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th4) {
                        sQLiteDatabase.endTransaction();
                        throw th4;
                    }
                }
                motaUpdate(sQLiteDatabase);
                i = 12;
            }
            if (i != 12) {
                L.w(LauncherProvider.TAG, "Destroying all old data.");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS favorites");
                onCreate(sQLiteDatabase);
            }
        }

        /* JADX WARN: Code duplicated, block: B:75:0x0129  */
        private boolean updateContactsShortcuts(SQLiteDatabase sQLiteDatabase) throws Throwable {
            String strBuildOrWhereString = LauncherProvider.buildOrWhereString(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, new int[]{1});
            sQLiteDatabase.beginTransaction();
            Cursor cursor = null;
            try {
                Cursor cursorQuery = sQLiteDatabase.query("favorites", new String[]{"_id", LauncherSettings.BaseLauncherColumns.INTENT}, strBuildOrWhereString, null, null, null, null);
                if (cursorQuery == null) {
                    sQLiteDatabase.endTransaction();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return false;
                }
                try {
                    int columnIndex = cursorQuery.getColumnIndex("_id");
                    int columnIndex2 = cursorQuery.getColumnIndex(LauncherSettings.BaseLauncherColumns.INTENT);
                    while (cursorQuery.moveToNext()) {
                        long j = cursorQuery.getLong(columnIndex);
                        String string = cursorQuery.getString(columnIndex2);
                        if (string != null) {
                            try {
                                Intent uri = Intent.parseUri(string, 0);
                                L.d("Home", uri.toString());
                                Uri data = uri.getData();
                                if (data != null) {
                                    String string2 = data.toString();
                                    if (("android.intent.action.VIEW".equals(uri.getAction()) || "com.android.contacts.action.QUICK_CONTACT".equals(uri.getAction())) && (string2.startsWith("content://contacts/people/") || string2.startsWith("content://com.android.contacts/contacts/lookup/"))) {
                                        Intent intent = new Intent("com.android.contacts.action.QUICK_CONTACT");
                                        intent.addFlags(268468224);
                                        intent.putExtra("com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION", true);
                                        intent.setData(data);
                                        try {
                                            intent.setDataAndType(data, intent.resolveType(this.mContext));
                                            ContentValues contentValues = new ContentValues();
                                            contentValues.put(LauncherSettings.BaseLauncherColumns.INTENT, intent.toUri(0));
                                            try {
                                                try {
                                                    sQLiteDatabase.update("favorites", contentValues, "_id=" + j, null);
                                                } catch (SQLException e) {
                                                    e = e;
                                                    cursor = cursorQuery;
                                                    try {
                                                        L.w(LauncherProvider.TAG, "Problem while upgrading contacts", e);
                                                        sQLiteDatabase.endTransaction();
                                                        if (cursor != null) {
                                                            cursor.close();
                                                        }
                                                        return false;
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        sQLiteDatabase.endTransaction();
                                                        if (cursor != null) {
                                                            cursor.close();
                                                        }
                                                        throw th;
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    cursor = cursorQuery;
                                                    sQLiteDatabase.endTransaction();
                                                    if (cursor != null) {
                                                        cursor.close();
                                                    }
                                                    throw th;
                                                }
                                            } catch (RuntimeException e2) {
                                                e = e2;
                                                L.e(LauncherProvider.TAG, "Problem upgrading shortcut", e);
                                            } catch (URISyntaxException e3) {
                                                e = e3;
                                                L.e(LauncherProvider.TAG, "Problem upgrading shortcut", e);
                                            }
                                        } catch (RuntimeException e4) {
                                            e = e4;
                                            L.e(LauncherProvider.TAG, "Problem upgrading shortcut", e);
                                        } catch (URISyntaxException e5) {
                                            e = e5;
                                            L.e(LauncherProvider.TAG, "Problem upgrading shortcut", e);
                                        }
                                    }
                                }
                            } catch (RuntimeException e6) {
                                e = e6;
                            } catch (URISyntaxException e7) {
                                e = e7;
                            }
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return true;
                } catch (SQLException e8) {
                    e = e8;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (SQLException e9) {
                e = e9;
            } catch (Throwable th4) {
                th = th4;
            }
        }

        /* JADX WARN: Code duplicated, block: B:45:0x00c0  */
        /* JADX WARN: Code duplicated, block: B:47:0x00c5  */
        /* JADX WARN: Multi-variable type inference failed */
        private void normalizeIcons(SQLiteDatabase sQLiteDatabase) throws Throwable {
            Cursor cursor;
            L.d(LauncherProvider.TAG, "normalizing icons");
            sQLiteDatabase.beginTransaction();
            SQLiteStatement sQLiteStatement = null;
            cursorRawQuery = null;
            Cursor cursorRawQuery = null;
            sQLiteStatement = null;
            try {
                SQLiteStatement sQLiteStatementCompileStatement = sQLiteDatabase.compileStatement("UPDATE favorites SET icon=? WHERE _id=?");
                try {
                    cursorRawQuery = sQLiteDatabase.rawQuery("SELECT _id, icon FROM favorites WHERE iconType=1", null);
                    int columnIndexOrThrow = cursorRawQuery.getColumnIndexOrThrow("_id");
                    int columnIndexOrThrow2 = cursorRawQuery.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ICON);
                    Object[] objArr = false;
                    while (cursorRawQuery.moveToNext()) {
                        long j = cursorRawQuery.getLong(columnIndexOrThrow);
                        byte[] blob = cursorRawQuery.getBlob(columnIndexOrThrow2);
                        try {
                            Bitmap bitmapResampleIconBitmap = Utilities.resampleIconBitmap(BitmapFactory.decodeByteArray(blob, 0, blob.length), this.mContext);
                            if (bitmapResampleIconBitmap != null) {
                                sQLiteStatementCompileStatement.bindLong(1, j);
                                byte[] bArrFlattenBitmap = ItemInfo.flattenBitmap(bitmapResampleIconBitmap);
                                if (bArrFlattenBitmap != null) {
                                    sQLiteStatementCompileStatement.bindBlob(2, bArrFlattenBitmap);
                                    sQLiteStatementCompileStatement.execute();
                                }
                                bitmapResampleIconBitmap.recycle();
                            }
                        } catch (Exception e) {
                            if (objArr == false) {
                                L.e(LauncherProvider.TAG, "Failed normalizing icon " + j, e);
                            } else {
                                L.e(LauncherProvider.TAG, "Also failed normalizing icon " + j);
                            }
                            objArr = true;
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    if (sQLiteStatementCompileStatement != null) {
                        sQLiteStatementCompileStatement.close();
                    }
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                } catch (SQLException e2) {
                    e = e2;
                    cursor = cursorRawQuery;
                    sQLiteStatement = sQLiteStatementCompileStatement;
                    try {
                        L.w(LauncherProvider.TAG, "Problem while allocating appWidgetIds for existing widgets", e);
                        sQLiteDatabase.endTransaction();
                        if (sQLiteStatement != null) {
                            sQLiteStatement.close();
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase.endTransaction();
                        if (sQLiteStatement != null) {
                            sQLiteStatement.close();
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorRawQuery;
                    sQLiteStatement = sQLiteStatementCompileStatement;
                    sQLiteDatabase.endTransaction();
                    if (sQLiteStatement != null) {
                        sQLiteStatement.close();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (SQLException e3) {
                e = e3;
                cursor = null;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }

        public long generateNewId() {
            long j = this.mMaxId;
            if (j < 0) {
                throw new RuntimeException("Error: max id was not initialized");
            }
            long j2 = j + 1;
            this.mMaxId = j2;
            return j2;
        }

        private long initializeMaxId(SQLiteDatabase sQLiteDatabase) {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT MAX(_id) FROM favorites", null);
            long j = (cursorRawQuery == null || !cursorRawQuery.moveToNext()) ? -1L : cursorRawQuery.getLong(0);
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            if (j != -1) {
                return j;
            }
            throw new RuntimeException("Error: could not query max id");
        }

        /* JADX WARN: Code duplicated, block: B:56:0x010e  */
        private void convertWidgets(SQLiteDatabase sQLiteDatabase) throws Throwable {
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.mContext);
            String strBuildOrWhereString = LauncherProvider.buildOrWhereString(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, new int[]{1000, PointerIconCompat.TYPE_HAND, PointerIconCompat.TYPE_CONTEXT_MENU});
            sQLiteDatabase.beginTransaction();
            Cursor cursor = null;
            try {
                Cursor cursorQuery = sQLiteDatabase.query("favorites", new String[]{"_id", LauncherSettings.BaseLauncherColumns.ITEM_TYPE}, strBuildOrWhereString, null, null, null, null);
                try {
                    ContentValues contentValues = new ContentValues();
                    while (cursorQuery != null && cursorQuery.moveToNext()) {
                        long j = cursorQuery.getLong(0);
                        int i = cursorQuery.getInt(1);
                        try {
                            int iAllocateAppWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
                            contentValues.clear();
                            contentValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 4);
                            contentValues.put("appWidgetId", Integer.valueOf(iAllocateAppWidgetId));
                            if (i == 1001) {
                                contentValues.put("spanX", (Integer) 4);
                                contentValues.put("spanY", (Integer) 1);
                            } else {
                                contentValues.put("spanX", (Integer) 2);
                                contentValues.put("spanY", (Integer) 2);
                            }
                            try {
                                try {
                                    sQLiteDatabase.update("favorites", contentValues, "_id=" + j, null);
                                    if (i == 1000) {
                                        appWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, new ComponentName("com.android.alarmclock", "com.android.alarmclock.AnalogAppWidgetProvider"));
                                    } else if (i == 1002) {
                                        appWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, new ComponentName("com.android.camera", "com.android.camera.PhotoAppWidgetProvider"));
                                    } else if (i == 1001) {
                                        appWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, getSearchWidgetProvider());
                                    }
                                } catch (RuntimeException e) {
                                    e = e;
                                    L.e(LauncherProvider.TAG, "Problem allocating appWidgetId", e);
                                }
                            } catch (SQLException e2) {
                                e = e2;
                                cursor = cursorQuery;
                                try {
                                    L.w(LauncherProvider.TAG, "Problem while allocating appWidgetIds for existing widgets", e);
                                    sQLiteDatabase.endTransaction();
                                    if (cursor != null) {
                                        cursor.close();
                                        return;
                                    }
                                    return;
                                } catch (Throwable th) {
                                    th = th;
                                    sQLiteDatabase.endTransaction();
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                cursor = cursorQuery;
                                sQLiteDatabase.endTransaction();
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        } catch (RuntimeException e3) {
                            e = e3;
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (SQLException e4) {
                    e = e4;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (SQLException e5) {
                e = e5;
            } catch (Throwable th4) {
                th = th4;
            }
        }

        private static final void beginDocument(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
            int next;
            do {
                next = xmlPullParser.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            if (!xmlPullParser.getName().equals(str)) {
                throw new XmlPullParserException("Unexpected start tag: found " + xmlPullParser.getName() + ", expected " + str);
            }
        }

        private void loadMotaUpdate() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (L.DEBUG) {
                L.d(LauncherProvider.TAG, "loadMotaUpdate begin: start = " + jCurrentTimeMillis);
            }
            try {
                XmlResourceParser xml = this.mContext.getResources().getXml(R.xml.mota_update);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                XmlUtils.beginDocument(xml, TAG_MOTAUPDATE);
                int depth = xml.getDepth();
                while (true) {
                    int next = xml.next();
                    if ((next == 3 && xml.getDepth() <= depth) || next == 1) {
                        break;
                    }
                    if (next == 2) {
                        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSetAsAttributeSet, R.styleable.MotaUpdate);
                        MOTA_UPDATE_APPS.add(new MotaUpdate(typedArrayObtainStyledAttributes.getString(3), typedArrayObtainStyledAttributes.getString(2), typedArrayObtainStyledAttributes.getString(1), typedArrayObtainStyledAttributes.getString(0)));
                        typedArrayObtainStyledAttributes.recycle();
                    }
                }
            } catch (IOException e) {
                L.w(LauncherProvider.TAG, "Got IOException while parsing mota update apps.", e);
            } catch (XmlPullParserException e2) {
                L.w(LauncherProvider.TAG, "Got XmlPullParserException while parsing mota update apps.", e2);
            }
            if (L.DEBUG) {
                L.d(LauncherProvider.TAG, "loadMotaUpdate end: time used = " + (System.currentTimeMillis() - jCurrentTimeMillis));
            }
        }

        /* JADX WARN: Code duplicated, block: B:70:0x00fc  */
        private void motaUpdate(SQLiteDatabase sQLiteDatabase) throws Throwable {
            if (L.DEBUG) {
                L.d(LauncherProvider.TAG, "motaUpdate");
            }
            loadMotaUpdate();
            ArrayList<MotaUpdate> arrayList = MOTA_UPDATE_APPS;
            if (arrayList.size() <= 0) {
                return;
            }
            arrayList.size();
            sQLiteDatabase.beginTransaction();
            Cursor cursor = null;
            try {
                Cursor cursorQuery = sQLiteDatabase.query("favorites", new String[]{"_id", LauncherSettings.BaseLauncherColumns.INTENT}, null, null, null, null, null);
                if (cursorQuery == null) {
                    sQLiteDatabase.endTransaction();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                }
                try {
                    int columnIndex = cursorQuery.getColumnIndex("_id");
                    int columnIndex2 = cursorQuery.getColumnIndex(LauncherSettings.BaseLauncherColumns.INTENT);
                    while (cursorQuery.moveToNext()) {
                        long j = cursorQuery.getLong(columnIndex);
                        String string = cursorQuery.getString(columnIndex2);
                        if (string != null) {
                            int i = 0;
                            try {
                                Intent uri = Intent.parseUri(string, 0);
                                ComponentName component = uri.getComponent();
                                int i2 = 0;
                                while (true) {
                                    ArrayList<MotaUpdate> arrayList2 = MOTA_UPDATE_APPS;
                                    if (i2 >= arrayList2.size()) {
                                        break;
                                    }
                                    if (component.equals(arrayList2.get(i2).mOldComponent)) {
                                        uri.setComponent(arrayList2.get(i2).mNewComponent);
                                        ContentValues contentValues = new ContentValues();
                                        contentValues.put(LauncherSettings.BaseLauncherColumns.INTENT, uri.toUri(i));
                                        try {
                                            try {
                                                sQLiteDatabase.update("favorites", contentValues, "_id=" + j, null);
                                            } catch (SQLException e) {
                                                e = e;
                                                cursor = cursorQuery;
                                                try {
                                                    L.w(LauncherProvider.TAG, "Problem while mota update", e);
                                                    sQLiteDatabase.endTransaction();
                                                    if (cursor != null) {
                                                        cursor.close();
                                                        return;
                                                    }
                                                    return;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    sQLiteDatabase.endTransaction();
                                                    if (cursor != null) {
                                                        cursor.close();
                                                    }
                                                    throw th;
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                cursor = cursorQuery;
                                                sQLiteDatabase.endTransaction();
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                                throw th;
                                            }
                                        } catch (RuntimeException e2) {
                                            e = e2;
                                        } catch (URISyntaxException e3) {
                                            e = e3;
                                            L.e(LauncherProvider.TAG, "Problem mota update", e);
                                        }
                                    }
                                    i2++;
                                    i = 0;
                                    L.e(LauncherProvider.TAG, "Problem mota update", e);
                                }
                            } catch (RuntimeException e4) {
                                e = e4;
                            } catch (URISyntaxException e5) {
                                e = e5;
                            }
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (SQLException e6) {
                    e = e6;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (SQLException e7) {
                e = e7;
            } catch (Throwable th4) {
                th = th4;
            }
        }

        public void updateSceneField(SQLiteDatabase sQLiteDatabase, String str) {
            if (L.DEBUG) {
                L.d(LauncherProvider.TAG, "updateSceneField: sceneName = " + str);
            }
            sQLiteDatabase.beginTransaction();
            try {
                try {
                    sQLiteDatabase.execSQL("UPDATE favorites SET scene = '" + str + "' WHERE scene IS NULL;");
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (SQLException e) {
                    L.w(LauncherProvider.TAG, "Got SQLException when update favorites.", e);
                }
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }

        /* JADX WARN: Code duplicated, block: B:146:0x0361  */
        /* JADX WARN: Code duplicated, block: B:152:0x02d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public int loadFavorites(SQLiteDatabase sQLiteDatabase, int i) {
            int i2;
            int i3;
            String str;
            int i4;
            TypedArray typedArray;
            String str2;
            int i5;
            XmlResourceParser xmlResourceParser;
            boolean z;
            int i6;
            ContentValues contentValues;
            TypedArray typedArray2;
            AttributeSet attributeSet;
            boolean zAddAppWidget;
            String string;
            long j;
            String str3;
            ArrayList arrayList;
            TypedArray typedArray3;
            boolean z2;
            String str4 = "favorite";
            String str5 = "Got exception parsing favorites.";
            boolean z3 = L.DEBUG;
            String str6 = LauncherProvider.TAG;
            if (z3) {
                L.d(LauncherProvider.TAG, "loadFavorite begin: workspaceResourceId = " + i);
            }
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            ContentValues contentValues2 = new ContentValues();
            PackageManager packageManager = this.mContext.getPackageManager();
            int integer = this.mContext.getResources().getInteger(R.integer.hotseat_all_apps_index);
            try {
                try {
                    try {
                        XmlResourceParser xml = this.mContext.getResources().getXml(i);
                        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                        beginDocument(xml, "favorites");
                        int depth = xml.getDepth();
                        int i7 = 0;
                        while (true) {
                            try {
                                int next = xml.next();
                                if ((next == 3 && xml.getDepth() <= depth) || next == 1) {
                                    break;
                                }
                                if (next == 2) {
                                    String name = xml.getName();
                                    if (L.DEBUG) {
                                        L.d(str6, "loadFavorites: name = " + name);
                                    }
                                    TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSetAsAttributeSet, R.styleable.Favorite);
                                    long jLongValue = typedArrayObtainStyledAttributes.hasValue(1) ? Long.valueOf(typedArrayObtainStyledAttributes.getString(1)).longValue() : -100L;
                                    String string2 = typedArrayObtainStyledAttributes.getString(4);
                                    int i8 = depth;
                                    String string3 = typedArrayObtainStyledAttributes.getString(9);
                                    AttributeSet attributeSet2 = attributeSetAsAttributeSet;
                                    String string4 = typedArrayObtainStyledAttributes.getString(10);
                                    if (jLongValue == -101 && Integer.valueOf(string2).intValue() == integer) {
                                        throw new RuntimeException("Invalid screen position for hotseat item");
                                    }
                                    contentValues2.clear();
                                    contentValues2.put("container", Long.valueOf(jLongValue));
                                    contentValues2.put("screen", string2);
                                    contentValues2.put("cellX", string3);
                                    contentValues2.put("cellY", string4);
                                    if (!str4.equals(name)) {
                                        typedArray = typedArrayObtainStyledAttributes;
                                        str2 = str5;
                                        i5 = i8;
                                        xmlResourceParser = xml;
                                        z = false;
                                        boolean z4 = true;
                                        if (TAG_SEARCH.equals(name)) {
                                            zAddAppWidget = addSearchWidget(sQLiteDatabase, contentValues2);
                                        } else if (TAG_CLOCK.equals(name)) {
                                            zAddAppWidget = addClockWidget(sQLiteDatabase, contentValues2);
                                        } else {
                                            if (TAG_APPWIDGET.equals(name)) {
                                                i6 = integer;
                                                contentValues = contentValues2;
                                                zAddAppWidget = addAppWidget(xmlResourceParser, attributeSet2, next, sQLiteDatabase, contentValues2, typedArray, packageManager);
                                                typedArray2 = typedArray;
                                            } else {
                                                i6 = integer;
                                                contentValues = contentValues2;
                                                if (TAG_SHORTCUT.equals(name)) {
                                                    typedArray2 = typedArray;
                                                    zAddAppWidget = addUriShortcut(sQLiteDatabase, contentValues, typedArray2) >= 0;
                                                } else {
                                                    typedArray2 = typedArray;
                                                    if (TAG_FOLDER.equals(name)) {
                                                        int resourceId = typedArray2.getResourceId(7, -1);
                                                        if (resourceId != -1) {
                                                            string = this.mContext.getResources().getString(resourceId);
                                                        } else {
                                                            string = this.mContext.getResources().getString(R.string.folder_name);
                                                        }
                                                        contentValues.put("title", string);
                                                        long jAddFolder = addFolder(sQLiteDatabase, contentValues);
                                                        if (jAddFolder < 0) {
                                                            z4 = false;
                                                        }
                                                        ArrayList arrayList2 = new ArrayList();
                                                        int depth2 = xmlResourceParser.getDepth();
                                                        while (true) {
                                                            int next2 = xmlResourceParser.next();
                                                            if (next2 == 3 && xmlResourceParser.getDepth() <= depth2) {
                                                                if (arrayList2.size() < 2 && jAddFolder >= 0) {
                                                                    LauncherProvider.deleteId(sQLiteDatabase, jAddFolder);
                                                                    if (arrayList2.size() > 0) {
                                                                        z2 = false;
                                                                        LauncherProvider.deleteId(sQLiteDatabase, ((Long) arrayList2.get(0)).longValue());
                                                                    } else {
                                                                        z2 = false;
                                                                    }
                                                                    zAddAppWidget = z2;
                                                                    str4 = str4;
                                                                    str6 = str6;
                                                                    attributeSet = attributeSet2;
                                                                    break;
                                                                }
                                                                str4 = str4;
                                                                str6 = str6;
                                                                attributeSet = attributeSet2;
                                                                zAddAppWidget = z4;
                                                                break;
                                                            }
                                                            if (next2 == 2) {
                                                                String name2 = xmlResourceParser.getName();
                                                                int i9 = depth2;
                                                                str6 = str6;
                                                                AttributeSet attributeSet3 = attributeSet2;
                                                                TypedArray typedArrayObtainStyledAttributes2 = this.mContext.obtainStyledAttributes(attributeSet3, R.styleable.Favorite);
                                                                contentValues.clear();
                                                                contentValues.put("container", Long.valueOf(jAddFolder));
                                                                if (str4.equals(name2) && jAddFolder >= 0) {
                                                                    str3 = str4;
                                                                    arrayList = arrayList2;
                                                                    j = jAddFolder;
                                                                    long jAddAppShortcut = addAppShortcut(sQLiteDatabase, contentValues, typedArrayObtainStyledAttributes2, packageManager, intent);
                                                                    if (jAddAppShortcut >= 0) {
                                                                        arrayList.add(Long.valueOf(jAddAppShortcut));
                                                                    }
                                                                    typedArray3 = typedArrayObtainStyledAttributes2;
                                                                } else {
                                                                    j = jAddFolder;
                                                                    str3 = str4;
                                                                    arrayList = arrayList2;
                                                                    if (TAG_SHORTCUT.equals(name2) && jAddFolder >= 0) {
                                                                        typedArray3 = typedArrayObtainStyledAttributes2;
                                                                        long jAddUriShortcut = addUriShortcut(sQLiteDatabase, contentValues, typedArray3);
                                                                        if (jAddUriShortcut >= 0) {
                                                                            arrayList.add(Long.valueOf(jAddUriShortcut));
                                                                        }
                                                                    } else {
                                                                        throw new RuntimeException("Folders can contain only shortcuts");
                                                                    }
                                                                }
                                                                typedArray3.recycle();
                                                                arrayList2 = arrayList;
                                                                attributeSet2 = attributeSet3;
                                                                depth2 = i9;
                                                                str6 = str6;
                                                                str4 = str3;
                                                                jAddFolder = j;
                                                            }
                                                        }
                                                    } else {
                                                        str4 = str4;
                                                        str6 = str6;
                                                        attributeSet = attributeSet2;
                                                        zAddAppWidget = false;
                                                    }
                                                    if (zAddAppWidget) {
                                                        try {
                                                            i7++;
                                                        } catch (IOException e) {
                                                            e = e;
                                                            i4 = i7;
                                                            str5 = str2;
                                                            str6 = str6;
                                                        } catch (RuntimeException e2) {
                                                            e = e2;
                                                            i4 = i7;
                                                            str = str2;
                                                            str6 = str6;
                                                            L.w(str6, str, e);
                                                            if (L.DEBUG) {
                                                                L.d(str6, "loadFavorites end: i = " + i4);
                                                            }
                                                            return i4;
                                                        } catch (XmlPullParserException e3) {
                                                            e = e3;
                                                            i4 = i7;
                                                            str5 = str2;
                                                            str6 = str6;
                                                            L.w(str6, str5, e);
                                                            if (L.DEBUG) {
                                                                L.d(str6, "loadFavorites end: i = " + i4);
                                                            }
                                                            return i4;
                                                        }
                                                    }
                                                    typedArray2.recycle();
                                                    contentValues2 = contentValues;
                                                    attributeSetAsAttributeSet = attributeSet;
                                                    depth = i5;
                                                    integer = i6;
                                                    xml = xmlResourceParser;
                                                    str5 = str2;
                                                    str6 = str6;
                                                    str4 = str4;
                                                }
                                            }
                                            attributeSet = attributeSet2;
                                            if (zAddAppWidget) {
                                                i7++;
                                            }
                                            typedArray2.recycle();
                                            contentValues2 = contentValues;
                                            attributeSetAsAttributeSet = attributeSet;
                                            depth = i5;
                                            integer = i6;
                                            xml = xmlResourceParser;
                                            str5 = str2;
                                            str6 = str6;
                                            str4 = str4;
                                        }
                                    } else {
                                        i5 = i8;
                                        xmlResourceParser = xml;
                                        typedArray = typedArrayObtainStyledAttributes;
                                        str2 = str5;
                                        z = false;
                                        try {
                                            zAddAppWidget = addAppShortcut(sQLiteDatabase, contentValues2, typedArrayObtainStyledAttributes, packageManager, intent) >= 0;
                                        } catch (IOException e4) {
                                            e = e4;
                                            str6 = str6;
                                            i4 = i7;
                                            str5 = str2;
                                        } catch (RuntimeException e5) {
                                            e = e5;
                                            str6 = str6;
                                            i4 = i7;
                                            str = str2;
                                            L.w(str6, str, e);
                                            if (L.DEBUG) {
                                                L.d(str6, "loadFavorites end: i = " + i4);
                                            }
                                            return i4;
                                        } catch (XmlPullParserException e6) {
                                            e = e6;
                                            str6 = str6;
                                            i4 = i7;
                                            str5 = str2;
                                            L.w(str6, str5, e);
                                            if (L.DEBUG) {
                                                L.d(str6, "loadFavorites end: i = " + i4);
                                            }
                                            return i4;
                                        }
                                    }
                                    i6 = integer;
                                    str4 = str4;
                                    str6 = str6;
                                    typedArray2 = typedArray;
                                    attributeSet = attributeSet2;
                                    contentValues = contentValues2;
                                    if (zAddAppWidget) {
                                        i7++;
                                    }
                                    typedArray2.recycle();
                                    contentValues2 = contentValues;
                                    attributeSetAsAttributeSet = attributeSet;
                                    depth = i5;
                                    integer = i6;
                                    xml = xmlResourceParser;
                                    str5 = str2;
                                    str6 = str6;
                                    str4 = str4;
                                }
                            } catch (IOException e7) {
                                e = e7;
                                str5 = str5;
                                str6 = str6;
                                i4 = i7;
                            } catch (RuntimeException e8) {
                                e = e8;
                                str = str5;
                                str6 = str6;
                                i4 = i7;
                            } catch (XmlPullParserException e9) {
                                e = e9;
                                str5 = str5;
                                str6 = str6;
                                i4 = i7;
                            }
                            L.w(str6, str5, e);
                            if (L.DEBUG) {
                                L.d(str6, "loadFavorites end: i = " + i4);
                            }
                            return i4;
                        }
                        i4 = i7;
                        str6 = str6;
                    } catch (IOException e10) {
                        e = e10;
                        i3 = 0;
                        i4 = i3;
                    } catch (XmlPullParserException e11) {
                        e = e11;
                        i2 = 0;
                        i4 = i2;
                        L.w(str6, str5, e);
                        if (L.DEBUG) {
                            L.d(str6, "loadFavorites end: i = " + i4);
                        }
                        return i4;
                    }
                } catch (RuntimeException e12) {
                    e = e12;
                    str = "Got exception parsing favorites.";
                    str6 = LauncherProvider.TAG;
                    i4 = 0;
                }
            } catch (IOException e13) {
                e = e13;
                i3 = 0;
            } catch (XmlPullParserException e14) {
                e = e14;
                i2 = 0;
            }
            if (L.DEBUG) {
                L.d(str6, "loadFavorites end: i = " + i4);
            }
            return i4;
        }

        private long addAppShortcut(SQLiteDatabase sQLiteDatabase, ContentValues contentValues, TypedArray typedArray, PackageManager packageManager, Intent intent) {
            ActivityInfo activityInfo;
            ComponentName componentName;
            String string = typedArray.getString(3);
            String string2 = typedArray.getString(0);
            long j = -1;
            try {
                try {
                    componentName = new ComponentName(string, string2);
                    activityInfo = packageManager.getActivityInfo(componentName, 0);
                } catch (PackageManager.NameNotFoundException unused) {
                    ComponentName componentName2 = new ComponentName(packageManager.currentToCanonicalPackageNames(new String[]{string})[0], string2);
                    activityInfo = packageManager.getActivityInfo(componentName2, 0);
                    componentName = componentName2;
                }
                long jGenerateNewId = generateNewId();
                try {
                    intent.setComponent(componentName);
                    intent.setFlags(270532608);
                    contentValues.put(LauncherSettings.BaseLauncherColumns.INTENT, intent.toUri(0));
                    contentValues.put("title", activityInfo.loadLabel(packageManager).toString());
                    contentValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 0);
                    contentValues.put("spanX", (Integer) 1);
                    contentValues.put("spanY", (Integer) 1);
                    contentValues.put("_id", Long.valueOf(generateNewId()));
                    if (LauncherProvider.dbInsertAndCheck(this, sQLiteDatabase, "favorites", null, contentValues) < 0) {
                        return -1L;
                    }
                    return jGenerateNewId;
                } catch (PackageManager.NameNotFoundException e) {
                    e = e;
                    j = jGenerateNewId;
                    L.w(LauncherProvider.TAG, "Unable to add favorite: " + string + "/" + string2, e);
                    return j;
                }
            } catch (PackageManager.NameNotFoundException e2) {
                e = e2;
                L.w(LauncherProvider.TAG, "Unable to add favorite: " + string + "/" + string2, e);
                return j;
            }
        }

        private long addFolder(SQLiteDatabase sQLiteDatabase, ContentValues contentValues) {
            contentValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 2);
            contentValues.put("spanX", (Integer) 1);
            contentValues.put("spanY", (Integer) 1);
            long jGenerateNewId = generateNewId();
            contentValues.put("_id", Long.valueOf(jGenerateNewId));
            if (LauncherProvider.dbInsertAndCheck(this, sQLiteDatabase, "favorites", null, contentValues) <= 0) {
                return -1L;
            }
            return jGenerateNewId;
        }

        private ComponentName getSearchWidgetProvider() {
            ComponentName globalSearchActivity = ((SearchManager) this.mContext.getSystemService(TAG_SEARCH)).getGlobalSearchActivity();
            if (globalSearchActivity == null) {
                return null;
            }
            return getProviderInPackage(globalSearchActivity.getPackageName());
        }

        private ComponentName getProviderInPackage(String str) {
            List<AppWidgetProviderInfo> installedProviders = AppWidgetManager.getInstance(this.mContext).getInstalledProviders();
            if (installedProviders == null) {
                return null;
            }
            int size = installedProviders.size();
            for (int i = 0; i < size; i++) {
                ComponentName componentName = installedProviders.get(i).provider;
                if (componentName != null && componentName.getPackageName().equals(str)) {
                    return componentName;
                }
            }
            return null;
        }

        private boolean addSearchWidget(SQLiteDatabase sQLiteDatabase, ContentValues contentValues) {
            return addAppWidget(sQLiteDatabase, contentValues, getSearchWidgetProvider(), 4, 1, null);
        }

        private boolean addClockWidget(SQLiteDatabase sQLiteDatabase, ContentValues contentValues) {
            return addAppWidget(sQLiteDatabase, contentValues, new ComponentName("com.android.alarmclock", "com.android.alarmclock.AnalogAppWidgetProvider"), 2, 2, null);
        }

        private boolean addAppWidget(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, int i, SQLiteDatabase sQLiteDatabase, ContentValues contentValues, TypedArray typedArray, PackageManager packageManager) throws XmlPullParserException, IOException {
            boolean z;
            ComponentName componentName;
            String string = typedArray.getString(3);
            String string2 = typedArray.getString(0);
            if (string != null && string2 != null) {
                ComponentName componentName2 = new ComponentName(string, string2);
                try {
                    packageManager.getReceiverInfo(componentName2, 0);
                } catch (Exception unused) {
                    componentName2 = new ComponentName(packageManager.currentToCanonicalPackageNames(new String[]{string})[0], string2);
                    try {
                        packageManager.getReceiverInfo(componentName2, 0);
                    } catch (Exception unused2) {
                        z = false;
                        componentName = componentName2;
                    }
                }
                componentName = componentName2;
                z = true;
                if (z) {
                    int i2 = typedArray.getInt(5, 0);
                    int i3 = typedArray.getInt(6, 0);
                    Bundle bundle = new Bundle();
                    int depth = xmlResourceParser.getDepth();
                    while (true) {
                        int next = xmlResourceParser.next();
                        if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                            return addAppWidget(sQLiteDatabase, contentValues, componentName, i2, i3, bundle);
                        }
                        if (next == 2) {
                            TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, R.styleable.Extra);
                            if (TAG_EXTRA.equals(xmlResourceParser.getName())) {
                                String string3 = typedArrayObtainStyledAttributes.getString(0);
                                String string4 = typedArrayObtainStyledAttributes.getString(1);
                                if (string3 != null && string4 != null) {
                                    bundle.putString(string3, string4);
                                    typedArrayObtainStyledAttributes.recycle();
                                } else {
                                    throw new RuntimeException("Widget extras must have a key and value");
                                }
                            } else {
                                throw new RuntimeException("Widgets can contain only extras");
                            }
                        }
                    }
                }
            }
            return false;
        }

        private boolean addAppWidget(SQLiteDatabase sQLiteDatabase, ContentValues contentValues, ComponentName componentName, int i, int i2, Bundle bundle) {
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.mContext);
            boolean z = false;
            try {
                int iAllocateAppWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
                contentValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 4);
                contentValues.put("spanX", Integer.valueOf(i));
                contentValues.put("spanY", Integer.valueOf(i2));
                contentValues.put("appWidgetId", Integer.valueOf(iAllocateAppWidgetId));
                contentValues.put("_id", Long.valueOf(generateNewId()));
                LauncherProvider.dbInsertAndCheck(this, sQLiteDatabase, "favorites", null, contentValues);
                z = true;
                appWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, componentName);
                if (bundle != null && !bundle.isEmpty()) {
                    Intent intent = new Intent(LauncherProvider.ACTION_APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE);
                    intent.setComponent(componentName);
                    intent.putExtras(bundle);
                    intent.putExtra("appWidgetId", iAllocateAppWidgetId);
                    this.mContext.sendBroadcast(intent);
                }
            } catch (RuntimeException e) {
                L.e(LauncherProvider.TAG, "Problem allocating appWidgetId", e);
            }
            return z;
        }

        private long addUriShortcut(SQLiteDatabase sQLiteDatabase, ContentValues contentValues, TypedArray typedArray) {
            Resources resources = this.mContext.getResources();
            int resourceId = typedArray.getResourceId(2, 0);
            int resourceId2 = typedArray.getResourceId(7, 0);
            String str = null;
            try {
                String string = typedArray.getString(8);
                try {
                    Intent uri = Intent.parseUri(string, 0);
                    if (resourceId == 0 || resourceId2 == 0) {
                        L.w(LauncherProvider.TAG, "Shortcut is missing title or icon resource ID");
                        return -1L;
                    }
                    long jGenerateNewId = generateNewId();
                    uri.setFlags(268435456);
                    contentValues.put(LauncherSettings.BaseLauncherColumns.INTENT, uri.toUri(0));
                    contentValues.put("title", resources.getString(resourceId2));
                    contentValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 1);
                    contentValues.put("spanX", (Integer) 1);
                    contentValues.put("spanY", (Integer) 1);
                    contentValues.put(LauncherSettings.BaseLauncherColumns.ICON_TYPE, (Integer) 0);
                    contentValues.put(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE, this.mContext.getPackageName());
                    contentValues.put(LauncherSettings.BaseLauncherColumns.ICON_RESOURCE, resources.getResourceName(resourceId));
                    contentValues.put("_id", Long.valueOf(jGenerateNewId));
                    if (LauncherProvider.dbInsertAndCheck(this, sQLiteDatabase, "favorites", null, contentValues) < 0) {
                        return -1L;
                    }
                    return jGenerateNewId;
                } catch (URISyntaxException unused) {
                    str = string;
                    L.w(LauncherProvider.TAG, "Shortcut has malformed uri: " + str);
                    return -1L;
                }
            } catch (URISyntaxException unused2) {
            }
        }
    }

    static String buildOrWhereString(String str, int[] iArr) {
        StringBuilder sb = new StringBuilder();
        for (int length = iArr.length - 1; length >= 0; length--) {
            sb.append(str).append("=").append(iArr[length]);
            if (length > 0) {
                sb.append(" OR ");
            }
        }
        return sb.toString();
    }

    static class SqlArguments {
        public final String[] args;
        public final String table;
        public final String where;

        SqlArguments(Uri uri, String str, String[] strArr) {
            if (uri.getPathSegments().size() == 1) {
                this.table = uri.getPathSegments().get(0);
                this.where = str;
                this.args = strArr;
            } else {
                if (uri.getPathSegments().size() != 2) {
                    throw new IllegalArgumentException("Invalid URI: " + uri);
                }
                if (!TextUtils.isEmpty(str)) {
                    throw new UnsupportedOperationException("WHERE clause not supported: " + uri);
                }
                this.table = uri.getPathSegments().get(0);
                this.where = "_id=" + ContentUris.parseId(uri);
                this.args = null;
            }
        }

        SqlArguments(Uri uri) {
            if (uri.getPathSegments().size() == 1) {
                this.table = uri.getPathSegments().get(0);
                this.where = null;
                this.args = null;
                return;
            }
            throw new IllegalArgumentException("Invalid URI: " + uri);
        }
    }
}
