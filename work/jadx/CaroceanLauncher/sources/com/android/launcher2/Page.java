package com.android.launcher2;

import android.view.View;

/* JADX INFO: compiled from: PagedViewCellLayout.java */
/* JADX INFO: loaded from: classes.dex */
interface Page {
    View getChildOnPageAt(int i);

    int getPageChildCount();

    int indexOfChildOnPage(View view);

    void removeAllViewsOnPage();

    void removeViewOnPageAt(int i);
}
