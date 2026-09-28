package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PsaCruSpeedBinding implements ViewBinding {
    public final TextView psaBtnCruSpeed;
    public final TextView psaBtnLimitSpeed;
    public final TextView psaBtnReset;
    public final TextView psaBtnUserSet;
    public final SeekBar psaSkbarCruSpeed1;
    public final SeekBar psaSkbarCruSpeed2;
    public final SeekBar psaSkbarCruSpeed3;
    public final SeekBar psaSkbarCruSpeed4;
    public final SeekBar psaSkbarCruSpeed5;
    public final SeekBar psaSkbarCruSpeed6;
    public final TextView psaTvCruSpeedValue1;
    public final TextView psaTvCruSpeedValue2;
    public final TextView psaTvCruSpeedValue3;
    public final TextView psaTvCruSpeedValue4;
    public final TextView psaTvCruSpeedValue5;
    public final TextView psaTvCruSpeedValue6;
    private final LinearLayout rootView;

    private PsaCruSpeedBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, SeekBar seekBar, SeekBar seekBar2, SeekBar seekBar3, SeekBar seekBar4, SeekBar seekBar5, SeekBar seekBar6, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10) {
        this.rootView = linearLayout;
        this.psaBtnCruSpeed = textView;
        this.psaBtnLimitSpeed = textView2;
        this.psaBtnReset = textView3;
        this.psaBtnUserSet = textView4;
        this.psaSkbarCruSpeed1 = seekBar;
        this.psaSkbarCruSpeed2 = seekBar2;
        this.psaSkbarCruSpeed3 = seekBar3;
        this.psaSkbarCruSpeed4 = seekBar4;
        this.psaSkbarCruSpeed5 = seekBar5;
        this.psaSkbarCruSpeed6 = seekBar6;
        this.psaTvCruSpeedValue1 = textView5;
        this.psaTvCruSpeedValue2 = textView6;
        this.psaTvCruSpeedValue3 = textView7;
        this.psaTvCruSpeedValue4 = textView8;
        this.psaTvCruSpeedValue5 = textView9;
        this.psaTvCruSpeedValue6 = textView10;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static PsaCruSpeedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaCruSpeedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_cru_speed, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaCruSpeedBinding bind(View view) {
        int i = R.id.psa_btn_cru_speed;
        TextView textView = (TextView) view.findViewById(R.id.psa_btn_cru_speed);
        if (textView != null) {
            i = R.id.psa_btn_limit_speed;
            TextView textView2 = (TextView) view.findViewById(R.id.psa_btn_limit_speed);
            if (textView2 != null) {
                i = R.id.psa_btn_reset;
                TextView textView3 = (TextView) view.findViewById(R.id.psa_btn_reset);
                if (textView3 != null) {
                    i = R.id.psa_btn_user_set;
                    TextView textView4 = (TextView) view.findViewById(R.id.psa_btn_user_set);
                    if (textView4 != null) {
                        i = R.id.psa_skbar_cru_speed1;
                        SeekBar seekBar = (SeekBar) view.findViewById(R.id.psa_skbar_cru_speed1);
                        if (seekBar != null) {
                            i = R.id.psa_skbar_cru_speed2;
                            SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.psa_skbar_cru_speed2);
                            if (seekBar2 != null) {
                                i = R.id.psa_skbar_cru_speed3;
                                SeekBar seekBar3 = (SeekBar) view.findViewById(R.id.psa_skbar_cru_speed3);
                                if (seekBar3 != null) {
                                    i = R.id.psa_skbar_cru_speed4;
                                    SeekBar seekBar4 = (SeekBar) view.findViewById(R.id.psa_skbar_cru_speed4);
                                    if (seekBar4 != null) {
                                        i = R.id.psa_skbar_cru_speed5;
                                        SeekBar seekBar5 = (SeekBar) view.findViewById(R.id.psa_skbar_cru_speed5);
                                        if (seekBar5 != null) {
                                            i = R.id.psa_skbar_cru_speed6;
                                            SeekBar seekBar6 = (SeekBar) view.findViewById(R.id.psa_skbar_cru_speed6);
                                            if (seekBar6 != null) {
                                                i = R.id.psa_tv_cru_speed_value1;
                                                TextView textView5 = (TextView) view.findViewById(R.id.psa_tv_cru_speed_value1);
                                                if (textView5 != null) {
                                                    i = R.id.psa_tv_cru_speed_value2;
                                                    TextView textView6 = (TextView) view.findViewById(R.id.psa_tv_cru_speed_value2);
                                                    if (textView6 != null) {
                                                        i = R.id.psa_tv_cru_speed_value3;
                                                        TextView textView7 = (TextView) view.findViewById(R.id.psa_tv_cru_speed_value3);
                                                        if (textView7 != null) {
                                                            i = R.id.psa_tv_cru_speed_value4;
                                                            TextView textView8 = (TextView) view.findViewById(R.id.psa_tv_cru_speed_value4);
                                                            if (textView8 != null) {
                                                                i = R.id.psa_tv_cru_speed_value5;
                                                                TextView textView9 = (TextView) view.findViewById(R.id.psa_tv_cru_speed_value5);
                                                                if (textView9 != null) {
                                                                    i = R.id.psa_tv_cru_speed_value6;
                                                                    TextView textView10 = (TextView) view.findViewById(R.id.psa_tv_cru_speed_value6);
                                                                    if (textView10 != null) {
                                                                        return new PsaCruSpeedBinding((LinearLayout) view, textView, textView2, textView3, textView4, seekBar, seekBar2, seekBar3, seekBar4, seekBar5, seekBar6, textView5, textView6, textView7, textView8, textView9, textView10);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
