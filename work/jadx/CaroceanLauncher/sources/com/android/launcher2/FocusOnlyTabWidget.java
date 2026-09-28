package com.android.launcher2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TabWidget;

/* JADX INFO: loaded from: classes.dex */
public class FocusOnlyTabWidget extends TabWidget {
    public FocusOnlyTabWidget(Context context) {
        super(context);
    }

    public FocusOnlyTabWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FocusOnlyTabWidget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public View getSelectedTab() {
        int tabCount = getTabCount();
        for (int i = 0; i < tabCount; i++) {
            View childTabViewAt = getChildTabViewAt(i);
            if (childTabViewAt.isSelected()) {
                return childTabViewAt;
            }
        }
        return null;
    }

    public int getChildTabIndex(View view) {
        int tabCount = getTabCount();
        for (int i = 0; i < tabCount; i++) {
            if (getChildTabViewAt(i) == view) {
                return i;
            }
        }
        return -1;
    }

    public void setCurrentTabToFocusedTab() {
        View childTabViewAt;
        int tabCount = getTabCount();
        int i = 0;
        while (true) {
            if (i >= tabCount) {
                childTabViewAt = null;
                i = -1;
                break;
            } else {
                childTabViewAt = getChildTabViewAt(i);
                if (childTabViewAt.hasFocus()) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (i > -1) {
            super.setCurrentTab(i);
            super.onFocusChange(childTabViewAt, true);
        }
    }

    public void superOnFocusChange(View view, boolean z) {
        super.onFocusChange(view, z);
    }

    @Override // android.widget.TabWidget, android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (view == this && z && getTabCount() > 0) {
            getSelectedTab().requestFocus();
        }
    }
}
