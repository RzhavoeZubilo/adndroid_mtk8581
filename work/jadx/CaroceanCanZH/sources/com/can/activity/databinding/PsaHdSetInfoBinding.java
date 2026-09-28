package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PsaHdSetInfoBinding implements ViewBinding {
    public final CheckBox psaHdSetEngine;
    public final RelativeLayout psaHdSetLan;
    public final RelativeLayout psaHdSetOil;
    public final TextView psaHdSetSos;
    public final RelativeLayout psaHdSetTemp;
    private final ScrollView rootView;

    private PsaHdSetInfoBinding(ScrollView scrollView, CheckBox checkBox, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TextView textView, RelativeLayout relativeLayout3) {
        this.rootView = scrollView;
        this.psaHdSetEngine = checkBox;
        this.psaHdSetLan = relativeLayout;
        this.psaHdSetOil = relativeLayout2;
        this.psaHdSetSos = textView;
        this.psaHdSetTemp = relativeLayout3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static PsaHdSetInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaHdSetInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_hd_set_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaHdSetInfoBinding bind(View view) {
        int i = R.id.psa_hd_set_engine;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.psa_hd_set_engine);
        if (checkBox != null) {
            i = R.id.psa_hd_set_lan;
            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.psa_hd_set_lan);
            if (relativeLayout != null) {
                i = R.id.psa_hd_set_oil;
                RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.psa_hd_set_oil);
                if (relativeLayout2 != null) {
                    i = R.id.psa_hd_set_sos;
                    TextView textView = (TextView) view.findViewById(R.id.psa_hd_set_sos);
                    if (textView != null) {
                        i = R.id.psa_hd_set_temp;
                        RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.psa_hd_set_temp);
                        if (relativeLayout3 != null) {
                            return new PsaHdSetInfoBinding((ScrollView) view, checkBox, relativeLayout, relativeLayout2, textView, relativeLayout3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
