package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.view.ID8SpeedMeter;

/* JADX INFO: loaded from: classes.dex */
public final class BmwId8CarinfoBinding implements ViewBinding {
    public final ImageView carinfoBigled;
    public final ImageView carinfoFootbrake;
    public final ImageView carinfoGear;
    public final TextView carinfoGps;
    public final ImageView carinfoHandbrake;
    public final ImageView carinfoLeftl;
    public final TextView carinfoMileage;
    public final TextView carinfoOuttemp;
    public final TextView carinfoRateText;
    public final TextView carinfoRateUnit;
    public final TextView carinfoRateUnit1;
    public final ImageView carinfoRightl;
    public final ID8SpeedMeter carinfoRpmmeter;
    public final ImageView carinfoSafeb;
    public final ID8SpeedMeter carinfoSpeedmeter;
    private final FrameLayout rootView;

    private BmwId8CarinfoBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, ImageView imageView4, ImageView imageView5, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, ImageView imageView6, ID8SpeedMeter iD8SpeedMeter, ImageView imageView7, ID8SpeedMeter iD8SpeedMeter2) {
        this.rootView = frameLayout;
        this.carinfoBigled = imageView;
        this.carinfoFootbrake = imageView2;
        this.carinfoGear = imageView3;
        this.carinfoGps = textView;
        this.carinfoHandbrake = imageView4;
        this.carinfoLeftl = imageView5;
        this.carinfoMileage = textView2;
        this.carinfoOuttemp = textView3;
        this.carinfoRateText = textView4;
        this.carinfoRateUnit = textView5;
        this.carinfoRateUnit1 = textView6;
        this.carinfoRightl = imageView6;
        this.carinfoRpmmeter = iD8SpeedMeter;
        this.carinfoSafeb = imageView7;
        this.carinfoSpeedmeter = iD8SpeedMeter2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static BmwId8CarinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static BmwId8CarinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bmw_id8_carinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static BmwId8CarinfoBinding bind(View view) {
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
                                    i = R.id.carinfo_outtemp;
                                    TextView textView3 = (TextView) view.findViewById(R.id.carinfo_outtemp);
                                    if (textView3 != null) {
                                        i = R.id.carinfo_rate_text;
                                        TextView textView4 = (TextView) view.findViewById(R.id.carinfo_rate_text);
                                        if (textView4 != null) {
                                            i = R.id.carinfo_rate_unit;
                                            TextView textView5 = (TextView) view.findViewById(R.id.carinfo_rate_unit);
                                            if (textView5 != null) {
                                                i = R.id.carinfo_rate_unit1;
                                                TextView textView6 = (TextView) view.findViewById(R.id.carinfo_rate_unit1);
                                                if (textView6 != null) {
                                                    i = R.id.carinfo_rightl;
                                                    ImageView imageView6 = (ImageView) view.findViewById(R.id.carinfo_rightl);
                                                    if (imageView6 != null) {
                                                        i = R.id.carinfo_rpmmeter;
                                                        ID8SpeedMeter iD8SpeedMeter = (ID8SpeedMeter) view.findViewById(R.id.carinfo_rpmmeter);
                                                        if (iD8SpeedMeter != null) {
                                                            i = R.id.carinfo_safeb;
                                                            ImageView imageView7 = (ImageView) view.findViewById(R.id.carinfo_safeb);
                                                            if (imageView7 != null) {
                                                                i = R.id.carinfo_speedmeter;
                                                                ID8SpeedMeter iD8SpeedMeter2 = (ID8SpeedMeter) view.findViewById(R.id.carinfo_speedmeter);
                                                                if (iD8SpeedMeter2 != null) {
                                                                    return new BmwId8CarinfoBinding((FrameLayout) view, imageView, imageView2, imageView3, textView, imageView4, imageView5, textView2, textView3, textView4, textView5, textView6, imageView6, iD8SpeedMeter, imageView7, iD8SpeedMeter2);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
