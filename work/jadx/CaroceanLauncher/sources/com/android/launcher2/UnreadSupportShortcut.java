package com.android.launcher2;

import android.content.ComponentName;

/* JADX INFO: compiled from: MTKUnreadLoader.java */
/* JADX INFO: loaded from: classes.dex */
class UnreadSupportShortcut {
    ComponentName mComponent;
    String mKey;
    int mShortcutType;
    int mUnreadNum = 0;

    public UnreadSupportShortcut(String str, String str2, String str3, int i) {
        this.mComponent = new ComponentName(str, str2);
        this.mKey = str3;
        this.mShortcutType = i;
    }

    public String toString() {
        return "{UnreadSupportShortcut[" + this.mComponent + "], key = " + this.mKey + ",type = " + this.mShortcutType + ",unreadNum = " + this.mUnreadNum + "}";
    }
}
