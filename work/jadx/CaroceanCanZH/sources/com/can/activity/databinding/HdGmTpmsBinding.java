package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class HdGmTpmsBinding implements ViewBinding {
    public final ImageView gmTpmsImageView1;
    public final TextView gmTpmsPrompt;
    public final RelativeLayout gmTpmsRlDevice;
    private final RelativeLayout rootView;
    public final TextView txGmTpmsAlarmHLb;
    public final TextView txGmTpmsAlarmHLf;
    public final TextView txGmTpmsAlarmHRb;
    public final TextView txGmTpmsAlarmHRf;
    public final TextView txGmTpmsAlarmLLb;
    public final TextView txGmTpmsAlarmLLf;
    public final TextView txGmTpmsAlarmLRb;
    public final TextView txGmTpmsAlarmLRf;
    public final TextView txGmTpmsCheckLb;
    public final TextView txGmTpmsCheckLf;
    public final TextView txGmTpmsCheckRb;
    public final TextView txGmTpmsCheckRf;
    public final TextView txGmTpmsValLb;
    public final TextView txGmTpmsValLf;
    public final TextView txGmTpmsValRb;
    public final TextView txGmTpmsValRf;
    public final TextView txGmTpmsValSpare;

    private HdGmTpmsBinding(RelativeLayout relativeLayout, ImageView imageView, TextView textView, RelativeLayout relativeLayout2, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, TextView textView16, TextView textView17, TextView textView18) {
        this.rootView = relativeLayout;
        this.gmTpmsImageView1 = imageView;
        this.gmTpmsPrompt = textView;
        this.gmTpmsRlDevice = relativeLayout2;
        this.txGmTpmsAlarmHLb = textView2;
        this.txGmTpmsAlarmHLf = textView3;
        this.txGmTpmsAlarmHRb = textView4;
        this.txGmTpmsAlarmHRf = textView5;
        this.txGmTpmsAlarmLLb = textView6;
        this.txGmTpmsAlarmLLf = textView7;
        this.txGmTpmsAlarmLRb = textView8;
        this.txGmTpmsAlarmLRf = textView9;
        this.txGmTpmsCheckLb = textView10;
        this.txGmTpmsCheckLf = textView11;
        this.txGmTpmsCheckRb = textView12;
        this.txGmTpmsCheckRf = textView13;
        this.txGmTpmsValLb = textView14;
        this.txGmTpmsValLf = textView15;
        this.txGmTpmsValRb = textView16;
        this.txGmTpmsValRf = textView17;
        this.txGmTpmsValSpare = textView18;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static HdGmTpmsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HdGmTpmsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hd_gm_tpms, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HdGmTpmsBinding bind(View view) {
        int i = R.id.gm_tpms_imageView1;
        ImageView imageView = (ImageView) view.findViewById(R.id.gm_tpms_imageView1);
        if (imageView != null) {
            i = R.id.gm_tpms_prompt;
            TextView textView = (TextView) view.findViewById(R.id.gm_tpms_prompt);
            if (textView != null) {
                i = R.id.gm_tpms_rl_device;
                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.gm_tpms_rl_device);
                if (relativeLayout != null) {
                    i = R.id.tx_gm_tpms_alarm_h_lb;
                    TextView textView2 = (TextView) view.findViewById(R.id.tx_gm_tpms_alarm_h_lb);
                    if (textView2 != null) {
                        i = R.id.tx_gm_tpms_alarm_h_lf;
                        TextView textView3 = (TextView) view.findViewById(R.id.tx_gm_tpms_alarm_h_lf);
                        if (textView3 != null) {
                            i = R.id.tx_gm_tpms_alarm_h_rb;
                            TextView textView4 = (TextView) view.findViewById(R.id.tx_gm_tpms_alarm_h_rb);
                            if (textView4 != null) {
                                i = R.id.tx_gm_tpms_alarm_h_rf;
                                TextView textView5 = (TextView) view.findViewById(R.id.tx_gm_tpms_alarm_h_rf);
                                if (textView5 != null) {
                                    i = R.id.tx_gm_tpms_alarm_l_lb;
                                    TextView textView6 = (TextView) view.findViewById(R.id.tx_gm_tpms_alarm_l_lb);
                                    if (textView6 != null) {
                                        i = R.id.tx_gm_tpms_alarm_l_lf;
                                        TextView textView7 = (TextView) view.findViewById(R.id.tx_gm_tpms_alarm_l_lf);
                                        if (textView7 != null) {
                                            i = R.id.tx_gm_tpms_alarm_l_rb;
                                            TextView textView8 = (TextView) view.findViewById(R.id.tx_gm_tpms_alarm_l_rb);
                                            if (textView8 != null) {
                                                i = R.id.tx_gm_tpms_alarm_l_rf;
                                                TextView textView9 = (TextView) view.findViewById(R.id.tx_gm_tpms_alarm_l_rf);
                                                if (textView9 != null) {
                                                    i = R.id.tx_gm_tpms_check_lb;
                                                    TextView textView10 = (TextView) view.findViewById(R.id.tx_gm_tpms_check_lb);
                                                    if (textView10 != null) {
                                                        i = R.id.tx_gm_tpms_check_lf;
                                                        TextView textView11 = (TextView) view.findViewById(R.id.tx_gm_tpms_check_lf);
                                                        if (textView11 != null) {
                                                            i = R.id.tx_gm_tpms_check_rb;
                                                            TextView textView12 = (TextView) view.findViewById(R.id.tx_gm_tpms_check_rb);
                                                            if (textView12 != null) {
                                                                i = R.id.tx_gm_tpms_check_rf;
                                                                TextView textView13 = (TextView) view.findViewById(R.id.tx_gm_tpms_check_rf);
                                                                if (textView13 != null) {
                                                                    i = R.id.tx_gm_tpms_val_lb;
                                                                    TextView textView14 = (TextView) view.findViewById(R.id.tx_gm_tpms_val_lb);
                                                                    if (textView14 != null) {
                                                                        i = R.id.tx_gm_tpms_val_lf;
                                                                        TextView textView15 = (TextView) view.findViewById(R.id.tx_gm_tpms_val_lf);
                                                                        if (textView15 != null) {
                                                                            i = R.id.tx_gm_tpms_val_rb;
                                                                            TextView textView16 = (TextView) view.findViewById(R.id.tx_gm_tpms_val_rb);
                                                                            if (textView16 != null) {
                                                                                i = R.id.tx_gm_tpms_val_rf;
                                                                                TextView textView17 = (TextView) view.findViewById(R.id.tx_gm_tpms_val_rf);
                                                                                if (textView17 != null) {
                                                                                    i = R.id.tx_gm_tpms_val_spare;
                                                                                    TextView textView18 = (TextView) view.findViewById(R.id.tx_gm_tpms_val_spare);
                                                                                    if (textView18 != null) {
                                                                                        return new HdGmTpmsBinding((RelativeLayout) view, imageView, textView, relativeLayout, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18);
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
