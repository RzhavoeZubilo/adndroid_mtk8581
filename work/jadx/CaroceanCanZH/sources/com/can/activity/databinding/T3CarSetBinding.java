package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class T3CarSetBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final CheckBox t3CheckboxSet1;

    private T3CarSetBinding(LinearLayout linearLayout, CheckBox checkBox) {
        this.rootView = linearLayout;
        this.t3CheckboxSet1 = checkBox;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static T3CarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static T3CarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.t3_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static T3CarSetBinding bind(View view) {
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.t3_checkbox_set1);
        if (checkBox != null) {
            return new T3CarSetBinding((LinearLayout) view, checkBox);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.t3_checkbox_set1)));
    }
}
