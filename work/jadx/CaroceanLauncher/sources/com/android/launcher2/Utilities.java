package com.android.launcher2;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import androidx.core.internal.view.SupportMenu;
import com.android.launcher2.uitl.L;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.R;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class Utilities {
    private static final int INTERNAL_PADDING = 5;
    private static final String TAG = "Launcher.Utilities";
    private static Bitmap sBgBmp = null;
    private static final Paint sBgPaint;
    private static final Canvas sCanvas;
    static int sColorIndex = 0;
    static int[] sColors = null;
    private static Bitmap sHotseatBmp = null;
    private static final Paint sHotseatPaint;
    private static int sIconHeight = -1;
    private static int sIconTextureHeight = -1;
    private static int sIconTextureWidth = -1;
    private static int sIconWidth = -1;
    private static Bitmap sMaskBmp;
    private static final Paint sMaskPaint;
    private static Bitmap sShortcutBmp;
    private static final Paint sShortcutPaint;
    private static final Paint sBlurPaint = new Paint();
    private static final Paint sGlowColorPressedPaint = new Paint();
    private static final Paint sGlowColorFocusedPaint = new Paint();
    private static final Paint sDisabledPaint = new Paint();
    private static final Rect sOldBounds = new Rect();

    static int roundToPow2(int i) {
        int i2 = i >> 1;
        int i3 = 134217728;
        while (i3 != 0 && (i2 & i3) == 0) {
            i3 >>= 1;
        }
        while (i3 != 0) {
            i2 |= i3;
            i3 >>= 1;
        }
        int i4 = i2 + 1;
        return i4 != i ? i4 << 1 : i4;
    }

    static {
        Canvas canvas = new Canvas();
        sCanvas = canvas;
        sBgPaint = new Paint();
        sShortcutPaint = new Paint();
        sMaskPaint = new Paint();
        sHotseatPaint = new Paint();
        canvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
        sColors = new int[]{SupportMenu.CATEGORY_MASK, -16711936, -16776961};
        sColorIndex = 0;
    }

    static Bitmap createIconBitmap(Bitmap bitmap, Context context) {
        int i = sIconTextureWidth;
        int i2 = sIconTextureHeight;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= i || height <= i2) {
            return (width == i && height == i2) ? bitmap : createIconBitmap(new BitmapDrawable(context.getResources(), bitmap), context);
        }
        return Bitmap.createBitmap(bitmap, (width - i) / 2, (height - i2) / 2, i, i2);
    }

    static Bitmap createIconBitmap(Drawable drawable, Context context) {
        Bitmap bitmapCreateBitmap;
        Canvas canvas = sCanvas;
        synchronized (canvas) {
            if (sIconWidth == -1) {
                initStatics(context);
            }
            int i = sIconWidth;
            int i2 = sIconHeight;
            if (drawable instanceof PaintDrawable) {
                PaintDrawable paintDrawable = (PaintDrawable) drawable;
                paintDrawable.setIntrinsicWidth(i);
                paintDrawable.setIntrinsicHeight(i2);
            } else if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                if (bitmapDrawable.getBitmap().getDensity() == 0) {
                    bitmapDrawable.setTargetDensity(context.getResources().getDisplayMetrics());
                }
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0 && (i < intrinsicWidth || i2 < intrinsicHeight)) {
                float f = intrinsicWidth / intrinsicHeight;
                if (intrinsicWidth > intrinsicHeight) {
                    i2 = (int) (i / f);
                } else if (intrinsicHeight > intrinsicWidth) {
                    i = (int) (i2 * f);
                }
            }
            int i3 = sIconTextureWidth;
            int i4 = sIconTextureHeight;
            bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
            canvas.setBitmap(bitmapCreateBitmap);
            int i5 = (i3 - i) / 2;
            int i6 = (i4 - i2) / 2;
            Rect rect = sOldBounds;
            rect.set(drawable.getBounds());
            drawable.setBounds(i5, i6, i + i5, i2 + i6);
            drawable.draw(canvas);
            drawable.setBounds(rect);
            canvas.setBitmap(null);
        }
        return bitmapCreateBitmap;
    }

    static Bitmap createIconBitmap(Drawable drawable, Context context, SceneInfo sceneInfo) {
        Bitmap bitmapCreateBitmap;
        float dimension;
        Resources resources;
        int identifier;
        Resources resources2;
        int identifier2;
        Resources resources3;
        int identifier3;
        Canvas canvas = sCanvas;
        synchronized (canvas) {
            if (sIconWidth == -1) {
                initStatics(context);
            }
            int i = sIconWidth;
            int i2 = sIconHeight;
            if (drawable instanceof PaintDrawable) {
                PaintDrawable paintDrawable = (PaintDrawable) drawable;
                paintDrawable.setIntrinsicWidth(i);
                paintDrawable.setIntrinsicHeight(i2);
            } else if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                if (bitmapDrawable.getBitmap().getDensity() == 0) {
                    bitmapDrawable.setTargetDensity(context.getResources().getDisplayMetrics());
                }
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                if (i < intrinsicWidth || i2 < intrinsicHeight) {
                    float f = intrinsicWidth / intrinsicHeight;
                    if (intrinsicWidth > intrinsicHeight) {
                        i2 = (int) (i / f);
                    } else if (intrinsicHeight > intrinsicWidth) {
                        i = (int) (i2 * f);
                    }
                } else if (intrinsicWidth < i && intrinsicHeight < i2) {
                    i = intrinsicWidth;
                    i2 = intrinsicHeight;
                }
            }
            int i3 = sIconTextureWidth;
            int i4 = sIconTextureHeight;
            L.v("hede", i3 + "&&&&" + i4);
            bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
            canvas.setBitmap(bitmapCreateBitmap);
            String packageName = context.getPackageName();
            int integer = (int) (i * (context.getResources().getInteger(R.integer.icon_expand_multiple) / 10.0f));
            int integer2 = (int) (i2 * (context.getResources().getInteger(R.integer.icon_expand_multiple) / 10.0f));
            if (ZHTDOEMManager.ensureID8()) {
                if (integer > context.getResources().getDimension(R.dimen.app_icon_id8_size)) {
                    integer = (int) context.getResources().getDimension(R.dimen.app_icon_id8_size);
                    dimension = context.getResources().getDimension(R.dimen.app_icon_id8_size);
                    integer2 = (int) dimension;
                }
            } else if (!ZHTDOEMManager.isMRWCustomer() && !ZHTDOEMManager.isYZGCustomer() && !ZHTDOEMManager.isLCCustomerTheme1()) {
                float f2 = integer;
                Resources resources4 = context.getResources();
                boolean zIsLCCustomer = ZHTDOEMManager.isLCCustomer();
                int i5 = R.dimen.app_icon_lc_size;
                if (f2 > resources4.getDimension(zIsLCCustomer ? R.dimen.app_icon_lc_size : R.dimen.app_icon_size)) {
                    integer = (int) context.getResources().getDimension(ZHTDOEMManager.isLCCustomer() ? R.dimen.app_icon_lc_size : R.dimen.app_icon_size);
                    Resources resources5 = context.getResources();
                    if (!ZHTDOEMManager.isLCCustomer()) {
                        i5 = R.dimen.app_icon_size;
                    }
                    dimension = resources5.getDimension(i5);
                    integer2 = (int) dimension;
                }
            } else if (integer > context.getResources().getDimension(R.dimen.app_icon_mrw_size)) {
                integer = (int) context.getResources().getDimension(R.dimen.app_icon_mrw_size);
                dimension = context.getResources().getDimension(R.dimen.app_icon_mrw_size);
                integer2 = (int) dimension;
            }
            int i6 = (i3 - integer) / 2;
            int i7 = (i4 - integer2) / 2;
            if (sceneInfo.needCustomizedIcon()) {
                if (sBgBmp == null && (identifier3 = (resources3 = context.getResources()).getIdentifier(sceneInfo.getIconBgResName(), "drawable", packageName)) != 0) {
                    sBgBmp = scaleBitmap(BitmapFactory.decodeResource(resources3, identifier3), integer, integer2);
                }
                Bitmap bitmap = sBgBmp;
                if (bitmap != null) {
                    canvas.drawBitmap(sBgBmp, (i3 - bitmap.getWidth()) / 2, (i4 - sBgBmp.getHeight()) / 2, sBgPaint);
                }
            }
            Rect rect = sOldBounds;
            rect.set(drawable.getBounds());
            if (sceneInfo.needCustomizedIcon() && sceneInfo.getInnerIconScale() != 1.0f) {
                float innerIconScale = sceneInfo.getInnerIconScale();
                int i8 = (int) (integer * innerIconScale);
                int i9 = (int) (integer2 * innerIconScale);
                int i10 = (i3 - i8) / 2;
                int i11 = (i4 - i9) / 2;
                drawable.setBounds(i10, i11, i8 + i10, i9 + i11);
            } else {
                drawable.setBounds(i6, i7, i6 + integer, i7 + integer2);
            }
            drawable.draw(canvas);
            drawable.setBounds(rect);
            canvas.setBitmap(null);
            if (!sceneInfo.isDefault() && sceneInfo.isShortcut()) {
                if (sShortcutBmp == null && (identifier2 = (resources2 = context.getResources()).getIdentifier(sceneInfo.getIconShortcutResName(), "drawable", packageName)) != 0) {
                    sShortcutBmp = scaleBitmap(BitmapFactory.decodeResource(resources2, identifier2), integer, integer2);
                }
                Bitmap bitmap2 = sShortcutBmp;
                if (bitmap2 != null) {
                    int width = (i3 - bitmap2.getWidth()) / 2;
                    int height = (i4 - sShortcutBmp.getHeight()) / 2;
                    canvas.setBitmap(bitmapCreateBitmap);
                    canvas.drawBitmap(sShortcutBmp, width, height, sShortcutPaint);
                    canvas.setBitmap(null);
                }
            }
            if (sceneInfo.needCustomizedIcon()) {
                if (sMaskBmp == null && (identifier = (resources = context.getResources()).getIdentifier("icon_mask", "drawable", packageName)) != 0) {
                    sMaskBmp = scaleBitmap(BitmapFactory.decodeResource(resources, identifier), integer, integer2);
                }
                if (sMaskBmp != null) {
                    canvas.setBitmap(bitmapCreateBitmap);
                    canvas.drawBitmap(sMaskBmp, i6, i7, sMaskPaint);
                    canvas.setBitmap(null);
                }
            }
            if (sceneInfo.isHotseat()) {
                if (sHotseatBmp == null) {
                    Resources resources6 = context.getResources();
                    int identifier4 = resources6.getIdentifier(sceneInfo.getIconShortcutResName(), "drawable", packageName);
                    L.v("hede", "$$$$$$$$" + packageName);
                    if (identifier4 != 0) {
                        sHotseatBmp = scaleBitmap(BitmapFactory.decodeResource(resources6, identifier4), integer, integer2);
                    }
                }
                if (sHotseatBmp != null) {
                    canvas.setBitmap(bitmapCreateBitmap);
                    canvas.drawBitmap(sHotseatBmp, i6, i7, sHotseatPaint);
                    canvas.setBitmap(null);
                }
            }
        }
        return bitmapCreateBitmap;
    }

    static Bitmap createIconBitmap(Drawable drawable, Context context, boolean z) {
        Bitmap bitmapCreateBitmap;
        Canvas canvas = sCanvas;
        synchronized (canvas) {
            if (sIconWidth == -1) {
                initStatics(context);
            }
            int i = sIconWidth;
            int i2 = sIconHeight;
            if (drawable instanceof PaintDrawable) {
                PaintDrawable paintDrawable = (PaintDrawable) drawable;
                paintDrawable.setIntrinsicWidth(i);
                paintDrawable.setIntrinsicHeight(i2);
            } else if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                if (bitmapDrawable.getBitmap().getDensity() == 0) {
                    bitmapDrawable.setTargetDensity(context.getResources().getDisplayMetrics());
                }
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                if (i < intrinsicWidth || i2 < intrinsicHeight) {
                    float f = intrinsicWidth / intrinsicHeight;
                    if (intrinsicWidth > intrinsicHeight) {
                        i2 = (int) (i / f);
                    } else if (intrinsicHeight > intrinsicWidth) {
                        i = (int) (i2 * f);
                    }
                } else if (intrinsicWidth < i && intrinsicHeight < i2) {
                    i = intrinsicWidth;
                    i2 = intrinsicHeight;
                }
            }
            int i3 = (int) (((double) sIconTextureWidth) * 1.6d);
            int i4 = (int) (((double) sIconTextureHeight) * 1.6d);
            bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
            canvas.setBitmap(bitmapCreateBitmap);
            int i5 = (i3 - i) / 2;
            int i6 = (i4 - i2) / 2;
            Rect rect = sOldBounds;
            rect.set(drawable.getBounds());
            drawable.setBounds(i5, i6, i + i5, i2 + i6);
            drawable.draw(canvas);
            drawable.setBounds(rect);
            canvas.setBitmap(null);
        }
        return bitmapCreateBitmap;
    }

    static Bitmap scaleBitmap(Bitmap bitmap, int i, int i2) {
        return scaleBitmap(bitmap, i / bitmap.getWidth(), i2 / bitmap.getHeight());
    }

    static Bitmap scaleBitmap(Bitmap bitmap, float f, float f2) {
        if (f == 1.0f && f2 == 1.0f) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(f, f2);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static void clearBitmap() {
        sBgBmp = null;
        sShortcutBmp = null;
        sMaskBmp = null;
    }

    static void drawSelectedAllAppsBitmap(Canvas canvas, int i, int i2, boolean z, Bitmap bitmap) {
        synchronized (sCanvas) {
            if (sIconWidth == -1) {
                throw new RuntimeException("Assertion failed: Utilities not initialized");
            }
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            int[] iArr = new int[2];
            Bitmap bitmapExtractAlpha = bitmap.extractAlpha(sBlurPaint, iArr);
            canvas.drawBitmap(bitmapExtractAlpha, ((i - bitmap.getWidth()) / 2) + iArr[0], ((i2 - bitmap.getHeight()) / 2) + iArr[1], z ? sGlowColorPressedPaint : sGlowColorFocusedPaint);
            bitmapExtractAlpha.recycle();
        }
    }

    static Bitmap resampleIconBitmap(Bitmap bitmap, Context context) {
        synchronized (sCanvas) {
            if (sIconWidth == -1) {
                initStatics(context);
            }
            if (bitmap.getWidth() == sIconWidth && bitmap.getHeight() == sIconHeight) {
                return bitmap;
            }
            return createIconBitmap(new BitmapDrawable(context.getResources(), bitmap), context);
        }
    }

    static Bitmap drawDisabledBitmap(Bitmap bitmap, Context context) {
        Bitmap bitmapCreateBitmap;
        Canvas canvas = sCanvas;
        synchronized (canvas) {
            if (sIconWidth == -1) {
                initStatics(context);
            }
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            canvas.setBitmap(bitmapCreateBitmap);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, sDisabledPaint);
            canvas.setBitmap(null);
        }
        return bitmapCreateBitmap;
    }

    private static void initStatics(Context context) {
        Resources resources = context.getResources();
        float f = resources.getDisplayMetrics().density;
        if (ZHTDOEMManager.ensureID8()) {
            int dimension = (int) resources.getDimension(R.dimen.app_icon_id8_size);
            sIconHeight = dimension;
            sIconWidth = dimension;
        } else if (ZHTDOEMManager.isMRWCustomer() || ZHTDOEMManager.isYZGCustomer() || ZHTDOEMManager.isLCCustomerTheme1()) {
            int dimension2 = (int) resources.getDimension(R.dimen.app_icon_mrw_size);
            sIconHeight = dimension2;
            sIconWidth = dimension2;
        } else {
            int dimension3 = (int) resources.getDimension(ZHTDOEMManager.isLCCustomer() ? R.dimen.app_icon_lc_size : R.dimen.app_icon_size);
            sIconHeight = dimension3;
            sIconWidth = dimension3;
        }
        int i = sIconWidth;
        sIconTextureHeight = i;
        sIconTextureWidth = i;
        sBlurPaint.setMaskFilter(new BlurMaskFilter(f * 5.0f, BlurMaskFilter.Blur.NORMAL));
        sGlowColorPressedPaint.setColor(-15616);
        sGlowColorFocusedPaint.setColor(-29184);
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.2f);
        Paint paint = sDisabledPaint;
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        paint.setAlpha(136);
        Paint paint2 = sBgPaint;
        paint2.setFilterBitmap(false);
        paint2.setAntiAlias(true);
        paint2.setDither(true);
        Paint paint3 = sShortcutPaint;
        paint3.setFilterBitmap(false);
        paint3.setAntiAlias(true);
        paint3.setDither(true);
        Paint paint4 = sMaskPaint;
        paint4.setFilterBitmap(false);
        paint4.setAntiAlias(true);
        paint4.setDither(true);
        paint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    static int generateRandomId() {
        return new Random(System.currentTimeMillis()).nextInt(16777216);
    }

    public static boolean isComponentEnabled(Context context, ComponentName componentName) {
        if (componentName.getPackageName().contains("com.mediatek.StkSelection") || componentName.getPackageName().contains("com.android.stk")) {
            return false;
        }
        String packageName = componentName.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = null;
        try {
            packageInfo = packageManager.getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            L.i(TAG, "isComponentEnabled NameNotFoundException: pkgName = " + packageName);
        }
        if (packageInfo == null) {
            L.d(TAG, "isComponentEnabled return false because package " + packageName + " has been uninstalled!");
            return false;
        }
        int applicationEnabledSetting = packageManager.getApplicationEnabledSetting(packageName);
        if (L.DEBUG) {
            L.d(TAG, "isComponentEnabled: cmpName = " + componentName + ",pkgEnableState = " + applicationEnabledSetting);
        }
        if (applicationEnabledSetting == 0 || applicationEnabledSetting == 1) {
            int componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
            if (L.DEBUG) {
                L.d(TAG, "isComponentEnabled: cmpEnableState = " + componentEnabledSetting);
            }
            if (componentEnabledSetting == 0 || componentEnabledSetting == 1) {
                return true;
            }
        }
        return false;
    }

    static Bitmap create3rdIconBitmap(Drawable drawable, Context context) {
        Bitmap bitmapCreateBitmap;
        Canvas canvas = sCanvas;
        synchronized (canvas) {
            if (sIconWidth == -1) {
                initStatics(context);
            }
            int i = sIconWidth;
            int i2 = sIconHeight;
            if (drawable instanceof PaintDrawable) {
                PaintDrawable paintDrawable = (PaintDrawable) drawable;
                paintDrawable.setIntrinsicWidth(i);
                paintDrawable.setIntrinsicHeight(i2);
            } else if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                if (bitmapDrawable.getBitmap().getDensity() == 0) {
                    bitmapDrawable.setTargetDensity(context.getResources().getDisplayMetrics());
                }
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                if (i < intrinsicWidth || i2 < intrinsicHeight) {
                    float f = intrinsicWidth / intrinsicHeight;
                    if (intrinsicWidth > intrinsicHeight) {
                        i2 = (int) (i / f);
                    } else if (intrinsicHeight > intrinsicWidth) {
                        i = (int) (i2 * f);
                    }
                } else if (intrinsicWidth < i && intrinsicHeight < i2) {
                    i = intrinsicWidth;
                    i2 = intrinsicHeight;
                }
            }
            int i3 = sIconTextureWidth;
            int i4 = sIconTextureHeight;
            bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
            canvas.setBitmap(bitmapCreateBitmap);
            int i5 = (i3 - i) / 2;
            int i6 = (i4 - i2) / 2;
            Drawable drawable2 = context.getResources().getDrawable(R.drawable.icon_bg2);
            drawable2.setBounds(0, 0, sIconWidth, sIconHeight);
            drawable2.draw(canvas);
            Rect rect = sOldBounds;
            rect.set(drawable.getBounds());
            drawable.setBounds(i5, i6, i + i5, i2 + i6);
            drawable.draw(canvas);
            drawable.setBounds(rect);
            canvas.setBitmap(null);
        }
        return bitmapCreateBitmap;
    }
}
