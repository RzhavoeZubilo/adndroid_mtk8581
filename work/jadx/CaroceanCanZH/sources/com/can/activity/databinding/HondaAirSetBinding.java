package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.FuelSeekBar;

/* JADX INFO: loaded from: classes.dex */
public final class HondaAirSetBinding implements ViewBinding {
    public final TextView hondaAcMode;
    public final TextView hondaAirWinMode;
    public final ImageView hondaBtnAcOff;
    public final ImageView hondaBtnAcOn;
    public final ImageView hondaBtnWinDn;
    public final ImageView hondaBtnWinPara;
    public final ImageView hondaBtnWinParaDn;
    public final ImageView hondaBtnWinUpDn;
    public final TextView hondaLeftTemp;
    public final TextView hondaRightTemp;
    public final FuelSeekBar hondaSeekbarAirWin;
    private final LinearLayout rootView;

    private HondaAirSetBinding(LinearLayout linearLayout, TextView textView, TextView textView2, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, TextView textView3, TextView textView4, FuelSeekBar fuelSeekBar) {
        this.rootView = linearLayout;
        this.hondaAcMode = textView;
        this.hondaAirWinMode = textView2;
        this.hondaBtnAcOff = imageView;
        this.hondaBtnAcOn = imageView2;
        this.hondaBtnWinDn = imageView3;
        this.hondaBtnWinPara = imageView4;
        this.hondaBtnWinParaDn = imageView5;
        this.hondaBtnWinUpDn = imageView6;
        this.hondaLeftTemp = textView3;
        this.hondaRightTemp = textView4;
        this.hondaSeekbarAirWin = fuelSeekBar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static HondaAirSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HondaAirSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.honda_air_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HondaAirSetBinding bind(View view) {
        int i = R.id.honda_ac_mode;
        TextView textView = (TextView) view.findViewById(R.id.honda_ac_mode);
        if (textView != null) {
            i = R.id.honda_air_win_mode;
            TextView textView2 = (TextView) view.findViewById(R.id.honda_air_win_mode);
            if (textView2 != null) {
                i = R.id.honda_btn_ac_off;
                ImageView imageView = (ImageView) view.findViewById(R.id.honda_btn_ac_off);
                if (imageView != null) {
                    i = R.id.honda_btn_ac_on;
                    ImageView imageView2 = (ImageView) view.findViewById(R.id.honda_btn_ac_on);
                    if (imageView2 != null) {
                        i = R.id.honda_btn_win_dn;
                        ImageView imageView3 = (ImageView) view.findViewById(R.id.honda_btn_win_dn);
                        if (imageView3 != null) {
                            i = R.id.honda_btn_win_para;
                            ImageView imageView4 = (ImageView) view.findViewById(R.id.honda_btn_win_para);
                            if (imageView4 != null) {
                                i = R.id.honda_btn_win_para_dn;
                                ImageView imageView5 = (ImageView) view.findViewById(R.id.honda_btn_win_para_dn);
                                if (imageView5 != null) {
                                    i = R.id.honda_btn_win_up_dn;
                                    ImageView imageView6 = (ImageView) view.findViewById(R.id.honda_btn_win_up_dn);
                                    if (imageView6 != null) {
                                        i = R.id.honda_left_temp;
                                        TextView textView3 = (TextView) view.findViewById(R.id.honda_left_temp);
                                        if (textView3 != null) {
                                            i = R.id.honda_right_temp;
                                            TextView textView4 = (TextView) view.findViewById(R.id.honda_right_temp);
                                            if (textView4 != null) {
                                                i = R.id.honda_seekbar_air_win;
                                                FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.honda_seekbar_air_win);
                                                if (fuelSeekBar != null) {
                                                    return new HondaAirSetBinding((LinearLayout) view, textView, textView2, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, textView3, textView4, fuelSeekBar);
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
