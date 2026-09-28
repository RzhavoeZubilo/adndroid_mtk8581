package com.carocean.navicar;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class YeconMediaStore {
    public static final String ACTION = "action";
    public static final String ACTION_CKX_SCAN_FILE = "com.ckx.action.SCAN_FILE";
    public static final String ACTION_MEDIA_SCANNER_SCAN_DIR = "yecon.intent.action.MEDIA_SCANNER_SCAN_DIR";
    public static final String ACTION_SCAN_ANALYSIS = "scan_analysis";
    public static final String ACTION_SCAN_CANCEL = "scan_cancel";
    public static final String ACTION_SCAN_FILE = "scan_file";
    public static final String ACTION_SCAN_FINISH = "scan_finish";
    public static final String ACTION_SCAN_START = "scan_start";
    public static final String ACTION_YECON_MEIDA_SCANER_STATUS = "yecon.intent.action.MEDIA_SCANER_STATUS";
    public static final boolean ALLOWS_SCANNER_APK = true;
    private static final String AUTHORITIES = "com.ckx.scanner.provider.YeconMediaProvider";
    public static final boolean DYNAMIC_PARSE_ID3 = true;
    public static final boolean FOLDER_LIST_DEEP_LEVEL = false;
    public static final int MEDIA_ALL_FILE = 4096;
    public static final int MEDIA_DIR_FILE = 4096;
    private static final int MEGA_BYTE_SIZE = 1048576;
    private static final int MIN_STORAGE_SIZE = 10485760;
    public static final String MONSTOR_UDISK_1_DEV = "udisk1dev";
    public static final String MONSTOR_UDISK_1_P = "udisk1p";
    public static final String MONSTOR_UDISK_2_DEV = "udisk2dev";
    public static final String MONSTOR_UDISK_2_P = "udisk2p";
    public static final String PATH = "path";
    public static final String PATHS = "paths";
    public static final String TABLE_ALBUM = "album";
    public static final String TABLE_ARTIST = "artist";
    public static final String TABLE_FILES = "files";
    public static final String UDISK_PATH = "/storage/udisk";
    public static final String UDISK_PATH_1_DEV = "/storage/udisk1dev";
    public static final String UDISK_PATH_1_P = "/storage/udisk1p";
    public static final String UDISK_PATH_2_DEV = "/storage/udisk2dev";
    public static final String UDISK_PATH_2_P = "/storage/udisk2p";
    public static final String URI_EXTERNAL_SCAN_STATUS = "content://com.carocean.status.provider/media/external";
    public static final String URI_SDCARD1_SCAN_STATUS = "content://com.carocean.status.provider/media/sdcard1";
    public static final String URI_SDCARD2_SCAN_STATUS = "content://com.carocean.status.provider/media/sdcard2";
    public static final String URI_UDISK1_SCAN_STATUS = "content://com.carocean.status.provider/media/udisk1";
    public static final String URI_UDISK2_SCAN_STATUS = "content://com.carocean.status.provider/media/udisk2";
    public static final String VIDEO_FILE_PATH = "video.file.path";
    public static final String VIDEO_LIST_TYPE = "video.list.type";
    public static final String YECON_MEDIA_MOUNTED = "yecon.intent.action.MEDIA_MOUNTED";
    public static final String EXTERNAL_VOLUME = "external";
    public static final String SDCARD_VOLUME1 = "sdcard1";
    public static final String SDCARD_VOLUME2 = "sdcard2";
    public static final String UDISK_VOLUME1 = "udisk1";
    public static final String UDISK_VOLUME2 = "udisk2";
    public static final String[] DATABASES = {EXTERNAL_VOLUME, SDCARD_VOLUME1, SDCARD_VOLUME2, UDISK_VOLUME1, UDISK_VOLUME2};
    public static final String EXTERNAL_PATH = "/storage/emulated/0";
    public static final String EXT_SDCARD1_PATH = "/storage/ext_sdcard1";
    public static final String EXT_SDCARD2_PATH = "/storage/ext_sdcard2";
    public static final String UDISK1_PATH = "/storage/udisk1";
    public static final String UDISK1_DEV1_PATH = "/storage/udisk1dev1";
    public static final String UDISK1_DEV2_PATH = "/storage/udisk1dev2";
    public static final String UDISK1_P1_PATH = "/storage/udisk1p1";
    public static final String UDISK1_P2_PATH = "/storage/udisk1p2";
    public static final String UDISK1_DEV1_P1_PATH = "/storage/udisk1dev1p1";
    public static final String UDISK1_DEV1_P2_PATH = "/storage/udisk1dev1p2";
    public static final String UDISK1_DEV2_P1_PATH = "/storage/udisk1dev2p1";
    public static final String UDISK1_DEV2_P2_PATH = "/storage/udisk1dev2p2";
    public static final String UDISK1_DEV3_P1_PATH = "/storage/udisk1dev3p1";
    public static final String UDISK1_DEV3_P2_PATH = "/storage/udisk1dev3p2";
    public static final String UDISK1_DEV3_PATH = "/storage/udisk1dev3";
    public static final String UDISK2_PATH = "/storage/udisk2";
    public static final String UDISK2_DEV1_PATH = "/storage/udisk2dev1";
    public static final String UDISK2_DEV2_PATH = "/storage/udisk2dev2";
    public static final String UDISK2_DEV3_PATH = "/storage/udisk2dev3";
    public static final String UDISK2_P1_PATH = "/storage/udisk2p1";
    public static final String UDISK2_P2_PATH = "/storage/udisk2p2";
    public static final String UDISK2_DEV1_P1_PATH = "/storage/udisk2dev1p1";
    public static final String UDISK2_DEV1_P2_PATH = "/storage/udisk2dev1p2";
    public static final String UDISK2_DEV2_P1_PATH = "/storage/udisk2dev2p1";
    public static final String UDISK2_DEV2_P2_PATH = "/storage/udisk2dev2p2";
    public static final String UDISK2_DEV3_P1_PATH = "/storage/udisk2dev3p1";
    public static final String UDISK2_DEV3_P2_PATH = "/storage/udisk2dev3p2";
    public static final String[] STORAGES = {EXTERNAL_PATH, EXT_SDCARD1_PATH, EXT_SDCARD2_PATH, UDISK1_PATH, UDISK1_DEV1_PATH, UDISK1_DEV2_PATH, UDISK1_P1_PATH, UDISK1_P2_PATH, UDISK1_DEV1_P1_PATH, UDISK1_DEV1_P2_PATH, UDISK1_DEV2_P1_PATH, UDISK1_DEV2_P2_PATH, UDISK1_DEV3_P1_PATH, UDISK1_DEV3_P2_PATH, UDISK1_DEV3_PATH, UDISK2_PATH, UDISK2_DEV1_PATH, UDISK2_DEV2_PATH, UDISK2_DEV3_PATH, UDISK2_P1_PATH, UDISK2_P2_PATH, UDISK2_DEV1_P1_PATH, UDISK2_DEV1_P2_PATH, UDISK2_DEV2_P1_PATH, UDISK2_DEV2_P2_PATH, UDISK2_DEV3_P1_PATH, UDISK2_DEV3_P2_PATH};
    public static final String[] ALL_UDISK1_PATH = {UDISK1_PATH, UDISK1_DEV1_PATH, UDISK1_DEV2_PATH, UDISK1_P1_PATH, UDISK1_P2_PATH, UDISK1_DEV1_P1_PATH, UDISK1_DEV1_P2_PATH, UDISK1_DEV2_P1_PATH, UDISK1_DEV2_P2_PATH, UDISK1_DEV3_P1_PATH, UDISK1_DEV3_P2_PATH, UDISK1_DEV3_PATH};
    public static final String[] ALL_UDISK2_PATH = {UDISK2_PATH, UDISK2_DEV1_PATH, UDISK2_DEV2_PATH, UDISK2_P1_PATH, UDISK2_P2_PATH, UDISK2_DEV1_P1_PATH, UDISK2_DEV1_P2_PATH, UDISK2_DEV2_P1_PATH, UDISK2_DEV2_P2_PATH, UDISK2_DEV3_P1_PATH, UDISK2_DEV3_P2_PATH, UDISK2_DEV3_PATH};
    public static final Uri CONTENT_URI = Uri.parse("content://com.ckx.scanner.provider.YeconMediaProvider/");

    public static final class FileType {
        public static final int FILE_TYPE_3GPP = 23;
        public static final int FILE_TYPE_3GPP2 = 24;
        public static final int FILE_TYPE_AAC = 8;
        public static final int FILE_TYPE_AC3 = 16;
        public static final int FILE_TYPE_AIFF = 15;
        public static final int FILE_TYPE_AMR = 4;
        public static final int FILE_TYPE_APE = 17;
        public static final int FILE_TYPE_APK = 108;
        public static final int FILE_TYPE_ASF = 26;
        public static final int FILE_TYPE_AVI = 29;
        public static final int FILE_TYPE_AWB = 5;
        public static final int FILE_TYPE_BMP = 34;
        public static final int FILE_TYPE_FL = 51;
        public static final int FILE_TYPE_FLAC = 10;
        public static final int FILE_TYPE_GIF = 32;
        public static final int FILE_TYPE_HTML = 101;
        public static final int FILE_TYPE_HTTPLIVE = 44;
        public static final int FILE_TYPE_IMY = 13;
        public static final int FILE_TYPE_JPEG = 31;
        public static final int FILE_TYPE_M3U = 41;
        public static final int FILE_TYPE_M4A = 2;
        public static final int FILE_TYPE_M4V = 22;
        public static final int FILE_TYPE_MID = 11;
        public static final int FILE_TYPE_MKA = 9;
        public static final int FILE_TYPE_MKV = 27;
        public static final int FILE_TYPE_MP2PS = 200;
        public static final int FILE_TYPE_MP2TS = 28;
        public static final int FILE_TYPE_MP3 = 1;
        public static final int FILE_TYPE_MP4 = 21;
        public static final int FILE_TYPE_MS_EXCEL = 105;
        public static final int FILE_TYPE_MS_POWERPOINT = 106;
        public static final int FILE_TYPE_MS_WORD = 104;
        public static final int FILE_TYPE_OGG = 7;
        public static final int FILE_TYPE_PDF = 102;
        public static final int FILE_TYPE_PLS = 42;
        public static final int FILE_TYPE_PNG = 33;
        public static final int FILE_TYPE_RA = 14;
        public static final int FILE_TYPE_RM = 201;
        public static final int FILE_TYPE_SMF = 12;
        public static final int FILE_TYPE_TEXT = 100;
        public static final int FILE_TYPE_WAV = 3;
        public static final int FILE_TYPE_WBMP = 35;
        public static final int FILE_TYPE_WEBM = 30;
        public static final int FILE_TYPE_WEBP = 36;
        public static final int FILE_TYPE_WMA = 6;
        public static final int FILE_TYPE_WMV = 25;
        public static final int FILE_TYPE_WPL = 43;
        public static final int FILE_TYPE_XML = 103;
        public static final int FILE_TYPE_ZIP = 107;
    }

    public static final class Support {
        public static final int ALL = 255;
        public static final int EXTERNAL = 1;
        public static final int SDCARD1 = 2;
        public static final int SDCARD2 = 4;
        public static final int UDISK1 = 8;
        public static final int UDISK2 = 16;
        public static final int UDISK3 = 32;
        public static final int UDISK4 = 64;
        public static final int UDISK5 = 128;
    }

    public static boolean isSupport(String storage) {
        int iSupport = 1;
        if (storage == null) {
            return false;
        }
        if (storage.contains(EXT_SDCARD1_PATH)) {
            iSupport = 255 & 2;
        } else if (storage.contains(EXT_SDCARD2_PATH)) {
            iSupport = 255 & 4;
        } else if (storage.contains(UDISK1_PATH)) {
            iSupport = 255 & 8;
        } else if (storage.contains(UDISK2_PATH)) {
            iSupport = 255 & 16;
        } else if (storage.contains(EXTERNAL_PATH)) {
            iSupport = 255 & 1;
        }
        return iSupport != 0;
    }

    public static boolean checkStorageExist(Context context, String storage) {
        if (context == null || storage == null) {
            return false;
        }
        return "mounted".equals(getDiskStatus(storage));
    }

    public static String getDiskStatus(String strPath) {
        try {
            if (TextUtils.isEmpty(strPath)) {
                return "";
            }
            File file = new File(strPath);
            if (!file.exists()) {
                return "";
            }
            String status = null;
            if (Build.VERSION.SDK_INT >= 21) {
                status = Environment.getExternalStorageState(file);
            } else if (Build.VERSION.SDK_INT >= 19) {
                status = Environment.getStorageState(file);
            }
            Log.d("YeconMediaStore", "getDiskStatus " + strPath + " status:" + status);
            return status == null ? "" : status.toLowerCase();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean hasStorageExist(String[] storages) {
        if (storages == null) {
            return false;
        }
        for (String path : storages) {
            if ("mounted".equals(getDiskStatus(path))) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasStorageExist() {
        for (String path : STORAGES) {
            if ("mounted".equals(getDiskStatus(path))) {
                return true;
            }
        }
        return false;
    }

    public static String[] getStorageMountedPaths(Context context) {
        List<String> pathsList = new ArrayList<>();
        if (context != null) {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            try {
                Method method = StorageManager.class.getDeclaredMethod("getVolumePaths", new Class[0]);
                method.setAccessible(true);
                Object result = method.invoke(storageManager, new Object[0]);
                if (result != null && (result instanceof String[])) {
                    String[] pathes = (String[]) result;
                    for (String path : pathes) {
                        if (!TextUtils.isEmpty(path) && new File(path).exists()) {
                            StatFs statFs = new StatFs(path);
                            long lSize = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
                            long lVolumn = lSize / 10485760;
                            if (lVolumn != 0) {
                                pathsList.add(path);
                            } else {
                                continue;
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                File externalFolder = Environment.getExternalStorageDirectory();
                if (externalFolder != null) {
                    pathsList.add(externalFolder.getAbsolutePath());
                }
            }
        }
        return (String[]) pathsList.toArray(new String[pathsList.size()]);
    }

    private static boolean isExist(String path) {
        if (path == null) {
            return false;
        }
        File file = new File(path);
        if (!file.exists() || !file.canRead() || !file.canWrite()) {
            return false;
        }
        return true;
    }

    public static Uri getContent(String strDataBase, String strTable) {
        return Uri.parse(CONTENT_URI + strDataBase + "/" + strTable);
    }

    public static final class YeconMediaFilesColumns {
        public static final String ALBUM = "album";
        public static final String ALBUM_ID = "album_id";
        public static final String APIC_ID = "apic_id";
        public static final String APK_DIR = "apk_dir";
        public static final String ARTIST = "artist";
        public static final String ARTIST_ID = "artist_id";
        public static final String AUDIO_DIR = "audio_dir";
        public static final String DATA = "data";
        public static final String FAVORITE = "favorite";
        public static final String HEIGHT = "height";
        public static final String IMAGE_DIR = "image_dir";
        public static final String LETTER = "letter";
        public static final String MEDIA_TYPE = "media_type";
        public static final String MIME_TYPE = "mime_type";
        public static final String NAME = "file_name";
        public static final String PARENT = "parent";
        public static final String PARENT_ID = "parent_id";
        public static final String TITLE = "title";
        public static final String VIDEO_DIR = "video_dir";
        public static final String WIDTH = "width";
        public static final String _ID = "_id";
        public String mAlbum;
        public int mAlbumID;
        public int mApicID;
        public int mApkDir;
        public String mArtist;
        public int mArtistID;
        public int mAudioDir;
        public String mData;
        public int mFavorite;
        public int mHeight;
        public int mID;
        public int mImageDir;
        public String mLetter;
        public int mMediaType;
        public int mMimeType;
        public String mName;
        public String mParent;
        public int mParentID;
        public String mTitle;
        public int mVideoDir;
        public int mWidth;

        public static String getCreateTableSQL(String table) {
            if (table == null || table.length() == 0) {
                table = YeconMediaStore.TABLE_FILES;
            }
            String strSQL = "CREATE TABLE IF NOT EXISTS " + table;
            return ((((((((((((((((((((((strSQL + "(") + "_id INTEGER PRIMARY KEY AUTOINCREMENT, ") + "data TEXT NOT NULL, ") + "file_name TEXT, ") + "title TEXT, ") + "artist TEXT, ") + "artist_id INTEGER, ") + "album TEXT, ") + "album_id INTEGER, ") + "apic_id INTEGER, ") + "parent TEXT, ") + "parent_id INTEGER, ") + "media_type INTEGER, ") + "mime_type INTEGER, ") + "width INTEGER, ") + "height INTEGER, ") + "favorite INTEGER, ") + "letter TEXT, ") + "audio_dir INTEGER, ") + "video_dir INTEGER, ") + "image_dir INTEGER,") + "apk_dir INTEGER") + ")";
        }
    }

    public static final class YeconMediaAlbumColumns {
        public static final String AMOUNT = "amount";
        public static final String NAME = "album_name";
        public static final String _ID = "_id";

        public static String getCreateTableSQL(String table) {
            if (table == null || table.length() == 0) {
                table = "album";
            }
            String strSQL = "CREATE TABLE IF NOT EXISTS " + table;
            return ((((strSQL + "(") + "_id INTEGER PRIMARY KEY AUTOINCREMENT, ") + "album_name TEXT, ") + "amount INTEGER") + ")";
        }
    }

    public static final class YeconMediaArtistColumns {
        public static final String AMOUNT = "amount";
        public static final String NAME = "artist_name";
        public static final String _ID = "_id";

        public static String getCreateTableSQL(String table) {
            if (table == null || table.length() == 0) {
                table = "artist";
            }
            String strSQL = "CREATE TABLE IF NOT EXISTS " + table;
            return ((((strSQL + "(") + "_id INTEGER PRIMARY KEY AUTOINCREMENT, ") + "artist_name TEXT, ") + "amount INTEGER") + ")";
        }
    }

    public static String Conver2Database(String strStorage) {
        if (strStorage == null) {
            return null;
        }
        if (strStorage.contains(EXT_SDCARD1_PATH)) {
            return SDCARD_VOLUME1;
        }
        if (strStorage.contains(EXT_SDCARD2_PATH)) {
            return SDCARD_VOLUME2;
        }
        if (strStorage.contains(UDISK1_PATH)) {
            return UDISK_VOLUME1;
        }
        if (strStorage.contains(UDISK2_PATH)) {
            return UDISK_VOLUME2;
        }
        if (!strStorage.contains(EXTERNAL_PATH)) {
            return null;
        }
        return EXTERNAL_VOLUME;
    }

    public static String Convert2Storage(String dbName) {
        if (dbName == null) {
            return null;
        }
        if (EXTERNAL_VOLUME.contains(dbName)) {
            return EXTERNAL_PATH;
        }
        if (EXT_SDCARD1_PATH.contains(dbName)) {
            return EXT_SDCARD1_PATH;
        }
        if (EXT_SDCARD2_PATH.contains(dbName)) {
            return EXT_SDCARD2_PATH;
        }
        if (UDISK1_PATH.contains(dbName)) {
            return UDISK1_PATH;
        }
        if (!UDISK2_PATH.contains(dbName)) {
            return null;
        }
        return UDISK2_PATH;
    }

    public static String getStoragePath(String strFile) {
        if (strFile == null) {
            return null;
        }
        if (strFile.contains(EXT_SDCARD1_PATH)) {
            return EXT_SDCARD1_PATH;
        }
        if (strFile.contains(EXT_SDCARD2_PATH)) {
            return EXT_SDCARD2_PATH;
        }
        if (strFile.contains(UDISK1_PATH)) {
            int iIndex = strFile.indexOf("/", UDISK1_PATH.length());
            if (iIndex > 0) {
                String strDisk = strFile.substring(0, iIndex);
                return strDisk;
            }
            return strFile;
        }
        if (strFile.contains(UDISK2_PATH)) {
            int iIndex2 = strFile.indexOf("/", UDISK2_PATH.length());
            if (iIndex2 > 0) {
                String strDisk2 = strFile.substring(0, iIndex2);
                return strDisk2;
            }
            return strFile;
        }
        if (!strFile.contains(EXTERNAL_PATH)) {
            return null;
        }
        return EXTERNAL_PATH;
    }
}
