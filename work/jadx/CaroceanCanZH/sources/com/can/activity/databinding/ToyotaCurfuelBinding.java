package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.AutoText;
import com.can.ui.draw.FuelProgressBar;

/* JADX INFO: loaded from: classes.dex */
public final class ToyotaCurfuelBinding implements ViewBinding {
    public final Button btnCurfuel2his;
    public final Button btnCurfuelClear;
    public final LinearLayout curfuelLayout;
    public final FuelProgressBar pbCurfuelProgressBar1;
    public final FuelProgressBar pbCurfuelProgressBar10;
    public final FuelProgressBar pbCurfuelProgressBar11;
    public final FuelProgressBar pbCurfuelProgressBar12;
    public final FuelProgressBar pbCurfuelProgressBar13;
    public final FuelProgressBar pbCurfuelProgressBar14;
    public final FuelProgressBar pbCurfuelProgressBar15;
    public final FuelProgressBar pbCurfuelProgressBar2;
    public final FuelProgressBar pbCurfuelProgressBar3;
    public final FuelProgressBar pbCurfuelProgressBar4;
    public final FuelProgressBar pbCurfuelProgressBar5;
    public final FuelProgressBar pbCurfuelProgressBar6;
    public final FuelProgressBar pbCurfuelProgressBar7;
    public final FuelProgressBar pbCurfuelProgressBar8;
    public final FuelProgressBar pbCurfuelProgressBar9;
    public final FuelProgressBar pbCurfuelProgressBarCur;
    private final LinearLayout rootView;
    public final TextView txCurfuelCrutangeVal;
    public final TextView txCurfuelElapsedtimeVal;
    public final TextView txCurfuelIntanl;
    public final TextView txCurfuelMin0;
    public final TextView txCurfuelMin10;
    public final TextView txCurfuelMin15;
    public final TextView txCurfuelMin5;
    public final AutoText txCurfuelMinUitl;
    public final TextView txCurfuelPro1;
    public final TextView txCurfuelPro2;
    public final TextView txCurfuelPro3;
    public final TextView txCurfuelPro4;
    public final TextView txCurfuelSpeedVal;

    private ToyotaCurfuelBinding(LinearLayout linearLayout, Button button, Button button2, LinearLayout linearLayout2, FuelProgressBar fuelProgressBar, FuelProgressBar fuelProgressBar2, FuelProgressBar fuelProgressBar3, FuelProgressBar fuelProgressBar4, FuelProgressBar fuelProgressBar5, FuelProgressBar fuelProgressBar6, FuelProgressBar fuelProgressBar7, FuelProgressBar fuelProgressBar8, FuelProgressBar fuelProgressBar9, FuelProgressBar fuelProgressBar10, FuelProgressBar fuelProgressBar11, FuelProgressBar fuelProgressBar12, FuelProgressBar fuelProgressBar13, FuelProgressBar fuelProgressBar14, FuelProgressBar fuelProgressBar15, FuelProgressBar fuelProgressBar16, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, AutoText autoText, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12) {
        this.rootView = linearLayout;
        this.btnCurfuel2his = button;
        this.btnCurfuelClear = button2;
        this.curfuelLayout = linearLayout2;
        this.pbCurfuelProgressBar1 = fuelProgressBar;
        this.pbCurfuelProgressBar10 = fuelProgressBar2;
        this.pbCurfuelProgressBar11 = fuelProgressBar3;
        this.pbCurfuelProgressBar12 = fuelProgressBar4;
        this.pbCurfuelProgressBar13 = fuelProgressBar5;
        this.pbCurfuelProgressBar14 = fuelProgressBar6;
        this.pbCurfuelProgressBar15 = fuelProgressBar7;
        this.pbCurfuelProgressBar2 = fuelProgressBar8;
        this.pbCurfuelProgressBar3 = fuelProgressBar9;
        this.pbCurfuelProgressBar4 = fuelProgressBar10;
        this.pbCurfuelProgressBar5 = fuelProgressBar11;
        this.pbCurfuelProgressBar6 = fuelProgressBar12;
        this.pbCurfuelProgressBar7 = fuelProgressBar13;
        this.pbCurfuelProgressBar8 = fuelProgressBar14;
        this.pbCurfuelProgressBar9 = fuelProgressBar15;
        this.pbCurfuelProgressBarCur = fuelProgressBar16;
        this.txCurfuelCrutangeVal = textView;
        this.txCurfuelElapsedtimeVal = textView2;
        this.txCurfuelIntanl = textView3;
        this.txCurfuelMin0 = textView4;
        this.txCurfuelMin10 = textView5;
        this.txCurfuelMin15 = textView6;
        this.txCurfuelMin5 = textView7;
        this.txCurfuelMinUitl = autoText;
        this.txCurfuelPro1 = textView8;
        this.txCurfuelPro2 = textView9;
        this.txCurfuelPro3 = textView10;
        this.txCurfuelPro4 = textView11;
        this.txCurfuelSpeedVal = textView12;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ToyotaCurfuelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ToyotaCurfuelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toyota_curfuel, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToyotaCurfuelBinding bind(View view) {
        int i = R.id.btn_curfuel_2his;
        Button button = (Button) view.findViewById(R.id.btn_curfuel_2his);
        if (button != null) {
            i = R.id.btn_curfuel_clear;
            Button button2 = (Button) view.findViewById(R.id.btn_curfuel_clear);
            if (button2 != null) {
                i = R.id.curfuel_layout;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.curfuel_layout);
                if (linearLayout != null) {
                    i = R.id.pb_curfuel_progress_bar_1;
                    FuelProgressBar fuelProgressBar = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_1);
                    if (fuelProgressBar != null) {
                        i = R.id.pb_curfuel_progress_bar_10;
                        FuelProgressBar fuelProgressBar2 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_10);
                        if (fuelProgressBar2 != null) {
                            i = R.id.pb_curfuel_progress_bar_11;
                            FuelProgressBar fuelProgressBar3 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_11);
                            if (fuelProgressBar3 != null) {
                                i = R.id.pb_curfuel_progress_bar_12;
                                FuelProgressBar fuelProgressBar4 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_12);
                                if (fuelProgressBar4 != null) {
                                    i = R.id.pb_curfuel_progress_bar_13;
                                    FuelProgressBar fuelProgressBar5 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_13);
                                    if (fuelProgressBar5 != null) {
                                        i = R.id.pb_curfuel_progress_bar_14;
                                        FuelProgressBar fuelProgressBar6 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_14);
                                        if (fuelProgressBar6 != null) {
                                            i = R.id.pb_curfuel_progress_bar_15;
                                            FuelProgressBar fuelProgressBar7 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_15);
                                            if (fuelProgressBar7 != null) {
                                                i = R.id.pb_curfuel_progress_bar_2;
                                                FuelProgressBar fuelProgressBar8 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_2);
                                                if (fuelProgressBar8 != null) {
                                                    i = R.id.pb_curfuel_progress_bar_3;
                                                    FuelProgressBar fuelProgressBar9 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_3);
                                                    if (fuelProgressBar9 != null) {
                                                        i = R.id.pb_curfuel_progress_bar_4;
                                                        FuelProgressBar fuelProgressBar10 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_4);
                                                        if (fuelProgressBar10 != null) {
                                                            i = R.id.pb_curfuel_progress_bar_5;
                                                            FuelProgressBar fuelProgressBar11 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_5);
                                                            if (fuelProgressBar11 != null) {
                                                                i = R.id.pb_curfuel_progress_bar_6;
                                                                FuelProgressBar fuelProgressBar12 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_6);
                                                                if (fuelProgressBar12 != null) {
                                                                    i = R.id.pb_curfuel_progress_bar_7;
                                                                    FuelProgressBar fuelProgressBar13 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_7);
                                                                    if (fuelProgressBar13 != null) {
                                                                        i = R.id.pb_curfuel_progress_bar_8;
                                                                        FuelProgressBar fuelProgressBar14 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_8);
                                                                        if (fuelProgressBar14 != null) {
                                                                            i = R.id.pb_curfuel_progress_bar_9;
                                                                            FuelProgressBar fuelProgressBar15 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_9);
                                                                            if (fuelProgressBar15 != null) {
                                                                                i = R.id.pb_curfuel_progress_bar_cur;
                                                                                FuelProgressBar fuelProgressBar16 = (FuelProgressBar) view.findViewById(R.id.pb_curfuel_progress_bar_cur);
                                                                                if (fuelProgressBar16 != null) {
                                                                                    i = R.id.tx_curfuel_crutange_val;
                                                                                    TextView textView = (TextView) view.findViewById(R.id.tx_curfuel_crutange_val);
                                                                                    if (textView != null) {
                                                                                        i = R.id.tx_curfuel_elapsedtime_val;
                                                                                        TextView textView2 = (TextView) view.findViewById(R.id.tx_curfuel_elapsedtime_val);
                                                                                        if (textView2 != null) {
                                                                                            i = R.id.tx_curfuel_intanl;
                                                                                            TextView textView3 = (TextView) view.findViewById(R.id.tx_curfuel_intanl);
                                                                                            if (textView3 != null) {
                                                                                                i = R.id.tx_curfuel_min_0;
                                                                                                TextView textView4 = (TextView) view.findViewById(R.id.tx_curfuel_min_0);
                                                                                                if (textView4 != null) {
                                                                                                    i = R.id.tx_curfuel_min_10;
                                                                                                    TextView textView5 = (TextView) view.findViewById(R.id.tx_curfuel_min_10);
                                                                                                    if (textView5 != null) {
                                                                                                        i = R.id.tx_curfuel_min_15;
                                                                                                        TextView textView6 = (TextView) view.findViewById(R.id.tx_curfuel_min_15);
                                                                                                        if (textView6 != null) {
                                                                                                            i = R.id.tx_curfuel_min_5;
                                                                                                            TextView textView7 = (TextView) view.findViewById(R.id.tx_curfuel_min_5);
                                                                                                            if (textView7 != null) {
                                                                                                                i = R.id.tx_curfuel_min_uitl;
                                                                                                                AutoText autoText = (AutoText) view.findViewById(R.id.tx_curfuel_min_uitl);
                                                                                                                if (autoText != null) {
                                                                                                                    i = R.id.tx_curfuel_pro_1;
                                                                                                                    TextView textView8 = (TextView) view.findViewById(R.id.tx_curfuel_pro_1);
                                                                                                                    if (textView8 != null) {
                                                                                                                        i = R.id.tx_curfuel_pro_2;
                                                                                                                        TextView textView9 = (TextView) view.findViewById(R.id.tx_curfuel_pro_2);
                                                                                                                        if (textView9 != null) {
                                                                                                                            i = R.id.tx_curfuel_pro_3;
                                                                                                                            TextView textView10 = (TextView) view.findViewById(R.id.tx_curfuel_pro_3);
                                                                                                                            if (textView10 != null) {
                                                                                                                                i = R.id.tx_curfuel_pro_4;
                                                                                                                                TextView textView11 = (TextView) view.findViewById(R.id.tx_curfuel_pro_4);
                                                                                                                                if (textView11 != null) {
                                                                                                                                    i = R.id.tx_curfuel_speed_val;
                                                                                                                                    TextView textView12 = (TextView) view.findViewById(R.id.tx_curfuel_speed_val);
                                                                                                                                    if (textView12 != null) {
                                                                                                                                        return new ToyotaCurfuelBinding((LinearLayout) view, button, button2, linearLayout, fuelProgressBar, fuelProgressBar2, fuelProgressBar3, fuelProgressBar4, fuelProgressBar5, fuelProgressBar6, fuelProgressBar7, fuelProgressBar8, fuelProgressBar9, fuelProgressBar10, fuelProgressBar11, fuelProgressBar12, fuelProgressBar13, fuelProgressBar14, fuelProgressBar15, fuelProgressBar16, textView, textView2, textView3, textView4, textView5, textView6, textView7, autoText, textView8, textView9, textView10, textView11, textView12);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
