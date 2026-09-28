package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutRadioSystemBinding implements ViewBinding {
    public final LinearLayout radioSystemAmerica1;
    public final LinearLayout radioSystemAmerica2;
    public final LinearLayout radioSystemChina;
    public final LinearLayout radioSystemMiddleEast;
    public final LinearLayout radioSystemSouthAmerica;
    private final FrameLayout rootView;

    private LayoutRadioSystemBinding(FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5) {
        this.rootView = frameLayout;
        this.radioSystemAmerica1 = linearLayout;
        this.radioSystemAmerica2 = linearLayout2;
        this.radioSystemChina = linearLayout3;
        this.radioSystemMiddleEast = linearLayout4;
        this.radioSystemSouthAmerica = linearLayout5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LayoutRadioSystemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutRadioSystemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_radio_system, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutRadioSystemBinding bind(View view) {
        int i = R.id.radio_system_america1;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.radio_system_america1);
        if (linearLayout != null) {
            i = R.id.radio_system_america2;
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.radio_system_america2);
            if (linearLayout2 != null) {
                i = R.id.radio_system_china;
                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.radio_system_china);
                if (linearLayout3 != null) {
                    i = R.id.radio_system_middle_east;
                    LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.radio_system_middle_east);
                    if (linearLayout4 != null) {
                        i = R.id.radio_system_south_america;
                        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.radio_system_south_america);
                        if (linearLayout5 != null) {
                            return new LayoutRadioSystemBinding((FrameLayout) view, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
