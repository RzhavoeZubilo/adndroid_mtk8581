package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PsaMemSpeedBinding implements ViewBinding {
    public final CheckBox psaBoxSpeed1;
    public final CheckBox psaBoxSpeed2;
    public final CheckBox psaBoxSpeed3;
    public final CheckBox psaBoxSpeed4;
    public final CheckBox psaBoxSpeed5;
    public final CheckBox psaBoxSpeed6;
    public final CheckBox psaBtnOpenMemSpeed;
    public final TextView psaBtnResetMemSpeed;
    public final LinearLayout psaHdMemSpeed;
    public final TextView psaMemSpeedTxt;
    public final SeekBar psaSkbarSpeed1;
    public final SeekBar psaSkbarSpeed2;
    public final SeekBar psaSkbarSpeed3;
    public final SeekBar psaSkbarSpeed4;
    public final SeekBar psaSkbarSpeed5;
    public final SeekBar psaSkbarSpeed6;
    public final TextView psaTvMemSpeedValue1;
    public final TextView psaTvMemSpeedValue2;
    public final TextView psaTvMemSpeedValue3;
    public final TextView psaTvMemSpeedValue4;
    public final TextView psaTvMemSpeedValue5;
    public final TextView psaTvMemSpeedValue6;
    private final LinearLayout rootView;

    private PsaMemSpeedBinding(LinearLayout linearLayout, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, TextView textView, LinearLayout linearLayout2, TextView textView2, SeekBar seekBar, SeekBar seekBar2, SeekBar seekBar3, SeekBar seekBar4, SeekBar seekBar5, SeekBar seekBar6, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = linearLayout;
        this.psaBoxSpeed1 = checkBox;
        this.psaBoxSpeed2 = checkBox2;
        this.psaBoxSpeed3 = checkBox3;
        this.psaBoxSpeed4 = checkBox4;
        this.psaBoxSpeed5 = checkBox5;
        this.psaBoxSpeed6 = checkBox6;
        this.psaBtnOpenMemSpeed = checkBox7;
        this.psaBtnResetMemSpeed = textView;
        this.psaHdMemSpeed = linearLayout2;
        this.psaMemSpeedTxt = textView2;
        this.psaSkbarSpeed1 = seekBar;
        this.psaSkbarSpeed2 = seekBar2;
        this.psaSkbarSpeed3 = seekBar3;
        this.psaSkbarSpeed4 = seekBar4;
        this.psaSkbarSpeed5 = seekBar5;
        this.psaSkbarSpeed6 = seekBar6;
        this.psaTvMemSpeedValue1 = textView3;
        this.psaTvMemSpeedValue2 = textView4;
        this.psaTvMemSpeedValue3 = textView5;
        this.psaTvMemSpeedValue4 = textView6;
        this.psaTvMemSpeedValue5 = textView7;
        this.psaTvMemSpeedValue6 = textView8;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static PsaMemSpeedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaMemSpeedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_mem_speed, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaMemSpeedBinding bind(View view) {
        int i = R.id.psa_box_speed1;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.psa_box_speed1);
        if (checkBox != null) {
            i = R.id.psa_box_speed2;
            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.psa_box_speed2);
            if (checkBox2 != null) {
                i = R.id.psa_box_speed3;
                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.psa_box_speed3);
                if (checkBox3 != null) {
                    i = R.id.psa_box_speed4;
                    CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.psa_box_speed4);
                    if (checkBox4 != null) {
                        i = R.id.psa_box_speed5;
                        CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.psa_box_speed5);
                        if (checkBox5 != null) {
                            i = R.id.psa_box_speed6;
                            CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.psa_box_speed6);
                            if (checkBox6 != null) {
                                i = R.id.psa_btn_open_mem_speed;
                                CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.psa_btn_open_mem_speed);
                                if (checkBox7 != null) {
                                    i = R.id.psa_btn_reset_mem_speed;
                                    TextView textView = (TextView) view.findViewById(R.id.psa_btn_reset_mem_speed);
                                    if (textView != null) {
                                        i = R.id.psa_hd_mem_speed;
                                        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.psa_hd_mem_speed);
                                        if (linearLayout != null) {
                                            i = R.id.psa_mem_speed_txt;
                                            TextView textView2 = (TextView) view.findViewById(R.id.psa_mem_speed_txt);
                                            if (textView2 != null) {
                                                i = R.id.psa_skbar_speed1;
                                                SeekBar seekBar = (SeekBar) view.findViewById(R.id.psa_skbar_speed1);
                                                if (seekBar != null) {
                                                    i = R.id.psa_skbar_speed2;
                                                    SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.psa_skbar_speed2);
                                                    if (seekBar2 != null) {
                                                        i = R.id.psa_skbar_speed3;
                                                        SeekBar seekBar3 = (SeekBar) view.findViewById(R.id.psa_skbar_speed3);
                                                        if (seekBar3 != null) {
                                                            i = R.id.psa_skbar_speed4;
                                                            SeekBar seekBar4 = (SeekBar) view.findViewById(R.id.psa_skbar_speed4);
                                                            if (seekBar4 != null) {
                                                                i = R.id.psa_skbar_speed5;
                                                                SeekBar seekBar5 = (SeekBar) view.findViewById(R.id.psa_skbar_speed5);
                                                                if (seekBar5 != null) {
                                                                    i = R.id.psa_skbar_speed6;
                                                                    SeekBar seekBar6 = (SeekBar) view.findViewById(R.id.psa_skbar_speed6);
                                                                    if (seekBar6 != null) {
                                                                        i = R.id.psa_tv_mem_speed_value1;
                                                                        TextView textView3 = (TextView) view.findViewById(R.id.psa_tv_mem_speed_value1);
                                                                        if (textView3 != null) {
                                                                            i = R.id.psa_tv_mem_speed_value2;
                                                                            TextView textView4 = (TextView) view.findViewById(R.id.psa_tv_mem_speed_value2);
                                                                            if (textView4 != null) {
                                                                                i = R.id.psa_tv_mem_speed_value3;
                                                                                TextView textView5 = (TextView) view.findViewById(R.id.psa_tv_mem_speed_value3);
                                                                                if (textView5 != null) {
                                                                                    i = R.id.psa_tv_mem_speed_value4;
                                                                                    TextView textView6 = (TextView) view.findViewById(R.id.psa_tv_mem_speed_value4);
                                                                                    if (textView6 != null) {
                                                                                        i = R.id.psa_tv_mem_speed_value5;
                                                                                        TextView textView7 = (TextView) view.findViewById(R.id.psa_tv_mem_speed_value5);
                                                                                        if (textView7 != null) {
                                                                                            i = R.id.psa_tv_mem_speed_value6;
                                                                                            TextView textView8 = (TextView) view.findViewById(R.id.psa_tv_mem_speed_value6);
                                                                                            if (textView8 != null) {
                                                                                                return new PsaMemSpeedBinding((LinearLayout) view, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, textView, linearLayout, textView2, seekBar, seekBar2, seekBar3, seekBar4, seekBar5, seekBar6, textView3, textView4, textView5, textView6, textView7, textView8);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
