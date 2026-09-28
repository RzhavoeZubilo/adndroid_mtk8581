package com.android.launcher2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.TextView;
import com.android.launcher2.uitl.L;

/* JADX INFO: loaded from: classes.dex */
public class AccessibleTabView extends TextView {
    private static final String TAG = "AccessibleTabView";

    public AccessibleTabView(Context context) {
        super(context);
    }

    public AccessibleTabView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AccessibleTabView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (L.DEBUG_KEY) {
            L.d(TAG, "onKeyDown: keyCode = " + i + ", event = " + keyEvent);
        }
        return FocusHelper.handleTabKeyEvent(this, i, keyEvent) || super.onKeyDown(i, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (L.DEBUG_KEY) {
            L.d(TAG, "onKeyUp: keyCode = " + i + ", event = " + keyEvent);
        }
        return FocusHelper.handleTabKeyEvent(this, i, keyEvent) || super.onKeyUp(i, keyEvent);
    }
}
