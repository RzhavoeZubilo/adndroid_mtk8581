package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class GmDjCarSetBinding implements ViewBinding {
    public final TextView gmBtnReset;
    public final CheckBox gmCheckboxAutoDefogF;
    public final CheckBox gmCheckboxAutoDefogR;
    public final CheckBox gmCheckboxAutoMemoryRecall;
    public final CheckBox gmCheckboxAutoMirror;
    public final CheckBox gmCheckboxAutoRelock;
    public final CheckBox gmCheckboxAutoWiper;
    public final CheckBox gmCheckboxBackSeat;
    public final CheckBox gmCheckboxCarState;
    public final CheckBox gmCheckboxDelayLock;
    public final CheckBox gmCheckboxDriverSeat;
    public final CheckBox gmCheckboxFlankWarning;
    public final CheckBox gmCheckboxFrogetKey;
    public final CheckBox gmCheckboxGl8CruiseStart;
    public final CheckBox gmCheckboxGl8SeatHeating;
    public final CheckBox gmCheckboxGl8SeatWind;
    public final CheckBox gmCheckboxPersonByDriver;
    public final CheckBox gmCheckboxPreventLock;
    public final CheckBox gmCheckboxRadarState;
    public final CheckBox gmCheckboxRemoteSeatHeat;
    public final CheckBox gmCheckboxRemoteStartCar;
    public final CheckBox gmCheckboxRemoteThenLock;
    public final CheckBox gmCheckboxRemoteUnlock;
    public final CheckBox gmCheckboxRemoteWind;
    public final CheckBox gmCheckboxSeekHeadlight;
    public final CheckBox gmCheckboxStartLock;
    public final CheckBox gmCheckboxStartWiperByBack;
    public final LinearLayout gmGl8Layout;
    public final RelativeLayout gmRlAirQualitySensor;
    public final RelativeLayout gmRlAutoCollision;
    public final RelativeLayout gmRlAutoWindSet;
    public final RelativeLayout gmRlAwayLock;
    public final RelativeLayout gmRlBackSeat;
    public final RelativeLayout gmRlCarBodyCtrl;
    public final RelativeLayout gmRlCarSpeed;
    public final RelativeLayout gmRlCurroadinfo;
    public final RelativeLayout gmRlForwardLight;
    public final RelativeLayout gmRlGl8CruiseStart;
    public final RelativeLayout gmRlGl8RearAir;
    public final RelativeLayout gmRlGl8RemoteAir;
    public final RelativeLayout gmRlHandTraffic;
    public final RelativeLayout gmRlLan;
    public final RelativeLayout gmRlLockHeadlightDelay;
    public final RelativeLayout gmRlNearUnlock;
    public final RelativeLayout gmRlParkLock;
    public final RelativeLayout gmRlPartTemp;
    public final RelativeLayout gmRlRampStart;
    public final RelativeLayout gmRlRemoteLock;
    public final RelativeLayout gmRlRemoteUnlockSet;
    public final RelativeLayout gmRlReverseMirror;
    public final RelativeLayout gmRlStartMode;
    public final RelativeLayout gmRlWaringVol;
    private final ScrollView rootView;

    private GmDjCarSetBinding(ScrollView scrollView, TextView textView, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, CheckBox checkBox12, CheckBox checkBox13, CheckBox checkBox14, CheckBox checkBox15, CheckBox checkBox16, CheckBox checkBox17, CheckBox checkBox18, CheckBox checkBox19, CheckBox checkBox20, CheckBox checkBox21, CheckBox checkBox22, CheckBox checkBox23, CheckBox checkBox24, CheckBox checkBox25, CheckBox checkBox26, LinearLayout linearLayout, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, RelativeLayout relativeLayout10, RelativeLayout relativeLayout11, RelativeLayout relativeLayout12, RelativeLayout relativeLayout13, RelativeLayout relativeLayout14, RelativeLayout relativeLayout15, RelativeLayout relativeLayout16, RelativeLayout relativeLayout17, RelativeLayout relativeLayout18, RelativeLayout relativeLayout19, RelativeLayout relativeLayout20, RelativeLayout relativeLayout21, RelativeLayout relativeLayout22, RelativeLayout relativeLayout23, RelativeLayout relativeLayout24) {
        this.rootView = scrollView;
        this.gmBtnReset = textView;
        this.gmCheckboxAutoDefogF = checkBox;
        this.gmCheckboxAutoDefogR = checkBox2;
        this.gmCheckboxAutoMemoryRecall = checkBox3;
        this.gmCheckboxAutoMirror = checkBox4;
        this.gmCheckboxAutoRelock = checkBox5;
        this.gmCheckboxAutoWiper = checkBox6;
        this.gmCheckboxBackSeat = checkBox7;
        this.gmCheckboxCarState = checkBox8;
        this.gmCheckboxDelayLock = checkBox9;
        this.gmCheckboxDriverSeat = checkBox10;
        this.gmCheckboxFlankWarning = checkBox11;
        this.gmCheckboxFrogetKey = checkBox12;
        this.gmCheckboxGl8CruiseStart = checkBox13;
        this.gmCheckboxGl8SeatHeating = checkBox14;
        this.gmCheckboxGl8SeatWind = checkBox15;
        this.gmCheckboxPersonByDriver = checkBox16;
        this.gmCheckboxPreventLock = checkBox17;
        this.gmCheckboxRadarState = checkBox18;
        this.gmCheckboxRemoteSeatHeat = checkBox19;
        this.gmCheckboxRemoteStartCar = checkBox20;
        this.gmCheckboxRemoteThenLock = checkBox21;
        this.gmCheckboxRemoteUnlock = checkBox22;
        this.gmCheckboxRemoteWind = checkBox23;
        this.gmCheckboxSeekHeadlight = checkBox24;
        this.gmCheckboxStartLock = checkBox25;
        this.gmCheckboxStartWiperByBack = checkBox26;
        this.gmGl8Layout = linearLayout;
        this.gmRlAirQualitySensor = relativeLayout;
        this.gmRlAutoCollision = relativeLayout2;
        this.gmRlAutoWindSet = relativeLayout3;
        this.gmRlAwayLock = relativeLayout4;
        this.gmRlBackSeat = relativeLayout5;
        this.gmRlCarBodyCtrl = relativeLayout6;
        this.gmRlCarSpeed = relativeLayout7;
        this.gmRlCurroadinfo = relativeLayout8;
        this.gmRlForwardLight = relativeLayout9;
        this.gmRlGl8CruiseStart = relativeLayout10;
        this.gmRlGl8RearAir = relativeLayout11;
        this.gmRlGl8RemoteAir = relativeLayout12;
        this.gmRlHandTraffic = relativeLayout13;
        this.gmRlLan = relativeLayout14;
        this.gmRlLockHeadlightDelay = relativeLayout15;
        this.gmRlNearUnlock = relativeLayout16;
        this.gmRlParkLock = relativeLayout17;
        this.gmRlPartTemp = relativeLayout18;
        this.gmRlRampStart = relativeLayout19;
        this.gmRlRemoteLock = relativeLayout20;
        this.gmRlRemoteUnlockSet = relativeLayout21;
        this.gmRlReverseMirror = relativeLayout22;
        this.gmRlStartMode = relativeLayout23;
        this.gmRlWaringVol = relativeLayout24;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static GmDjCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GmDjCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gm_dj_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static GmDjCarSetBinding bind(View view) {
        int i = R.id.gm_btn_reset;
        TextView textView = (TextView) view.findViewById(R.id.gm_btn_reset);
        if (textView != null) {
            i = R.id.gm_checkbox_auto_defog_f;
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_defog_f);
            if (checkBox != null) {
                i = R.id.gm_checkbox_auto_defog_r;
                CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_defog_r);
                if (checkBox2 != null) {
                    i = R.id.gm_checkbox_auto_memory_recall;
                    CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_memory_recall);
                    if (checkBox3 != null) {
                        i = R.id.gm_checkbox_auto_mirror;
                        CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_mirror);
                        if (checkBox4 != null) {
                            i = R.id.gm_checkbox_auto_relock;
                            CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_relock);
                            if (checkBox5 != null) {
                                i = R.id.gm_checkbox_auto_wiper;
                                CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_wiper);
                                if (checkBox6 != null) {
                                    i = R.id.gm_checkbox_back_seat;
                                    CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.gm_checkbox_back_seat);
                                    if (checkBox7 != null) {
                                        i = R.id.gm_checkbox_car_state;
                                        CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.gm_checkbox_car_state);
                                        if (checkBox8 != null) {
                                            i = R.id.gm_checkbox_delay_lock;
                                            CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.gm_checkbox_delay_lock);
                                            if (checkBox9 != null) {
                                                i = R.id.gm_checkbox_driver_seat;
                                                CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.gm_checkbox_driver_seat);
                                                if (checkBox10 != null) {
                                                    i = R.id.gm_checkbox_flank_warning;
                                                    CheckBox checkBox11 = (CheckBox) view.findViewById(R.id.gm_checkbox_flank_warning);
                                                    if (checkBox11 != null) {
                                                        i = R.id.gm_checkbox_froget_key;
                                                        CheckBox checkBox12 = (CheckBox) view.findViewById(R.id.gm_checkbox_froget_key);
                                                        if (checkBox12 != null) {
                                                            i = R.id.gm_checkbox_gl8_cruise_start;
                                                            CheckBox checkBox13 = (CheckBox) view.findViewById(R.id.gm_checkbox_gl8_cruise_start);
                                                            if (checkBox13 != null) {
                                                                i = R.id.gm_checkbox_gl8_seat_heating;
                                                                CheckBox checkBox14 = (CheckBox) view.findViewById(R.id.gm_checkbox_gl8_seat_heating);
                                                                if (checkBox14 != null) {
                                                                    i = R.id.gm_checkbox_gl8_seat_wind;
                                                                    CheckBox checkBox15 = (CheckBox) view.findViewById(R.id.gm_checkbox_gl8_seat_wind);
                                                                    if (checkBox15 != null) {
                                                                        i = R.id.gm_checkbox_person_by_driver;
                                                                        CheckBox checkBox16 = (CheckBox) view.findViewById(R.id.gm_checkbox_person_by_driver);
                                                                        if (checkBox16 != null) {
                                                                            i = R.id.gm_checkbox_prevent_lock;
                                                                            CheckBox checkBox17 = (CheckBox) view.findViewById(R.id.gm_checkbox_prevent_lock);
                                                                            if (checkBox17 != null) {
                                                                                i = R.id.gm_checkbox_radar_state;
                                                                                CheckBox checkBox18 = (CheckBox) view.findViewById(R.id.gm_checkbox_radar_state);
                                                                                if (checkBox18 != null) {
                                                                                    i = R.id.gm_checkbox_remote_seat_heat;
                                                                                    CheckBox checkBox19 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_seat_heat);
                                                                                    if (checkBox19 != null) {
                                                                                        i = R.id.gm_checkbox_remote_start_car;
                                                                                        CheckBox checkBox20 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_start_car);
                                                                                        if (checkBox20 != null) {
                                                                                            i = R.id.gm_checkbox_remote_then_lock;
                                                                                            CheckBox checkBox21 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_then_lock);
                                                                                            if (checkBox21 != null) {
                                                                                                i = R.id.gm_checkbox_remote_unlock;
                                                                                                CheckBox checkBox22 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_unlock);
                                                                                                if (checkBox22 != null) {
                                                                                                    i = R.id.gm_checkbox_remote_wind;
                                                                                                    CheckBox checkBox23 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_wind);
                                                                                                    if (checkBox23 != null) {
                                                                                                        i = R.id.gm_checkbox_seek_headlight;
                                                                                                        CheckBox checkBox24 = (CheckBox) view.findViewById(R.id.gm_checkbox_seek_headlight);
                                                                                                        if (checkBox24 != null) {
                                                                                                            i = R.id.gm_checkbox_start_lock;
                                                                                                            CheckBox checkBox25 = (CheckBox) view.findViewById(R.id.gm_checkbox_start_lock);
                                                                                                            if (checkBox25 != null) {
                                                                                                                i = R.id.gm_checkbox_start_wiper_by_back;
                                                                                                                CheckBox checkBox26 = (CheckBox) view.findViewById(R.id.gm_checkbox_start_wiper_by_back);
                                                                                                                if (checkBox26 != null) {
                                                                                                                    i = R.id.gm_gl8_layout;
                                                                                                                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.gm_gl8_layout);
                                                                                                                    if (linearLayout != null) {
                                                                                                                        i = R.id.gm_rl_air_quality_sensor;
                                                                                                                        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.gm_rl_air_quality_sensor);
                                                                                                                        if (relativeLayout != null) {
                                                                                                                            i = R.id.gm_rl_auto_collision;
                                                                                                                            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_collision);
                                                                                                                            if (relativeLayout2 != null) {
                                                                                                                                i = R.id.gm_rl_auto_wind_set;
                                                                                                                                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_wind_set);
                                                                                                                                if (relativeLayout3 != null) {
                                                                                                                                    i = R.id.gm_rl_away_lock;
                                                                                                                                    RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.gm_rl_away_lock);
                                                                                                                                    if (relativeLayout4 != null) {
                                                                                                                                        i = R.id.gm_rl_back_seat;
                                                                                                                                        RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.gm_rl_back_seat);
                                                                                                                                        if (relativeLayout5 != null) {
                                                                                                                                            i = R.id.gm_rl_car_body_ctrl;
                                                                                                                                            RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.gm_rl_car_body_ctrl);
                                                                                                                                            if (relativeLayout6 != null) {
                                                                                                                                                i = R.id.gm_rl_car_speed;
                                                                                                                                                RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.gm_rl_car_speed);
                                                                                                                                                if (relativeLayout7 != null) {
                                                                                                                                                    i = R.id.gm_rl_curroadinfo;
                                                                                                                                                    RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.gm_rl_curroadinfo);
                                                                                                                                                    if (relativeLayout8 != null) {
                                                                                                                                                        i = R.id.gm_rl_forward_light;
                                                                                                                                                        RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.gm_rl_forward_light);
                                                                                                                                                        if (relativeLayout9 != null) {
                                                                                                                                                            i = R.id.gm_rl_gl8_cruise_start;
                                                                                                                                                            RelativeLayout relativeLayout10 = (RelativeLayout) view.findViewById(R.id.gm_rl_gl8_cruise_start);
                                                                                                                                                            if (relativeLayout10 != null) {
                                                                                                                                                                i = R.id.gm_rl_gl8_rear_air;
                                                                                                                                                                RelativeLayout relativeLayout11 = (RelativeLayout) view.findViewById(R.id.gm_rl_gl8_rear_air);
                                                                                                                                                                if (relativeLayout11 != null) {
                                                                                                                                                                    i = R.id.gm_rl_gl8_remote_air;
                                                                                                                                                                    RelativeLayout relativeLayout12 = (RelativeLayout) view.findViewById(R.id.gm_rl_gl8_remote_air);
                                                                                                                                                                    if (relativeLayout12 != null) {
                                                                                                                                                                        i = R.id.gm_rl_hand_traffic;
                                                                                                                                                                        RelativeLayout relativeLayout13 = (RelativeLayout) view.findViewById(R.id.gm_rl_hand_traffic);
                                                                                                                                                                        if (relativeLayout13 != null) {
                                                                                                                                                                            i = R.id.gm_rl_lan;
                                                                                                                                                                            RelativeLayout relativeLayout14 = (RelativeLayout) view.findViewById(R.id.gm_rl_lan);
                                                                                                                                                                            if (relativeLayout14 != null) {
                                                                                                                                                                                i = R.id.gm_rl_lock_headlight_delay;
                                                                                                                                                                                RelativeLayout relativeLayout15 = (RelativeLayout) view.findViewById(R.id.gm_rl_lock_headlight_delay);
                                                                                                                                                                                if (relativeLayout15 != null) {
                                                                                                                                                                                    i = R.id.gm_rl_near_unlock;
                                                                                                                                                                                    RelativeLayout relativeLayout16 = (RelativeLayout) view.findViewById(R.id.gm_rl_near_unlock);
                                                                                                                                                                                    if (relativeLayout16 != null) {
                                                                                                                                                                                        i = R.id.gm_rl_park_lock;
                                                                                                                                                                                        RelativeLayout relativeLayout17 = (RelativeLayout) view.findViewById(R.id.gm_rl_park_lock);
                                                                                                                                                                                        if (relativeLayout17 != null) {
                                                                                                                                                                                            i = R.id.gm_rl_part_temp;
                                                                                                                                                                                            RelativeLayout relativeLayout18 = (RelativeLayout) view.findViewById(R.id.gm_rl_part_temp);
                                                                                                                                                                                            if (relativeLayout18 != null) {
                                                                                                                                                                                                i = R.id.gm_rl_ramp_start;
                                                                                                                                                                                                RelativeLayout relativeLayout19 = (RelativeLayout) view.findViewById(R.id.gm_rl_ramp_start);
                                                                                                                                                                                                if (relativeLayout19 != null) {
                                                                                                                                                                                                    i = R.id.gm_rl_remote_lock;
                                                                                                                                                                                                    RelativeLayout relativeLayout20 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_lock);
                                                                                                                                                                                                    if (relativeLayout20 != null) {
                                                                                                                                                                                                        i = R.id.gm_rl_remote_unlock_set;
                                                                                                                                                                                                        RelativeLayout relativeLayout21 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_unlock_set);
                                                                                                                                                                                                        if (relativeLayout21 != null) {
                                                                                                                                                                                                            i = R.id.gm_rl_reverse_mirror;
                                                                                                                                                                                                            RelativeLayout relativeLayout22 = (RelativeLayout) view.findViewById(R.id.gm_rl_reverse_mirror);
                                                                                                                                                                                                            if (relativeLayout22 != null) {
                                                                                                                                                                                                                i = R.id.gm_rl_start_mode;
                                                                                                                                                                                                                RelativeLayout relativeLayout23 = (RelativeLayout) view.findViewById(R.id.gm_rl_start_mode);
                                                                                                                                                                                                                if (relativeLayout23 != null) {
                                                                                                                                                                                                                    i = R.id.gm_rl_waring_vol;
                                                                                                                                                                                                                    RelativeLayout relativeLayout24 = (RelativeLayout) view.findViewById(R.id.gm_rl_waring_vol);
                                                                                                                                                                                                                    if (relativeLayout24 != null) {
                                                                                                                                                                                                                        return new GmDjCarSetBinding((ScrollView) view, textView, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, checkBox11, checkBox12, checkBox13, checkBox14, checkBox15, checkBox16, checkBox17, checkBox18, checkBox19, checkBox20, checkBox21, checkBox22, checkBox23, checkBox24, checkBox25, checkBox26, linearLayout, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, relativeLayout10, relativeLayout11, relativeLayout12, relativeLayout13, relativeLayout14, relativeLayout15, relativeLayout16, relativeLayout17, relativeLayout18, relativeLayout19, relativeLayout20, relativeLayout21, relativeLayout22, relativeLayout23, relativeLayout24);
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
