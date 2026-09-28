package com.can.tool;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface TrackData {
    public static final int BOTTOM_WIDE = 50;
    public static final float DISTANCE_0 = 0.5f;
    public static final float DISTANCE_1 = 1.0f;
    public static final float DISTANCE_2 = 2.0f;
    public static final int MAX_ANGLE = 40;
    public static final float MAX_DISTANCE = 3.0f;
    public static final float PI = 3.14159f;

    public static class DPointEx {
        public ArrayList<DPonit> mdPoList = new ArrayList<>();
    }

    public static class SPointEx {
        public ArrayList<SPonit> mslPonits = new ArrayList<>();
        public ArrayList<SPonit> msrPonits = new ArrayList<>();
    }

    public static class SPonit {
        public float sx;
        public float sy;

        public SPonit(float f, float f2) {
            this.sx = f;
            this.sy = f2;
        }
    }

    public static class DPonit {
        public float sx;
        public float sy;

        public DPonit(float f, float f2) {
            this.sx = f;
            this.sy = f2;
        }
    }

    public static class TrackParam {
        public boolean mbLeftTrackAvailable;
        public boolean mbRightTrackAvailable;
        public DPonit mlPhyPoint = new DPonit(0.0f, 0.0f);
        public DPonit mrPhyPoint = new DPonit(0.0f, 0.0f);
        public SPonit mlScrPoint = new SPonit(0.0f, 0.0f);
        public SPonit mrScrPoint = new SPonit(0.0f, 0.0f);
        public SPonit mlTPoint = new SPonit(0.0f, 0.0f);
        public SPonit mrTPoint = new SPonit(0.0f, 0.0f);
        public double mdParamalpha2 = 0.0d;
        public double mdParamalpha = 0.0d;
        public double mdParamtheta = 0.0d;
        public double mdParamL = 0.0d;
        public double mdParamW = 0.0d;
        public double mdParamD = 0.0d;
        public double mdParamh = 0.0d;
        public double mdParamd = 0.0d;
        public int miParamm = 0;
        public int miParamn = 0;
        public int miParamp = 0;
        public int miParamq = 0;
        public double mdParamphi = 0.0d;
        public boolean mbParamwideSpec = false;
        public double mdParamu = 0.0d;
        public double mdParamv = 0.0d;
        public double mdParamf = 0.0d;
        public ArrayList<SPointEx> mVTrackleft = new ArrayList<>();
        public ArrayList<SPointEx> mVTrackright = new ArrayList<>();
        public int[][] mbyLineLeft = (int[][]) Array.newInstance((Class<?>) int.class, 81, 4);
        public int[][] mbyLineRight = (int[][]) Array.newInstance((Class<?>) int.class, 81, 4);

        public double abs(double d) {
            return d < 0.0d ? -d : d;
        }

        public TrackParam() {
            for (int i = 0; i < 81; i++) {
                SPointEx sPointEx = new SPointEx();
                this.mVTrackleft.add(sPointEx);
                this.mVTrackright.add(sPointEx);
            }
        }

        public boolean put(ArrayList<Float> arrayList) {
            this.mdParamalpha2 = arrayList.get(0).floatValue();
            this.mdParamalpha = arrayList.get(1).floatValue();
            this.mdParamtheta = arrayList.get(2).floatValue();
            this.mdParamL = arrayList.get(3).floatValue();
            this.mdParamW = arrayList.get(4).floatValue();
            this.mdParamD = arrayList.get(5).floatValue();
            this.mdParamh = arrayList.get(6).floatValue();
            this.mdParamd = arrayList.get(7).floatValue();
            this.miParamm = arrayList.get(8).intValue();
            this.miParamn = arrayList.get(9).intValue();
            this.miParamp = arrayList.get(10).intValue();
            this.miParamq = arrayList.get(11).intValue();
            this.mbParamwideSpec = arrayList.get(12).byteValue() == 1;
            double d = this.mdParamalpha2;
            if (d < 0.0d || this.mdParamalpha <= 0.0d || this.mdParamtheta <= 0.0d || this.mdParamL <= 0.0d || this.mdParamW <= 0.0d || this.mdParamD <= 0.0d || this.mdParamh <= 0.0d || this.miParamm <= 0 || this.miParamn <= 0 || this.miParamp <= 0 || this.miParamq <= 0) {
                return false;
            }
            if (d > 120.0d) {
                this.mdParamalpha2 = ((d - 120.0d) / 2.0d) + 120.0d;
            }
            return true;
        }

        public void PhyTrack() {
            this.mbLeftTrackAvailable = true;
            this.mbRightTrackAvailable = true;
            double d = this.mdParamphi;
            if (d > 0.0d) {
                double d2 = 1.5707950592041016d - ((d / 180.0d) * 3.141590118408203d);
                double dPow = Math.pow((this.mdParamL * Math.tan(d2)) - (this.mdParamW / 2.0d), 2.0d) - Math.pow(((double) this.mlPhyPoint.sy) + this.mdParamD, 2.0d);
                if (dPow < 0.0d) {
                    this.mbLeftTrackAvailable = false;
                }
                this.mlPhyPoint.sx = (float) ((Math.sqrt(dPow) - (this.mdParamL * Math.tan(d2))) - this.mdParamd);
                double dPow2 = Math.pow((this.mdParamL * Math.tan(d2)) + (this.mdParamW / 2.0d), 2.0d) - Math.pow(((double) this.mrPhyPoint.sy) + this.mdParamD, 2.0d);
                if (dPow2 < 0.0d) {
                    this.mbRightTrackAvailable = false;
                }
                this.mrPhyPoint.sx = (float) ((Math.sqrt(dPow2) - (this.mdParamL * Math.tan(d2))) - this.mdParamd);
                return;
            }
            if (d < 0.0d) {
                double d3 = 1.5707950592041016d - (((-d) / 180.0d) * 3.141590118408203d);
                double dPow3 = Math.pow((this.mdParamL * Math.tan(d3)) + (this.mdParamW / 2.0d), 2.0d) - Math.pow(((double) this.mlPhyPoint.sy) + this.mdParamD, 2.0d);
                if (dPow3 < 0.0d) {
                    this.mbLeftTrackAvailable = false;
                }
                this.mlPhyPoint.sx = (float) (((-Math.sqrt(dPow3)) + (this.mdParamL * Math.tan(d3))) - this.mdParamd);
                double dPow4 = Math.pow((this.mdParamL * Math.tan(d3)) - (this.mdParamW / 2.0d), 2.0d) - Math.pow(((double) this.mrPhyPoint.sy) + this.mdParamD, 2.0d);
                if (dPow4 < 0.0d) {
                    this.mbRightTrackAvailable = false;
                }
                this.mrPhyPoint.sx = (float) (((-Math.sqrt(dPow4)) + (this.mdParamL * Math.tan(d3))) - this.mdParamd);
                return;
            }
            this.mlPhyPoint.sx = (float) (((-this.mdParamW) / 2.0d) - this.mdParamd);
            this.mrPhyPoint.sx = (float) ((this.mdParamW / 2.0d) - this.mdParamd);
        }

        boolean PhyToScr(double d) {
            double d2 = this.mlPhyPoint.sx;
            double d3 = this.mlPhyPoint.sy;
            double d4 = this.mrPhyPoint.sx;
            double d5 = this.mrPhyPoint.sy;
            double d6 = (d / 180.0d) * 3.141590118408203d;
            double d7 = (this.mdParamtheta / 180.0d) * 3.141590118408203d;
            if (this.mbLeftTrackAvailable) {
                double d8 = d6 / 2.0d;
                this.mlScrPoint.sx = (float) (((((double) this.miParamp) / ((this.mdParamh * 2.0d) * Math.tan(d8))) * (Math.cos(Math.atan(d3 / this.mdParamh)) / Math.cos(d7 - Math.atan(d3 / this.mdParamh))) * d2) + ((double) (this.miParamp / 2)));
                this.mlScrPoint.sy = (float) (((((double) (this.miParamq * this.miParamm)) / (((double) (this.miParamn * 2)) * Math.tan(d8))) * Math.tan(d7 - Math.atan(d3 / this.mdParamh))) + ((double) (this.miParamq / 2)));
            }
            if (!this.mbRightTrackAvailable) {
                return true;
            }
            double d9 = d6 / 2.0d;
            this.mrScrPoint.sx = (float) (((((double) this.miParamp) / ((this.mdParamh * 2.0d) * Math.tan(d9))) * (Math.cos(Math.atan(d5 / this.mdParamh)) / Math.cos(d7 - Math.atan(d5 / this.mdParamh))) * d4) + ((double) (this.miParamp / 2)));
            this.mrScrPoint.sy = (float) (((((double) (this.miParamq * this.miParamm)) / (((double) (this.miParamn * 2)) * Math.tan(d9))) * Math.tan(d7 - Math.atan(d5 / this.mdParamh))) + ((double) (this.miParamq / 2)));
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x0151  */
        public boolean CreatePoint() {
            boolean z;
            double d = -40.0d;
            while (true) {
                this.mdParamphi = d;
                double d2 = this.mdParamphi;
                boolean z2 = true;
                if (d2 > 40.0d) {
                    return true;
                }
                int i = (int) (40.0d + d2);
                double d3 = 1.5707950592041016d - ((d2 / 180.0d) * 3.141590118408203d);
                double dAbs = (this.mdParamW / ((this.mdParamL * abs(Math.tan(d3))) - (this.mdParamW / 2.0d))) + 1.0d;
                double dAbs2 = this.mdParamL * abs(Math.tan(d3));
                double d4 = this.mdParamW;
                double d5 = 1.0d - ((d4 / 2.0d) / dAbs2);
                double d6 = ((d4 / 2.0d) / dAbs2) + 1.0d;
                double[] dArr = new double[3];
                double[] dArr2 = new double[3];
                double d7 = this.mdParamphi;
                if (d7 < -3.0d) {
                    double d8 = d6 - 1.0d;
                    dArr[0] = ((1.4d * d8) + 1.0d) * 0.5d;
                    dArr[1] = ((1.1d * d8) + 1.0d) * 1.0d;
                    dArr[2] = ((d8 * 0.5d) + 1.0d) * 2.0d;
                    double d9 = d5 - 1.0d;
                    dArr2[0] = ((1.5d * d9) + 1.0d) * 0.5d;
                    dArr2[1] = ((1.2d * d9) + 1.0d) * 1.0d;
                    dArr2[2] = ((d9 * 1.3d) + 1.0d) * 2.0d;
                } else if (d7 > 3.0d) {
                    double d10 = d5 - 1.0d;
                    dArr[0] = ((1.5d * d10) + 1.0d) * 0.5d;
                    dArr[1] = ((1.2d * d10) + 1.0d) * 1.0d;
                    dArr[2] = ((d10 * 1.3d) + 1.0d) * 2.0d;
                    double d11 = d6 - 1.0d;
                    dArr2[0] = ((1.4d * d11) + 1.0d) * 0.5d;
                    dArr2[1] = ((1.1d * d11) + 1.0d) * 1.0d;
                    dArr2[2] = ((d11 * 0.5d) + 1.0d) * 2.0d;
                } else {
                    dArr[0] = 0.5d;
                    dArr[1] = 1.0d;
                    dArr[2] = 2.0d;
                    dArr2[0] = 0.5d;
                    dArr2[1] = 1.0d;
                    dArr2[2] = 2.0d;
                }
                DPonit dPonit = this.mlPhyPoint;
                this.mrPhyPoint.sy = 0.1f;
                dPonit.sy = 0.1f;
                while (this.mlPhyPoint.sy <= 3.1500000000000004d) {
                    boolean z3 = ((this.mdParamphi <= 0.0d || ((double) this.mlPhyPoint.sy) > (3.0d / (dAbs + d6)) * 2.0d) && this.mdParamphi > 0.0d) ? false : z2;
                    if (this.mdParamphi < 0.0d && this.mrPhyPoint.sy <= (3.0d / (dAbs + d6)) * 2.0d) {
                        z = z2;
                    } else if (this.mdParamphi >= 0.0d) {
                        z = z2;
                    } else {
                        z = false;
                    }
                    PhyTrack();
                    PhyToScr(this.mdParamalpha);
                    if (z3 && this.mlScrPoint.sy > 0.0f && this.mlScrPoint.sy < this.miParamq - 50) {
                        this.mVTrackleft.get(i).mslPonits.add(new SPonit(this.mlScrPoint.sx, this.mlScrPoint.sy));
                        int i2 = 0;
                        while (i2 < 3) {
                            int i3 = i;
                            if (this.mlPhyPoint.sy < dArr[i2] && ((double) this.mlPhyPoint.sy) * 1.05d > dArr[i2]) {
                                this.mbyLineLeft[i3][i2] = this.mVTrackleft.get(i3).mslPonits.size();
                            }
                            i2++;
                            i = i3;
                        }
                    }
                    int i4 = i;
                    if (z && this.mrScrPoint.sy > 0.0f && this.mrScrPoint.sy < this.miParamq - 50) {
                        this.mVTrackright.get(i4).msrPonits.add(new SPonit(this.mrScrPoint.sx, this.mrScrPoint.sy));
                        for (int i5 = 0; i5 < 3; i5++) {
                            if (this.mrPhyPoint.sy < dArr2[i5] && ((double) this.mrPhyPoint.sy) * 1.05d > dArr2[i5]) {
                                this.mbyLineRight[i4][i5] = this.mVTrackright.get(i4).msrPonits.size();
                            }
                        }
                    }
                    DPonit dPonit2 = this.mlPhyPoint;
                    dPonit2.sy = (float) (((double) dPonit2.sy) * 1.05d);
                    DPonit dPonit3 = this.mrPhyPoint;
                    dPonit3.sy = (float) (((double) dPonit3.sy) * 1.05d);
                    i = i4;
                    z2 = true;
                }
                int i6 = i;
                this.mbyLineLeft[i6][3] = this.mVTrackleft.get(i6).mslPonits.size() - 1;
                this.mbyLineRight[i6][3] = this.mVTrackright.get(i6).msrPonits.size() - 1;
                d = this.mdParamphi + 1.0d;
            }
        }

        public void DrawTrack(Canvas canvas, Paint paint, double d) {
            int[][] iArr;
            double d2 = -d;
            if (d2 < -30.0d) {
                d2 = -30.0d;
            }
            if (d2 > 30.0d) {
                d2 = 30.0d;
            }
            int i = (int) (d2 + 40.0d);
            Path path = new Path();
            paint.setColor(-16711936);
            try {
                int i2 = this.mbyLineLeft[i][2];
                while (i2 < this.mbyLineLeft[i][3]) {
                    path.moveTo(this.mVTrackleft.get(i).mslPonits.get(i2).sx, this.mVTrackleft.get(i).mslPonits.get(i2).sy);
                    i2++;
                    path.lineTo(this.mVTrackleft.get(i).mslPonits.get(i2).sx, this.mVTrackleft.get(i).mslPonits.get(i2).sy);
                    canvas.drawPath(path, paint);
                }
                int i3 = this.mbyLineRight[i][2];
                while (i3 < this.mbyLineRight[i][3]) {
                    path.moveTo(this.mVTrackright.get(i).msrPonits.get(i3).sx, this.mVTrackright.get(i).msrPonits.get(i3).sy);
                    i3++;
                    path.lineTo(this.mVTrackright.get(i).msrPonits.get(i3).sx, this.mVTrackright.get(i).msrPonits.get(i3).sy);
                    canvas.drawPath(path, paint);
                }
                path.moveTo(this.mVTrackleft.get(i).mslPonits.get(this.mbyLineLeft[i][3]).sx, this.mVTrackleft.get(i).mslPonits.get(this.mbyLineLeft[i][3]).sy);
                path.lineTo(this.mVTrackright.get(i).msrPonits.get(this.mbyLineRight[i][3]).sx, this.mVTrackright.get(i).msrPonits.get(this.mbyLineRight[i][3]).sy);
                canvas.drawPath(path, paint);
                int i4 = this.mbyLineLeft[i][1];
                while (i4 < this.mbyLineLeft[i][2]) {
                    path.moveTo(this.mVTrackleft.get(i).mslPonits.get(i4).sx, this.mVTrackleft.get(i).mslPonits.get(i4).sy);
                    i4++;
                    path.lineTo(this.mVTrackleft.get(i).mslPonits.get(i4).sx, this.mVTrackleft.get(i).mslPonits.get(i4).sy);
                    canvas.drawPath(path, paint);
                }
                int i5 = this.mbyLineRight[i][1];
                while (i5 < this.mbyLineRight[i][2]) {
                    path.moveTo(this.mVTrackright.get(i).msrPonits.get(i5).sx, this.mVTrackright.get(i).msrPonits.get(i5).sy);
                    i5++;
                    path.lineTo(this.mVTrackright.get(i).msrPonits.get(i5).sx, this.mVTrackright.get(i).msrPonits.get(i5).sy);
                    canvas.drawPath(path, paint);
                }
                path.moveTo(this.mVTrackleft.get(i).mslPonits.get(this.mbyLineLeft[i][2]).sx, this.mVTrackleft.get(i).mslPonits.get(this.mbyLineLeft[i][2]).sy);
                path.lineTo(this.mVTrackright.get(i).msrPonits.get(this.mbyLineRight[i][2]).sx, this.mVTrackright.get(i).msrPonits.get(this.mbyLineRight[i][2]).sy);
                canvas.drawPath(path, paint);
                int i6 = this.mbyLineLeft[i][0];
                while (i6 < this.mbyLineLeft[i][1]) {
                    path.moveTo(this.mVTrackleft.get(i).mslPonits.get(i6).sx, this.mVTrackleft.get(i).mslPonits.get(i6).sy);
                    i6++;
                    path.lineTo(this.mVTrackleft.get(i).mslPonits.get(i6).sx, this.mVTrackleft.get(i).mslPonits.get(i6).sy);
                    canvas.drawPath(path, paint);
                }
                int i7 = this.mbyLineRight[i][0];
                while (i7 < this.mbyLineRight[i][1]) {
                    path.moveTo(this.mVTrackright.get(i).msrPonits.get(i7).sx, this.mVTrackright.get(i).msrPonits.get(i7).sy);
                    i7++;
                    path.lineTo(this.mVTrackright.get(i).msrPonits.get(i7).sx, this.mVTrackright.get(i).msrPonits.get(i7).sy);
                    canvas.drawPath(path, paint);
                }
                path.moveTo(this.mVTrackleft.get(i).mslPonits.get(this.mbyLineLeft[i][1]).sx, this.mVTrackleft.get(i).mslPonits.get(this.mbyLineLeft[i][1]).sy);
                path.lineTo(this.mVTrackright.get(i).msrPonits.get(this.mbyLineRight[i][1]).sx, this.mVTrackright.get(i).msrPonits.get(this.mbyLineRight[i][1]).sy);
                canvas.drawPath(path, paint);
                int i8 = 0;
                while (i8 < this.mbyLineLeft[i][0]) {
                    path.moveTo(this.mVTrackleft.get(i).mslPonits.get(i8).sx, this.mVTrackleft.get(i).mslPonits.get(i8).sy);
                    i8++;
                    path.lineTo(this.mVTrackleft.get(i).mslPonits.get(i8).sx, this.mVTrackleft.get(i).mslPonits.get(i8).sy);
                    canvas.drawPath(path, paint);
                }
                int i9 = 0;
                while (true) {
                    iArr = this.mbyLineRight;
                    if (i9 >= iArr[i][0]) {
                        break;
                    }
                    path.moveTo(this.mVTrackright.get(i).msrPonits.get(i9).sx, this.mVTrackright.get(i).msrPonits.get(i9).sy);
                    i9++;
                    path.lineTo(this.mVTrackright.get(i).msrPonits.get(i9).sx, this.mVTrackright.get(i).msrPonits.get(i9).sy);
                    canvas.drawPath(path, paint);
                }
                if (this.mbyLineLeft[i][0] == 0 || iArr[i][0] == 0) {
                    return;
                }
                path.moveTo(this.mVTrackleft.get(i).msrPonits.get(this.mbyLineLeft[i][0]).sx, this.mVTrackleft.get(i).msrPonits.get(this.mbyLineLeft[i][0]).sy);
                path.lineTo(this.mVTrackright.get(i).msrPonits.get(this.mbyLineRight[i][0]).sx, this.mVTrackright.get(i).msrPonits.get(this.mbyLineRight[i][0]).sy);
                canvas.drawPath(path, paint);
            } catch (Exception unused) {
            }
        }
    }
}
