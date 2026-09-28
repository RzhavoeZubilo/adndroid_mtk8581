package com.carocean.navicar.util;

import android.util.Log;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes.dex */
public class AtcLogoUtils {
    private static int mScreenH;
    private static int mScreenW;
    private static AtcLogoUtils sAtcLogoUtils;
    private int mCurIndex;
    private int mCurPhotoBitCount;
    private int mCurPhotoH;
    private int mCurPhotoOffset;
    private byte[] mCurPhotoRGBquad;
    private int mCurPhotoW;
    private byte[] mCurRawData;
    private int mCurRawSize;
    private final String TAG = "AtcLogoUtils";
    private final int BITCOUNT = 32;
    private final int LOGO_INDEX = 2;

    public interface LogoSetCallBack {
        void onFinish(LogoSetResult logoSetResult);

        void onStart();
    }

    public enum LogoSetResult {
        SUCCESS,
        FAIL,
        EXCEPTION
    }

    private byte[] int2byte(int i) {
        return new byte[]{(byte) i, (byte) (i >>> 8), (byte) (i >>> 16), (byte) (i >>> 24)};
    }

    public AtcLogoUtils() {
    }

    public AtcLogoUtils(int i, int i2) {
        mScreenW = i;
        mScreenH = i2;
    }

    public static AtcLogoUtils getInstance(int i, int i2) {
        if (sAtcLogoUtils == null) {
            sAtcLogoUtils = new AtcLogoUtils();
            mScreenW = i;
            mScreenH = i2;
        }
        return sAtcLogoUtils;
    }

    private int byte2Int(byte[] bArr, int i) {
        int i2 = 0;
        for (int i3 = i - 1; i3 >= 0; i3--) {
            i2 = (i2 << 8) | (bArr[i3] & 255);
        }
        return i2;
    }

    private void getFileHead(RandomAccessFile randomAccessFile) throws Exception {
        byte[] bArr = new byte[4];
        randomAccessFile.seek(10L);
        randomAccessFile.read(bArr);
        this.mCurPhotoOffset = byte2Int(bArr, 4);
        randomAccessFile.seek(18L);
        randomAccessFile.read(bArr);
        this.mCurPhotoW = byte2Int(bArr, 4);
        randomAccessFile.read(bArr);
        this.mCurPhotoH = byte2Int(bArr, 4);
        randomAccessFile.seek(28L);
        randomAccessFile.read(bArr);
        this.mCurPhotoBitCount = (short) byte2Int(bArr, 2);
        if (this.mCurPhotoOffset != 54) {
            this.mCurPhotoRGBquad = new byte[1024];
            randomAccessFile.seek(54L);
            randomAccessFile.read(this.mCurPhotoRGBquad);
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0090  */
    private byte[] insertPixle(RandomAccessFile randomAccessFile, long j) throws Exception {
        int i;
        int i2 = this.mCurPhotoBitCount;
        int i3 = i2 / 8;
        int i4 = 4;
        if (i2 == 4 || i2 == 1) {
            i3 = 1;
        }
        int i5 = mScreenW;
        int i6 = ((((i5 * 4) + 3) / 4) * 4) - (i5 * 4);
        byte[] bArr = new byte[(i5 + i6) * 4];
        this.mCurIndex = 0;
        randomAccessFile.seek(j);
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int i10 = this.mCurPhotoW;
            if (i7 >= i10 || (((i = this.mCurPhotoBitCount) == i4 || i == 1) && ((8 / i) * i7) + (this.mCurIndex / i) >= i10)) {
                break;
            }
            byte[] pixValue = getPixValue(randomAccessFile, j + ((long) (i7 * i3)));
            int i11 = mScreenW;
            int i12 = this.mCurPhotoW;
            int i13 = i11 % i12;
            for (int i14 = i11 / i12; i14 != 0; i14--) {
                for (int i15 = 0; i15 < i4; i15++) {
                    bArr[i8] = pixValue[i15];
                    i8++;
                }
            }
            if (i13 != 0) {
                if (i9 == 0) {
                    i9 = this.mCurPhotoW / i13;
                    for (int i16 = 0; i16 < i4; i16++) {
                        bArr[i8] = pixValue[i16];
                        i8++;
                    }
                }
                int i17 = this.mCurPhotoW;
                int i18 = i17 % i13;
                if (i18 != 0) {
                    int i19 = i17 / i18;
                    int i20 = this.mCurPhotoBitCount;
                    if (i20 == i4 || i20 == 1) {
                        int i21 = ((8 / i20) * i7) + (this.mCurIndex / i20);
                        if (i21 % i19 == 0 && i21 <= i19 * i18) {
                            i9++;
                        }
                    } else if (i7 % i19 == 0 && i7 <= i19 * i18) {
                        i9++;
                    }
                }
                i9--;
            }
            if (this.mCurIndex == 0) {
                i7++;
            }
            i4 = 4;
        }
        while (i6 != 0) {
            bArr[i8] = -1;
            i6--;
            i8++;
        }
        return bArr;
    }

    private byte[] deletePixle(RandomAccessFile randomAccessFile, long j) throws Exception {
        int i = this.mCurPhotoBitCount;
        int i2 = i / 8;
        int i3 = 4;
        int i4 = 1;
        if (i == 4 || i == 1) {
            i2 = 1;
        }
        int i5 = mScreenW;
        byte[] bArr = new byte[(i5 + (((((i5 * 4) + 3) / 4) * 4) - (i5 * 4))) * 4];
        int i6 = 0;
        this.mCurIndex = 0;
        long j2 = j;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < mScreenW) {
            byte[] pixValue = getPixValue(randomAccessFile, j2);
            for (int i10 = i6; i10 < i3; i10++) {
                bArr[i8] = pixValue[i10];
                i8++;
            }
            int i11 = this.mCurPhotoW;
            int i12 = mScreenW;
            int i13 = (i11 / i12) - i4;
            int i14 = i11 % i12;
            if (this.mCurIndex == 0) {
                int i15 = this.mCurPhotoBitCount;
                j2 += (long) ((i13 * i15) / 8);
                this.mCurIndex = (i13 * i15) % 8;
            }
            if (i14 != 0) {
                if (i9 == 0) {
                    i9 = i12 / i14;
                    int i16 = (this.mCurIndex + this.mCurPhotoBitCount) % 8;
                    this.mCurIndex = i16;
                    if (i16 == 0) {
                        j2 += (long) i2;
                    }
                }
                int i17 = i12 % i14;
                if (i17 != 0) {
                    int i18 = i12 / i17;
                    if (i7 % i18 == 0 && i7 <= i18 * i17) {
                        i9++;
                    }
                }
                i9--;
            }
            int i19 = (this.mCurIndex + this.mCurPhotoBitCount) % 8;
            this.mCurIndex = i19;
            if (i19 == 0) {
                j2 += (long) i2;
            }
            i7++;
            i3 = 4;
            i4 = 1;
            i6 = 0;
        }
        return bArr;
    }

    private byte[] getLine(RandomAccessFile randomAccessFile, long j) throws Exception {
        int i;
        int i2 = this.mCurPhotoBitCount;
        int i3 = (i2 + 7) / 8;
        int i4 = mScreenW;
        int i5 = ((((i4 * 4) + 3) / 4) * 4) - (i4 * 4);
        byte[] bArr = new byte[(i4 + i5) * 4];
        int i6 = this.mCurPhotoW;
        if (i6 < i4) {
            return insertPixle(randomAccessFile, j);
        }
        if (i6 > i4) {
            return deletePixle(randomAccessFile, j);
        }
        if (i2 == 4) {
            i = 0;
            for (int i7 = 0; i7 < mScreenW / 2; i7++) {
                for (int i8 = 0; i8 < 2; i8++) {
                    byte[] pixValue = getPixValue(randomAccessFile, j + ((long) (i7 * i3)));
                    for (int i9 = 0; i9 < 4; i9++) {
                        bArr[i] = pixValue[i9];
                        i++;
                    }
                }
            }
        } else {
            i = 0;
            for (int i10 = 0; i10 < mScreenW; i10++) {
                byte[] pixValue2 = getPixValue(randomAccessFile, j + ((long) (i10 * i3)));
                for (int i11 = 0; i11 < 4; i11++) {
                    bArr[i] = pixValue2[i11];
                    i++;
                }
            }
        }
        while (i5 != 0) {
            bArr[i] = -1;
            i5--;
            i++;
        }
        return bArr;
    }

    private byte[] getPixValue(RandomAccessFile randomAccessFile, long j) throws Exception {
        byte[] bArr = new byte[4];
        randomAccessFile.seek(j);
        int i = this.mCurPhotoBitCount;
        if (i == 1) {
            byte[] bArr2 = new byte[1];
            randomAccessFile.read(bArr2);
            byte b = bArr2[0];
            int i2 = this.mCurIndex;
            int i3 = ((b >> (7 - i2)) & 1) * 4;
            byte[] bArr3 = this.mCurPhotoRGBquad;
            bArr[0] = bArr3[i3];
            bArr[1] = bArr3[i3 + 1];
            bArr[2] = bArr3[i3 + 2];
            bArr[3] = 0;
            this.mCurIndex = (i2 + 1) % 8;
        } else if (i == 4) {
            byte[] bArr4 = new byte[1];
            randomAccessFile.read(bArr4);
            byte b2 = bArr4[0];
            int i4 = this.mCurIndex;
            int i5 = ((b2 >> (4 - i4)) & 15) * 4;
            byte[] bArr5 = this.mCurPhotoRGBquad;
            bArr[0] = bArr5[i5];
            bArr[1] = bArr5[i5 + 1];
            bArr[2] = bArr5[i5 + 2];
            bArr[3] = 0;
            this.mCurIndex = (i4 + 4) % 8;
        } else if (i == 8) {
            byte[] bArr6 = new byte[1];
            randomAccessFile.read(bArr6);
            int iByte2Int = byte2Int(bArr6, 1) * 4;
            byte[] bArr7 = this.mCurPhotoRGBquad;
            bArr[0] = bArr7[iByte2Int];
            bArr[1] = bArr7[iByte2Int + 1];
            bArr[2] = bArr7[iByte2Int + 2];
            bArr[3] = 0;
        } else if (i == 16) {
            byte[] bArr8 = new byte[2];
            randomAccessFile.read(bArr8);
            int iByte2Int2 = byte2Int(bArr8, 2);
            bArr[0] = (byte) (((iByte2Int2 & 31) << 3) | 7);
            bArr[1] = (byte) (((iByte2Int2 & 2016) >> 3) | 3);
            bArr[2] = (byte) (((iByte2Int2 & 63488) >> 8) | 7);
            bArr[3] = 0;
        } else if (i == 24) {
            byte[] bArr9 = new byte[3];
            randomAccessFile.read(bArr9);
            bArr[0] = bArr9[0];
            bArr[1] = bArr9[1];
            bArr[2] = bArr9[2];
            bArr[3] = 0;
        } else if (i == 32) {
            byte[] bArr10 = new byte[4];
            randomAccessFile.read(bArr10);
            bArr[0] = bArr10[0];
            bArr[1] = bArr10[1];
            bArr[2] = bArr10[2];
            bArr[3] = bArr10[3];
        }
        return bArr;
    }

    private void writeFileRawData2(RandomAccessFile randomAccessFile) throws Exception {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Log.d("AtcLogoUtils", "writeFileRawData2");
        int i6 = this.mCurPhotoOffset;
        int i7 = this.mCurPhotoBitCount / 8;
        int i8 = this.mCurPhotoW;
        int i9 = ((((i8 * i7) + 3) / 4) * 4) - (i8 * i7);
        int i10 = mScreenW;
        int i11 = ((((i10 * 4) + 3) / 4) * 4) - (i10 * 4);
        int i12 = (i10 + i11) * 4;
        int i13 = mScreenH * i12;
        this.mCurRawSize = i13;
        this.mCurRawData = new byte[i13];
        int i14 = i13 - i12;
        Log.d("AtcLogoUtils", "writeFileRawData2 start" + mScreenW + "  " + i11 + "  " + mScreenH + "  " + this.mCurRawSize);
        int i15 = 1;
        int i16 = 0;
        while (i15 <= this.mCurPhotoH) {
            byte[] line = getLine(randomAccessFile, i6);
            int i17 = this.mCurPhotoH;
            int i18 = mScreenH;
            if (i17 > i18) {
                int i19 = (i17 / i18) - 1;
                int i20 = i17 % i18;
                int i21 = 0;
                while (i21 < i12) {
                    this.mCurRawData[i14 + i21] = line[i21];
                    i21++;
                }
                i14 -= i12;
                i15 += i19;
                if (i20 != 0) {
                    if (i16 == 0) {
                        i15++;
                        i19++;
                        i16 = mScreenH / i20;
                    }
                    int i22 = mScreenH;
                    int i23 = i22 % i20;
                    if (i23 != 0) {
                        int i24 = i22 / i23;
                        if (i21 % i24 == 0 && i21 <= i24 * i23) {
                            i16++;
                        }
                    }
                    i16--;
                }
                int i25 = i19 + 1;
                int i26 = this.mCurPhotoBitCount;
                if (i26 == 1) {
                    i5 = (((this.mCurPhotoW + 7) / 8) + 3) / 4;
                } else {
                    if (i26 == 4) {
                        i5 = (((this.mCurPhotoW + 1) / 2) + 3) / 4;
                    } else {
                        i4 = (this.mCurPhotoW * i7) + i9;
                    }
                    i3 = i4 * i25;
                }
                i4 = i5 * 4;
                i3 = i4 * i25;
            } else if (i17 < i18) {
                int i27 = i18 % i17;
                for (int i28 = i18 / i17; i28 != 0; i28--) {
                    for (int i29 = 0; i29 < i12; i29++) {
                        this.mCurRawData[i14 + i29] = line[i29];
                    }
                    i14 -= i12;
                }
                if (i27 != 0) {
                    if (i16 == 0) {
                        for (int i30 = 0; i30 < i12; i30++) {
                            this.mCurRawData[i14 + i30] = line[i30];
                        }
                        i14 -= i12;
                        i16 = this.mCurPhotoH / i27;
                    }
                    int i31 = this.mCurPhotoH;
                    int i32 = i31 % i27;
                    if (i32 != 0) {
                        int i33 = i31 / i32;
                        if (i31 % i32 == 0) {
                            i33--;
                        }
                        if (i15 % i33 == 0 && i15 <= i33 * i32) {
                            i16++;
                        }
                    }
                    i16--;
                }
                int i34 = this.mCurPhotoBitCount;
                if (i34 == 1) {
                    i2 = (((this.mCurPhotoW + 7) / 8) + 3) / 4;
                } else if (i34 == 4) {
                    i2 = (((this.mCurPhotoW + 1) / 2) + 3) / 4;
                } else {
                    i = this.mCurPhotoW;
                    i3 = (i * i7) + i9;
                }
                i3 = i2 * 4;
            } else {
                for (int i35 = 0; i35 < i12; i35++) {
                    this.mCurRawData[i14 + i35] = line[i35];
                }
                i14 -= i12;
                int i36 = this.mCurPhotoBitCount;
                if (i36 == 1) {
                    i2 = (((this.mCurPhotoW + 7) / 8) + 3) / 4;
                } else if (i36 == 4) {
                    i2 = (((this.mCurPhotoW + 1) / 2) + 3) / 4;
                } else {
                    i = this.mCurPhotoW;
                    i3 = (i * i7) + i9;
                }
                i3 = i2 * 4;
            }
            i6 += i3;
            i15++;
        }
    }

    private void writeFileRawData3(RandomAccessFile randomAccessFile) throws Exception {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Log.d("AtcLogoUtils", "writeFileRawData3");
        int i9 = this.mCurPhotoOffset;
        int i10 = this.mCurPhotoBitCount;
        int i11 = i10 / 8;
        int i12 = this.mCurPhotoW;
        int i13 = ((((i12 * i11) + 3) / 4) * 4) - (i12 * i11);
        int i14 = mScreenW;
        int i15 = ((((i14 * 4) + 3) / 4) * 4) - (i14 * 4);
        int i16 = (i14 + i15) * 4;
        this.mCurIndex = i10;
        if (i9 != 54) {
            Log.d("AtcLogoUtils", "The zip bmp image head offset is " + this.mCurPhotoOffset + " and " + ((this.mCurPhotoOffset - 54) / 4) + " color!");
            this.mCurPhotoOffset = 54;
        }
        int i17 = this.mCurPhotoOffset;
        int i18 = (mScreenH * i16) + i17;
        this.mCurRawSize = i18;
        this.mCurRawData = new byte[i18];
        byte[] bArr = new byte[4];
        Log.d("AtcLogoUtils", "get header " + this.mCurRawSize + " start");
        int i19 = 0;
        int i20 = 0;
        for (int i21 = 4; i20 < this.mCurPhotoOffset / i21; i21 = 4) {
            randomAccessFile.seek(((long) i20) * 4);
            randomAccessFile.read(bArr);
            byte[] bArr2 = this.mCurRawData;
            int i22 = i20 * 4;
            bArr2[i22] = bArr[0];
            bArr2[i22 + 1] = bArr[1];
            bArr2[i22 + 2] = bArr[2];
            bArr2[i22 + 3] = bArr[3];
            i20++;
        }
        if (this.mCurRawData[28] != 24) {
            Log.d("AtcLogoUtils", "The zip bmp image head bitcount is " + ((int) this.mCurRawData[28]) + "!");
            this.mCurRawData[28] = 24;
        }
        Log.d("AtcLogoUtils", "get header " + this.mCurRawSize + " end");
        Log.d("AtcLogoUtils", "writeFileRawData start" + mScreenW + "  " + i15 + "  " + mScreenH + "  " + this.mCurRawSize);
        int i23 = 0;
        int i24 = 1;
        while (i24 <= this.mCurPhotoH) {
            byte[] line = getLine(randomAccessFile, i9);
            int i25 = this.mCurPhotoH;
            int i26 = mScreenH;
            if (i25 > i26) {
                int i27 = (i25 / i26) - 1;
                int i28 = i25 % i26;
                int i29 = i19;
                while (i29 < i16) {
                    this.mCurRawData[i17 + i29] = line[i29];
                    i29++;
                }
                i17 -= i16;
                i24 += i27;
                if (i28 != 0) {
                    if (i23 == 0) {
                        i24++;
                        i27++;
                        i23 = mScreenH / i28;
                    }
                    int i30 = mScreenH;
                    int i31 = i30 % i28;
                    if (i31 != 0) {
                        int i32 = i30 / i31;
                        if (i29 % i32 == 0 && i29 <= i32 * i31) {
                            i23++;
                        }
                    }
                    i23--;
                }
                int i33 = i27 + 1;
                int i34 = this.mCurPhotoBitCount;
                if (i34 == 1) {
                    i6 = 4;
                    i8 = (((this.mCurPhotoW + 7) / 8) + 3) / 4;
                } else {
                    i6 = 4;
                    if (i34 == 4) {
                        i8 = (((this.mCurPhotoW + 1) / 2) + 3) / 4;
                    } else {
                        i7 = (this.mCurPhotoW * i11) + i13;
                    }
                    i4 = i7 * i33;
                }
                i7 = i8 * i6;
                i4 = i7 * i33;
            } else {
                if (i25 < i26) {
                    int i35 = i26 % i25;
                    for (int i36 = i26 / i25; i36 != 0; i36--) {
                        for (int i37 = 0; i37 < i16; i37++) {
                            this.mCurRawData[i17 + i37] = line[i37];
                        }
                        i17 -= i16;
                    }
                    if (i35 != 0) {
                        if (i23 == 0) {
                            for (int i38 = 0; i38 < i16; i38++) {
                                this.mCurRawData[i17 + i38] = line[i38];
                            }
                            i17 -= i16;
                            i23 = this.mCurPhotoH / i35;
                        }
                        int i39 = this.mCurPhotoH;
                        int i40 = i39 % i35;
                        if (i40 != 0) {
                            int i41 = i39 / i40;
                            if (i39 % i40 == 0) {
                                i41--;
                            }
                            if (i24 % i41 == 0 && i24 <= i41 * i40) {
                                i23++;
                            }
                        }
                        i23--;
                    }
                    int i42 = this.mCurPhotoBitCount;
                    if (i42 == 1) {
                        i3 = 4;
                        i5 = (((this.mCurPhotoW + 7) / 8) + 3) / 4;
                    } else {
                        i3 = 4;
                        if (i42 == 4) {
                            i5 = (((this.mCurPhotoW + 1) / 2) + 3) / 4;
                        } else {
                            i4 = (this.mCurPhotoW * i11) + i13;
                        }
                    }
                    i4 = i5 * i3;
                } else {
                    for (int i43 = 0; i43 < i16; i43++) {
                        this.mCurRawData[i17 + i43] = line[i43];
                    }
                    i17 += i16;
                    int i44 = this.mCurPhotoBitCount;
                    if (i44 == 1) {
                        i9 += ((((this.mCurPhotoW + 7) / 8) + 3) / 4) * 4;
                        i2 = 1;
                    } else {
                        if (i44 == 4) {
                            i = ((((this.mCurPhotoW + 1) / 2) + 3) / 4) * 4;
                        } else {
                            i = (this.mCurPhotoW * i11) + i13;
                        }
                        i9 += i;
                        i2 = 1;
                    }
                }
                i24 += i2;
                i19 = 0;
            }
            i9 += i4;
            i2 = 1;
            i24 += i2;
            i19 = 0;
        }
        Log.d("AtcLogoUtils", "writeFileRawData end");
    }

    public void changeImageResolution(String str, LogoSetCallBack logoSetCallBack) {
        if (logoSetCallBack != null) {
            logoSetCallBack.onStart();
        }
        Log.i("AtcLogoUtils", "changeImageResolution path = " + str);
        ExcutorUtils.sudo(new String[]{"dd if=" + str + " of=/dev/block/by-name/logo", "dd if=" + str + " of=/dev/block/by-name/fbootlogo"}, logoSetCallBack);
    }
}
