package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class LexusAirBinding implements ViewBinding {
    public final LinearLayout acPoweroffLayout;
    public final LinearLayout acPoweronLayout;
    public final ImageView airAc;
    public final ImageView airAuto;
    public final ImageView airFrontWin;
    public final ImageView airLoop;
    public final TextView airPowerOff;
    public final ImageView airRearWin;
    public final TextView airTempLeft;
    public final TextView airTempRight;
    public final ImageView airWind;
    public final ImageView airWindDirect;
    private final FrameLayout rootView;

    private LexusAirBinding(FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, TextView textView, ImageView imageView5, TextView textView2, TextView textView3, ImageView imageView6, ImageView imageView7) {
        this.rootView = frameLayout;
        this.acPoweroffLayout = linearLayout;
        this.acPoweronLayout = linearLayout2;
        this.airAc = imageView;
        this.airAuto = imageView2;
        this.airFrontWin = imageView3;
        this.airLoop = imageView4;
        this.airPowerOff = textView;
        this.airRearWin = imageView5;
        this.airTempLeft = textView2;
        this.airTempRight = textView3;
        this.airWind = imageView6;
        this.airWindDirect = imageView7;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LexusAirBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LexusAirBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.lexus_air, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LexusAirBinding bind(View view) {
        int i = R.id.ac_poweroff_layout;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ac_poweroff_layout);
        if (linearLayout != null) {
            i = R.id.ac_poweron_layout;
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.ac_poweron_layout);
            if (linearLayout2 != null) {
                i = R.id.air_ac;
                ImageView imageView = (ImageView) view.findViewById(R.id.air_ac);
                if (imageView != null) {
                    i = R.id.air_auto;
                    ImageView imageView2 = (ImageView) view.findViewById(R.id.air_auto);
                    if (imageView2 != null) {
                        i = R.id.air_front_win;
                        ImageView imageView3 = (ImageView) view.findViewById(R.id.air_front_win);
                        if (imageView3 != null) {
                            i = R.id.air_loop;
                            ImageView imageView4 = (ImageView) view.findViewById(R.id.air_loop);
                            if (imageView4 != null) {
                                i = R.id.air_power_off;
                                TextView textView = (TextView) view.findViewById(R.id.air_power_off);
                                if (textView != null) {
                                    i = R.id.air_rear_win;
                                    ImageView imageView5 = (ImageView) view.findViewById(R.id.air_rear_win);
                                    if (imageView5 != null) {
                                        i = R.id.air_temp_left;
                                        TextView textView2 = (TextView) view.findViewById(R.id.air_temp_left);
                                        if (textView2 != null) {
                                            i = R.id.air_temp_right;
                                            TextView textView3 = (TextView) view.findViewById(R.id.air_temp_right);
                                            if (textView3 != null) {
                                                i = R.id.air_wind;
                                                ImageView imageView6 = (ImageView) view.findViewById(R.id.air_wind);
                                                if (imageView6 != null) {
                                                    i = R.id.air_wind_direct;
                                                    ImageView imageView7 = (ImageView) view.findViewById(R.id.air_wind_direct);
                                                    if (imageView7 != null) {
                                                        return new LexusAirBinding((FrameLayout) view, linearLayout, linearLayout2, imageView, imageView2, imageView3, imageView4, textView, imageView5, textView2, textView3, imageView6, imageView7);
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
