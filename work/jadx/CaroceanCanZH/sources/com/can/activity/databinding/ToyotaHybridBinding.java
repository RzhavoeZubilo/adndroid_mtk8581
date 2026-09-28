package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ToyotaHybridBinding implements ViewBinding {
    public final RelativeLayout layoutHybridDev;
    public final LinearLayout layoutHybridInfo;
    private final RelativeLayout rootView;
    public final ImageView toyotaHybridBattery;
    public final ImageView toyotaHybridGrendLeft;
    public final ImageView toyotaHybridGrendRight;
    public final ImageView toyotaHybridGrendVer;
    public final ImageView toyotaHybridRedRight;
    public final ImageView toyotaHybridRedV;

    private ToyotaHybridBinding(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, LinearLayout linearLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6) {
        this.rootView = relativeLayout;
        this.layoutHybridDev = relativeLayout2;
        this.layoutHybridInfo = linearLayout;
        this.toyotaHybridBattery = imageView;
        this.toyotaHybridGrendLeft = imageView2;
        this.toyotaHybridGrendRight = imageView3;
        this.toyotaHybridGrendVer = imageView4;
        this.toyotaHybridRedRight = imageView5;
        this.toyotaHybridRedV = imageView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ToyotaHybridBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ToyotaHybridBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toyota_hybrid, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToyotaHybridBinding bind(View view) {
        int i = R.id.layout_hybrid_dev;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.layout_hybrid_dev);
        if (relativeLayout != null) {
            i = R.id.layout_hybrid_info;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.layout_hybrid_info);
            if (linearLayout != null) {
                i = R.id.toyota_hybrid_battery;
                ImageView imageView = (ImageView) view.findViewById(R.id.toyota_hybrid_battery);
                if (imageView != null) {
                    i = R.id.toyota_hybrid_grend_left;
                    ImageView imageView2 = (ImageView) view.findViewById(R.id.toyota_hybrid_grend_left);
                    if (imageView2 != null) {
                        i = R.id.toyota_hybrid_grend_right;
                        ImageView imageView3 = (ImageView) view.findViewById(R.id.toyota_hybrid_grend_right);
                        if (imageView3 != null) {
                            i = R.id.toyota_hybrid_grend_ver;
                            ImageView imageView4 = (ImageView) view.findViewById(R.id.toyota_hybrid_grend_ver);
                            if (imageView4 != null) {
                                i = R.id.toyota_hybrid_red_right;
                                ImageView imageView5 = (ImageView) view.findViewById(R.id.toyota_hybrid_red_right);
                                if (imageView5 != null) {
                                    i = R.id.toyota_hybrid_red_v;
                                    ImageView imageView6 = (ImageView) view.findViewById(R.id.toyota_hybrid_red_v);
                                    if (imageView6 != null) {
                                        return new ToyotaHybridBinding((RelativeLayout) view, relativeLayout, linearLayout, imageView, imageView2, imageView3, imageView4, imageView5, imageView6);
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
