package com.can.ui.draw;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.LruCache;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.core.view.ViewCompat;
import com.can.activity.R;
import com.can.parser.DDef;

/* JADX INFO: loaded from: classes.dex */
public class RadarSurface extends SurfaceView implements SurfaceHolder.Callback {
    private static DDef.RadarInfo mRadarInfo;
    private DrawThread mObjDrawThread;
    private LruCache<Integer, Bitmap> mObjMemoryCache;
    private Paint mObjPaint;
    private SurfaceHolder mObjSurfaceHolder;
    private int milayoutId;

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    public RadarSurface(Context context) {
        super(context);
        this.milayoutId = -1;
        this.mObjPaint = null;
        this.mObjDrawThread = null;
        this.mObjSurfaceHolder = null;
        SurfaceHolder holder = getHolder();
        this.mObjSurfaceHolder = holder;
        holder.addCallback(this);
    }

    public RadarSurface(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.milayoutId = -1;
        this.mObjPaint = null;
        this.mObjDrawThread = null;
        this.mObjSurfaceHolder = null;
        SurfaceHolder holder = getHolder();
        this.mObjSurfaceHolder = holder;
        holder.addCallback(this);
        this.mObjPaint = new Paint();
        this.mObjSurfaceHolder.setFormat(-3);
    }

    public void setlayoutId(int i) {
        this.milayoutId = i;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        SurfaceHolder holder = getHolder();
        this.mObjSurfaceHolder = holder;
        holder.addCallback(this);
        this.mObjSurfaceHolder.setFormat(-3);
        this.mObjMemoryCache = new LruCache<Integer, Bitmap>(((int) (Runtime.getRuntime().maxMemory() / 1024)) / 8) { // from class: com.can.ui.draw.RadarSurface.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public int sizeOf(Integer num, Bitmap bitmap) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        };
        startThread();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        stopThread();
        clearCache();
    }

    public void clearCache() {
        LruCache<Integer, Bitmap> lruCache = this.mObjMemoryCache;
        if (lruCache != null) {
            if (lruCache.size() > 0) {
                this.mObjMemoryCache.evictAll();
            }
            this.mObjMemoryCache = null;
        }
    }

    public void startThread() {
        DrawThread drawThread = this.mObjDrawThread;
        if (drawThread == null) {
            this.mObjDrawThread = new DrawThread(this.mObjSurfaceHolder);
        } else if (drawThread != null && !drawThread.isAlive()) {
            this.mObjDrawThread = new DrawThread(this.mObjSurfaceHolder);
        }
        this.mObjDrawThread.mbDraw = true;
        this.mObjDrawThread.firstDraw();
        this.mObjDrawThread.start();
    }

    public void stopThread() {
        DrawThread drawThread = this.mObjDrawThread;
        if (drawThread != null) {
            drawThread.mbDraw = false;
            getHandler().removeCallbacks(this.mObjDrawThread);
            this.mObjDrawThread.interrupt();
            this.mObjDrawThread = null;
        }
    }

    public synchronized Bitmap getBitmap2Cache(Integer num) {
        Bitmap bitmap = this.mObjMemoryCache.get(num);
        if (num != null) {
            return bitmap;
        }
        return null;
    }

    public synchronized void addBitmap2Cache(Integer num, Bitmap bitmap) {
        if (getBitmap2Cache(num) == null && bitmap != null) {
            this.mObjMemoryCache.put(num, bitmap);
        }
    }

    public static void setRadarInfo(DDef.RadarInfo radarInfo) {
        mRadarInfo = radarInfo;
    }

    public static DDef.RadarInfo getRadarInfo() {
        return mRadarInfo;
    }

    public class DrawThread extends Thread {
        private SurfaceHolder mObjholder;
        public boolean mbDraw = false;
        private Canvas mObjCanvas = null;

        public DrawThread(SurfaceHolder surfaceHolder) {
            this.mObjholder = null;
            this.mObjholder = surfaceHolder;
        }

        public void doDraw2Surface(byte b, int[] iArr, float f, float f2) {
            Integer.valueOf(0);
            if (b < 0 || b > iArr.length) {
                return;
            }
            Integer numValueOf = Integer.valueOf(b != 0 ? iArr[b - 1] : 0);
            if (numValueOf.intValue() != 0) {
                Bitmap bitmap2Cache = RadarSurface.this.getBitmap2Cache(numValueOf);
                if (bitmap2Cache == null && (bitmap2Cache = BitmapFactory.decodeResource(RadarSurface.this.getResources(), numValueOf.intValue())) != null) {
                    RadarSurface.this.addBitmap2Cache(numValueOf, bitmap2Cache);
                }
                if (bitmap2Cache != null) {
                    this.mObjCanvas.drawBitmap(bitmap2Cache, f, f2, RadarSurface.this.mObjPaint);
                }
            }
        }

        public int getResXY(int i) {
            return (int) RadarSurface.this.getResources().getDimension(i);
        }

        public void Draw() {
            if (RadarSurface.this.milayoutId != -1) {
                if (RadarSurface.this.milayoutId != R.layout.small_radar) {
                    if (RadarSurface.this.milayoutId == R.layout.big_radar) {
                        Canvas canvasLockCanvas = this.mObjholder.lockCanvas();
                        this.mObjCanvas = canvasLockCanvas;
                        if (canvasLockCanvas == null) {
                            return;
                        }
                        canvasLockCanvas.drawColor(ViewCompat.MEASURED_STATE_MASK, PorterDuff.Mode.CLEAR);
                        this.mObjCanvas.drawBitmap(BitmapFactory.decodeResource(RadarSurface.this.getResources(), R.drawable.xbxk), 0.0f, 0.0f, RadarSurface.this.mObjPaint);
                        if (RadarSurface.mRadarInfo != null) {
                            doDraw2Surface(RadarSurface.mRadarInfo.mFrontLeftDis, ResDef.mBgFLImage, getResXY(R.dimen.big_radar_fl_x), getResXY(R.dimen.big_radar_fl_y));
                            doDraw2Surface(RadarSurface.mRadarInfo.mFrontLeftCenterDis, ResDef.mBgFLCImage, getResXY(R.dimen.big_radar_flc_x), getResXY(R.dimen.big_radar_flc_y));
                            doDraw2Surface(RadarSurface.mRadarInfo.mFrontRightCenterDis, ResDef.mBgFRCImage, getResXY(R.dimen.big_radar_frc_x), getResXY(R.dimen.big_radar_frc_y));
                            doDraw2Surface(RadarSurface.mRadarInfo.mFrontRightDis, ResDef.mBgFRImage, getResXY(R.dimen.big_radar_fr_x), getResXY(R.dimen.big_radar_fr_y));
                            doDraw2Surface(RadarSurface.mRadarInfo.mBackLeftDis, ResDef.mBgBLImage, getResXY(R.dimen.big_radar_bl_x), getResXY(R.dimen.big_radar_bl_y));
                            doDraw2Surface(RadarSurface.mRadarInfo.mBackLeftCenterDis, ResDef.mBgBLCImage, getResXY(R.dimen.big_radar_blc_x), getResXY(R.dimen.big_radar_blc_y));
                            doDraw2Surface(RadarSurface.mRadarInfo.mBackRightCenterDis, ResDef.mBgBRCImage, getResXY(R.dimen.big_radar_brc_x), getResXY(R.dimen.big_radar_brc_y));
                            doDraw2Surface(RadarSurface.mRadarInfo.mBackRightDis, ResDef.mBgBRImage, getResXY(R.dimen.big_radar_br_x), getResXY(R.dimen.big_radar_br_y));
                            return;
                        }
                        return;
                    }
                    return;
                }
                Canvas canvasLockCanvas2 = this.mObjholder.lockCanvas(new Rect(33, 56, 225, 427));
                this.mObjCanvas = canvasLockCanvas2;
                if (canvasLockCanvas2 == null) {
                    return;
                }
                canvasLockCanvas2.drawColor(0, PorterDuff.Mode.CLEAR);
                this.mObjCanvas.drawBitmap(BitmapFactory.decodeResource(RadarSurface.this.getResources(), R.drawable.car), getResXY(R.dimen.radar_left), getResXY(R.dimen.radar_top), RadarSurface.this.mObjPaint);
                if (RadarSurface.mRadarInfo != null) {
                    doDraw2Surface(RadarSurface.mRadarInfo.mFrontLeftDis, ResDef.mSmFLImage, 44.0f, 70.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mFrontLeftCenterDis, ResDef.mSmFLCImage, 57.0f, 32.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mFrontRightCenterDis, ResDef.mSmFRCImage, 95.0f, 32.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mFrontRightDis, ResDef.mSmFRImage, 107.0f, 70.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mBackLeftDis, ResDef.mSmBLImage, 44.0f, 218.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mBackLeftCenterDis, ResDef.mSmBLCImage, 57.0f, 226.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mBackRightCenterDis, ResDef.mSmBRCImage, 95.0f, 226.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mBackRightDis, ResDef.mSmBRImage, 107.0f, 217.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mLeftUpDis, ResDef.mSmLUImage, 30.0f, 90.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mLeftUpCenterDis, ResDef.mSmLUCImage, 28.0f, 131.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mLeftDnCenterDis, ResDef.mSmLDCImage, 28.0f, 171.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mLeftDnDis, ResDef.mSmLDImage, 29.0f, 192.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mRightUpDis, ResDef.mSmRUImage, 118.0f, 89.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mRightUpCenterDis, ResDef.mSmRUCImage, 124.0f, 130.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mRightDnCenterDis, ResDef.mSmRDCImage, 124.0f, 171.0f);
                    doDraw2Surface(RadarSurface.mRadarInfo.mRightDnDis, ResDef.mSmRDImage, 118.0f, 191.0f);
                }
            }
        }

        public void firstDraw() {
            synchronized (this.mObjholder) {
                Draw();
                Canvas canvas = this.mObjCanvas;
                if (canvas != null) {
                    this.mObjholder.unlockCanvasAndPost(canvas);
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Canvas canvas;
            while (this.mbDraw) {
                try {
                    try {
                        synchronized (this.mObjholder) {
                            try {
                                Draw();
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        Thread.sleep(50L);
                        canvas = this.mObjCanvas;
                        if (canvas != null) {
                            this.mObjholder.unlockCanvasAndPost(canvas);
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        canvas = this.mObjCanvas;
                        if (canvas != null) {
                        }
                    }
                } catch (Throwable th2) {
                    Canvas canvas2 = this.mObjCanvas;
                    if (canvas2 != null) {
                        this.mObjholder.unlockCanvasAndPost(canvas2);
                    }
                    throw th2;
                }
            }
        }
    }
}
