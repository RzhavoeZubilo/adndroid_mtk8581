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

/* JADX INFO: loaded from: classes3.dex */
public class NaviStatus {
    static final int NAME_COLUMN_ID = 0;
    private static final String TAG = "NaviStatus";
    static final int VAL_COLUMN_ID = 1;

    public static class StatusNotFoundException extends Exception {
        StatusNotFoundException(String msg) {
            super(msg);
        }
    }

    public static void putInt(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name, int value) {
        Uri uri = Uri.parse(status_uri);
        ContentValues values = new ContentValues();
        values.put(name, Integer.valueOf(value));
        cr.insert(uri, values);
    }

    public static int getInt(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name, int def) {
        Uri uri = Uri.parse(status_uri + "/" + name);
        int v = def;
        Cursor cursor = cr.query(uri, null, null, null, null);
        if (cursor != null) {
            cursor.moveToNext();
            try {
                int v2 = cursor.getInt(1);
                v = v2;
            } catch (Exception e) {
                Log.e(TAG, "status " + name + "is not a valid integer.");
                v = def;
            }
            cursor.close();
        }
        return v;
    }

    public static int getInt(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name) throws StatusNotFoundException {
        Uri uri = Uri.parse(status_uri + "/" + name);
        Cursor cursor = cr.query(uri, null, null, null, null);
        if (cursor != null) {
            cursor.moveToNext();
            try {
                try {
                    int i = cursor.getInt(1);
                    cursor.close();
                    return i;
                } catch (Exception e) {
                    throw new StatusNotFoundException(name);
                }
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        throw new StatusNotFoundException(name);
    }

    public static void putLong(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name, Long value) {
        Uri uri = Uri.parse(status_uri);
        ContentValues values = new ContentValues();
        values.put(name, value);
        cr.insert(uri, values);
    }

    public static long getLong(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name, long def) {
        Uri uri = Uri.parse(status_uri + "/" + name);
        long v = def;
        Cursor cursor = cr.query(uri, null, null, null, null);
        if (cursor != null) {
            cursor.moveToNext();
            try {
                long v2 = cursor.getLong(1);
                v = v2;
            } catch (Exception e) {
                Log.e(TAG, "status " + name + "is not a valid long integer.");
                v = def;
            }
            cursor.close();
        }
        return v;
    }

    public static long getLong(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name) throws StatusNotFoundException {
        Uri uri = Uri.parse(status_uri + "/" + name);
        Cursor cursor = cr.query(uri, null, null, null, null);
        if (cursor != null) {
            cursor.moveToNext();
            try {
                try {
                    long j = cursor.getLong(1);
                    cursor.close();
                    return j;
                } catch (Exception e) {
                    throw new StatusNotFoundException(name);
                }
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        throw new StatusNotFoundException(name);
    }

    public static void putFloat(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name, float value) {
        Uri uri = Uri.parse(status_uri);
        ContentValues values = new ContentValues();
        values.put(name, Float.valueOf(value));
        cr.insert(uri, values);
    }

    public static float getFloat(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name, float def) {
        Uri uri = Uri.parse(status_uri + "/" + name);
        float v = def;
        Cursor cursor = cr.query(uri, null, null, null, null);
        if (cursor != null) {
            cursor.moveToNext();
            try {
                float v2 = cursor.getFloat(1);
                v = v2;
            } catch (Exception e) {
                Log.e(TAG, "status " + name + "is not a valid float.");
                v = def;
            }
            cursor.close();
        }
        return v;
    }

    public static float getFloat(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name) throws StatusNotFoundException {
        Uri uri = Uri.parse(status_uri + "/" + name);
        Cursor cursor = cr.query(uri, null, null, null, null);
        if (cursor != null) {
            cursor.moveToNext();
            try {
                try {
                    float f = cursor.getFloat(1);
                    cursor.close();
                    return f;
                } catch (Exception e) {
                    throw new StatusNotFoundException(name);
                }
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        throw new StatusNotFoundException(name);
    }

    public static void putBoolean(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name, boolean value) {
        Uri uri = Uri.parse(status_uri);
        ContentValues values = new ContentValues();
        values.put(name, Boolean.valueOf(value));
        cr.insert(uri, values);
    }

    @Nullable
    public static boolean getBoolean(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name) {
        return Boolean.parseBoolean(getString(status_uri, cr, name));
    }

    public static void putString(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name, String value) {
        Uri uri = Uri.parse(status_uri);
        ContentValues values = new ContentValues();
        values.put(name, value);
        cr.insert(uri, values);
    }

    @Nullable
    public static String getString(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name) {
        Uri uri = Uri.parse(status_uri + "/" + name);
        Cursor cursor = cr.query(uri, null, null, null, null);
        if (cursor == null) {
            return null;
        }
        cursor.moveToNext();
        String v = cursor.getString(1);
        cursor.close();
        return v;
    }

    public static void putObject(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name, Object value) {
        if (value instanceof Serializable) {
            Uri uri = Uri.parse(status_uri);
            ContentValues values = new ContentValues();
            values.put(name, objectToByteArray(value));
            cr.insert(uri, values);
            return;
        }
        Log.e(TAG, "Object value must implements Serializable interface.");
    }

    @Nullable
    public static Object getObject(@Nonnull String status_uri, @Nonnull ContentResolver cr, String name) {
        Uri uri = Uri.parse(status_uri + "/" + name);
        byte[] v = null;
        Cursor cursor = cr.query(uri, null, null, null, null);
        if (cursor != null) {
            cursor.moveToNext();
            v = cursor.getBlob(1);
            cursor.close();
        }
        return byteArrayToObject(v);
    }

    public static void putValues(@Nonnull String status_uri, @Nonnull ContentResolver cr, ContentValues values) {
        Uri uri = Uri.parse(status_uri);
        cr.insert(uri, values);
    }

    public static void printAllStatuses(@Nonnull String status_uri, @Nonnull ContentResolver cr) throws ClassNotFoundException, IOException {
        Uri uri = Uri.parse(status_uri);
        Cursor cursor = cr.query(uri, null, null, null, null);
        if (cursor != null) {
            while (cursor.moveToNext()) {
                if (cursor.getType(1) == 4) {
                    Object o = byteArrayToObject(cursor.getBlob(1));
                    if (o != null) {
                        Log.v(TAG, cursor.getString(0) + ",  " + o.toString());
                    } else {
                        Log.e(TAG, "get Object fail. status key name = " + cursor.getString(0));
                    }
                } else {
                    Log.v(TAG, cursor.getString(0) + ",  " + cursor.getString(1));
                }
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002d -> B:41:0x0047). Please report as a decompilation issue!!! */
    @Nullable
    public static byte[] objectToByteArray(Object obj) {
        if (obj == null) {
            return null;
        }
        byte[] bytes = null;
        ByteArrayOutputStream byteArrayOutputStream = null;
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    objectOutputStream.writeObject(obj);
                    objectOutputStream.flush();
                    bytes = byteArrayOutputStream.toByteArray();
                    try {
                        objectOutputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (byteArrayOutputStream == null) {
                        throw th;
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        throw th;
                    }
                }
            } catch (IOException e4) {
                e4.printStackTrace();
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
            }
        } catch (IOException e6) {
            e6.printStackTrace();
        }
        return bytes;
    }

    @Nullable
    public static Object byteArrayToObject(byte[] bytes) throws ClassNotFoundException, IOException {
        if (bytes == null) {
            return null;
        }
        Object obj = null;
        ByteArrayInputStream byteArrayInputStream = null;
        ObjectInputStream objectInputStream = null;
        try {
            try {
                try {
                    byteArrayInputStream = new ByteArrayInputStream(bytes);
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    obj = objectInputStream.readObject();
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    objectInputStream.close();
                } catch (Exception e2) {
                    e2.printStackTrace();
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    }
                    return obj;
                }
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return obj;
        } catch (Throwable th) {
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            if (objectInputStream == null) {
                throw th;
            }
            try {
                objectInputStream.close();
                throw th;
            } catch (IOException e6) {
                e6.printStackTrace();
                throw th;
            }
        }
    }
}
