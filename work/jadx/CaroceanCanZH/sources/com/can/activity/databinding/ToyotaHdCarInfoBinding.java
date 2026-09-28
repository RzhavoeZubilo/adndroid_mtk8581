package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ToyotaHdCarInfoBinding implements ViewBinding {
    private final ScrollView rootView;
    public final RelativeLayout toyataRelativeHisFule;
    public final RelativeLayout toyotaRelativeCarSet;
    public final RelativeLayout toyotaRelativeDsp;
    public final RelativeLayout toyotaRelativeHybrid;
    public final RelativeLayout tpyotaRelativeCurFule;

    private ToyotaHdCarInfoBinding(ScrollView scrollView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5) {
        this.rootView = scrollView;
        this.toyataRelativeHisFule = relativeLayout;
        this.toyotaRelativeCarSet = relativeLayout2;
        this.toyotaRelativeDsp = relativeLayout3;
        this.toyotaRelativeHybrid = relativeLayout4;
        this.tpyotaRelativeCurFule = relativeLayout5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static ToyotaHdCarInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ToyotaHdCarInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toyota_hd_car_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToyotaHdCarInfoBinding bind(View view) {
        int i = R.id.toyata_relative_his_fule;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.toyata_relative_his_fule);
        if (relativeLayout != null) {
            i = R.id.toyota_relative_car_set;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.toyota_relative_car_set);
            if (relativeLayout2 != null) {
                i = R.id.toyota_relative_dsp;
                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.toyota_relative_dsp);
                if (relativeLayout3 != null) {
                    i = R.id.toyota_relative_hybrid;
                    RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.toyota_relative_hybrid);
                    if (relativeLayout4 != null) {
                        i = R.id.tpyota_relative_cur_fule;
                        RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.tpyota_relative_cur_fule);
                        if (relativeLayout5 != null) {
                            return new ToyotaHdCarInfoBinding((ScrollView) view, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
