package com.android.launcher2;

import android.view.View;
import com.android.launcher2.uitl.L;

/* JADX INFO: loaded from: classes.dex */
public class CheckLongPressHelper {
    private static final String TAG = "CheckLongPressHelper";
    private boolean mHasPerformedLongPress;
    private CheckForLongPress mPendingCheckForLongPress;
    private View mView;

    class CheckForLongPress implements Runnable {
        CheckForLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CheckLongPressHelper.this.mView.getParent() == null || !CheckLongPressHelper.this.mView.hasWindowFocus() || CheckLongPressHelper.this.mHasPerformedLongPress) {
                return;
            }
            if (InstallShortcutHelper.isInstallingShortcut()) {
                L.d(CheckLongPressHelper.TAG, "Is installing shortcut, so cancel this long click: " + CheckLongPressHelper.this.mView.getTag());
                CheckLongPressHelper.this.mView.setPressed(false);
                CheckLongPressHelper.this.mHasPerformedLongPress = true;
            } else if (CheckLongPressHelper.this.mView.performLongClick()) {
                CheckLongPressHelper.this.mView.setPressed(false);
                CheckLongPressHelper.this.mHasPerformedLongPress = true;
            }
        }
    }

    public CheckLongPressHelper(View view) {
        this.mView = view;
    }

    public void postCheckForLongPress() {
        this.mHasPerformedLongPress = false;
        if (this.mPendingCheckForLongPress == null) {
            this.mPendingCheckForLongPress = new CheckForLongPress();
        }
        this.mView.postDelayed(this.mPendingCheckForLongPress, LauncherApplication.getLongPressTimeout());
    }

    public void cancelLongPress() {
        this.mHasPerformedLongPress = false;
        CheckForLongPress checkForLongPress = this.mPendingCheckForLongPress;
        if (checkForLongPress != null) {
            this.mView.removeCallbacks(checkForLongPress);
            this.mPendingCheckForLongPress = null;
        }
    }

    public boolean hasPerformedLongPress() {
        return this.mHasPerformedLongPress;
    }
}
