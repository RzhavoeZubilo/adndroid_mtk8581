package com.carocean.navicar;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MMIKeyHelper {
    public static final int MAX_SECTOR_COUNT = 10;
    private static final String TAG = "MMIKeyHelper";
    private Callback mCustomCallback;
    private ViewItem mViewItemFocused = null;
    private final int SELECT = 0;
    private final int FOCUS = 1;
    private int mCurSector = 0;
    private int mLastSector = 0;
    private int[] mSelectIndexArray = new int[10];
    private int[] mSelectLoopArray = new int[10];
    private ArrayList<ArrayList<ViewItem>> mViewListGroup = new ArrayList<>();
    private int mSelectStatus = 0;
    private int mSelectMode = 0;
    private final int MSG_KEY_TIMEOUT = 0;
    private final int KEY_TIMEOUT_MILLIS = 5000;
    private Handler mHandler = new Handler() { // from class: com.carocean.navicar.MMIKeyHelper.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0 && MMIKeyHelper.this.mSelectMode == 1) {
                MMIKeyHelper.this.showSelectedStatus(false);
            }
            super.handleMessage(message);
        }
    };
    private int mLastKeyDownCode = 0;

    public interface Callback {
        void onEnter(View view);

        void onFocused(View view, boolean z);

        void onMenuUpEnd();

        void onSelectChanged(View view, boolean z);

        void onTurnning(View view, boolean z);
    }

    public interface CallbackEx extends Callback {
        void onMenuDown(int i, int i2);

        void onMenuUp(int i, int i2);
    }

    public static class Mode {
        public static final int AUTO_SELECT = 1;
        public static final int CALLBACK = 4;
        public static final int CURSOR_STAY = 16;
        public static final int NEED_FOCUS = 8;
        public static final int PERFORM_CLICK = 2;
    }

    public static class SelectLoop {
        public static final int LOOP = 1;
        public static final int NOT_LOOP = 0;
    }

    public static class SelectMode {
        public static final int SELECT_ALWAYS = 0;
        public static final int SELECT_BY_KEYEVENT = 1;
    }

    public interface onDispatchKeyEvent {
        boolean dispatchKeyEvent(KeyEvent keyEvent);
    }

    private void onBackPressed() {
    }

    public class ViewItem {
        boolean mFocused = false;
        int mMode;
        View mView;

        public ViewItem(View view, int i) {
            this.mView = view;
            this.mMode = i;
        }
    }

    private void doViewAction(ViewItem viewItem, int i, boolean z) {
        Callback callback;
        Callback callback2;
        if (viewItem == null) {
            return;
        }
        if (i == 0) {
            if ((viewItem.mMode & 1) != 0) {
                viewItem.mView.setSelected(z);
            }
            if ((viewItem.mMode & 4) == 0 || (callback2 = this.mCustomCallback) == null) {
                return;
            }
            callback2.onSelectChanged(viewItem.mView, z);
            return;
        }
        if (1 != i || (viewItem.mMode & 8) == 0 || (callback = this.mCustomCallback) == null) {
            return;
        }
        callback.onFocused(viewItem.mView, z);
    }

    public void setCustomCallback(Callback callback) {
        this.mCustomCallback = callback;
    }

    public MMIKeyHelper(int i) {
        setSectorCount(i);
    }

    public void setSelectMode(int i) {
        this.mSelectMode = i;
    }

    public void setSectorCount(int i) {
        if (i > 10) {
            Log.e(TAG, "setSectorCount too many sectors.");
            return;
        }
        this.mCurSector = 0;
        this.mViewListGroup.clear();
        for (int i2 = 0; i2 < i; i2++) {
            this.mViewListGroup.add(new ArrayList<>());
        }
        int i3 = 0;
        while (true) {
            int[] iArr = this.mSelectIndexArray;
            if (i3 >= iArr.length) {
                break;
            }
            iArr[i3] = 0;
            i3++;
        }
        int i4 = 0;
        while (true) {
            int[] iArr2 = this.mSelectLoopArray;
            if (i4 >= iArr2.length) {
                return;
            }
            iArr2[i4] = 0;
            i4++;
        }
    }

    public void setSelectLoop(int i, boolean z) {
        if (i >= 0) {
            int[] iArr = this.mSelectLoopArray;
            if (i < iArr.length) {
                iArr[i] = z ? 1 : 0;
            }
        }
    }

    public boolean isSelectLoop(int i) {
        if (i < 0) {
            return false;
        }
        int[] iArr = this.mSelectLoopArray;
        return i < iArr.length && iArr[i] == 1;
    }

    private void hideSelectedStatusLater() {
        this.mHandler.removeMessages(0);
        this.mHandler.sendEmptyMessageDelayed(0, 5000L);
    }

    public boolean showSelectedStatus(boolean z) {
        Callback callback;
        if (this.mViewListGroup.size() == 0) {
            return false;
        }
        this.mSelectStatus = z ? 1 : 0;
        ArrayList<ViewItem> arrayList = this.mViewListGroup.get(this.mCurSector);
        if (arrayList.size() <= 0) {
            return false;
        }
        ViewItem viewItem = arrayList.get(this.mSelectIndexArray[this.mCurSector]);
        boolean z2 = z && (viewItem.mMode & 16) != 0;
        if ((viewItem.mMode & 1) != 0) {
            if (z) {
                if (!viewItem.mView.isSelected()) {
                    viewItem.mView.setSelected(true);
                }
            } else if (viewItem.mView.isSelected()) {
                viewItem.mView.setSelected(false);
            }
        }
        if ((viewItem.mMode & 4) != 0 && (callback = this.mCustomCallback) != null) {
            callback.onSelectChanged(viewItem.mView, z);
        }
        if (z) {
            hideSelectedStatusLater();
        }
        return z2;
    }

    public void addView(View view, int i, int i2) {
        if (this.mViewListGroup.size() == 0 || view == null) {
            Log.e(TAG, "addView mViewListGroup.size(): " + this.mViewListGroup.size() + ",view==null:" + (view == null));
        } else if (i2 < this.mViewListGroup.size()) {
            ArrayList<ViewItem> arrayList = this.mViewListGroup.get(i2);
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(new ViewItem(view, i | 16));
        }
    }

    public void setViewMode(View view, int i) {
        if (this.mViewListGroup.size() > 0) {
            for (int i2 = 0; i2 < this.mViewListGroup.size(); i2++) {
                ArrayList<ViewItem> arrayList = this.mViewListGroup.get(i2);
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    ViewItem viewItem = arrayList.get(i3);
                    if (viewItem.mView == view) {
                        viewItem.mMode = i;
                        break;
                    }
                }
            }
        }
    }

    public int getSelectedIndex() {
        int[] iArr = this.mSelectIndexArray;
        if (iArr != null) {
            return iArr[this.mCurSector];
        }
        return 0;
    }

    public int getSelectedSector() {
        return this.mCurSector;
    }

    public void setSelected(View view) {
        setSelected(view, true);
    }

    public void setSelected(View view, boolean z) {
        if (view != null && this.mViewListGroup.size() > 0) {
            ViewItem viewItem = null;
            int i = -1;
            int i2 = 0;
            while (i2 < this.mViewListGroup.size()) {
                ArrayList<ViewItem> arrayList = this.mViewListGroup.get(i2);
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    viewItem = arrayList.get(i3);
                    if (viewItem.mView == view) {
                        i = i3;
                        break;
                    }
                }
                if (i >= 0) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i == -1) {
                return;
            }
            int i4 = this.mCurSector;
            if (i4 != i2 || i != this.mSelectIndexArray[i4]) {
                ViewItem viewItem2 = this.mViewListGroup.get(i4).get(this.mSelectIndexArray[this.mCurSector]);
                this.mCurSector = i2;
                this.mSelectIndexArray[i2] = i;
                doViewAction(viewItem2, 0, false);
            }
            int i5 = this.mSelectMode;
            if (i5 == 0) {
                doViewAction(viewItem, 0, true);
            } else if (i5 == 1) {
                if (z) {
                    if (this.mSelectStatus == 1) {
                        this.mHandler.removeMessages(0);
                        showSelectedStatus(false);
                    }
                } else if (this.mSelectStatus == 1) {
                    doViewAction(viewItem, 0, true);
                }
            }
            ViewItem viewItem3 = this.mViewItemFocused;
            if (viewItem3 == null || view == viewItem3.mView) {
                return;
            }
            Callback callback = this.mCustomCallback;
            if (callback != null) {
                callback.onFocused(this.mViewItemFocused.mView, false);
            }
            this.mViewItemFocused = null;
        }
    }

    public void setSelected(int i, int i2) {
        if (i < 0 || i >= this.mViewListGroup.size() || i2 < 0 || i2 >= this.mViewListGroup.get(i).size()) {
            return;
        }
        int i3 = this.mCurSector;
        if (i3 != i || i2 != this.mSelectIndexArray[i3]) {
            ViewItem viewItem = this.mViewListGroup.get(i3).get(this.mSelectIndexArray[this.mCurSector]);
            this.mCurSector = i;
            this.mSelectIndexArray[i] = i2;
            doViewAction(viewItem, 0, false);
        }
        ViewItem viewItem2 = this.mViewListGroup.get(i).get(this.mSelectIndexArray[i]);
        int i4 = this.mSelectMode;
        if (i4 == 0) {
            doViewAction(viewItem2, 0, true);
        } else if (i4 == 1 && this.mSelectStatus == 1) {
            this.mHandler.removeMessages(0);
            showSelectedStatus(false);
        }
        if (this.mViewItemFocused == null || viewItem2.mView == this.mViewItemFocused.mView) {
            return;
        }
        Callback callback = this.mCustomCallback;
        if (callback != null) {
            callback.onFocused(this.mViewItemFocused.mView, false);
        }
        this.mViewItemFocused = null;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a A[PHI: r5
      0x004a: PHI (r5v6 int) = (r5v2 int), (r5v5 int), (r5v7 int), (r5v10 int) binds: [B:16:0x0039, B:19:0x0041, B:11:0x0024, B:14:0x002c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:24:0x0055  */
    /* JADX WARN: Code duplicated, block: B:26:0x005d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:36:0x0054 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x005f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private int findNextVisibleView(int i, int i2) {
        int size;
        if (this.mViewListGroup.size() == 0) {
            return -1;
        }
        ArrayList<ViewItem> arrayList = this.mViewListGroup.get(i);
        ViewItem viewItem = null;
        if (arrayList.size() <= 1) {
            return -1;
        }
        int i3 = this.mSelectIndexArray[i];
        int size2 = i3;
        while (true) {
            size = 0;
            if (i2 != 0) {
                size2++;
                if (size2 >= arrayList.size()) {
                    if (this.mSelectLoopArray[i] != 1) {
                        size = arrayList.size() - 1;
                        break;
                    }
                    size2 = 0;
                    viewItem = arrayList.get(size2);
                    if (viewItem.mView != null) {
                        if (viewItem.mView.getVisibility() != 0) {
                        }
                        size = size2;
                        break;
                    }
                    return -1;
                }
                viewItem = arrayList.get(size2);
                if (viewItem.mView != null) {
                    if (viewItem.mView.getVisibility() != 0) {
                    }
                    size = size2;
                    break;
                }
                return -1;
            }
            size2--;
            if (size2 < 0) {
                if (this.mSelectLoopArray[i] != 1) {
                    break;
                }
                size2 = arrayList.size() - 1;
                viewItem = arrayList.get(size2);
                if (viewItem.mView != null) {
                    if (viewItem.mView.getVisibility() != 0) {
                    }
                    size = size2;
                    break;
                }
                return -1;
            }
            viewItem = arrayList.get(size2);
            if (viewItem.mView != null) {
                return -1;
            }
            if (viewItem.mView.getVisibility() != 0 || i3 == size2) {
                size = size2;
                break;
            }
        }
        if (i3 == size || viewItem == null || viewItem.mView.getVisibility() != 0) {
            return -1;
        }
        return size;
    }

    public void selectChange(int i, KeyEvent keyEvent) {
        Callback callback;
        if (this.mViewListGroup.size() == 0) {
            return;
        }
        if (this.mSelectMode == 1) {
            hideSelectedStatusLater();
            if (this.mSelectStatus == 0 && showSelectedStatus(true)) {
                Log.i(TAG, "selectChange only show the select status");
                return;
            }
        }
        ViewItem viewItem = this.mViewItemFocused;
        if (viewItem != null) {
            Callback callback2 = this.mCustomCallback;
            if (callback2 != null) {
                callback2.onTurnning(viewItem.mView, i != 0);
                return;
            }
            return;
        }
        ArrayList<ViewItem> arrayList = this.mViewListGroup.get(this.mCurSector);
        if (arrayList.size() > 1) {
            int iFindNextVisibleView = findNextVisibleView(this.mCurSector, i);
            if (iFindNextVisibleView >= 0) {
                doViewAction(arrayList.get(this.mSelectIndexArray[this.mCurSector]), 0, false);
                this.mSelectIndexArray[this.mCurSector] = iFindNextVisibleView;
                doViewAction(arrayList.get(iFindNextVisibleView), 0, true);
                return;
            }
            return;
        }
        if (arrayList.size() <= 0 || (callback = this.mCustomCallback) == null) {
            return;
        }
        callback.onTurnning(arrayList.get(0).mView, i != 0);
    }

    public void sectorMove(boolean z) {
        sectorChange(z ? 1 : 0, null);
    }

    private boolean sectorChange(int i, KeyEvent keyEvent) {
        Callback callback;
        if (this.mViewListGroup.size() == 0) {
            return false;
        }
        if (this.mSelectMode == 1) {
            hideSelectedStatusLater();
            if (this.mSelectStatus == 0) {
                Log.i(TAG, "sectorChange show the select status");
                showSelectedStatus(true);
            }
        }
        if (this.mViewListGroup.size() <= 1) {
            Callback callback2 = this.mCustomCallback;
            if (callback2 != null) {
                if (keyEvent != null && (callback2 instanceof CallbackEx)) {
                    if (i == 0) {
                        ((CallbackEx) callback2).onMenuUp(this.mCurSector, keyEvent.getAction());
                    } else {
                        ((CallbackEx) callback2).onMenuDown(this.mCurSector, keyEvent.getAction());
                    }
                }
                if (i == 0) {
                    this.mCustomCallback.onMenuUpEnd();
                }
            }
            return false;
        }
        int i2 = this.mCurSector;
        this.mLastSector = i2;
        if (i == 0) {
            int i3 = i2 - 1;
            this.mCurSector = i3;
            if (i3 < 0) {
                this.mCurSector = 0;
                Callback callback3 = this.mCustomCallback;
                if (callback3 != null) {
                    callback3.onMenuUpEnd();
                }
            } else {
                doViewAction(this.mViewListGroup.get(i3 + 1).get(this.mSelectIndexArray[this.mCurSector + 1]), 0, false);
            }
        } else {
            int i4 = i2 + 1;
            this.mCurSector = i4;
            if (i4 >= this.mViewListGroup.size()) {
                this.mCurSector = this.mViewListGroup.size() - 1;
            } else {
                doViewAction(this.mViewListGroup.get(this.mCurSector - 1).get(this.mSelectIndexArray[this.mCurSector - 1]), 0, false);
            }
        }
        doViewAction(this.mViewListGroup.get(this.mCurSector).get(this.mSelectIndexArray[this.mCurSector]), 0, true);
        ViewItem viewItem = this.mViewItemFocused;
        if (viewItem != null) {
            Callback callback4 = this.mCustomCallback;
            if (callback4 != null) {
                callback4.onFocused(viewItem.mView, false);
            }
            this.mViewItemFocused = null;
        }
        if (keyEvent != null && (callback = this.mCustomCallback) != null && (callback instanceof CallbackEx)) {
            if (i == 0) {
                ((CallbackEx) callback).onMenuUp(this.mCurSector, keyEvent.getAction());
            } else {
                ((CallbackEx) callback).onMenuDown(this.mCurSector, keyEvent.getAction());
            }
        }
        return true;
    }

    private void onEnter(KeyEvent keyEvent) {
        Callback callback;
        Callback callback2;
        if (this.mViewListGroup.size() == 0) {
            return;
        }
        if (this.mSelectMode == 1) {
            hideSelectedStatusLater();
            if (this.mSelectStatus == 0 && showSelectedStatus(true)) {
                Log.i(TAG, "onEnter only show the select status");
                return;
            }
        }
        ViewItem viewItem = this.mViewListGroup.get(this.mCurSector).get(this.mSelectIndexArray[this.mCurSector]);
        if ((viewItem.mMode & 8) != 0) {
            if (this.mViewListGroup.get(this.mCurSector).size() == 1) {
                Callback callback3 = this.mCustomCallback;
                if (callback3 != null) {
                    callback3.onEnter(viewItem.mView);
                    return;
                }
                return;
            }
            viewItem.mFocused = true ^ viewItem.mFocused;
            if (viewItem.mFocused) {
                this.mViewItemFocused = viewItem;
            } else {
                this.mViewItemFocused = null;
            }
            if ((viewItem.mMode & 4) == 0 || (callback2 = this.mCustomCallback) == null) {
                return;
            }
            callback2.onFocused(viewItem.mView, viewItem.mFocused);
            return;
        }
        if ((viewItem.mMode & 2) != 0) {
            viewItem.mView.performClick();
        }
        if ((viewItem.mMode & 4) == 0 || (callback = this.mCustomCallback) == null) {
            return;
        }
        callback.onEnter(viewItem.mView);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x007f  */
    /* JADX WARN: Code duplicated, block: B:45:0x0085  */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0023, code lost:
    
        if (r0 != 297) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handlerMMIKeys(android.view.KeyEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getKeyCode()
            r1 = 4
            r2 = 0
            r3 = 1
            if (r0 == r1) goto La6
            r1 = 66
            if (r0 == r1) goto L94
            r1 = 21
            if (r0 == r1) goto L89
            r1 = 22
            if (r0 == r1) goto L7f
            r1 = 71
            if (r0 == r1) goto L53
            r1 = 72
            if (r0 == r1) goto L27
            r1 = 296(0x128, float:4.15E-43)
            if (r0 == r1) goto L7f
            r1 = 297(0x129, float:4.16E-43)
            if (r0 == r1) goto L89
            goto Laf
        L27:
            int r0 = r5.getAction()
            if (r0 != 0) goto L41
            com.carocean.navicar.MMIKeyHelper$Callback r0 = r4.mCustomCallback
            if (r0 == 0) goto L92
            boolean r1 = r0 instanceof com.carocean.navicar.MMIKeyHelper.CallbackEx
            if (r1 == 0) goto L92
            com.carocean.navicar.MMIKeyHelper$CallbackEx r0 = (com.carocean.navicar.MMIKeyHelper.CallbackEx) r0
            int r1 = r4.mCurSector
            int r2 = r5.getAction()
            r0.onMenuDown(r1, r2)
            goto L92
        L41:
            int r0 = r5.getKeyCode()
            int r1 = r4.mLastKeyDownCode
            if (r0 != r1) goto L92
            int r0 = r5.getAction()
            if (r0 != r3) goto L92
            r4.sectorChange(r3, r5)
            goto L92
        L53:
            int r0 = r5.getAction()
            if (r0 != 0) goto L6d
            com.carocean.navicar.MMIKeyHelper$Callback r0 = r4.mCustomCallback
            if (r0 == 0) goto L92
            boolean r1 = r0 instanceof com.carocean.navicar.MMIKeyHelper.CallbackEx
            if (r1 == 0) goto L92
            com.carocean.navicar.MMIKeyHelper$CallbackEx r0 = (com.carocean.navicar.MMIKeyHelper.CallbackEx) r0
            int r1 = r4.mCurSector
            int r2 = r5.getAction()
            r0.onMenuUp(r1, r2)
            goto L92
        L6d:
            int r0 = r5.getKeyCode()
            int r1 = r4.mLastKeyDownCode
            if (r0 != r1) goto L92
            int r0 = r5.getAction()
            if (r0 != r3) goto L92
            r4.sectorChange(r2, r5)
            goto L92
        L7f:
            int r0 = r5.getAction()
            if (r0 != 0) goto L92
            r4.selectChange(r3, r5)
            goto L92
        L89:
            int r0 = r5.getAction()
            if (r0 != 0) goto L92
            r4.selectChange(r2, r5)
        L92:
            r2 = r3
            goto Laf
        L94:
            int r0 = r5.getKeyCode()
            int r1 = r4.mLastKeyDownCode
            if (r0 != r1) goto L92
            int r0 = r5.getAction()
            if (r0 != r3) goto L92
            r4.onEnter(r5)
            goto L92
        La6:
            int r0 = r5.getAction()
            if (r0 != 0) goto Laf
            r4.onBackPressed()
        Laf:
            int r0 = r5.getAction()
            if (r0 != 0) goto Lbb
            int r5 = r5.getKeyCode()
            r4.mLastKeyDownCode = r5
        Lbb:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.carocean.navicar.MMIKeyHelper.handlerMMIKeys(android.view.KeyEvent):boolean");
    }

    public void removeSector(int i) {
        if (this.mViewListGroup.size() < 2) {
            Log.e(TAG, "removeSector: leave on sector at least.");
            return;
        }
        if (i < 0 || i >= this.mViewListGroup.size()) {
            return;
        }
        int i2 = i;
        while (i2 < this.mViewListGroup.size() - 1) {
            int[] iArr = this.mSelectIndexArray;
            int i3 = i2 + 1;
            iArr[i2] = iArr[i3];
            i2 = i3;
        }
        int i4 = i;
        while (i4 < this.mViewListGroup.size() - 1) {
            int[] iArr2 = this.mSelectLoopArray;
            int i5 = i4 + 1;
            iArr2[i4] = iArr2[i5];
            i4 = i5;
        }
        this.mViewListGroup.remove(i);
        if (this.mCurSector >= this.mViewListGroup.size()) {
            this.mCurSector = 0;
            doViewAction(this.mViewListGroup.get(0).get(this.mSelectIndexArray[this.mCurSector]), 0, true);
        }
    }

    public void removeFromSector(int i) {
        if (i < 1 || this.mViewListGroup.size() < 2) {
            Log.e(TAG, "removeFromSector: leave one sector at least.");
            return;
        }
        for (int size = this.mViewListGroup.size() - 1; size > 0 && size >= i; size--) {
            int i2 = size;
            while (i2 < this.mViewListGroup.size() - 1) {
                int[] iArr = this.mSelectIndexArray;
                int i3 = i2 + 1;
                iArr[i2] = iArr[i3];
                i2 = i3;
            }
            int i4 = size;
            while (i4 < this.mViewListGroup.size() - 1) {
                int[] iArr2 = this.mSelectLoopArray;
                int i5 = i4 + 1;
                iArr2[i4] = iArr2[i5];
                i4 = i5;
            }
            this.mViewListGroup.remove(size);
            if (this.mCurSector >= this.mViewListGroup.size()) {
                this.mCurSector = 0;
                doViewAction(this.mViewListGroup.get(0).get(this.mSelectIndexArray[this.mCurSector]), 0, true);
            }
        }
    }

    public int getSectorSize(int i) {
        if (this.mViewListGroup.size() != 0 && i < this.mViewListGroup.size()) {
            return this.mViewListGroup.get(i).size();
        }
        return 0;
    }

    public void initSectorSize(int i, int i2) {
        if (this.mViewListGroup.size() == 0 || i >= this.mViewListGroup.size() || this.mViewListGroup.get(i).size() == i2) {
            return;
        }
        ArrayList<ViewItem> arrayList = new ArrayList<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(new ViewItem(null, 0));
        }
        this.mViewListGroup.set(i, arrayList);
    }

    public void fillView(View view, int i, int i2, int i3) {
        if (this.mViewListGroup.size() != 0 && i2 < this.mViewListGroup.size()) {
            ArrayList<ViewItem> arrayList = this.mViewListGroup.get(i2);
            if (i3 < arrayList.size()) {
                arrayList.set(i3, new ViewItem(view, i | 16));
            }
        }
    }

    public void insertSector(int i) {
        if (this.mViewListGroup.size() >= 10) {
            Log.e(TAG, "setSectorCount: too many sectors.");
            return;
        }
        if (i > this.mViewListGroup.size()) {
            i = this.mViewListGroup.size();
        } else if (i <= 0) {
            i = 0;
        }
        for (int size = this.mViewListGroup.size(); size > i; size--) {
            int[] iArr = this.mSelectIndexArray;
            iArr[size] = iArr[size - 1];
        }
        this.mSelectIndexArray[i] = 0;
        for (int size2 = this.mViewListGroup.size(); size2 > i; size2--) {
            int[] iArr2 = this.mSelectLoopArray;
            iArr2[size2] = iArr2[size2 - 1];
        }
        this.mSelectLoopArray[i] = 0;
        this.mViewListGroup.add(i, new ArrayList<>());
        Log.i(TAG, "insertSector " + i + " ,size=" + this.mViewListGroup.size());
    }

    public void setSelectSector(int i) {
        int i2;
        if (i < 0 || i >= this.mViewListGroup.size() || (i2 = this.mCurSector) == i) {
            return;
        }
        doViewAction(this.mViewListGroup.get(i2).get(this.mSelectIndexArray[this.mCurSector]), 0, false);
        this.mCurSector = i;
        doViewAction(this.mViewListGroup.get(i).get(this.mSelectIndexArray[this.mCurSector]), 0, true);
    }

    public int getLastSector() {
        return this.mLastSector;
    }

    public void clear() {
        this.mHandler.removeCallbacksAndMessages(null);
        this.mViewListGroup.clear();
    }

    public void showSelectedView() {
        showSelectedView(true);
    }

    public void showSelectedView(boolean z) {
        if (this.mViewListGroup.size() == 0) {
            return;
        }
        if (z) {
            if (this.mSelectStatus == 0 && showSelectedStatus(true)) {
                Log.i(TAG, "onBackPressed: show the select status");
            }
            hideSelectedStatusLater();
            return;
        }
        this.mHandler.removeMessages(0);
        showSelectedStatus(false);
    }
}
