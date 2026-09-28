package com.carocean.navicar.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class BitmapUtils {
    private byte[] addBMPImageHeader(int i) {
        return new byte[]{66, 77, (byte) (i >> 0), (byte) (i >> 8), (byte) (i >> 16), (byte) (i >> 24), 0, 0, 0, 0, 54, 0, 0, 0};
    }

    private byte[] addBMPImageInfosHeader(int i, int i2) {
        return new byte[]{40, 0, 0, 0, (byte) (i >> 0), (byte) (i >> 8), (byte) (i >> 16), (byte) (i >> 24), (byte) (i2 >> 0), (byte) (i2 >> 8), (byte) (i2 >> 16), (byte) (i2 >> 24), 1, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, -32, 1, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    }

    public void saveLogoPic(Bitmap bitmap, File file) {
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            byte[] bArrAddBMP_RGB_888 = addBMP_RGB_888(iArr, width, height);
            byte[] bArrAddBMPImageHeader = addBMPImageHeader(bArrAddBMP_RGB_888.length);
            byte[] bArrAddBMPImageInfosHeader = addBMPImageInfosHeader(width, height);
            byte[] bArr = new byte[bArrAddBMP_RGB_888.length + 54];
            System.arraycopy(bArrAddBMPImageHeader, 0, bArr, 0, bArrAddBMPImageHeader.length);
            System.arraycopy(bArrAddBMPImageInfosHeader, 0, bArr, 14, bArrAddBMPImageInfosHeader.length);
            System.arraycopy(bArrAddBMP_RGB_888, 0, bArr, 54, bArrAddBMP_RGB_888.length);
            if (file.exists()) {
                file.delete();
            }
            try {
                file.createNewFile();
                new FileOutputStream(file).write(bArr);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    private byte[] addBMP_RGB_888(int[] iArr, int i, int i2) {
        int length = iArr.length;
        System.out.println(iArr.length);
        byte[] bArr = new byte[i2 * i * 3];
        int i3 = length - 1;
        int i4 = 0;
        while (i3 >= i) {
            int i5 = i3 - i;
            for (int i6 = i5 + 1; i6 <= i3; i6++) {
                bArr[i4] = (byte) (iArr[i6] >> 0);
                bArr[i4 + 1] = (byte) (iArr[i6] >> 8);
                bArr[i4 + 2] = (byte) (iArr[i6] >> 16);
                i4 += 3;
            }
            i3 = i5;
        }
        return bArr;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0033  */
    public static Bitmap getImage(String str) throws OutOfMemoryError {
        int i;
        float f;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        if (i2 > i3 && i2 > 800.0f) {
            f = options.outWidth / 800.0f;
        } else {
            if (i2 >= i3 || i3 <= 480.0f) {
                i = 1;
            } else {
                f = options.outHeight / 480.0f;
            }
            options.inSampleSize = i > 0 ? i : 1;
            options.inPreferredConfig = Bitmap.Config.ARGB_4444;
            return BitmapFactory.decodeFile(str, options);
        }
        i = (int) f;
        options.inSampleSize = i > 0 ? i : 1;
        options.inPreferredConfig = Bitmap.Config.ARGB_4444;
        return BitmapFactory.decodeFile(str, options);
    }
}
