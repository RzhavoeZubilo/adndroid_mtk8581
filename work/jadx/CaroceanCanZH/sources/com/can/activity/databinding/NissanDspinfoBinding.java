package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class NissanDspinfoBinding implements ViewBinding {
    public final TextView dspBalAdd;
    public final TextView dspBalDel;
    public final TextView dspBalValue;
    public final TextView dspBassAdd;
    public final TextView dspBassDel;
    public final TextView dspBassValue;
    public final CheckBox dspCenterPoint;
    public final CheckBox dspDriverSet;
    public final TextView dspFadeAdd;
    public final TextView dspFadeDel;
    public final TextView dspFadeValue;
    public final TextView dspMainVolAdd;
    public final TextView dspMainVolDel;
    public final TextView dspMainVolValue;
    public final TextView dspMidAdd;
    public final TextView dspMidDel;
    public final TextView dspMidValue;
    public final TextView dspSurroundAdd;
    public final TextView dspSurroundDel;
    public final TextView dspSurroundValue;
    public final TextView dspTreAdd;
    public final TextView dspTreDel;
    public final TextView dspTreValue;
    public final TextView dspVolSpeedAdd;
    public final TextView dspVolSpeedDel;
    public final TextView dspVolSpeedValue;
    private final LinearLayout rootView;

    private NissanDspinfoBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, CheckBox checkBox, CheckBox checkBox2, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, TextView textView16, TextView textView17, TextView textView18, TextView textView19, TextView textView20, TextView textView21, TextView textView22, TextView textView23, TextView textView24) {
        this.rootView = linearLayout;
        this.dspBalAdd = textView;
        this.dspBalDel = textView2;
        this.dspBalValue = textView3;
        this.dspBassAdd = textView4;
        this.dspBassDel = textView5;
        this.dspBassValue = textView6;
        this.dspCenterPoint = checkBox;
        this.dspDriverSet = checkBox2;
        this.dspFadeAdd = textView7;
        this.dspFadeDel = textView8;
        this.dspFadeValue = textView9;
        this.dspMainVolAdd = textView10;
        this.dspMainVolDel = textView11;
        this.dspMainVolValue = textView12;
        this.dspMidAdd = textView13;
        this.dspMidDel = textView14;
        this.dspMidValue = textView15;
        this.dspSurroundAdd = textView16;
        this.dspSurroundDel = textView17;
        this.dspSurroundValue = textView18;
        this.dspTreAdd = textView19;
        this.dspTreDel = textView20;
        this.dspTreValue = textView21;
        this.dspVolSpeedAdd = textView22;
        this.dspVolSpeedDel = textView23;
        this.dspVolSpeedValue = textView24;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static NissanDspinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NissanDspinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.nissan_dspinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static NissanDspinfoBinding bind(View view) {
        int i = R.id.dsp_bal_add;
        TextView textView = (TextView) view.findViewById(R.id.dsp_bal_add);
        if (textView != null) {
            i = R.id.dsp_bal_del;
            TextView textView2 = (TextView) view.findViewById(R.id.dsp_bal_del);
            if (textView2 != null) {
                i = R.id.dsp_bal_value;
                TextView textView3 = (TextView) view.findViewById(R.id.dsp_bal_value);
                if (textView3 != null) {
                    i = R.id.dsp_bass_add;
                    TextView textView4 = (TextView) view.findViewById(R.id.dsp_bass_add);
                    if (textView4 != null) {
                        i = R.id.dsp_bass_del;
                        TextView textView5 = (TextView) view.findViewById(R.id.dsp_bass_del);
                        if (textView5 != null) {
                            i = R.id.dsp_bass_value;
                            TextView textView6 = (TextView) view.findViewById(R.id.dsp_bass_value);
                            if (textView6 != null) {
                                i = R.id.dsp_center_point;
                                CheckBox checkBox = (CheckBox) view.findViewById(R.id.dsp_center_point);
                                if (checkBox != null) {
                                    i = R.id.dsp_driver_set;
                                    CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.dsp_driver_set);
                                    if (checkBox2 != null) {
                                        i = R.id.dsp_fade_add;
                                        TextView textView7 = (TextView) view.findViewById(R.id.dsp_fade_add);
                                        if (textView7 != null) {
                                            i = R.id.dsp_fade_del;
                                            TextView textView8 = (TextView) view.findViewById(R.id.dsp_fade_del);
                                            if (textView8 != null) {
                                                i = R.id.dsp_fade_value;
                                                TextView textView9 = (TextView) view.findViewById(R.id.dsp_fade_value);
                                                if (textView9 != null) {
                                                    i = R.id.dsp_main_vol_add;
                                                    TextView textView10 = (TextView) view.findViewById(R.id.dsp_main_vol_add);
                                                    if (textView10 != null) {
                                                        i = R.id.dsp_main_vol_del;
                                                        TextView textView11 = (TextView) view.findViewById(R.id.dsp_main_vol_del);
                                                        if (textView11 != null) {
                                                            i = R.id.dsp_main_vol_value;
                                                            TextView textView12 = (TextView) view.findViewById(R.id.dsp_main_vol_value);
                                                            if (textView12 != null) {
                                                                i = R.id.dsp_mid_add;
                                                                TextView textView13 = (TextView) view.findViewById(R.id.dsp_mid_add);
                                                                if (textView13 != null) {
                                                                    i = R.id.dsp_mid_del;
                                                                    TextView textView14 = (TextView) view.findViewById(R.id.dsp_mid_del);
                                                                    if (textView14 != null) {
                                                                        i = R.id.dsp_mid_value;
                                                                        TextView textView15 = (TextView) view.findViewById(R.id.dsp_mid_value);
                                                                        if (textView15 != null) {
                                                                            i = R.id.dsp_surround_add;
                                                                            TextView textView16 = (TextView) view.findViewById(R.id.dsp_surround_add);
                                                                            if (textView16 != null) {
                                                                                i = R.id.dsp_surround_del;
                                                                                TextView textView17 = (TextView) view.findViewById(R.id.dsp_surround_del);
                                                                                if (textView17 != null) {
                                                                                    i = R.id.dsp_surround_value;
                                                                                    TextView textView18 = (TextView) view.findViewById(R.id.dsp_surround_value);
                                                                                    if (textView18 != null) {
                                                                                        i = R.id.dsp_tre_add;
                                                                                        TextView textView19 = (TextView) view.findViewById(R.id.dsp_tre_add);
                                                                                        if (textView19 != null) {
                                                                                            i = R.id.dsp_tre_del;
                                                                                            TextView textView20 = (TextView) view.findViewById(R.id.dsp_tre_del);
                                                                                            if (textView20 != null) {
                                                                                                i = R.id.dsp_tre_value;
                                                                                                TextView textView21 = (TextView) view.findViewById(R.id.dsp_tre_value);
                                                                                                if (textView21 != null) {
                                                                                                    i = R.id.dsp_vol_speed_add;
                                                                                                    TextView textView22 = (TextView) view.findViewById(R.id.dsp_vol_speed_add);
                                                                                                    if (textView22 != null) {
                                                                                                        i = R.id.dsp_vol_speed_del;
                                                                                                        TextView textView23 = (TextView) view.findViewById(R.id.dsp_vol_speed_del);
                                                                                                        if (textView23 != null) {
                                                                                                            i = R.id.dsp_vol_speed_value;
                                                                                                            TextView textView24 = (TextView) view.findViewById(R.id.dsp_vol_speed_value);
                                                                                                            if (textView24 != null) {
                                                                                                                return new NissanDspinfoBinding((LinearLayout) view, textView, textView2, textView3, textView4, textView5, textView6, checkBox, checkBox2, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, textView21, textView22, textView23, textView24);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
