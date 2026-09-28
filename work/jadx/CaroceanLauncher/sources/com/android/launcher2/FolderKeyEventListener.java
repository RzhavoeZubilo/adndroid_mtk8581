package com.android.launcher2;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: compiled from: FocusHelper.java */
/* JADX INFO: loaded from: classes.dex */
class FolderKeyEventListener implements View.OnKeyListener {
    FolderKeyEventListener() {
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        return FocusHelper.handleFolderKeyEvent(view, i, keyEvent);
    }
}
