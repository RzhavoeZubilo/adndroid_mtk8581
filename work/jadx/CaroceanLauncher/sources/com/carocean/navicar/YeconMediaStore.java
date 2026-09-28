package com.carocean.navicar;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.SystemProperties;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
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
    public static final boolean FOLDER_LIST_DEEP_LEVEL = false;
    public static final int MEDIA_ALL_FILE = 4096;
    public static final int MEDIA_DIR_FILE = 4097;
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
    private static final String TAG = "YeconMediaStore";
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
    public static final boolean DYNAMIC_PARSE_ID3 = !SystemProperties.get(PerSysDef.PERSYS_BUILD_ZHTD_OEM, "default").equals(Navi.Common.ZHTD_OEM_MOTORCYCLE);
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

    public static boolean isSupport(String str) {
        char c;
        if (str == null) {
            return false;
        }
        if (str.contains(EXT_SDCARD1_PATH)) {
            c = 2;
        } else if (str.contains(EXT_SDCARD2_PATH)) {
            c = 4;
        } else if (str.contains(UDISK1_PATH)) {
            c = '\b';
        } else if (str.contains(UDISK2_PATH)) {
            c = 16;
        } else {
            str.contains(EXTERNAL_PATH);
            c = 1;
        }
        return c != 0;
    }

    public static boolean checkStorageExist(Context context, String str) {
        if (context == null || str == null) {
            return false;
        }
        return "mounted".equals(getDiskStatus(str));
    }

    public static String getDiskStatus(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            File file = new File(str);
            if (!file.exists()) {
                return "";
            }
            String storageState = null;
            if (Build.VERSION.SDK_INT >= 21) {
                storageState = Environment.getExternalStorageState(file);
            } else if (Build.VERSION.SDK_INT >= 19) {
                storageState = Environment.getStorageState(file);
            }
            Log.d(TAG, "getDiskStatus " + str + " status:" + storageState);
            return storageState == null ? "" : storageState.toLowerCase();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean hasStorageExist(String[] strArr) {
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if ("mounted".equals(getDiskStatus(str))) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasStorageExist() {
        for (String str : STORAGES) {
            if ("mounted".equals(getDiskStatus(str))) {
                return true;
            }
        }
        return false;
    }

    public static String[] getStorageMountedPaths(Context context) {
        ArrayList arrayList = new ArrayList();
        if (context != null) {
            for (StorageVolume storageVolume : ((StorageManager) context.getSystemService("storage")).getStorageVolumes()) {
                String state = storageVolume.getState();
                Log.d(TAG, "getStorageMountedPaths: isRemovable=" + storageVolume.isRemovable() + ",state=" + state + ",Path=" + storageVolume.getPath());
                if ("mounted".equals(state) || "mounted_ro".equals(state)) {
                    arrayList.add(storageVolume.getPath());
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static boolean isExist(String str) {
        if (str != null) {
            File file = new File(str);
            if (file.exists() && file.canRead() && file.canWrite()) {
                return true;
            }
        }
        return false;
    }

    public static Uri getContent(String str, String str2) {
        return Uri.parse(CONTENT_URI + str + "/" + str2);
    }

    public static final class YeconMediaFilesColumns {
        public static final String ALBUM = "album";
        public static final String ALBUM_ID = "album_id";
        public static final String APIC = "apic";
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
        public String mApic;
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

        public static String getCreateTableSQL(String str) {
            if (str == null || str.length() == 0) {
                str = YeconMediaStore.TABLE_FILES;
            }
            return (((((((((((((((((((((((("CREATE TABLE IF NOT EXISTS " + str) + "(") + "_id INTEGER PRIMARY KEY AUTOINCREMENT, ") + "data TEXT NOT NULL, ") + "file_name TEXT, ") + "title TEXT, ") + "artist TEXT, ") + "artist_id INTEGER, ") + "album TEXT, ") + "album_id INTEGER, ") + "apic_id INTEGER, ") + "apic TEXT, ") + "parent TEXT, ") + "parent_id INTEGER, ") + "media_type INTEGER, ") + "mime_type INTEGER, ") + "width INTEGER, ") + "height INTEGER, ") + "favorite INTEGER, ") + "letter TEXT, ") + "audio_dir INTEGER, ") + "video_dir INTEGER, ") + "image_dir INTEGER,") + "apk_dir INTEGER") + ")";
        }
    }

    public static final class YeconMediaAlbumColumns {
        public static final String AMOUNT = "amount";
        public static final String NAME = "album_name";
        public static final String _ID = "_id";

        public static String getCreateTableSQL(String str) {
            if (str == null || str.length() == 0) {
                str = "album";
            }
            return ((((("CREATE TABLE IF NOT EXISTS " + str) + "(") + "_id INTEGER PRIMARY KEY AUTOINCREMENT, ") + "album_name TEXT, ") + "amount INTEGER") + ")";
        }
    }

    public static final class YeconMediaArtistColumns {
        public static final String AMOUNT = "amount";
        public static final String NAME = "artist_name";
        public static final String _ID = "_id";

        public static String getCreateTableSQL(String str) {
            if (str == null || str.length() == 0) {
                str = "artist";
            }
            return ((((("CREATE TABLE IF NOT EXISTS " + str) + "(") + "_id INTEGER PRIMARY KEY AUTOINCREMENT, ") + "artist_name TEXT, ") + "amount INTEGER") + ")";
        }
    }

    public static String Conver2Database(String str) {
        if (str.contains(UDISK1_PATH)) {
            return UDISK_VOLUME1;
        }
        if (str.contains(UDISK2_PATH)) {
            return UDISK_VOLUME2;
        }
        if (str.contains(EXTERNAL_PATH)) {
            return EXTERNAL_VOLUME;
        }
        if (str.contains(EXT_SDCARD1_PATH)) {
            return SDCARD_VOLUME1;
        }
        if (str.contains(EXT_SDCARD2_PATH)) {
            return SDCARD_VOLUME2;
        }
        Log.d(TAG, "getDBFile unknown path : " + str);
        return null;
    }

    public static String Convert2Storage(String str) {
        if (str != null) {
            if (EXTERNAL_VOLUME.contains(str)) {
                return EXTERNAL_PATH;
            }
            if (EXT_SDCARD1_PATH.contains(str)) {
                return EXT_SDCARD1_PATH;
            }
            if (EXT_SDCARD2_PATH.contains(str)) {
                return EXT_SDCARD2_PATH;
            }
            if (UDISK1_PATH.contains(str)) {
                return UDISK1_PATH;
            }
            if (UDISK2_PATH.contains(str)) {
                return UDISK2_PATH;
            }
        }
        return null;
    }

    public static String getStoragePath(String str) {
        if (str == null) {
            return null;
        }
        if (str.contains(EXT_SDCARD1_PATH)) {
            return EXT_SDCARD1_PATH;
        }
        if (str.contains(EXT_SDCARD2_PATH)) {
            return EXT_SDCARD2_PATH;
        }
        if (str.contains(UDISK1_PATH)) {
            int iIndexOf = str.indexOf("/", 15);
            if (iIndexOf > 0) {
                str = str.substring(0, iIndexOf);
            }
        } else if (str.contains(UDISK2_PATH)) {
            int iIndexOf2 = str.indexOf("/", 15);
            if (iIndexOf2 > 0) {
                str = str.substring(0, iIndexOf2);
            }
        } else {
            if (str.contains(EXTERNAL_PATH)) {
                return EXTERNAL_PATH;
            }
            return null;
        }
        return str;
    }

    public static Bitmap stringToBitmap(String str) {
        byte[] bArrDecode;
        try {
            if (TextUtils.isEmpty(str) || (bArrDecode = Base64.decode(str, 0)) == null || bArrDecode.length <= 0) {
                return null;
            }
            return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String bitmapToString(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            return bArr.length > 0 ? Base64.encodeToString(bArr, 0) : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
