package com.android.launcher2;

import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class HideFromAccessibilityHelper implements ViewGroup.OnHierarchyChangeListener {
    boolean mOnlyAllApps;
    private HashMap<View, Integer> mPreviousValues = new HashMap<>();
    boolean mHide = false;

    public void setImportantForAccessibilityToNo(View view, boolean z) {
        this.mOnlyAllApps = z;
        setImportantForAccessibilityToNoHelper(view);
        this.mHide = true;
    }

    private void setImportantForAccessibilityToNoHelper(View view) {
        this.mPreviousValues.put(view, Integer.valueOf(view.getImportantForAccessibility()));
        view.setImportantForAccessibility(2);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            viewGroup.setOnHierarchyChangeListener(this);
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (includeView(childAt)) {
                    setImportantForAccessibilityToNoHelper(childAt);
                }
            }
        }
    }

    public void restoreImportantForAccessibility(View view) {
        if (this.mHide) {
            restoreImportantForAccessibilityHelper(view);
        }
        this.mHide = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void restoreImportantForAccessibilityHelper(View view) {
        view.setImportantForAccessibility(this.mPreviousValues.get(view).intValue());
        this.mPreviousValues.remove(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup instanceof ViewGroup.OnHierarchyChangeListener) {
                viewGroup.setOnHierarchyChangeListener((ViewGroup.OnHierarchyChangeListener) viewGroup);
            } else {
                viewGroup.setOnHierarchyChangeListener(null);
            }
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (includeView(childAt)) {
                    restoreImportantForAccessibilityHelper(childAt);
                }
            }
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        if (this.mHide && includeView(view2)) {
            setImportantForAccessibilityToNoHelper(view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        if (this.mHide && includeView(view2)) {
            restoreImportantForAccessibilityHelper(view2);
        }
    }

    private boolean includeView(View view) {
        return !hasAncestorOfType(view, Cling.class) && (!this.mOnlyAllApps || hasAncestorOfType(view, AppsCustomizeTabHost.class));
    }

    private boolean hasAncestorOfType(View view, Class cls) {
        return view != null && (view.getClass().equals(cls) || ((view.getParent() instanceof ViewGroup) && hasAncestorOfType((ViewGroup) view.getParent(), cls)));
    }
}
