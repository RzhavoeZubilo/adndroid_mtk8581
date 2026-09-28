package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.FuelProgressBar;

/* JADX INFO: loaded from: classes.dex */
public final class ToyotaHisfuelBinding implements ViewBinding {
    public final Button btnHisfuel2cur;
    public final Button btnHisfuelClear;
    public final Button btnHisfuelUpdate;
    public final FuelProgressBar pbHisfuelProgressBar1;
    public final FuelProgressBar pbHisfuelProgressBar2;
    public final FuelProgressBar pbHisfuelProgressBar3;
    public final FuelProgressBar pbHisfuelProgressBar4;
    public final FuelProgressBar pbHisfuelProgressBar5;
    public final FuelProgressBar pbHisfuelProgressBar6;
    private final LinearLayout rootView;
    public final TextView txHisfuelBestVal;
    public final TextView txHisfuelMinUitl;
    public final TextView txHisfuelPro1;
    public final TextView txHisfuelPro2;
    public final TextView txHisfuelPro3;
    public final TextView txHisfuelPro4;
    public final TextView txHisfuelTrip1;
    public final TextView txHisfuelTrip2;
    public final TextView txHisfuelTrip3;
    public final TextView txHisfuelTrip4;
    public final TextView txHisfuelTrip5;
    public final TextView txHisfuelTripCurrent;

    private ToyotaHisfuelBinding(LinearLayout linearLayout, Button button, Button button2, Button button3, FuelProgressBar fuelProgressBar, FuelProgressBar fuelProgressBar2, FuelProgressBar fuelProgressBar3, FuelProgressBar fuelProgressBar4, FuelProgressBar fuelProgressBar5, FuelProgressBar fuelProgressBar6, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12) {
        this.rootView = linearLayout;
        this.btnHisfuel2cur = button;
        this.btnHisfuelClear = button2;
        this.btnHisfuelUpdate = button3;
        this.pbHisfuelProgressBar1 = fuelProgressBar;
        this.pbHisfuelProgressBar2 = fuelProgressBar2;
        this.pbHisfuelProgressBar3 = fuelProgressBar3;
        this.pbHisfuelProgressBar4 = fuelProgressBar4;
        this.pbHisfuelProgressBar5 = fuelProgressBar5;
        this.pbHisfuelProgressBar6 = fuelProgressBar6;
        this.txHisfuelBestVal = textView;
        this.txHisfuelMinUitl = textView2;
        this.txHisfuelPro1 = textView3;
        this.txHisfuelPro2 = textView4;
        this.txHisfuelPro3 = textView5;
        this.txHisfuelPro4 = textView6;
        this.txHisfuelTrip1 = textView7;
        this.txHisfuelTrip2 = textView8;
        this.txHisfuelTrip3 = textView9;
        this.txHisfuelTrip4 = textView10;
        this.txHisfuelTrip5 = textView11;
        this.txHisfuelTripCurrent = textView12;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ToyotaHisfuelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ToyotaHisfuelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toyota_hisfuel, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToyotaHisfuelBinding bind(View view) {
        int i = R.id.btn_hisfuel_2cur;
        Button button = (Button) view.findViewById(R.id.btn_hisfuel_2cur);
        if (button != null) {
            i = R.id.btn_hisfuel_clear;
            Button button2 = (Button) view.findViewById(R.id.btn_hisfuel_clear);
            if (button2 != null) {
                i = R.id.btn_hisfuel_update;
                Button button3 = (Button) view.findViewById(R.id.btn_hisfuel_update);
                if (button3 != null) {
                    i = R.id.pb_hisfuel_progress_bar_1;
                    FuelProgressBar fuelProgressBar = (FuelProgressBar) view.findViewById(R.id.pb_hisfuel_progress_bar_1);
                    if (fuelProgressBar != null) {
                        i = R.id.pb_hisfuel_progress_bar_2;
                        FuelProgressBar fuelProgressBar2 = (FuelProgressBar) view.findViewById(R.id.pb_hisfuel_progress_bar_2);
                        if (fuelProgressBar2 != null) {
                            i = R.id.pb_hisfuel_progress_bar_3;
                            FuelProgressBar fuelProgressBar3 = (FuelProgressBar) view.findViewById(R.id.pb_hisfuel_progress_bar_3);
                            if (fuelProgressBar3 != null) {
                                i = R.id.pb_hisfuel_progress_bar_4;
                                FuelProgressBar fuelProgressBar4 = (FuelProgressBar) view.findViewById(R.id.pb_hisfuel_progress_bar_4);
                                if (fuelProgressBar4 != null) {
                                    i = R.id.pb_hisfuel_progress_bar_5;
                                    FuelProgressBar fuelProgressBar5 = (FuelProgressBar) view.findViewById(R.id.pb_hisfuel_progress_bar_5);
                                    if (fuelProgressBar5 != null) {
                                        i = R.id.pb_hisfuel_progress_bar_6;
                                        FuelProgressBar fuelProgressBar6 = (FuelProgressBar) view.findViewById(R.id.pb_hisfuel_progress_bar_6);
                                        if (fuelProgressBar6 != null) {
                                            i = R.id.tx_hisfuel_best_val;
                                            TextView textView = (TextView) view.findViewById(R.id.tx_hisfuel_best_val);
                                            if (textView != null) {
                                                i = R.id.tx_hisfuel_min_uitl;
                                                TextView textView2 = (TextView) view.findViewById(R.id.tx_hisfuel_min_uitl);
                                                if (textView2 != null) {
                                                    i = R.id.tx_hisfuel_pro_1;
                                                    TextView textView3 = (TextView) view.findViewById(R.id.tx_hisfuel_pro_1);
                                                    if (textView3 != null) {
                                                        i = R.id.tx_hisfuel_pro_2;
                                                        TextView textView4 = (TextView) view.findViewById(R.id.tx_hisfuel_pro_2);
                                                        if (textView4 != null) {
                                                            i = R.id.tx_hisfuel_pro_3;
                                                            TextView textView5 = (TextView) view.findViewById(R.id.tx_hisfuel_pro_3);
                                                            if (textView5 != null) {
                                                                i = R.id.tx_hisfuel_pro_4;
                                                                TextView textView6 = (TextView) view.findViewById(R.id.tx_hisfuel_pro_4);
                                                                if (textView6 != null) {
                                                                    i = R.id.tx_hisfuel_trip1;
                                                                    TextView textView7 = (TextView) view.findViewById(R.id.tx_hisfuel_trip1);
                                                                    if (textView7 != null) {
                                                                        i = R.id.tx_hisfuel_trip2;
                                                                        TextView textView8 = (TextView) view.findViewById(R.id.tx_hisfuel_trip2);
                                                                        if (textView8 != null) {
                                                                            i = R.id.tx_hisfuel_trip3;
                                                                            TextView textView9 = (TextView) view.findViewById(R.id.tx_hisfuel_trip3);
                                                                            if (textView9 != null) {
                                                                                i = R.id.tx_hisfuel_trip4;
                                                                                TextView textView10 = (TextView) view.findViewById(R.id.tx_hisfuel_trip4);
                                                                                if (textView10 != null) {
                                                                                    i = R.id.tx_hisfuel_trip5;
                                                                                    TextView textView11 = (TextView) view.findViewById(R.id.tx_hisfuel_trip5);
                                                                                    if (textView11 != null) {
                                                                                        i = R.id.tx_hisfuel_trip_current;
                                                                                        TextView textView12 = (TextView) view.findViewById(R.id.tx_hisfuel_trip_current);
                                                                                        if (textView12 != null) {
                                                                                            return new ToyotaHisfuelBinding((LinearLayout) view, button, button2, button3, fuelProgressBar, fuelProgressBar2, fuelProgressBar3, fuelProgressBar4, fuelProgressBar5, fuelProgressBar6, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12);
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
