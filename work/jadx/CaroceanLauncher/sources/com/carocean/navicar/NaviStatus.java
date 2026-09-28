package com.carocean.navicar;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class NaviStatus {
    static final int NAME_COLUMN_ID = 0;
    private static final String TAG = "NaviStatus";
    static final int VAL_COLUMN_ID = 1;

    public static class StatusNotFoundException extends Exception {
        StatusNotFoundException(String str) {
            super(str);
        }
    }

    public static void putInt(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2, int i) {
        Uri uri = Uri.parse(str);
        ContentValues contentValues = new ContentValues();
        contentValues.put(str2, Integer.valueOf(i));
        contentResolver.insert(uri, contentValues);
    }

    public static int getInt(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2, int i) {
        Cursor cursorQuery = contentResolver.query(Uri.parse(str + "/" + str2), null, null, null, null);
        if (cursorQuery != null) {
            cursorQuery.moveToNext();
            try {
                i = cursorQuery.getInt(1);
            } catch (Exception unused) {
                Log.e(TAG, "status " + str2 + "is not a valid integer.");
            }
            cursorQuery.close();
        }
        return i;
    }

    public static int getInt(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2) throws StatusNotFoundException {
        Cursor cursorQuery = contentResolver.query(Uri.parse(str + "/" + str2), null, null, null, null);
        if (cursorQuery != null) {
            cursorQuery.moveToNext();
            try {
                try {
                    int i = cursorQuery.getInt(1);
                    cursorQuery.close();
                    return i;
                } catch (Exception unused) {
                    throw new StatusNotFoundException(str2);
                }
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        throw new StatusNotFoundException(str2);
    }

    public static void putLong(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2, Long l) {
        Uri uri = Uri.parse(str);
        ContentValues contentValues = new ContentValues();
        contentValues.put(str2, l);
        contentResolver.insert(uri, contentValues);
    }

    public static long getLong(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2, long j) {
        Cursor cursorQuery = contentResolver.query(Uri.parse(str + "/" + str2), null, null, null, null);
        if (cursorQuery != null) {
            cursorQuery.moveToNext();
            try {
                j = cursorQuery.getLong(1);
            } catch (Exception unused) {
                Log.e(TAG, "status " + str2 + "is not a valid long integer.");
            }
            cursorQuery.close();
        }
        return j;
    }

    public static long getLong(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2) throws StatusNotFoundException {
        Cursor cursorQuery = contentResolver.query(Uri.parse(str + "/" + str2), null, null, null, null);
        if (cursorQuery != null) {
            cursorQuery.moveToNext();
            try {
                try {
                    long j = cursorQuery.getLong(1);
                    cursorQuery.close();
                    return j;
                } catch (Exception unused) {
                    throw new StatusNotFoundException(str2);
                }
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        throw new StatusNotFoundException(str2);
    }

    public static void putFloat(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2, float f) {
        Uri uri = Uri.parse(str);
        ContentValues contentValues = new ContentValues();
        contentValues.put(str2, Float.valueOf(f));
        contentResolver.insert(uri, contentValues);
    }

    public static float getFloat(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2, float f) {
        Cursor cursorQuery = contentResolver.query(Uri.parse(str + "/" + str2), null, null, null, null);
        if (cursorQuery != null) {
            cursorQuery.moveToNext();
            try {
                f = cursorQuery.getFloat(1);
            } catch (Exception unused) {
                Log.e(TAG, "status " + str2 + "is not a valid float.");
            }
            cursorQuery.close();
        }
        return f;
    }

    public static float getFloat(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2) throws StatusNotFoundException {
        Cursor cursorQuery = contentResolver.query(Uri.parse(str + "/" + str2), null, null, null, null);
        if (cursorQuery != null) {
            cursorQuery.moveToNext();
            try {
                try {
                    float f = cursorQuery.getFloat(1);
                    cursorQuery.close();
                    return f;
                } catch (Exception unused) {
                    throw new StatusNotFoundException(str2);
                }
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        throw new StatusNotFoundException(str2);
    }

    public static void putBoolean(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2, boolean z) {
        Uri uri = Uri.parse(str);
        ContentValues contentValues = new ContentValues();
        contentValues.put(str2, Boolean.valueOf(z));
        contentResolver.insert(uri, contentValues);
    }

    @Nullable
    public static boolean getBoolean(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2) {
        return Boolean.parseBoolean(getString(str, contentResolver, str2));
    }

    public static void putString(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2, String str3) {
        Uri uri = Uri.parse(str);
        ContentValues contentValues = new ContentValues();
        contentValues.put(str2, str3);
        contentResolver.insert(uri, contentValues);
    }

    @Nullable
    public static String getString(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2) {
        Cursor cursorQuery = contentResolver.query(Uri.parse(str + "/" + str2), null, null, null, null);
        if (cursorQuery == null) {
            return null;
        }
        cursorQuery.moveToNext();
        String string = cursorQuery.getString(1);
        cursorQuery.close();
        return string;
    }

    public static void putObject(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2, Object obj) {
        if (obj instanceof Serializable) {
            Uri uri = Uri.parse(str);
            ContentValues contentValues = new ContentValues();
            contentValues.put(str2, objectToByteArray(obj));
            contentResolver.insert(uri, contentValues);
            return;
        }
        Log.e(TAG, "Object value must implements Serializable interface.");
    }

    @Nullable
    public static Object getObject(@Nonnull String str, @Nonnull ContentResolver contentResolver, String str2) {
        byte[] blob;
        Cursor cursorQuery = contentResolver.query(Uri.parse(str + "/" + str2), null, null, null, null);
        if (cursorQuery != null) {
            cursorQuery.moveToNext();
            blob = cursorQuery.getBlob(1);
            cursorQuery.close();
        } else {
            blob = null;
        }
        return byteArrayToObject(blob);
    }

    public static void putValues(@Nonnull String str, @Nonnull ContentResolver contentResolver, ContentValues contentValues) {
        contentResolver.insert(Uri.parse(str), contentValues);
    }

    public static void printAllStatuses(@Nonnull String str, @Nonnull ContentResolver contentResolver) throws Throwable {
        Cursor cursorQuery = contentResolver.query(Uri.parse(str), null, null, null, null);
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                if (cursorQuery.getType(1) == 4) {
                    Object objByteArrayToObject = byteArrayToObject(cursorQuery.getBlob(1));
                    if (objByteArrayToObject != null) {
                        Log.v(TAG, cursorQuery.getString(0) + ",  " + objByteArrayToObject.toString());
                    } else {
                        Log.e(TAG, "get Object fail. status key name = " + cursorQuery.getString(0));
                    }
                } else {
                    Log.v(TAG, cursorQuery.getString(0) + ",  " + cursorQuery.getString(1));
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:? A[SYNTHETIC] */
    @Nullable
    public static byte[] objectToByteArray(Object obj) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        byte[] byteArray = null;
        byteArray = null;
        byteArray = null;
        objectOutputStream = null;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            if (obj == null) {
                return null;
            }
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    try {
                        try {
                            objectOutputStream.writeObject(obj);
                            objectOutputStream.flush();
                            byteArray = byteArrayOutputStream.toByteArray();
                            try {
                                objectOutputStream.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            byteArrayOutputStream.close();
                        } catch (IOException e2) {
                            e = e2;
                            e.printStackTrace();
                            if (objectOutputStream != null) {
                                try {
                                    objectOutputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                byteArrayOutputStream.close();
                            }
                            return byteArray;
                        }
                    } catch (Throwable th) {
                        th = th;
                        objectOutputStream2 = objectOutputStream;
                        if (objectOutputStream2 != null) {
                            try {
                                objectOutputStream2.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                                throw th;
                            } catch (IOException e5) {
                                e5.printStackTrace();
                                throw th;
                            }
                        }
                        throw th;
                    }
                } catch (IOException e6) {
                    e = e6;
                    objectOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (objectOutputStream2 != null) {
                        objectOutputStream2.close();
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                        throw th;
                    }
                    throw th;
                }
            } catch (IOException e7) {
                e = e7;
                byteArrayOutputStream = null;
                objectOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
        } catch (IOException e8) {
            e8.printStackTrace();
        }
        return byteArray;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.ByteArrayInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.ByteArrayInputStream] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.ByteArrayInputStream] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x001f -> B:51:0x0047). Please report as a decompilation issue!!! */
    @Nullable
    public static Object byteArrayToObject(byte[] e) throws Throwable {
        ?? byteArrayInputStream;
        Object object = null;
        try {
            try {
                if (e == 0) {
                    return null;
                }
                try {
                    byteArrayInputStream = new ByteArrayInputStream(e);
                    try {
                        e = new ObjectInputStream(byteArrayInputStream);
                        try {
                            object = e.readObject();
                            try {
                                byteArrayInputStream.close();
                                byteArrayInputStream = byteArrayInputStream;
                            } catch (IOException e2) {
                                e2.printStackTrace();
                                byteArrayInputStream = e2;
                            }
                            e.close();
                        } catch (Exception e3) {
                            e = e3;
                            e.printStackTrace();
                            byteArrayInputStream = byteArrayInputStream;
                            if (byteArrayInputStream != 0) {
                                try {
                                    byteArrayInputStream.close();
                                    byteArrayInputStream = byteArrayInputStream;
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                    byteArrayInputStream = e4;
                                }
                            }
                            if (e != 0) {
                                e.close();
                            }
                        }
                    } catch (Exception e5) {
                        e = e5;
                        e = 0;
                    } catch (Throwable th) {
                        th = th;
                        e = 0;
                        if (byteArrayInputStream != 0) {
                            try {
                                byteArrayInputStream.close();
                            } catch (IOException e6) {
                                e6.printStackTrace();
                            }
                        }
                        if (e != 0) {
                            try {
                                e.close();
                                throw th;
                            } catch (IOException e7) {
                                e7.printStackTrace();
                                throw th;
                            }
                        }
                        throw th;
                    }
                } catch (Exception e8) {
                    e = e8;
                    e = 0;
                    byteArrayInputStream = 0;
                } catch (Throwable th2) {
                    byteArrayInputStream = 0;
                    th = th2;
                    e = 0;
                }
                return object;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e9) {
            e = e9;
            e.printStackTrace();
        }
    }
}
