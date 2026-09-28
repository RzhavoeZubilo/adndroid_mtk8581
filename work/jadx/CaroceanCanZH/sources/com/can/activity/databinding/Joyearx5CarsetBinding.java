package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Joyearx5CarsetBinding implements ViewBinding {
    public final RelativeLayout btnJoyearCarsetDomedelay;
    public final RelativeLayout btnJoyearCarsetSavingtime;
    public final CheckBox checkboxJoyearCarsetAutolockOnoff;
    public final CheckBox checkboxJoyearCarsetSpeedlockOnoff;
    private final ScrollView rootView;

    private Joyearx5CarsetBinding(ScrollView scrollView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, CheckBox checkBox, CheckBox checkBox2) {
        this.rootView = scrollView;
        this.btnJoyearCarsetDomedelay = relativeLayout;
        this.btnJoyearCarsetSavingtime = relativeLayout2;
        this.checkboxJoyearCarsetAutolockOnoff = checkBox;
        this.checkboxJoyearCarsetSpeedlockOnoff = checkBox2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static Joyearx5CarsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Joyearx5CarsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.joyearx5_carset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Joyearx5CarsetBinding bind(View view) {
        int i = R.id.btn_joyear_carset_domedelay;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.btn_joyear_carset_domedelay);
        if (relativeLayout != null) {
            i = R.id.btn_joyear_carset_savingtime;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.btn_joyear_carset_savingtime);
            if (relativeLayout2 != null) {
                i = R.id.checkbox_joyear_carset_autolock_onoff;
                CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkbox_joyear_carset_autolock_onoff);
                if (checkBox != null) {
                    i = R.id.checkbox_joyear_carset_speedlock_onoff;
                    CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.checkbox_joyear_carset_speedlock_onoff);
                    if (checkBox2 != null) {
                        return new Joyearx5CarsetBinding((ScrollView) view, relativeLayout, relativeLayout2, checkBox, checkBox2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
