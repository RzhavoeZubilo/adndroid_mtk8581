package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class JacCarInfoBinding implements ViewBinding {
    public final RelativeLayout jacRelativeTpms;
    public final RelativeLayout jacRelativeWarn;
    private final LinearLayout rootView;

    private JacCarInfoBinding(LinearLayout linearLayout, RelativeLayout relativeLayout, RelativeLayout relativeLayout2) {
        this.rootView = linearLayout;
        this.jacRelativeTpms = relativeLayout;
        this.jacRelativeWarn = relativeLayout2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static JacCarInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static JacCarInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.jac_car_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static JacCarInfoBinding bind(View view) {
        int i = R.id.jac_relative_tpms;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.jac_relative_tpms);
        if (relativeLayout != null) {
            i = R.id.jac_relative_warn;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.jac_relative_warn);
            if (relativeLayout2 != null) {
                return new JacCarInfoBinding((LinearLayout) view, relativeLayout, relativeLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
