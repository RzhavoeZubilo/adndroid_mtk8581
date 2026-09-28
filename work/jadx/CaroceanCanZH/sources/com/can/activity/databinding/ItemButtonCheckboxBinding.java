package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ItemButtonCheckboxBinding implements ViewBinding {
    public final Button itemBtCheckBt;
    public final CheckBox itemBtCheckCk;
    private final RelativeLayout rootView;

    private ItemButtonCheckboxBinding(RelativeLayout relativeLayout, Button button, CheckBox checkBox) {
        this.rootView = relativeLayout;
        this.itemBtCheckBt = button;
        this.itemBtCheckCk = checkBox;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemButtonCheckboxBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemButtonCheckboxBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_button_checkbox, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemButtonCheckboxBinding bind(View view) {
        int i = R.id.item_bt_check_bt;
        Button button = (Button) view.findViewById(R.id.item_bt_check_bt);
        if (button != null) {
            i = R.id.item_bt_check_ck;
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.item_bt_check_ck);
            if (checkBox != null) {
                return new ItemButtonCheckboxBinding((RelativeLayout) view, button, checkBox);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
