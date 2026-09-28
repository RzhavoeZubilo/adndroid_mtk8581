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
public final class CarinfoRedBinding implements ViewBinding {
    public final ImageView carinfoBigled;
    public final ImageView carinfoFootbrake;
    public final ImageView carinfoGear;
    public final TextView carinfoGps;
    public final ImageView carinfoHandbrake;
    public final ImageView carinfoLeftl;
    public final TextView carinfoMileage;
    public final Speedometer carinfoRate;
    public final TextView carinfoRateUnit;
    public final ImageView carinfoRightl;
    public final Speedometer carinfoRpm;
    public final ImageView carinfoSafeb;
    private final FrameLayout rootView;

    private CarinfoRedBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, ImageView imageView4, ImageView imageView5, TextView textView2, Speedometer speedometer, TextView textView3, ImageView imageView6, Speedometer speedometer2, ImageView imageView7) {
        this.rootView = frameLayout;
        this.carinfoBigled = imageView;
        this.carinfoFootbrake = imageView2;
        this.carinfoGear = imageView3;
        this.carinfoGps = textView;
        this.carinfoHandbrake = imageView4;
        this.carinfoLeftl = imageView5;
        this.carinfoMileage = textView2;
        this.carinfoRate = speedometer;
        this.carinfoRateUnit = textView3;
        this.carinfoRightl = imageView6;
        this.carinfoRpm = speedometer2;
        this.carinfoSafeb = imageView7;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static CarinfoRedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CarinfoRedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.carinfo_red, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CarinfoRedBinding bind(View view) {
        int i = R.id.carinfo_bigled;
        ImageView imageView = (ImageView) view.findViewById(R.id.carinfo_bigled);
        if (imageView != null) {
            i = R.id.carinfo_footbrake;
            ImageView imageView2 = (ImageView) view.findViewById(R.id.carinfo_footbrake);
            if (imageView2 != null) {
                i = R.id.carinfo_gear;
                ImageView imageView3 = (ImageView) view.findViewById(R.id.carinfo_gear);
                if (imageView3 != null) {
                    i = R.id.carinfo_gps;
                    TextView textView = (TextView) view.findViewById(R.id.carinfo_gps);
                    if (textView != null) {
                        i = R.id.carinfo_handbrake;
                        ImageView imageView4 = (ImageView) view.findViewById(R.id.carinfo_handbrake);
                        if (imageView4 != null) {
                            i = R.id.carinfo_leftl;
                            ImageView imageView5 = (ImageView) view.findViewById(R.id.carinfo_leftl);
                            if (imageView5 != null) {
                                i = R.id.carinfo_mileage;
                                TextView textView2 = (TextView) view.findViewById(R.id.carinfo_mileage);
                                if (textView2 != null) {
                                    i = R.id.carinfo_rate;
                                    Speedometer speedometer = (Speedometer) view.findViewById(R.id.carinfo_rate);
                                    if (speedometer != null) {
                                        i = R.id.carinfo_rate_unit;
                                        TextView textView3 = (TextView) view.findViewById(R.id.carinfo_rate_unit);
                                        if (textView3 != null) {
                                            i = R.id.carinfo_rightl;
                                            ImageView imageView6 = (ImageView) view.findViewById(R.id.carinfo_rightl);
                                            if (imageView6 != null) {
                                                i = R.id.carinfo_rpm;
                                                Speedometer speedometer2 = (Speedometer) view.findViewById(R.id.carinfo_rpm);
                                                if (speedometer2 != null) {
                                                    i = R.id.carinfo_safeb;
                                                    ImageView imageView7 = (ImageView) view.findViewById(R.id.carinfo_safeb);
                                                    if (imageView7 != null) {
                                                        return new CarinfoRedBinding((FrameLayout) view, imageView, imageView2, imageView3, textView, imageView4, imageView5, textView2, speedometer, textView3, imageView6, speedometer2, imageView7);
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
