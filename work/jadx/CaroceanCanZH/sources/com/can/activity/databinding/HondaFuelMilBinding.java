package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.AutoText;
import com.can.ui.draw.FuelSeekBar;

/* JADX INFO: loaded from: classes.dex */
public final class HondaFuelMilBinding implements ViewBinding {
    public final TextView btnDeleteRecord;
    public final TextView btnHondaCurDriving;
    public final TextView btnHondaResumeDriving;
    public final LinearLayout llCurDriving;
    public final LinearLayout llResumeDriving;
    private final FrameLayout rootView;
    public final FuelSeekBar skbarFuelCur;
    public final FuelSeekBar skbarFuelHisAverage;
    public final FuelSeekBar skbarFuelHisFirst;
    public final FuelSeekBar skbarFuelHisSecond;
    public final FuelSeekBar skbarFuelHisThird;
    public final FuelSeekBar skbarFuelInstance;
    public final FuelSeekBar skbarFuelLast;
    public final TextView tvCurDrivingRange;
    public final TextView tvDrivingRange;
    public final AutoText tvHondaFuelCur;
    public final TextView tvHondaFuelCurDrivingRange;
    public final AutoText tvHondaFuelInstance;
    public final AutoText tvHondaFuelLast;
    public final TextView tvHondaHisfuelAverage;
    public final TextView tvHondaHisfuelCurTrip;
    public final TextView tvHondaHisfuelDrivingRange;
    public final TextView tvHondaHisfuelFirstAverage;
    public final TextView tvHondaHisfuelFirstTrip;
    public final AutoText tvHondaHisfuelSecondAverage;
    public final AutoText tvHondaHisfuelSecondTrip;
    public final AutoText tvHondaHisfuelThirdAverage;
    public final AutoText tvHondaHisfuelThirdTrip;
    public final TextView tvHondaThisTime;

    private HondaFuelMilBinding(FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3, LinearLayout linearLayout, LinearLayout linearLayout2, FuelSeekBar fuelSeekBar, FuelSeekBar fuelSeekBar2, FuelSeekBar fuelSeekBar3, FuelSeekBar fuelSeekBar4, FuelSeekBar fuelSeekBar5, FuelSeekBar fuelSeekBar6, FuelSeekBar fuelSeekBar7, TextView textView4, TextView textView5, AutoText autoText, TextView textView6, AutoText autoText2, AutoText autoText3, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, AutoText autoText4, AutoText autoText5, AutoText autoText6, AutoText autoText7, TextView textView12) {
        this.rootView = frameLayout;
        this.btnDeleteRecord = textView;
        this.btnHondaCurDriving = textView2;
        this.btnHondaResumeDriving = textView3;
        this.llCurDriving = linearLayout;
        this.llResumeDriving = linearLayout2;
        this.skbarFuelCur = fuelSeekBar;
        this.skbarFuelHisAverage = fuelSeekBar2;
        this.skbarFuelHisFirst = fuelSeekBar3;
        this.skbarFuelHisSecond = fuelSeekBar4;
        this.skbarFuelHisThird = fuelSeekBar5;
        this.skbarFuelInstance = fuelSeekBar6;
        this.skbarFuelLast = fuelSeekBar7;
        this.tvCurDrivingRange = textView4;
        this.tvDrivingRange = textView5;
        this.tvHondaFuelCur = autoText;
        this.tvHondaFuelCurDrivingRange = textView6;
        this.tvHondaFuelInstance = autoText2;
        this.tvHondaFuelLast = autoText3;
        this.tvHondaHisfuelAverage = textView7;
        this.tvHondaHisfuelCurTrip = textView8;
        this.tvHondaHisfuelDrivingRange = textView9;
        this.tvHondaHisfuelFirstAverage = textView10;
        this.tvHondaHisfuelFirstTrip = textView11;
        this.tvHondaHisfuelSecondAverage = autoText4;
        this.tvHondaHisfuelSecondTrip = autoText5;
        this.tvHondaHisfuelThirdAverage = autoText6;
        this.tvHondaHisfuelThirdTrip = autoText7;
        this.tvHondaThisTime = textView12;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static HondaFuelMilBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HondaFuelMilBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.honda_fuel_mil, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HondaFuelMilBinding bind(View view) {
        int i = R.id.btn_delete_record;
        TextView textView = (TextView) view.findViewById(R.id.btn_delete_record);
        if (textView != null) {
            i = R.id.btn_honda_cur_driving;
            TextView textView2 = (TextView) view.findViewById(R.id.btn_honda_cur_driving);
            if (textView2 != null) {
                i = R.id.btn_honda_resume_driving;
                TextView textView3 = (TextView) view.findViewById(R.id.btn_honda_resume_driving);
                if (textView3 != null) {
                    i = R.id.ll_cur_driving;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_cur_driving);
                    if (linearLayout != null) {
                        i = R.id.ll_resume_driving;
                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.ll_resume_driving);
                        if (linearLayout2 != null) {
                            i = R.id.skbar_fuel_cur;
                            FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.skbar_fuel_cur);
                            if (fuelSeekBar != null) {
                                i = R.id.skbar_fuel_his_average;
                                FuelSeekBar fuelSeekBar2 = (FuelSeekBar) view.findViewById(R.id.skbar_fuel_his_average);
                                if (fuelSeekBar2 != null) {
                                    i = R.id.skbar_fuel_his_first;
                                    FuelSeekBar fuelSeekBar3 = (FuelSeekBar) view.findViewById(R.id.skbar_fuel_his_first);
                                    if (fuelSeekBar3 != null) {
                                        i = R.id.skbar_fuel_his_second;
                                        FuelSeekBar fuelSeekBar4 = (FuelSeekBar) view.findViewById(R.id.skbar_fuel_his_second);
                                        if (fuelSeekBar4 != null) {
                                            i = R.id.skbar_fuel_his_third;
                                            FuelSeekBar fuelSeekBar5 = (FuelSeekBar) view.findViewById(R.id.skbar_fuel_his_third);
                                            if (fuelSeekBar5 != null) {
                                                i = R.id.skbar_fuel_instance;
                                                FuelSeekBar fuelSeekBar6 = (FuelSeekBar) view.findViewById(R.id.skbar_fuel_instance);
                                                if (fuelSeekBar6 != null) {
                                                    i = R.id.skbar_fuel_last;
                                                    FuelSeekBar fuelSeekBar7 = (FuelSeekBar) view.findViewById(R.id.skbar_fuel_last);
                                                    if (fuelSeekBar7 != null) {
                                                        i = R.id.tv_cur_driving_range;
                                                        TextView textView4 = (TextView) view.findViewById(R.id.tv_cur_driving_range);
                                                        if (textView4 != null) {
                                                            i = R.id.tv_driving_range;
                                                            TextView textView5 = (TextView) view.findViewById(R.id.tv_driving_range);
                                                            if (textView5 != null) {
                                                                i = R.id.tv_honda_fuel_cur;
                                                                AutoText autoText = (AutoText) view.findViewById(R.id.tv_honda_fuel_cur);
                                                                if (autoText != null) {
                                                                    i = R.id.tv_honda_fuel_cur_driving_range;
                                                                    TextView textView6 = (TextView) view.findViewById(R.id.tv_honda_fuel_cur_driving_range);
                                                                    if (textView6 != null) {
                                                                        i = R.id.tv_honda_fuel_instance;
                                                                        AutoText autoText2 = (AutoText) view.findViewById(R.id.tv_honda_fuel_instance);
                                                                        if (autoText2 != null) {
                                                                            i = R.id.tv_honda_fuel_last;
                                                                            AutoText autoText3 = (AutoText) view.findViewById(R.id.tv_honda_fuel_last);
                                                                            if (autoText3 != null) {
                                                                                i = R.id.tv_honda_hisfuel_average;
                                                                                TextView textView7 = (TextView) view.findViewById(R.id.tv_honda_hisfuel_average);
                                                                                if (textView7 != null) {
                                                                                    i = R.id.tv_honda_hisfuel_cur_trip;
                                                                                    TextView textView8 = (TextView) view.findViewById(R.id.tv_honda_hisfuel_cur_trip);
                                                                                    if (textView8 != null) {
                                                                                        i = R.id.tv_honda_hisfuel_driving_range;
                                                                                        TextView textView9 = (TextView) view.findViewById(R.id.tv_honda_hisfuel_driving_range);
                                                                                        if (textView9 != null) {
                                                                                            i = R.id.tv_honda_hisfuel_first_average;
                                                                                            TextView textView10 = (TextView) view.findViewById(R.id.tv_honda_hisfuel_first_average);
                                                                                            if (textView10 != null) {
                                                                                                i = R.id.tv_honda_hisfuel_first_trip;
                                                                                                TextView textView11 = (TextView) view.findViewById(R.id.tv_honda_hisfuel_first_trip);
                                                                                                if (textView11 != null) {
                                                                                                    i = R.id.tv_honda_hisfuel_second_average;
                                                                                                    AutoText autoText4 = (AutoText) view.findViewById(R.id.tv_honda_hisfuel_second_average);
                                                                                                    if (autoText4 != null) {
                                                                                                        i = R.id.tv_honda_hisfuel_second_trip;
                                                                                                        AutoText autoText5 = (AutoText) view.findViewById(R.id.tv_honda_hisfuel_second_trip);
                                                                                                        if (autoText5 != null) {
                                                                                                            i = R.id.tv_honda_hisfuel_third_average;
                                                                                                            AutoText autoText6 = (AutoText) view.findViewById(R.id.tv_honda_hisfuel_third_average);
                                                                                                            if (autoText6 != null) {
                                                                                                                i = R.id.tv_honda_hisfuel_third_trip;
                                                                                                                AutoText autoText7 = (AutoText) view.findViewById(R.id.tv_honda_hisfuel_third_trip);
                                                                                                                if (autoText7 != null) {
                                                                                                                    i = R.id.tv_honda_this_time;
                                                                                                                    TextView textView12 = (TextView) view.findViewById(R.id.tv_honda_this_time);
                                                                                                                    if (textView12 != null) {
                                                                                                                        return new HondaFuelMilBinding((FrameLayout) view, textView, textView2, textView3, linearLayout, linearLayout2, fuelSeekBar, fuelSeekBar2, fuelSeekBar3, fuelSeekBar4, fuelSeekBar5, fuelSeekBar6, fuelSeekBar7, textView4, textView5, autoText, textView6, autoText2, autoText3, textView7, textView8, textView9, textView10, textView11, autoText4, autoText5, autoText6, autoText7, textView12);
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
