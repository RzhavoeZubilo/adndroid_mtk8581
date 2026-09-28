package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class KodiaqCarInfoBinding implements ViewBinding {
    public final RelativeLayout kodiaqRelativeDrivingSet;
    public final RelativeLayout koidaqRelativeCarStatus;
    private final LinearLayout rootView;

    private KodiaqCarInfoBinding(LinearLayout linearLayout, RelativeLayout relativeLayout, RelativeLayout relativeLayout2) {
        this.rootView = linearLayout;
        this.kodiaqRelativeDrivingSet = relativeLayout;
        this.koidaqRelativeCarStatus = relativeLayout2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static KodiaqCarInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static KodiaqCarInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.kodiaq_car_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static KodiaqCarInfoBinding bind(View view) {
        int i = R.id.kodiaq_relative_driving_set;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.kodiaq_relative_driving_set);
        if (relativeLayout != null) {
            i = R.id.koidaq_relative_car_status;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.koidaq_relative_car_status);
            if (relativeLayout2 != null) {
                return new KodiaqCarInfoBinding((LinearLayout) view, relativeLayout, relativeLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
