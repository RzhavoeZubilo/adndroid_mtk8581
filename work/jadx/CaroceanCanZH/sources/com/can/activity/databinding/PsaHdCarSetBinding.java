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
public final class PsaHdCarSetBinding implements ViewBinding {
    public final LinearLayout psHdRl400817;
    public final CheckBox psaCheckboxAutoDoor;
    public final RelativeLayout psaHdAmbientMode;
    public final RelativeLayout psaHdAromaConcentration;
    public final RelativeLayout psaHdAromatherapyType;
    public final CheckBox psaHdAutoPark;
    public final CheckBox psaHdAutoRunIll;
    public final RelativeLayout psaHdBkLight;
    public final CheckBox psaHdDoorLock;
    public final RelativeLayout psaHdDoorUnlock;
    public final CheckBox psaHdDriverAssist;
    public final RelativeLayout psaHdDrivingMode;
    public final CheckBox psaHdFatigueDelection;
    public final CheckBox psaHdGuestFunc;
    public final RelativeLayout psaHdGuestLight;
    public final RelativeLayout psaHdInitComfort;
    public final RelativeLayout psaHdIonPurifier;
    public final CheckBox psaHdLaneAssistance;
    public final RelativeLayout psaHdLeftDashboard;
    public final RelativeLayout psaHdLightAtmosphere;
    public final CheckBox psaHdLightAtmosphere1;
    public final RelativeLayout psaHdLightGoHome;
    public final CheckBox psaHdLightStatus1;
    public final CheckBox psaHdRadarStop;
    public final CheckBox psaHdRearWiper;
    public final RelativeLayout psaHdRightDashboard;
    public final CheckBox psaHdRoadAssit;
    public final CheckBox psaHdSpeedLimit;
    public final RelativeLayout psaHdThemeColor;
    public final RelativeLayout psaHdTirePressure;
    public final CheckBox psaHdUnlockTrunk;
    private final ScrollView rootView;

    private PsaHdCarSetBinding(ScrollView scrollView, LinearLayout linearLayout, CheckBox checkBox, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, CheckBox checkBox2, CheckBox checkBox3, RelativeLayout relativeLayout4, CheckBox checkBox4, RelativeLayout relativeLayout5, CheckBox checkBox5, RelativeLayout relativeLayout6, CheckBox checkBox6, CheckBox checkBox7, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, CheckBox checkBox8, RelativeLayout relativeLayout10, RelativeLayout relativeLayout11, CheckBox checkBox9, RelativeLayout relativeLayout12, CheckBox checkBox10, CheckBox checkBox11, CheckBox checkBox12, RelativeLayout relativeLayout13, CheckBox checkBox13, CheckBox checkBox14, RelativeLayout relativeLayout14, RelativeLayout relativeLayout15, CheckBox checkBox15) {
        this.rootView = scrollView;
        this.psHdRl400817 = linearLayout;
        this.psaCheckboxAutoDoor = checkBox;
        this.psaHdAmbientMode = relativeLayout;
        this.psaHdAromaConcentration = relativeLayout2;
        this.psaHdAromatherapyType = relativeLayout3;
        this.psaHdAutoPark = checkBox2;
        this.psaHdAutoRunIll = checkBox3;
        this.psaHdBkLight = relativeLayout4;
        this.psaHdDoorLock = checkBox4;
        this.psaHdDoorUnlock = relativeLayout5;
        this.psaHdDriverAssist = checkBox5;
        this.psaHdDrivingMode = relativeLayout6;
        this.psaHdFatigueDelection = checkBox6;
        this.psaHdGuestFunc = checkBox7;
        this.psaHdGuestLight = relativeLayout7;
        this.psaHdInitComfort = relativeLayout8;
        this.psaHdIonPurifier = relativeLayout9;
        this.psaHdLaneAssistance = checkBox8;
        this.psaHdLeftDashboard = relativeLayout10;
        this.psaHdLightAtmosphere = relativeLayout11;
        this.psaHdLightAtmosphere1 = checkBox9;
        this.psaHdLightGoHome = relativeLayout12;
        this.psaHdLightStatus1 = checkBox10;
        this.psaHdRadarStop = checkBox11;
        this.psaHdRearWiper = checkBox12;
        this.psaHdRightDashboard = relativeLayout13;
        this.psaHdRoadAssit = checkBox13;
        this.psaHdSpeedLimit = checkBox14;
        this.psaHdThemeColor = relativeLayout14;
        this.psaHdTirePressure = relativeLayout15;
        this.psaHdUnlockTrunk = checkBox15;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static PsaHdCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaHdCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_hd_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaHdCarSetBinding bind(View view) {
        int i = R.id.ps_hd_rl_4008_17;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ps_hd_rl_4008_17);
        if (linearLayout != null) {
            i = R.id.psa_checkbox_auto_door;
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.psa_checkbox_auto_door);
            if (checkBox != null) {
                i = R.id.psa_hd_ambient_mode;
                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.psa_hd_ambient_mode);
                if (relativeLayout != null) {
                    i = R.id.psa_hd_aroma_concentration;
                    RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.psa_hd_aroma_concentration);
                    if (relativeLayout2 != null) {
                        i = R.id.psa_hd_aromatherapy_type;
                        RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.psa_hd_aromatherapy_type);
                        if (relativeLayout3 != null) {
                            i = R.id.psa_hd_auto_park;
                            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.psa_hd_auto_park);
                            if (checkBox2 != null) {
                                i = R.id.psa_hd_auto_run_ill;
                                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.psa_hd_auto_run_ill);
                                if (checkBox3 != null) {
                                    i = R.id.psa_hd_bk_light;
                                    RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.psa_hd_bk_light);
                                    if (relativeLayout4 != null) {
                                        i = R.id.psa_hd_door_lock;
                                        CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.psa_hd_door_lock);
                                        if (checkBox4 != null) {
                                            i = R.id.psa_hd_door_unlock;
                                            RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.psa_hd_door_unlock);
                                            if (relativeLayout5 != null) {
                                                i = R.id.psa_hd_driver_assist;
                                                CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.psa_hd_driver_assist);
                                                if (checkBox5 != null) {
                                                    i = R.id.psa_hd_driving_mode;
                                                    RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.psa_hd_driving_mode);
                                                    if (relativeLayout6 != null) {
                                                        i = R.id.psa_hd_fatigue_delection;
                                                        CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.psa_hd_fatigue_delection);
                                                        if (checkBox6 != null) {
                                                            i = R.id.psa_hd_guest_func;
                                                            CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.psa_hd_guest_func);
                                                            if (checkBox7 != null) {
                                                                i = R.id.psa_hd_guest_light;
                                                                RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.psa_hd_guest_light);
                                                                if (relativeLayout7 != null) {
                                                                    i = R.id.psa_hd_init_comfort;
                                                                    RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.psa_hd_init_comfort);
                                                                    if (relativeLayout8 != null) {
                                                                        i = R.id.psa_hd_ion_purifier;
                                                                        RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.psa_hd_ion_purifier);
                                                                        if (relativeLayout9 != null) {
                                                                            i = R.id.psa_hd_lane_assistance;
                                                                            CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.psa_hd_lane_assistance);
                                                                            if (checkBox8 != null) {
                                                                                i = R.id.psa_hd_left_dashboard;
                                                                                RelativeLayout relativeLayout10 = (RelativeLayout) view.findViewById(R.id.psa_hd_left_dashboard);
                                                                                if (relativeLayout10 != null) {
                                                                                    i = R.id.psa_hd_light_atmosphere;
                                                                                    RelativeLayout relativeLayout11 = (RelativeLayout) view.findViewById(R.id.psa_hd_light_atmosphere);
                                                                                    if (relativeLayout11 != null) {
                                                                                        i = R.id.psa_hd_light_atmosphere1;
                                                                                        CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.psa_hd_light_atmosphere1);
                                                                                        if (checkBox9 != null) {
                                                                                            i = R.id.psa_hd_light_go_home;
                                                                                            RelativeLayout relativeLayout12 = (RelativeLayout) view.findViewById(R.id.psa_hd_light_go_home);
                                                                                            if (relativeLayout12 != null) {
                                                                                                i = R.id.psa_hd_light_status1;
                                                                                                CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.psa_hd_light_status1);
                                                                                                if (checkBox10 != null) {
                                                                                                    i = R.id.psa_hd_radar_stop;
                                                                                                    CheckBox checkBox11 = (CheckBox) view.findViewById(R.id.psa_hd_radar_stop);
                                                                                                    if (checkBox11 != null) {
                                                                                                        i = R.id.psa_hd_rear_wiper;
                                                                                                        CheckBox checkBox12 = (CheckBox) view.findViewById(R.id.psa_hd_rear_wiper);
                                                                                                        if (checkBox12 != null) {
                                                                                                            i = R.id.psa_hd_right_dashboard;
                                                                                                            RelativeLayout relativeLayout13 = (RelativeLayout) view.findViewById(R.id.psa_hd_right_dashboard);
                                                                                                            if (relativeLayout13 != null) {
                                                                                                                i = R.id.psa_hd_road_assit;
                                                                                                                CheckBox checkBox13 = (CheckBox) view.findViewById(R.id.psa_hd_road_assit);
                                                                                                                if (checkBox13 != null) {
                                                                                                                    i = R.id.psa_hd_speed_limit;
                                                                                                                    CheckBox checkBox14 = (CheckBox) view.findViewById(R.id.psa_hd_speed_limit);
                                                                                                                    if (checkBox14 != null) {
                                                                                                                        i = R.id.psa_hd_theme_color;
                                                                                                                        RelativeLayout relativeLayout14 = (RelativeLayout) view.findViewById(R.id.psa_hd_theme_color);
                                                                                                                        if (relativeLayout14 != null) {
                                                                                                                            i = R.id.psa_hd_tire_pressure;
                                                                                                                            RelativeLayout relativeLayout15 = (RelativeLayout) view.findViewById(R.id.psa_hd_tire_pressure);
                                                                                                                            if (relativeLayout15 != null) {
                                                                                                                                i = R.id.psa_hd_unlock_trunk;
                                                                                                                                CheckBox checkBox15 = (CheckBox) view.findViewById(R.id.psa_hd_unlock_trunk);
                                                                                                                                if (checkBox15 != null) {
                                                                                                                                    return new PsaHdCarSetBinding((ScrollView) view, linearLayout, checkBox, relativeLayout, relativeLayout2, relativeLayout3, checkBox2, checkBox3, relativeLayout4, checkBox4, relativeLayout5, checkBox5, relativeLayout6, checkBox6, checkBox7, relativeLayout7, relativeLayout8, relativeLayout9, checkBox8, relativeLayout10, relativeLayout11, checkBox9, relativeLayout12, checkBox10, checkBox11, checkBox12, relativeLayout13, checkBox13, checkBox14, relativeLayout14, relativeLayout15, checkBox15);
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
