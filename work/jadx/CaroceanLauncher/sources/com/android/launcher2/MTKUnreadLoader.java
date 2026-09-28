package com.android.launcher2;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.NinePatchDrawable;
import android.os.AsyncTask;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.View;
import com.android.internal.util.XmlUtils;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class MTKUnreadLoader extends BroadcastReceiver {
    private static final String TAG = "MTKUnreadLoader";
    private static final String TAG_UNREADSHORTCUTS = "unreadshortcuts";
    private WeakReference<UnreadCallbacks> mCallbacks;
    private Context mContext;
    private static final ArrayList<UnreadSupportShortcut> UNREAD_SUPPORT_SHORTCUTS = new ArrayList<>();
    private static int sUnreadSupportShortcutsNum = 0;
    private static final Object LOG_LOCK = new Object();

    public interface UnreadCallbacks {
        void bindComponentUnreadChanged(ComponentName componentName, int i);

        void bindUnreadInfoIfNeeded();
    }

    public MTKUnreadLoader(Context context) {
        this.mContext = context;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        intent.getAction();
    }

    public void initialize(UnreadCallbacks unreadCallbacks) {
        this.mCallbacks = new WeakReference<>(unreadCallbacks);
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "initialize: callbacks = " + unreadCallbacks + ", mCallbacks = " + this.mCallbacks);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.launcher2.MTKUnreadLoader$1] */
    void loadAndInitUnreadShortcuts() {
        new AsyncTask<Void, Void, Void>() { // from class: com.android.launcher2.MTKUnreadLoader.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                MTKUnreadLoader.this.loadUnreadSupportShortcuts();
                MTKUnreadLoader.this.initUnreadNumberFromSystem();
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Void r1) {
                UnreadCallbacks unreadCallbacks;
                if (MTKUnreadLoader.this.mCallbacks == null || (unreadCallbacks = (UnreadCallbacks) MTKUnreadLoader.this.mCallbacks.get()) == null) {
                    return;
                }
                unreadCallbacks.bindUnreadInfoIfNeeded();
            }
        }.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initUnreadNumberFromSystem() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        int i = sUnreadSupportShortcutsNum;
        for (int i2 = 0; i2 < i; i2++) {
            UnreadSupportShortcut unreadSupportShortcut = UNREAD_SUPPORT_SHORTCUTS.get(i2);
            try {
                unreadSupportShortcut.mUnreadNum = Settings.System.getInt(contentResolver, unreadSupportShortcut.mKey);
                if (L.DEBUG_UNREAD) {
                    L.d(TAG, "initUnreadNumberFromSystem: key = " + unreadSupportShortcut.mKey + ", unreadNum = " + unreadSupportShortcut.mUnreadNum);
                }
            } catch (Settings.SettingNotFoundException e) {
                L.e(TAG, "initUnreadNumberFromSystem SettingNotFoundException key = " + unreadSupportShortcut.mKey + ", e = " + e.getMessage());
            }
        }
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "initUnreadNumberFromSystem end:" + getUnreadSupportShortcutInfo());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadUnreadSupportShortcuts() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (L.DEBUG_PERFORMANCE) {
            L.d(TAG, "loadUnreadSupportShortcuts begin: start = " + jCurrentTimeMillis);
        }
        UNREAD_SUPPORT_SHORTCUTS.clear();
        try {
            XmlResourceParser xml = this.mContext.getResources().getXml(R.xml.unread_support_shortcuts);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            XmlUtils.beginDocument(xml, TAG_UNREADSHORTCUTS);
            int depth = xml.getDepth();
            while (true) {
                int next = xml.next();
                if ((next == 3 && xml.getDepth() <= depth) || next == 1) {
                    break;
                }
                if (next == 2) {
                    TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSetAsAttributeSet, R.styleable.UnreadShortcut);
                    synchronized (LOG_LOCK) {
                        try {
                            UNREAD_SUPPORT_SHORTCUTS.add(new UnreadSupportShortcut(typedArrayObtainStyledAttributes.getString(2), typedArrayObtainStyledAttributes.getString(0), typedArrayObtainStyledAttributes.getString(1), typedArrayObtainStyledAttributes.getInt(3, 0)));
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    typedArrayObtainStyledAttributes.recycle();
                }
            }
        } catch (IOException e) {
            L.w(TAG, "Got IOException while parsing unread shortcuts.", e);
        } catch (XmlPullParserException e2) {
            L.w(TAG, "Got XmlPullParserException while parsing unread shortcuts.", e2);
        }
        sUnreadSupportShortcutsNum = UNREAD_SUPPORT_SHORTCUTS.size();
        if (L.DEBUG_PERFORMANCE) {
            L.d(TAG, "loadUnreadSupportShortcuts end: time used = " + (System.currentTimeMillis() - jCurrentTimeMillis) + ",sUnreadSupportShortcutsNum = " + sUnreadSupportShortcutsNum + getUnreadSupportShortcutInfo());
        }
    }

    private static String getUnreadSupportShortcutInfo() {
        String str;
        synchronized (LOG_LOCK) {
            str = " Unread support shortcuts are " + UNREAD_SUPPORT_SHORTCUTS.toString();
        }
        return str;
    }

    static int supportUnreadFeature(ComponentName componentName) {
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "supportUnreadFeature: component = " + componentName);
        }
        if (componentName == null) {
            return -1;
        }
        int size = UNREAD_SUPPORT_SHORTCUTS.size();
        for (int i = 0; i < size; i++) {
            if (UNREAD_SUPPORT_SHORTCUTS.get(i).mComponent.equals(componentName)) {
                return i;
            }
        }
        return -1;
    }

    static synchronized boolean setUnreadNumberAt(int i, int i2) {
        if (i < 0) {
            if (i < sUnreadSupportShortcutsNum) {
            }
            return false;
        }
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "setUnreadNumberAt: index = " + i + ",unreadNum = " + i2 + getUnreadSupportShortcutInfo());
        }
        ArrayList<UnreadSupportShortcut> arrayList = UNREAD_SUPPORT_SHORTCUTS;
        if (arrayList.get(i).mUnreadNum != i2) {
            arrayList.get(i).mUnreadNum = i2;
            return true;
        }
        return false;
    }

    static synchronized int getUnreadNumberAt(int i) {
        if (i >= 0) {
            if (i < sUnreadSupportShortcutsNum) {
                if (L.DEBUG_UNREAD) {
                    L.d(TAG, "getUnreadNumberAt: index = " + i + getUnreadSupportShortcutInfo());
                }
                return UNREAD_SUPPORT_SHORTCUTS.get(i).mUnreadNum;
            }
        }
        return 0;
    }

    static int getUnreadNumberOfComponent(ComponentName componentName) {
        return getUnreadNumberAt(supportUnreadFeature(componentName));
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0136  */
    /* JADX WARN: Code duplicated, block: B:42:0x015f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0181  */
    static void drawUnreadEventIfNeed(Canvas canvas, View view) {
        String strValueOf;
        NinePatchDrawable ninePatchDrawable;
        int dimension;
        float dimension2;
        int i;
        int i2;
        Paint.FontMetrics fontMetrics;
        ItemInfo itemInfo = (ItemInfo) view.getTag();
        if (itemInfo == null || itemInfo.unreadNum <= 0) {
            return;
        }
        Resources resources = view.getContext().getResources();
        Paint paint = new Paint();
        paint.setTextSize(resources.getDimension(R.dimen.unread_text_number_size));
        paint.setTypeface(Typeface.DEFAULT_BOLD);
        paint.setColor(-1);
        paint.setTextAlign(Paint.Align.CENTER);
        Paint paint2 = new Paint(paint);
        paint2.setTextSize(resources.getDimension(R.dimen.unread_text_plus_size));
        Rect rect = new Rect(0, 0, 0, 0);
        Rect rect2 = new Rect(0, 0, 0, 0);
        if (itemInfo.unreadNum > 99) {
            strValueOf = String.valueOf(99);
            paint2.getTextBounds("+", 0, 1, rect2);
        } else {
            strValueOf = String.valueOf(itemInfo.unreadNum);
        }
        paint.getTextBounds(strValueOf, 0, strValueOf.length(), rect);
        int iHeight = rect.height();
        int iWidth = rect.width() + rect2.width();
        NinePatchDrawable ninePatchDrawable2 = (NinePatchDrawable) resources.getDrawable(R.drawable.ic_newevents_numberindication);
        int intrinsicWidth = ninePatchDrawable2.getIntrinsicWidth();
        int intrinsicHeight = ninePatchDrawable2.getIntrinsicHeight();
        int dimension3 = (int) resources.getDimension(R.dimen.unread_minWidth);
        if (intrinsicWidth < dimension3) {
            intrinsicWidth = dimension3;
        }
        int dimension4 = iWidth + ((int) resources.getDimension(R.dimen.unread_text_margin));
        if (intrinsicWidth < dimension4) {
            intrinsicWidth = dimension4;
        }
        if (intrinsicHeight < iHeight) {
            intrinsicHeight = iHeight;
        }
        ninePatchDrawable2.setBounds(new Rect(0, 0, intrinsicWidth, intrinsicHeight));
        if (!(itemInfo instanceof ShortcutInfo)) {
            ninePatchDrawable = ninePatchDrawable2;
            if (itemInfo instanceof FolderInfo) {
                if (itemInfo.container == -101) {
                    dimension = (int) resources.getDimension(R.dimen.hotseat_unread_margin_top);
                    dimension2 = resources.getDimension(R.dimen.hotseat_unread_margin_right);
                } else if (itemInfo.container == -100) {
                    dimension = (int) resources.getDimension(R.dimen.workspace_unread_margin_top);
                    dimension2 = resources.getDimension(R.dimen.workspace_unread_margin_right);
                } else {
                    i = 0;
                    i2 = 0;
                }
            } else if (itemInfo instanceof ApplicationInfo) {
                dimension = (int) resources.getDimension(R.dimen.app_list_unread_margin_top);
                dimension2 = resources.getDimension(R.dimen.app_list_unread_margin_right);
            } else {
                i = 0;
                i2 = 0;
            }
            int scrollX = ((view.getScrollX() + view.getWidth()) - intrinsicWidth) - i;
            int scrollY = view.getScrollY() + i2;
            canvas.save();
            canvas.translate(scrollX, scrollY);
            ninePatchDrawable.draw(canvas);
            fontMetrics = paint.getFontMetrics();
            if (itemInfo.unreadNum > 99) {
                float f = (intrinsicHeight + iHeight) / 2;
                canvas.drawText(strValueOf, (intrinsicWidth - rect2.width()) / 2, f, paint);
                canvas.drawText("+", (intrinsicWidth + rect.width()) / 2, f + (fontMetrics.ascent / 2.0f), paint2);
            } else {
                canvas.drawText(strValueOf, intrinsicWidth / 2, (intrinsicHeight + iHeight) / 2, paint);
            }
            canvas.restore();
        }
        ninePatchDrawable = ninePatchDrawable2;
        if (itemInfo.container == -101) {
            dimension = (int) resources.getDimension(R.dimen.hotseat_unread_margin_top);
            dimension2 = resources.getDimension(R.dimen.hotseat_unread_margin_right);
        } else if (itemInfo.container == -100) {
            dimension = (int) resources.getDimension(R.dimen.workspace_unread_margin_top);
            dimension2 = resources.getDimension(R.dimen.workspace_unread_margin_right);
        } else {
            dimension = (int) resources.getDimension(R.dimen.folder_unread_margin_top);
            dimension2 = resources.getDimension(R.dimen.folder_unread_margin_right);
        }
        i2 = dimension;
        i = (int) dimension2;
        int scrollX2 = ((view.getScrollX() + view.getWidth()) - intrinsicWidth) - i;
        int scrollY2 = view.getScrollY() + i2;
        canvas.save();
        canvas.translate(scrollX2, scrollY2);
        ninePatchDrawable.draw(canvas);
        fontMetrics = paint.getFontMetrics();
        if (itemInfo.unreadNum > 99) {
            float f2 = (intrinsicHeight + iHeight) / 2;
            canvas.drawText(strValueOf, (intrinsicWidth - rect2.width()) / 2, f2, paint);
            canvas.drawText("+", (intrinsicWidth + rect.width()) / 2, f2 + (fontMetrics.ascent / 2.0f), paint2);
        } else {
            canvas.drawText(strValueOf, intrinsicWidth / 2, (intrinsicHeight + iHeight) / 2, paint);
        }
        canvas.restore();
    }
}
