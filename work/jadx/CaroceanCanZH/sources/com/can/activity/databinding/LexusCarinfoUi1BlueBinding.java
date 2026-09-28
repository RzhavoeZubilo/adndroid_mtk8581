package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.view.Speedometer;

/* JADX INFO: loaded from: classes.dex */
public final class LexusCarinfoUi1BlueBinding implements ViewBinding {
    public final ImageView carinfoGear;
    public final TextView carinfoGps;
    public final ImageView carinfoHandbrake;
    public final ImageView carinfoLeftl;
    public final TextView carinfoMileage;
    public final TextView carinfoOuttemp;
    public final Speedometer carinfoRate;
    public final TextView carinfoRateText;
    public final TextView carinfoRateUnit;
    public final ImageView carinfoRightl;
    public final Speedometer carinfoRpm;
    public final ImageView carinfoSafeb;
    private final FrameLayout rootView;

    private LexusCarinfoUi1BlueBinding(FrameLayout frameLayout, ImageView imageView, TextView textView, ImageView imageView2, ImageView imageView3, TextView textView2, TextView textView3, Speedometer speedometer, TextView textView4, TextView textView5, ImageView imageView4, Speedometer speedometer2, ImageView imageView5) {
        this.rootView = frameLayout;
        this.carinfoGear = imageView;
        this.carinfoGps = textView;
        this.carinfoHandbrake = imageView2;
        this.carinfoLeftl = imageView3;
        this.carinfoMileage = textView2;
        this.carinfoOuttemp = textView3;
        this.carinfoRate = speedometer;
        this.carinfoRateText = textView4;
        this.carinfoRateUnit = textView5;
        this.carinfoRightl = imageView4;
        this.carinfoRpm = speedometer2;
        this.carinfoSafeb = imageView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LexusCarinfoUi1BlueBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LexusCarinfoUi1BlueBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.lexus_carinfo_ui_1_blue, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LexusCarinfoUi1BlueBinding bind(View view) {
        int i = R.id.carinfo_gear;
        ImageView imageView = (ImageView) view.findViewById(R.id.carinfo_gear);
        if (imageView != null) {
            i = R.id.carinfo_gps;
            TextView textView = (TextView) view.findViewById(R.id.carinfo_gps);
            if (textView != null) {
                i = R.id.carinfo_handbrake;
                ImageView imageView2 = (ImageView) view.findViewById(R.id.carinfo_handbrake);
                if (imageView2 != null) {
                    i = R.id.carinfo_leftl;
                    ImageView imageView3 = (ImageView) view.findViewById(R.id.carinfo_leftl);
                    if (imageView3 != null) {
                        i = R.id.carinfo_mileage;
                        TextView textView2 = (TextView) view.findViewById(R.id.carinfo_mileage);
                        if (textView2 != null) {
                            i = R.id.carinfo_outtemp;
                            TextView textView3 = (TextView) view.findViewById(R.id.carinfo_outtemp);
                            if (textView3 != null) {
                                i = R.id.carinfo_rate;
                                Speedometer speedometer = (Speedometer) view.findViewById(R.id.carinfo_rate);
                                if (speedometer != null) {
                                    i = R.id.carinfo_rate_text;
                                    TextView textView4 = (TextView) view.findViewById(R.id.carinfo_rate_text);
                                    if (textView4 != null) {
                                        i = R.id.carinfo_rate_unit;
                                        TextView textView5 = (TextView) view.findViewById(R.id.carinfo_rate_unit);
                                        if (textView5 != null) {
                                            i = R.id.carinfo_rightl;
                                            ImageView imageView4 = (ImageView) view.findViewById(R.id.carinfo_rightl);
                                            if (imageView4 != null) {
                                                i = R.id.carinfo_rpm;
                                                Speedometer speedometer2 = (Speedometer) view.findViewById(R.id.carinfo_rpm);
                                                if (speedometer2 != null) {
                                                    i = R.id.carinfo_safeb;
                                                    ImageView imageView5 = (ImageView) view.findViewById(R.id.carinfo_safeb);
                                                    if (imageView5 != null) {
                                                        return new LexusCarinfoUi1BlueBinding((FrameLayout) view, imageView, textView, imageView2, imageView3, textView2, textView3, speedometer, textView4, textView5, imageView4, speedometer2, imageView5);
                                                    }
                                                }
                                            }
                                        }
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
