package com.can.ui.draw;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewDebug;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class AutoText extends TextView {
    @Override // android.view.View
    @ViewDebug.ExportedProperty(category = "focus")
    public boolean isFocused() {
        return true;
    }

    public AutoText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }
}
