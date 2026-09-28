package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ItemTwoButtonBinding implements ViewBinding {
    public final RadioButton itemButton1;
    public final RadioButton itemButton2;
    public final RadioGroup itemTwoRadioButton;
    private final RadioGroup rootView;

    private ItemTwoButtonBinding(RadioGroup radioGroup, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup2) {
        this.rootView = radioGroup;
        this.itemButton1 = radioButton;
        this.itemButton2 = radioButton2;
        this.itemTwoRadioButton = radioGroup2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RadioGroup getRoot() {
        return this.rootView;
    }

    public static ItemTwoButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemTwoButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_two_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemTwoButtonBinding bind(View view) {
        int i = R.id.item_button_1;
        RadioButton radioButton = (RadioButton) view.findViewById(R.id.item_button_1);
        if (radioButton != null) {
            i = R.id.item_button_2;
            RadioButton radioButton2 = (RadioButton) view.findViewById(R.id.item_button_2);
            if (radioButton2 != null) {
                RadioGroup radioGroup = (RadioGroup) view;
                return new ItemTwoButtonBinding(radioGroup, radioButton, radioButton2, radioGroup);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
