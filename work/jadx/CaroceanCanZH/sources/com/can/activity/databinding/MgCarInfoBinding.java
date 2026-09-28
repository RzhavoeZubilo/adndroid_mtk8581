package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class MgCarInfoBinding implements ViewBinding {
    public final RelativeLayout mgRelativeAirSet;
    public final RelativeLayout mgRelativeCarSet;
    private final ScrollView rootView;
    public final TextView tvMgAirSet;
    public final TextView tvMgCarSet;

    private MgCarInfoBinding(ScrollView scrollView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TextView textView, TextView textView2) {
        this.rootView = scrollView;
        this.mgRelativeAirSet = relativeLayout;
        this.mgRelativeCarSet = relativeLayout2;
        this.tvMgAirSet = textView;
        this.tvMgCarSet = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static MgCarInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MgCarInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.mg_car_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MgCarInfoBinding bind(View view) {
        int i = R.id.mg_relative_air_set;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.mg_relative_air_set);
        if (relativeLayout != null) {
            i = R.id.mg_relative_car_set;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.mg_relative_car_set);
            if (relativeLayout2 != null) {
                i = R.id.tv_mg_air_set;
                TextView textView = (TextView) view.findViewById(R.id.tv_mg_air_set);
                if (textView != null) {
                    i = R.id.tv_mg_car_set;
                    TextView textView2 = (TextView) view.findViewById(R.id.tv_mg_car_set);
                    if (textView2 != null) {
                        return new MgCarInfoBinding((ScrollView) view, relativeLayout, relativeLayout2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
