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
public final class CarinfoMode2ZlhBinding implements ViewBinding {
    public final ImageView carinfoBigLedFarZlh;
    public final ImageView carinfoBigLedZlh;
    public final TextView carinfoGearText;
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
    public final TextView carinfoRpmText;
    public final ImageView carinfoSafeb;
    public final ImageView carinfoSmallled;
    public final TextView carinfoTime;
    public final TextView carinfoWeek;
    public final DoorYzgBinding doorLayout;
    private final FrameLayout rootView;

    private CarinfoMode2ZlhBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, ImageView imageView3, ImageView imageView4, TextView textView3, TextView textView4, Speedometer speedometer, TextView textView5, TextView textView6, ImageView imageView5, Speedometer speedometer2, TextView textView7, ImageView imageView6, ImageView imageView7, TextView textView8, TextView textView9, DoorYzgBinding doorYzgBinding) {
        this.rootView = frameLayout;
        this.carinfoBigLedFarZlh = imageView;
        this.carinfoBigLedZlh = imageView2;
        this.carinfoGearText = textView;
        this.carinfoGps = textView2;
        this.carinfoHandbrake = imageView3;
        this.carinfoLeftl = imageView4;
        this.carinfoMileage = textView3;
        this.carinfoOuttemp = textView4;
        this.carinfoRate = speedometer;
        this.carinfoRateText = textView5;
        this.carinfoRateUnit = textView6;
        this.carinfoRightl = imageView5;
        this.carinfoRpm = speedometer2;
        this.carinfoRpmText = textView7;
        this.carinfoSafeb = imageView6;
        this.carinfoSmallled = imageView7;
        this.carinfoTime = textView8;
        this.carinfoWeek = textView9;
        this.doorLayout = doorYzgBinding;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static CarinfoMode2ZlhBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CarinfoMode2ZlhBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.carinfo_mode2_zlh, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CarinfoMode2ZlhBinding bind(View view) {
        ImageView imageView = (ImageView) view.findViewById(R.id.carinfo_big_led_far_zlh);
        ImageView imageView2 = (ImageView) view.findViewById(R.id.carinfo_big_led_zlh);
        TextView textView = (TextView) view.findViewById(R.id.carinfo_gear_text);
        int i = R.id.carinfo_gps;
        TextView textView2 = (TextView) view.findViewById(R.id.carinfo_gps);
        if (textView2 != null) {
            i = R.id.carinfo_handbrake;
            ImageView imageView3 = (ImageView) view.findViewById(R.id.carinfo_handbrake);
            if (imageView3 != null) {
                i = R.id.carinfo_leftl;
                ImageView imageView4 = (ImageView) view.findViewById(R.id.carinfo_leftl);
                if (imageView4 != null) {
                    i = R.id.carinfo_mileage;
                    TextView textView3 = (TextView) view.findViewById(R.id.carinfo_mileage);
                    if (textView3 != null) {
                        i = R.id.carinfo_outtemp;
                        TextView textView4 = (TextView) view.findViewById(R.id.carinfo_outtemp);
                        if (textView4 != null) {
                            i = R.id.carinfo_rate;
                            Speedometer speedometer = (Speedometer) view.findViewById(R.id.carinfo_rate);
                            if (speedometer != null) {
                                i = R.id.carinfo_rate_text;
                                TextView textView5 = (TextView) view.findViewById(R.id.carinfo_rate_text);
                                if (textView5 != null) {
                                    i = R.id.carinfo_rate_unit;
                                    TextView textView6 = (TextView) view.findViewById(R.id.carinfo_rate_unit);
                                    if (textView6 != null) {
                                        i = R.id.carinfo_rightl;
                                        ImageView imageView5 = (ImageView) view.findViewById(R.id.carinfo_rightl);
                                        if (imageView5 != null) {
                                            i = R.id.carinfo_rpm;
                                            Speedometer speedometer2 = (Speedometer) view.findViewById(R.id.carinfo_rpm);
                                            if (speedometer2 != null) {
                                                i = R.id.carinfo_rpm_text;
                                                TextView textView7 = (TextView) view.findViewById(R.id.carinfo_rpm_text);
                                                if (textView7 != null) {
                                                    i = R.id.carinfo_safeb;
                                                    ImageView imageView6 = (ImageView) view.findViewById(R.id.carinfo_safeb);
                                                    if (imageView6 != null) {
                                                        ImageView imageView7 = (ImageView) view.findViewById(R.id.carinfo_smallled);
                                                        i = R.id.carinfo_time;
                                                        TextView textView8 = (TextView) view.findViewById(R.id.carinfo_time);
                                                        if (textView8 != null) {
                                                            i = R.id.carinfo_week;
                                                            TextView textView9 = (TextView) view.findViewById(R.id.carinfo_week);
                                                            if (textView9 != null) {
                                                                View viewFindViewById = view.findViewById(R.id.door_layout);
                                                                return new CarinfoMode2ZlhBinding((FrameLayout) view, imageView, imageView2, textView, textView2, imageView3, imageView4, textView3, textView4, speedometer, textView5, textView6, imageView5, speedometer2, textView7, imageView6, imageView7, textView8, textView9, viewFindViewById != null ? DoorYzgBinding.bind(viewFindViewById) : null);
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
