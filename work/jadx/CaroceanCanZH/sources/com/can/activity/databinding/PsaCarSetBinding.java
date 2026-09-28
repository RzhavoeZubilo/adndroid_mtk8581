package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PsaCarSetBinding implements ViewBinding {
    public final CheckBox psaCheckboxAutoDoor;
    public final CheckBox psaCheckboxAutoRunIll;
    public final CheckBox psaCheckboxBackcar;
    public final CheckBox psaCheckboxBlindArea;
    public final CheckBox psaCheckboxCenterDoor;
    public final CheckBox psaCheckboxFatigueDelection;
    public final CheckBox psaCheckboxGuestFunc;
    public final CheckBox psaCheckboxLightStatus;
    public final CheckBox psaCheckboxPGear;
    public final CheckBox psaCheckboxRadarStop;
    public final CheckBox psaCheckboxSmallLight;
    public final CheckBox psaCheckboxStartStopFunc;
    public final CheckBox psaCheckboxTractionSys;
    public final LinearLayout psaRl4008;
    public final RelativeLayout psaRlBlindArea;
    public final RelativeLayout psaRlBodyBkLight;
    public final RelativeLayout psaRlDoorsOpenSet;
    public final RelativeLayout psaRlDriverAssist;
    public final RelativeLayout psaRlDriverAssist1;
    public final RelativeLayout psaRlEqSet;
    public final RelativeLayout psaRlFuelUnit;
    public final RelativeLayout psaRlGuestLight;
    public final RelativeLayout psaRlLanSet;
    public final RelativeLayout psaRlLeftDashboard;
    public final RelativeLayout psaRlLightAtmosphere;
    public final RelativeLayout psaRlLightDelay;
    public final RelativeLayout psaRlLightGoHome;
    public final RelativeLayout psaRlRearWiper;
    public final RelativeLayout psaRlRightDashboard;
    public final RelativeLayout psaRlTempUnit;
    public final RelativeLayout psaRlThemeColor;
    public final RelativeLayout psaRlTirePressure;
    public final RelativeLayout psaRlTripPage;
    public final RelativeLayout psaRlUnlockTrunk;
    private final ScrollView rootView;

    private PsaCarSetBinding(ScrollView scrollView, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, CheckBox checkBox12, CheckBox checkBox13, LinearLayout linearLayout, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, RelativeLayout relativeLayout10, RelativeLayout relativeLayout11, RelativeLayout relativeLayout12, RelativeLayout relativeLayout13, RelativeLayout relativeLayout14, RelativeLayout relativeLayout15, RelativeLayout relativeLayout16, RelativeLayout relativeLayout17, RelativeLayout relativeLayout18, RelativeLayout relativeLayout19, RelativeLayout relativeLayout20) {
        this.rootView = scrollView;
        this.psaCheckboxAutoDoor = checkBox;
        this.psaCheckboxAutoRunIll = checkBox2;
        this.psaCheckboxBackcar = checkBox3;
        this.psaCheckboxBlindArea = checkBox4;
        this.psaCheckboxCenterDoor = checkBox5;
        this.psaCheckboxFatigueDelection = checkBox6;
        this.psaCheckboxGuestFunc = checkBox7;
        this.psaCheckboxLightStatus = checkBox8;
        this.psaCheckboxPGear = checkBox9;
        this.psaCheckboxRadarStop = checkBox10;
        this.psaCheckboxSmallLight = checkBox11;
        this.psaCheckboxStartStopFunc = checkBox12;
        this.psaCheckboxTractionSys = checkBox13;
        this.psaRl4008 = linearLayout;
        this.psaRlBlindArea = relativeLayout;
        this.psaRlBodyBkLight = relativeLayout2;
        this.psaRlDoorsOpenSet = relativeLayout3;
        this.psaRlDriverAssist = relativeLayout4;
        this.psaRlDriverAssist1 = relativeLayout5;
        this.psaRlEqSet = relativeLayout6;
        this.psaRlFuelUnit = relativeLayout7;
        this.psaRlGuestLight = relativeLayout8;
        this.psaRlLanSet = relativeLayout9;
        this.psaRlLeftDashboard = relativeLayout10;
        this.psaRlLightAtmosphere = relativeLayout11;
        this.psaRlLightDelay = relativeLayout12;
        this.psaRlLightGoHome = relativeLayout13;
        this.psaRlRearWiper = relativeLayout14;
        this.psaRlRightDashboard = relativeLayout15;
        this.psaRlTempUnit = relativeLayout16;
        this.psaRlThemeColor = relativeLayout17;
        this.psaRlTirePressure = relativeLayout18;
        this.psaRlTripPage = relativeLayout19;
        this.psaRlUnlockTrunk = relativeLayout20;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static PsaCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaCarSetBinding bind(View view) {
        int i = R.id.psa_checkbox_auto_door;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.psa_checkbox_auto_door);
        if (checkBox != null) {
            i = R.id.psa_checkbox_auto_run_ill;
            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.psa_checkbox_auto_run_ill);
            if (checkBox2 != null) {
                i = R.id.psa_checkbox_backcar;
                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.psa_checkbox_backcar);
                if (checkBox3 != null) {
                    i = R.id.psa_checkbox_blind_area;
                    CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.psa_checkbox_blind_area);
                    if (checkBox4 != null) {
                        i = R.id.psa_checkbox_center_door;
                        CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.psa_checkbox_center_door);
                        if (checkBox5 != null) {
                            i = R.id.psa_checkbox_fatigue_delection;
                            CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.psa_checkbox_fatigue_delection);
                            if (checkBox6 != null) {
                                i = R.id.psa_checkbox_guest_func;
                                CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.psa_checkbox_guest_func);
                                if (checkBox7 != null) {
                                    i = R.id.psa_checkbox_light_status;
                                    CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.psa_checkbox_light_status);
                                    if (checkBox8 != null) {
                                        i = R.id.psa_checkbox_p_gear;
                                        CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.psa_checkbox_p_gear);
                                        if (checkBox9 != null) {
                                            i = R.id.psa_checkbox_radar_stop;
                                            CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.psa_checkbox_radar_stop);
                                            if (checkBox10 != null) {
                                                i = R.id.psa_checkbox_small_light;
                                                CheckBox checkBox11 = (CheckBox) view.findViewById(R.id.psa_checkbox_small_light);
                                                if (checkBox11 != null) {
                                                    i = R.id.psa_checkbox_start_stop_func;
                                                    CheckBox checkBox12 = (CheckBox) view.findViewById(R.id.psa_checkbox_start_stop_func);
                                                    if (checkBox12 != null) {
                                                        i = R.id.psa_checkbox_traction_sys;
                                                        CheckBox checkBox13 = (CheckBox) view.findViewById(R.id.psa_checkbox_traction_sys);
                                                        if (checkBox13 != null) {
                                                            i = R.id.psa_rl_4008;
                                                            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.psa_rl_4008);
                                                            if (linearLayout != null) {
                                                                i = R.id.psa_rl_blind_area;
                                                                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.psa_rl_blind_area);
                                                                if (relativeLayout != null) {
                                                                    i = R.id.psa_rl_body_bk_light;
                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.psa_rl_body_bk_light);
                                                                    if (relativeLayout2 != null) {
                                                                        i = R.id.psa_rl_doors_open_set;
                                                                        RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.psa_rl_doors_open_set);
                                                                        if (relativeLayout3 != null) {
                                                                            i = R.id.psa_rl_driver_assist;
                                                                            RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.psa_rl_driver_assist);
                                                                            if (relativeLayout4 != null) {
                                                                                i = R.id.psa_rl_driver_assist1;
                                                                                RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.psa_rl_driver_assist1);
                                                                                if (relativeLayout5 != null) {
                                                                                    i = R.id.psa_rl_eq_set;
                                                                                    RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.psa_rl_eq_set);
                                                                                    if (relativeLayout6 != null) {
                                                                                        i = R.id.psa_rl_fuel_unit;
                                                                                        RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.psa_rl_fuel_unit);
                                                                                        if (relativeLayout7 != null) {
                                                                                            i = R.id.psa_rl_guest_light;
                                                                                            RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.psa_rl_guest_light);
                                                                                            if (relativeLayout8 != null) {
                                                                                                i = R.id.psa_rl_lan_set;
                                                                                                RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.psa_rl_lan_set);
                                                                                                if (relativeLayout9 != null) {
                                                                                                    i = R.id.psa_rl_left_dashboard;
                                                                                                    RelativeLayout relativeLayout10 = (RelativeLayout) view.findViewById(R.id.psa_rl_left_dashboard);
                                                                                                    if (relativeLayout10 != null) {
                                                                                                        i = R.id.psa_rl_light_atmosphere;
                                                                                                        RelativeLayout relativeLayout11 = (RelativeLayout) view.findViewById(R.id.psa_rl_light_atmosphere);
                                                                                                        if (relativeLayout11 != null) {
                                                                                                            i = R.id.psa_rl_light_delay;
                                                                                                            RelativeLayout relativeLayout12 = (RelativeLayout) view.findViewById(R.id.psa_rl_light_delay);
                                                                                                            if (relativeLayout12 != null) {
                                                                                                                i = R.id.psa_rl_light_go_home;
                                                                                                                RelativeLayout relativeLayout13 = (RelativeLayout) view.findViewById(R.id.psa_rl_light_go_home);
                                                                                                                if (relativeLayout13 != null) {
                                                                                                                    i = R.id.psa_rl_rear_wiper;
                                                                                                                    RelativeLayout relativeLayout14 = (RelativeLayout) view.findViewById(R.id.psa_rl_rear_wiper);
                                                                                                                    if (relativeLayout14 != null) {
                                                                                                                        i = R.id.psa_rl_right_dashboard;
                                                                                                                        RelativeLayout relativeLayout15 = (RelativeLayout) view.findViewById(R.id.psa_rl_right_dashboard);
                                                                                                                        if (relativeLayout15 != null) {
                                                                                                                            i = R.id.psa_rl_temp_unit;
                                                                                                                            RelativeLayout relativeLayout16 = (RelativeLayout) view.findViewById(R.id.psa_rl_temp_unit);
                                                                                                                            if (relativeLayout16 != null) {
                                                                                                                                i = R.id.psa_rl_theme_color;
                                                                                                                                RelativeLayout relativeLayout17 = (RelativeLayout) view.findViewById(R.id.psa_rl_theme_color);
                                                                                                                                if (relativeLayout17 != null) {
                                                                                                                                    i = R.id.psa_rl_tire_pressure;
                                                                                                                                    RelativeLayout relativeLayout18 = (RelativeLayout) view.findViewById(R.id.psa_rl_tire_pressure);
                                                                                                                                    if (relativeLayout18 != null) {
                                                                                                                                        i = R.id.psa_rl_trip_page;
                                                                                                                                        RelativeLayout relativeLayout19 = (RelativeLayout) view.findViewById(R.id.psa_rl_trip_page);
                                                                                                                                        if (relativeLayout19 != null) {
                                                                                                                                            i = R.id.psa_rl_unlock_trunk;
                                                                                                                                            RelativeLayout relativeLayout20 = (RelativeLayout) view.findViewById(R.id.psa_rl_unlock_trunk);
                                                                                                                                            if (relativeLayout20 != null) {
                                                                                                                                                return new PsaCarSetBinding((ScrollView) view, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, checkBox11, checkBox12, checkBox13, linearLayout, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, relativeLayout10, relativeLayout11, relativeLayout12, relativeLayout13, relativeLayout14, relativeLayout15, relativeLayout16, relativeLayout17, relativeLayout18, relativeLayout19, relativeLayout20);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
