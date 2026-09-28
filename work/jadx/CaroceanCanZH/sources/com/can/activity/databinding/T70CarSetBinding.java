package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class T70CarSetBinding implements ViewBinding {
    private final ScrollView rootView;
    public final TextView t70AvmReset;
    public final CheckBox t70CheckboxSet1;
    public final CheckBox t70CheckboxSet2;
    public final CheckBox t70CheckboxSet3;
    public final CheckBox t70CheckboxSet5;
    public final CheckBox t70CheckboxSet6;
    public final CheckBox t70CheckboxSet7;
    public final CheckBox t70CheckboxSet8;

    private T70CarSetBinding(ScrollView scrollView, TextView textView, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7) {
        this.rootView = scrollView;
        this.t70AvmReset = textView;
        this.t70CheckboxSet1 = checkBox;
        this.t70CheckboxSet2 = checkBox2;
        this.t70CheckboxSet3 = checkBox3;
        this.t70CheckboxSet5 = checkBox4;
        this.t70CheckboxSet6 = checkBox5;
        this.t70CheckboxSet7 = checkBox6;
        this.t70CheckboxSet8 = checkBox7;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static T70CarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static T70CarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.t70_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static T70CarSetBinding bind(View view) {
        int i = R.id.t70_avm_reset;
        TextView textView = (TextView) view.findViewById(R.id.t70_avm_reset);
        if (textView != null) {
            i = R.id.t70_checkbox_set1;
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.t70_checkbox_set1);
            if (checkBox != null) {
                i = R.id.t70_checkbox_set2;
                CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.t70_checkbox_set2);
                if (checkBox2 != null) {
                    i = R.id.t70_checkbox_set3;
                    CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.t70_checkbox_set3);
                    if (checkBox3 != null) {
                        i = R.id.t70_checkbox_set5;
                        CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.t70_checkbox_set5);
                        if (checkBox4 != null) {
                            i = R.id.t70_checkbox_set6;
                            CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.t70_checkbox_set6);
                            if (checkBox5 != null) {
                                i = R.id.t70_checkbox_set7;
                                CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.t70_checkbox_set7);
                                if (checkBox6 != null) {
                                    i = R.id.t70_checkbox_set8;
                                    CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.t70_checkbox_set8);
                                    if (checkBox7 != null) {
                                        return new T70CarSetBinding((ScrollView) view, textView, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7);
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
