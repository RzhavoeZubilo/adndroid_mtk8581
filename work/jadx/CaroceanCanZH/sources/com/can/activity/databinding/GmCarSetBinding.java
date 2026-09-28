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
public final class GmCarSetBinding implements ViewBinding {
    public final TextView gmBtnReset;
    public final CheckBox gmCheckboxAutoDefogF;
    public final CheckBox gmCheckboxAutoDefogR;
    public final CheckBox gmCheckboxAutoRelock;
    public final CheckBox gmCheckboxAutoWiper;
    public final CheckBox gmCheckboxBackSeat;
    public final CheckBox gmCheckboxCarState;
    public final CheckBox gmCheckboxDelayLock;
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
    public final RelativeLayout gmRlGl8CruiseStart;
    public final RelativeLayout gmRlGl8RearAir;
    public final RelativeLayout gmRlGl8RemoteAir;
    public final RelativeLayout gmRlLan;
    public final RelativeLayout gmRlLockHeadlightDelay;
    public final RelativeLayout gmRlNearUnlock;
    public final RelativeLayout gmRlParkLock;
    public final RelativeLayout gmRlPartTemp;
    public final RelativeLayout gmRlRampStart;
    public final RelativeLayout gmRlRemoteLock;
    public final RelativeLayout gmRlRemoteUnlockSet;
    public final RelativeLayout gmRlStartMode;
    public final RelativeLayout gmRlWaringVol;
    private final ScrollView rootView;

    private GmCarSetBinding(ScrollView scrollView, TextView textView, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, CheckBox checkBox12, CheckBox checkBox13, CheckBox checkBox14, CheckBox checkBox15, CheckBox checkBox16, CheckBox checkBox17, CheckBox checkBox18, CheckBox checkBox19, CheckBox checkBox20, CheckBox checkBox21, CheckBox checkBox22, CheckBox checkBox23, LinearLayout linearLayout, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, RelativeLayout relativeLayout10, RelativeLayout relativeLayout11, RelativeLayout relativeLayout12, RelativeLayout relativeLayout13, RelativeLayout relativeLayout14, RelativeLayout relativeLayout15, RelativeLayout relativeLayout16, RelativeLayout relativeLayout17, RelativeLayout relativeLayout18, RelativeLayout relativeLayout19, RelativeLayout relativeLayout20) {
        this.rootView = scrollView;
        this.gmBtnReset = textView;
        this.gmCheckboxAutoDefogF = checkBox;
        this.gmCheckboxAutoDefogR = checkBox2;
        this.gmCheckboxAutoRelock = checkBox3;
        this.gmCheckboxAutoWiper = checkBox4;
        this.gmCheckboxBackSeat = checkBox5;
        this.gmCheckboxCarState = checkBox6;
        this.gmCheckboxDelayLock = checkBox7;
        this.gmCheckboxFlankWarning = checkBox8;
        this.gmCheckboxFrogetKey = checkBox9;
        this.gmCheckboxGl8CruiseStart = checkBox10;
        this.gmCheckboxGl8SeatHeating = checkBox11;
        this.gmCheckboxGl8SeatWind = checkBox12;
        this.gmCheckboxPersonByDriver = checkBox13;
        this.gmCheckboxPreventLock = checkBox14;
        this.gmCheckboxRadarState = checkBox15;
        this.gmCheckboxRemoteSeatHeat = checkBox16;
        this.gmCheckboxRemoteStartCar = checkBox17;
        this.gmCheckboxRemoteThenLock = checkBox18;
        this.gmCheckboxRemoteUnlock = checkBox19;
        this.gmCheckboxRemoteWind = checkBox20;
        this.gmCheckboxSeekHeadlight = checkBox21;
        this.gmCheckboxStartLock = checkBox22;
        this.gmCheckboxStartWiperByBack = checkBox23;
        this.gmGl8Layout = linearLayout;
        this.gmRlAirQualitySensor = relativeLayout;
        this.gmRlAutoCollision = relativeLayout2;
        this.gmRlAutoWindSet = relativeLayout3;
        this.gmRlAwayLock = relativeLayout4;
        this.gmRlBackSeat = relativeLayout5;
        this.gmRlCarBodyCtrl = relativeLayout6;
        this.gmRlCarSpeed = relativeLayout7;
        this.gmRlGl8CruiseStart = relativeLayout8;
        this.gmRlGl8RearAir = relativeLayout9;
        this.gmRlGl8RemoteAir = relativeLayout10;
        this.gmRlLan = relativeLayout11;
        this.gmRlLockHeadlightDelay = relativeLayout12;
        this.gmRlNearUnlock = relativeLayout13;
        this.gmRlParkLock = relativeLayout14;
        this.gmRlPartTemp = relativeLayout15;
        this.gmRlRampStart = relativeLayout16;
        this.gmRlRemoteLock = relativeLayout17;
        this.gmRlRemoteUnlockSet = relativeLayout18;
        this.gmRlStartMode = relativeLayout19;
        this.gmRlWaringVol = relativeLayout20;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static GmCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GmCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gm_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static GmCarSetBinding bind(View view) {
        int i = R.id.gm_btn_reset;
        TextView textView = (TextView) view.findViewById(R.id.gm_btn_reset);
        if (textView != null) {
            i = R.id.gm_checkbox_auto_defog_f;
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_defog_f);
            if (checkBox != null) {
                i = R.id.gm_checkbox_auto_defog_r;
                CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_defog_r);
                if (checkBox2 != null) {
                    i = R.id.gm_checkbox_auto_relock;
                    CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_relock);
                    if (checkBox3 != null) {
                        i = R.id.gm_checkbox_auto_wiper;
                        CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_wiper);
                        if (checkBox4 != null) {
                            i = R.id.gm_checkbox_back_seat;
                            CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.gm_checkbox_back_seat);
                            if (checkBox5 != null) {
                                i = R.id.gm_checkbox_car_state;
                                CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.gm_checkbox_car_state);
                                if (checkBox6 != null) {
                                    i = R.id.gm_checkbox_delay_lock;
                                    CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.gm_checkbox_delay_lock);
                                    if (checkBox7 != null) {
                                        i = R.id.gm_checkbox_flank_warning;
                                        CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.gm_checkbox_flank_warning);
                                        if (checkBox8 != null) {
                                            i = R.id.gm_checkbox_froget_key;
                                            CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.gm_checkbox_froget_key);
                                            if (checkBox9 != null) {
                                                i = R.id.gm_checkbox_gl8_cruise_start;
                                                CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.gm_checkbox_gl8_cruise_start);
                                                if (checkBox10 != null) {
                                                    i = R.id.gm_checkbox_gl8_seat_heating;
                                                    CheckBox checkBox11 = (CheckBox) view.findViewById(R.id.gm_checkbox_gl8_seat_heating);
                                                    if (checkBox11 != null) {
                                                        i = R.id.gm_checkbox_gl8_seat_wind;
                                                        CheckBox checkBox12 = (CheckBox) view.findViewById(R.id.gm_checkbox_gl8_seat_wind);
                                                        if (checkBox12 != null) {
                                                            i = R.id.gm_checkbox_person_by_driver;
                                                            CheckBox checkBox13 = (CheckBox) view.findViewById(R.id.gm_checkbox_person_by_driver);
                                                            if (checkBox13 != null) {
                                                                i = R.id.gm_checkbox_prevent_lock;
                                                                CheckBox checkBox14 = (CheckBox) view.findViewById(R.id.gm_checkbox_prevent_lock);
                                                                if (checkBox14 != null) {
                                                                    i = R.id.gm_checkbox_radar_state;
                                                                    CheckBox checkBox15 = (CheckBox) view.findViewById(R.id.gm_checkbox_radar_state);
                                                                    if (checkBox15 != null) {
                                                                        i = R.id.gm_checkbox_remote_seat_heat;
                                                                        CheckBox checkBox16 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_seat_heat);
                                                                        if (checkBox16 != null) {
                                                                            i = R.id.gm_checkbox_remote_start_car;
                                                                            CheckBox checkBox17 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_start_car);
                                                                            if (checkBox17 != null) {
                                                                                i = R.id.gm_checkbox_remote_then_lock;
                                                                                CheckBox checkBox18 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_then_lock);
                                                                                if (checkBox18 != null) {
                                                                                    i = R.id.gm_checkbox_remote_unlock;
                                                                                    CheckBox checkBox19 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_unlock);
                                                                                    if (checkBox19 != null) {
                                                                                        i = R.id.gm_checkbox_remote_wind;
                                                                                        CheckBox checkBox20 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_wind);
                                                                                        if (checkBox20 != null) {
                                                                                            i = R.id.gm_checkbox_seek_headlight;
                                                                                            CheckBox checkBox21 = (CheckBox) view.findViewById(R.id.gm_checkbox_seek_headlight);
                                                                                            if (checkBox21 != null) {
                                                                                                i = R.id.gm_checkbox_start_lock;
                                                                                                CheckBox checkBox22 = (CheckBox) view.findViewById(R.id.gm_checkbox_start_lock);
                                                                                                if (checkBox22 != null) {
                                                                                                    i = R.id.gm_checkbox_start_wiper_by_back;
                                                                                                    CheckBox checkBox23 = (CheckBox) view.findViewById(R.id.gm_checkbox_start_wiper_by_back);
                                                                                                    if (checkBox23 != null) {
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
                                                                                                                                        i = R.id.gm_rl_gl8_cruise_start;
                                                                                                                                        RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.gm_rl_gl8_cruise_start);
                                                                                                                                        if (relativeLayout8 != null) {
                                                                                                                                            i = R.id.gm_rl_gl8_rear_air;
                                                                                                                                            RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.gm_rl_gl8_rear_air);
                                                                                                                                            if (relativeLayout9 != null) {
                                                                                                                                                i = R.id.gm_rl_gl8_remote_air;
                                                                                                                                                RelativeLayout relativeLayout10 = (RelativeLayout) view.findViewById(R.id.gm_rl_gl8_remote_air);
                                                                                                                                                if (relativeLayout10 != null) {
                                                                                                                                                    i = R.id.gm_rl_lan;
                                                                                                                                                    RelativeLayout relativeLayout11 = (RelativeLayout) view.findViewById(R.id.gm_rl_lan);
                                                                                                                                                    if (relativeLayout11 != null) {
                                                                                                                                                        i = R.id.gm_rl_lock_headlight_delay;
                                                                                                                                                        RelativeLayout relativeLayout12 = (RelativeLayout) view.findViewById(R.id.gm_rl_lock_headlight_delay);
                                                                                                                                                        if (relativeLayout12 != null) {
                                                                                                                                                            i = R.id.gm_rl_near_unlock;
                                                                                                                                                            RelativeLayout relativeLayout13 = (RelativeLayout) view.findViewById(R.id.gm_rl_near_unlock);
                                                                                                                                                            if (relativeLayout13 != null) {
                                                                                                                                                                i = R.id.gm_rl_park_lock;
                                                                                                                                                                RelativeLayout relativeLayout14 = (RelativeLayout) view.findViewById(R.id.gm_rl_park_lock);
                                                                                                                                                                if (relativeLayout14 != null) {
                                                                                                                                                                    i = R.id.gm_rl_part_temp;
                                                                                                                                                                    RelativeLayout relativeLayout15 = (RelativeLayout) view.findViewById(R.id.gm_rl_part_temp);
                                                                                                                                                                    if (relativeLayout15 != null) {
                                                                                                                                                                        i = R.id.gm_rl_ramp_start;
                                                                                                                                                                        RelativeLayout relativeLayout16 = (RelativeLayout) view.findViewById(R.id.gm_rl_ramp_start);
                                                                                                                                                                        if (relativeLayout16 != null) {
                                                                                                                                                                            i = R.id.gm_rl_remote_lock;
                                                                                                                                                                            RelativeLayout relativeLayout17 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_lock);
                                                                                                                                                                            if (relativeLayout17 != null) {
                                                                                                                                                                                i = R.id.gm_rl_remote_unlock_set;
                                                                                                                                                                                RelativeLayout relativeLayout18 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_unlock_set);
                                                                                                                                                                                if (relativeLayout18 != null) {
                                                                                                                                                                                    i = R.id.gm_rl_start_mode;
                                                                                                                                                                                    RelativeLayout relativeLayout19 = (RelativeLayout) view.findViewById(R.id.gm_rl_start_mode);
                                                                                                                                                                                    if (relativeLayout19 != null) {
                                                                                                                                                                                        i = R.id.gm_rl_waring_vol;
                                                                                                                                                                                        RelativeLayout relativeLayout20 = (RelativeLayout) view.findViewById(R.id.gm_rl_waring_vol);
                                                                                                                                                                                        if (relativeLayout20 != null) {
                                                                                                                                                                                            return new GmCarSetBinding((ScrollView) view, textView, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, checkBox11, checkBox12, checkBox13, checkBox14, checkBox15, checkBox16, checkBox17, checkBox18, checkBox19, checkBox20, checkBox21, checkBox22, checkBox23, linearLayout, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, relativeLayout10, relativeLayout11, relativeLayout12, relativeLayout13, relativeLayout14, relativeLayout15, relativeLayout16, relativeLayout17, relativeLayout18, relativeLayout19, relativeLayout20);
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
