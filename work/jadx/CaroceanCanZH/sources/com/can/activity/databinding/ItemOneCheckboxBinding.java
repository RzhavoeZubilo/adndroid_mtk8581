package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ItemOneCheckboxBinding implements ViewBinding {
    public final CheckBox oneCheckbox;
    private final LinearLayout rootView;

    private ItemOneCheckboxBinding(LinearLayout linearLayout, CheckBox checkBox) {
        this.rootView = linearLayout;
        this.oneCheckbox = checkBox;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemOneCheckboxBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemOneCheckboxBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_one_checkbox, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemOneCheckboxBinding bind(View view) {
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.one_checkbox);
        if (checkBox != null) {
            return new ItemOneCheckboxBinding((LinearLayout) view, checkBox);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.one_checkbox)));
    }
}
