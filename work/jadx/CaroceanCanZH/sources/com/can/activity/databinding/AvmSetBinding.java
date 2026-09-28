package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class AvmSetBinding implements ViewBinding {
    public final CheckBox avmCheckbox1;
    public final CheckBox avmCheckbox2;
    public final CheckBox avmCheckbox3;
    public final CheckBox avmCheckbox4;
    public final CheckBox avmCheckbox5;
    public final CheckBox avmCheckbox6;
    public final CheckBox avmCheckbox7;
    public final LinearLayout layoutAvm;
    private final RelativeLayout rootView;

    private AvmSetBinding(RelativeLayout relativeLayout, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, LinearLayout linearLayout) {
        this.rootView = relativeLayout;
        this.avmCheckbox1 = checkBox;
        this.avmCheckbox2 = checkBox2;
        this.avmCheckbox3 = checkBox3;
        this.avmCheckbox4 = checkBox4;
        this.avmCheckbox5 = checkBox5;
        this.avmCheckbox6 = checkBox6;
        this.avmCheckbox7 = checkBox7;
        this.layoutAvm = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static AvmSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AvmSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.avm_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AvmSetBinding bind(View view) {
        int i = R.id.avm_checkbox1;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.avm_checkbox1);
        if (checkBox != null) {
            i = R.id.avm_checkbox2;
            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.avm_checkbox2);
            if (checkBox2 != null) {
                i = R.id.avm_checkbox3;
                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.avm_checkbox3);
                if (checkBox3 != null) {
                    i = R.id.avm_checkbox4;
                    CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.avm_checkbox4);
                    if (checkBox4 != null) {
                        i = R.id.avm_checkbox5;
                        CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.avm_checkbox5);
                        if (checkBox5 != null) {
                            i = R.id.avm_checkbox6;
                            CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.avm_checkbox6);
                            if (checkBox6 != null) {
                                i = R.id.avm_checkbox7;
                                CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.avm_checkbox7);
                                if (checkBox7 != null) {
                                    i = R.id.layout_avm;
                                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.layout_avm);
                                    if (linearLayout != null) {
                                        return new AvmSetBinding((RelativeLayout) view, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, linearLayout);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
