package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class GmHdCarSetBinding implements ViewBinding {
    public final CheckBox gmCheckbox24GHzRadar;
    public final CheckBox gmCheckboxAutoDefogF;
    public final CheckBox gmCheckboxAutoDefogR;
    public final CheckBox gmCheckboxAutoLock;
    public final CheckBox gmCheckboxAutoWiper;
    public final CheckBox gmCheckboxBacklightState;
    public final CheckBox gmCheckboxCarState;
    public final CheckBox gmCheckboxDelayLock;
    public final CheckBox gmCheckboxDriverPersonality;
    public final CheckBox gmCheckboxDriverSeatMode;
    public final CheckBox gmCheckboxFlankWarningSys;
    public final CheckBox gmCheckboxFrogetKey;
    public final CheckBox gmCheckboxHybridEceo;
    public final CheckBox gmCheckboxKeyIdentify;
    public final CheckBox gmCheckboxLeftTurnLights;
    public final CheckBox gmCheckboxMeterMedia;
    public final CheckBox gmCheckboxParkingAssistSys;
    public final CheckBox gmCheckboxPreventLock;
    public final CheckBox gmCheckboxRearviewMirror;
    public final CheckBox gmCheckboxRearviewMirror1;
    public final CheckBox gmCheckboxRelockOpen;
    public final CheckBox gmCheckboxRemoteRelock;
    public final CheckBox gmCheckboxRemoteSeatHeat;
    public final CheckBox gmCheckboxRemoteSeatVentilation;
    public final CheckBox gmCheckboxRemoteStart;
    public final CheckBox gmCheckboxRemoteStartSet;
    public final CheckBox gmCheckboxRemoteWind;
    public final CheckBox gmCheckboxRerverWiper;
    public final CheckBox gmCheckboxRightTurnLights;
    public final CheckBox gmCheckboxSeatHeating;
    public final CheckBox gmCheckboxSeatVentilation;
    public final CheckBox gmCheckboxSeekHeadlight;
    public final CheckBox gmCheckboxSteeringColumn1;
    public final RelativeLayout gmRl24GHzRadar;
    public final RelativeLayout gmRlAirMode;
    public final RelativeLayout gmRlAirQualitySensor;
    public final RelativeLayout gmRlAirQualitySensor2;
    public final RelativeLayout gmRlAntiCollisionAlarm;
    public final RelativeLayout gmRlAutoCollision;
    public final RelativeLayout gmRlAutoDefogF;
    public final RelativeLayout gmRlAutoDefogR;
    public final RelativeLayout gmRlAutoLock;
    public final RelativeLayout gmRlAutoTempCtrl;
    public final RelativeLayout gmRlAutoUnlockA;
    public final RelativeLayout gmRlAutoUnlockM;
    public final RelativeLayout gmRlAutoWindSet;
    public final RelativeLayout gmRlAutoWiper;
    public final RelativeLayout gmRlAwayLock1;
    public final RelativeLayout gmRlBacklightState;
    public final RelativeLayout gmRlCarState;
    public final RelativeLayout gmRlDelayLock;
    public final RelativeLayout gmRlDriverPersonality;
    public final RelativeLayout gmRlDriverSeatMode;
    public final RelativeLayout gmRlEngineState;
    public final RelativeLayout gmRlFlankWarningSys;
    public final RelativeLayout gmRlFrogetKey;
    public final RelativeLayout gmRlHybridEceo;
    public final RelativeLayout gmRlKeyIdentify;
    public final RelativeLayout gmRlLeftTurnLights;
    public final RelativeLayout gmRlLockHeadlightDelay;
    public final RelativeLayout gmRlMeterMedia;
    public final RelativeLayout gmRlNearUnlock;
    public final RelativeLayout gmRlParkingAssistSys;
    public final RelativeLayout gmRlParkingAssistSys1;
    public final RelativeLayout gmRlPreventLock;
    public final RelativeLayout gmRlRampSupportSys;
    public final RelativeLayout gmRlRearTempCtrl;
    public final RelativeLayout gmRlRearviewMirror;
    public final RelativeLayout gmRlRearviewMirror1;
    public final RelativeLayout gmRlRelockOpen;
    public final RelativeLayout gmRlRemoteLockFb;
    public final RelativeLayout gmRlRemoteRelock;
    public final RelativeLayout gmRlRemoteSeatHeat;
    public final RelativeLayout gmRlRemoteSeatHeat2;
    public final RelativeLayout gmRlRemoteSeatVentilation;
    public final RelativeLayout gmRlRemoteSliderDoor;
    public final RelativeLayout gmRlRemoteStart;
    public final RelativeLayout gmRlRemoteStartSet;
    public final RelativeLayout gmRlRemoteUnlockFb;
    public final RelativeLayout gmRlRemoteUnlockSet;
    public final RelativeLayout gmRlRemoteWind;
    public final RelativeLayout gmRlRerverWiper;
    public final RelativeLayout gmRlRightTurnLights;
    public final RelativeLayout gmRlSeatHeating;
    public final RelativeLayout gmRlSeatVentilation;
    public final RelativeLayout gmRlSeekHeadlight;
    public final RelativeLayout gmRlSpeedRange;
    public final RelativeLayout gmRlSteeringColumn;
    public final RelativeLayout gmRlSteeringColumn1;
    private final ScrollView rootView;

    private GmHdCarSetBinding(ScrollView scrollView, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, CheckBox checkBox12, CheckBox checkBox13, CheckBox checkBox14, CheckBox checkBox15, CheckBox checkBox16, CheckBox checkBox17, CheckBox checkBox18, CheckBox checkBox19, CheckBox checkBox20, CheckBox checkBox21, CheckBox checkBox22, CheckBox checkBox23, CheckBox checkBox24, CheckBox checkBox25, CheckBox checkBox26, CheckBox checkBox27, CheckBox checkBox28, CheckBox checkBox29, CheckBox checkBox30, CheckBox checkBox31, CheckBox checkBox32, CheckBox checkBox33, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, RelativeLayout relativeLayout10, RelativeLayout relativeLayout11, RelativeLayout relativeLayout12, RelativeLayout relativeLayout13, RelativeLayout relativeLayout14, RelativeLayout relativeLayout15, RelativeLayout relativeLayout16, RelativeLayout relativeLayout17, RelativeLayout relativeLayout18, RelativeLayout relativeLayout19, RelativeLayout relativeLayout20, RelativeLayout relativeLayout21, RelativeLayout relativeLayout22, RelativeLayout relativeLayout23, RelativeLayout relativeLayout24, RelativeLayout relativeLayout25, RelativeLayout relativeLayout26, RelativeLayout relativeLayout27, RelativeLayout relativeLayout28, RelativeLayout relativeLayout29, RelativeLayout relativeLayout30, RelativeLayout relativeLayout31, RelativeLayout relativeLayout32, RelativeLayout relativeLayout33, RelativeLayout relativeLayout34, RelativeLayout relativeLayout35, RelativeLayout relativeLayout36, RelativeLayout relativeLayout37, RelativeLayout relativeLayout38, RelativeLayout relativeLayout39, RelativeLayout relativeLayout40, RelativeLayout relativeLayout41, RelativeLayout relativeLayout42, RelativeLayout relativeLayout43, RelativeLayout relativeLayout44, RelativeLayout relativeLayout45, RelativeLayout relativeLayout46, RelativeLayout relativeLayout47, RelativeLayout relativeLayout48, RelativeLayout relativeLayout49, RelativeLayout relativeLayout50, RelativeLayout relativeLayout51, RelativeLayout relativeLayout52, RelativeLayout relativeLayout53, RelativeLayout relativeLayout54, RelativeLayout relativeLayout55, RelativeLayout relativeLayout56) {
        this.rootView = scrollView;
        this.gmCheckbox24GHzRadar = checkBox;
        this.gmCheckboxAutoDefogF = checkBox2;
        this.gmCheckboxAutoDefogR = checkBox3;
        this.gmCheckboxAutoLock = checkBox4;
        this.gmCheckboxAutoWiper = checkBox5;
        this.gmCheckboxBacklightState = checkBox6;
        this.gmCheckboxCarState = checkBox7;
        this.gmCheckboxDelayLock = checkBox8;
        this.gmCheckboxDriverPersonality = checkBox9;
        this.gmCheckboxDriverSeatMode = checkBox10;
        this.gmCheckboxFlankWarningSys = checkBox11;
        this.gmCheckboxFrogetKey = checkBox12;
        this.gmCheckboxHybridEceo = checkBox13;
        this.gmCheckboxKeyIdentify = checkBox14;
        this.gmCheckboxLeftTurnLights = checkBox15;
        this.gmCheckboxMeterMedia = checkBox16;
        this.gmCheckboxParkingAssistSys = checkBox17;
        this.gmCheckboxPreventLock = checkBox18;
        this.gmCheckboxRearviewMirror = checkBox19;
        this.gmCheckboxRearviewMirror1 = checkBox20;
        this.gmCheckboxRelockOpen = checkBox21;
        this.gmCheckboxRemoteRelock = checkBox22;
        this.gmCheckboxRemoteSeatHeat = checkBox23;
        this.gmCheckboxRemoteSeatVentilation = checkBox24;
        this.gmCheckboxRemoteStart = checkBox25;
        this.gmCheckboxRemoteStartSet = checkBox26;
        this.gmCheckboxRemoteWind = checkBox27;
        this.gmCheckboxRerverWiper = checkBox28;
        this.gmCheckboxRightTurnLights = checkBox29;
        this.gmCheckboxSeatHeating = checkBox30;
        this.gmCheckboxSeatVentilation = checkBox31;
        this.gmCheckboxSeekHeadlight = checkBox32;
        this.gmCheckboxSteeringColumn1 = checkBox33;
        this.gmRl24GHzRadar = relativeLayout;
        this.gmRlAirMode = relativeLayout2;
        this.gmRlAirQualitySensor = relativeLayout3;
        this.gmRlAirQualitySensor2 = relativeLayout4;
        this.gmRlAntiCollisionAlarm = relativeLayout5;
        this.gmRlAutoCollision = relativeLayout6;
        this.gmRlAutoDefogF = relativeLayout7;
        this.gmRlAutoDefogR = relativeLayout8;
        this.gmRlAutoLock = relativeLayout9;
        this.gmRlAutoTempCtrl = relativeLayout10;
        this.gmRlAutoUnlockA = relativeLayout11;
        this.gmRlAutoUnlockM = relativeLayout12;
        this.gmRlAutoWindSet = relativeLayout13;
        this.gmRlAutoWiper = relativeLayout14;
        this.gmRlAwayLock1 = relativeLayout15;
        this.gmRlBacklightState = relativeLayout16;
        this.gmRlCarState = relativeLayout17;
        this.gmRlDelayLock = relativeLayout18;
        this.gmRlDriverPersonality = relativeLayout19;
        this.gmRlDriverSeatMode = relativeLayout20;
        this.gmRlEngineState = relativeLayout21;
        this.gmRlFlankWarningSys = relativeLayout22;
        this.gmRlFrogetKey = relativeLayout23;
        this.gmRlHybridEceo = relativeLayout24;
        this.gmRlKeyIdentify = relativeLayout25;
        this.gmRlLeftTurnLights = relativeLayout26;
        this.gmRlLockHeadlightDelay = relativeLayout27;
        this.gmRlMeterMedia = relativeLayout28;
        this.gmRlNearUnlock = relativeLayout29;
        this.gmRlParkingAssistSys = relativeLayout30;
        this.gmRlParkingAssistSys1 = relativeLayout31;
        this.gmRlPreventLock = relativeLayout32;
        this.gmRlRampSupportSys = relativeLayout33;
        this.gmRlRearTempCtrl = relativeLayout34;
        this.gmRlRearviewMirror = relativeLayout35;
        this.gmRlRearviewMirror1 = relativeLayout36;
        this.gmRlRelockOpen = relativeLayout37;
        this.gmRlRemoteLockFb = relativeLayout38;
        this.gmRlRemoteRelock = relativeLayout39;
        this.gmRlRemoteSeatHeat = relativeLayout40;
        this.gmRlRemoteSeatHeat2 = relativeLayout41;
        this.gmRlRemoteSeatVentilation = relativeLayout42;
        this.gmRlRemoteSliderDoor = relativeLayout43;
        this.gmRlRemoteStart = relativeLayout44;
        this.gmRlRemoteStartSet = relativeLayout45;
        this.gmRlRemoteUnlockFb = relativeLayout46;
        this.gmRlRemoteUnlockSet = relativeLayout47;
        this.gmRlRemoteWind = relativeLayout48;
        this.gmRlRerverWiper = relativeLayout49;
        this.gmRlRightTurnLights = relativeLayout50;
        this.gmRlSeatHeating = relativeLayout51;
        this.gmRlSeatVentilation = relativeLayout52;
        this.gmRlSeekHeadlight = relativeLayout53;
        this.gmRlSpeedRange = relativeLayout54;
        this.gmRlSteeringColumn = relativeLayout55;
        this.gmRlSteeringColumn1 = relativeLayout56;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static GmHdCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GmHdCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gm_hd_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static GmHdCarSetBinding bind(View view) {
        int i = R.id.gm_checkbox_24GHz_radar;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.gm_checkbox_24GHz_radar);
        if (checkBox != null) {
            i = R.id.gm_checkbox_auto_defog_f;
            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_defog_f);
            if (checkBox2 != null) {
                i = R.id.gm_checkbox_auto_defog_r;
                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_defog_r);
                if (checkBox3 != null) {
                    i = R.id.gm_checkbox_auto_lock;
                    CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_lock);
                    if (checkBox4 != null) {
                        i = R.id.gm_checkbox_auto_wiper;
                        CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.gm_checkbox_auto_wiper);
                        if (checkBox5 != null) {
                            i = R.id.gm_checkbox_backlight_state;
                            CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.gm_checkbox_backlight_state);
                            if (checkBox6 != null) {
                                i = R.id.gm_checkbox_car_state;
                                CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.gm_checkbox_car_state);
                                if (checkBox7 != null) {
                                    i = R.id.gm_checkbox_delay_lock;
                                    CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.gm_checkbox_delay_lock);
                                    if (checkBox8 != null) {
                                        i = R.id.gm_checkbox_driver_personality;
                                        CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.gm_checkbox_driver_personality);
                                        if (checkBox9 != null) {
                                            i = R.id.gm_checkbox_driver_seat_mode;
                                            CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.gm_checkbox_driver_seat_mode);
                                            if (checkBox10 != null) {
                                                i = R.id.gm_checkbox_flank_warning_sys;
                                                CheckBox checkBox11 = (CheckBox) view.findViewById(R.id.gm_checkbox_flank_warning_sys);
                                                if (checkBox11 != null) {
                                                    i = R.id.gm_checkbox_froget_key;
                                                    CheckBox checkBox12 = (CheckBox) view.findViewById(R.id.gm_checkbox_froget_key);
                                                    if (checkBox12 != null) {
                                                        i = R.id.gm_checkbox_hybrid_eceo;
                                                        CheckBox checkBox13 = (CheckBox) view.findViewById(R.id.gm_checkbox_hybrid_eceo);
                                                        if (checkBox13 != null) {
                                                            i = R.id.gm_checkbox_key_identify;
                                                            CheckBox checkBox14 = (CheckBox) view.findViewById(R.id.gm_checkbox_key_identify);
                                                            if (checkBox14 != null) {
                                                                i = R.id.gm_checkbox_left_turn_lights;
                                                                CheckBox checkBox15 = (CheckBox) view.findViewById(R.id.gm_checkbox_left_turn_lights);
                                                                if (checkBox15 != null) {
                                                                    i = R.id.gm_checkbox_meter_media;
                                                                    CheckBox checkBox16 = (CheckBox) view.findViewById(R.id.gm_checkbox_meter_media);
                                                                    if (checkBox16 != null) {
                                                                        i = R.id.gm_checkbox_parking_assist_sys;
                                                                        CheckBox checkBox17 = (CheckBox) view.findViewById(R.id.gm_checkbox_parking_assist_sys);
                                                                        if (checkBox17 != null) {
                                                                            i = R.id.gm_checkbox_prevent_lock;
                                                                            CheckBox checkBox18 = (CheckBox) view.findViewById(R.id.gm_checkbox_prevent_lock);
                                                                            if (checkBox18 != null) {
                                                                                i = R.id.gm_checkbox_rearview_mirror;
                                                                                CheckBox checkBox19 = (CheckBox) view.findViewById(R.id.gm_checkbox_rearview_mirror);
                                                                                if (checkBox19 != null) {
                                                                                    i = R.id.gm_checkbox_rearview_mirror1;
                                                                                    CheckBox checkBox20 = (CheckBox) view.findViewById(R.id.gm_checkbox_rearview_mirror1);
                                                                                    if (checkBox20 != null) {
                                                                                        i = R.id.gm_checkbox_relock_open;
                                                                                        CheckBox checkBox21 = (CheckBox) view.findViewById(R.id.gm_checkbox_relock_open);
                                                                                        if (checkBox21 != null) {
                                                                                            i = R.id.gm_checkbox_remote_relock;
                                                                                            CheckBox checkBox22 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_relock);
                                                                                            if (checkBox22 != null) {
                                                                                                i = R.id.gm_checkbox_remote_seat_heat;
                                                                                                CheckBox checkBox23 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_seat_heat);
                                                                                                if (checkBox23 != null) {
                                                                                                    i = R.id.gm_checkbox_remote_seat_ventilation;
                                                                                                    CheckBox checkBox24 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_seat_ventilation);
                                                                                                    if (checkBox24 != null) {
                                                                                                        i = R.id.gm_checkbox_remote_start;
                                                                                                        CheckBox checkBox25 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_start);
                                                                                                        if (checkBox25 != null) {
                                                                                                            i = R.id.gm_checkbox_remote_start_set;
                                                                                                            CheckBox checkBox26 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_start_set);
                                                                                                            if (checkBox26 != null) {
                                                                                                                i = R.id.gm_checkbox_remote_wind;
                                                                                                                CheckBox checkBox27 = (CheckBox) view.findViewById(R.id.gm_checkbox_remote_wind);
                                                                                                                if (checkBox27 != null) {
                                                                                                                    i = R.id.gm_checkbox_rerver_wiper;
                                                                                                                    CheckBox checkBox28 = (CheckBox) view.findViewById(R.id.gm_checkbox_rerver_wiper);
                                                                                                                    if (checkBox28 != null) {
                                                                                                                        i = R.id.gm_checkbox_right_turn_lights;
                                                                                                                        CheckBox checkBox29 = (CheckBox) view.findViewById(R.id.gm_checkbox_right_turn_lights);
                                                                                                                        if (checkBox29 != null) {
                                                                                                                            i = R.id.gm_checkbox_seat_heating;
                                                                                                                            CheckBox checkBox30 = (CheckBox) view.findViewById(R.id.gm_checkbox_seat_heating);
                                                                                                                            if (checkBox30 != null) {
                                                                                                                                i = R.id.gm_checkbox_seat_ventilation;
                                                                                                                                CheckBox checkBox31 = (CheckBox) view.findViewById(R.id.gm_checkbox_seat_ventilation);
                                                                                                                                if (checkBox31 != null) {
                                                                                                                                    i = R.id.gm_checkbox_seek_headlight;
                                                                                                                                    CheckBox checkBox32 = (CheckBox) view.findViewById(R.id.gm_checkbox_seek_headlight);
                                                                                                                                    if (checkBox32 != null) {
                                                                                                                                        i = R.id.gm_checkbox_steering_column1;
                                                                                                                                        CheckBox checkBox33 = (CheckBox) view.findViewById(R.id.gm_checkbox_steering_column1);
                                                                                                                                        if (checkBox33 != null) {
                                                                                                                                            i = R.id.gm_rl_24GHz_radar;
                                                                                                                                            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.gm_rl_24GHz_radar);
                                                                                                                                            if (relativeLayout != null) {
                                                                                                                                                i = R.id.gm_rl_air_mode;
                                                                                                                                                RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.gm_rl_air_mode);
                                                                                                                                                if (relativeLayout2 != null) {
                                                                                                                                                    i = R.id.gm_rl_air_quality_sensor;
                                                                                                                                                    RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.gm_rl_air_quality_sensor);
                                                                                                                                                    if (relativeLayout3 != null) {
                                                                                                                                                        i = R.id.gm_rl_air_quality_sensor2;
                                                                                                                                                        RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.gm_rl_air_quality_sensor2);
                                                                                                                                                        if (relativeLayout4 != null) {
                                                                                                                                                            i = R.id.gm_rl_anti_collision_alarm;
                                                                                                                                                            RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.gm_rl_anti_collision_alarm);
                                                                                                                                                            if (relativeLayout5 != null) {
                                                                                                                                                                i = R.id.gm_rl_auto_collision;
                                                                                                                                                                RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_collision);
                                                                                                                                                                if (relativeLayout6 != null) {
                                                                                                                                                                    i = R.id.gm_rl_auto_defog_f;
                                                                                                                                                                    RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_defog_f);
                                                                                                                                                                    if (relativeLayout7 != null) {
                                                                                                                                                                        i = R.id.gm_rl_auto_defog_r;
                                                                                                                                                                        RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_defog_r);
                                                                                                                                                                        if (relativeLayout8 != null) {
                                                                                                                                                                            i = R.id.gm_rl_auto_lock;
                                                                                                                                                                            RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_lock);
                                                                                                                                                                            if (relativeLayout9 != null) {
                                                                                                                                                                                i = R.id.gm_rl_auto_temp_ctrl;
                                                                                                                                                                                RelativeLayout relativeLayout10 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_temp_ctrl);
                                                                                                                                                                                if (relativeLayout10 != null) {
                                                                                                                                                                                    i = R.id.gm_rl_auto_unlock_a;
                                                                                                                                                                                    RelativeLayout relativeLayout11 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_unlock_a);
                                                                                                                                                                                    if (relativeLayout11 != null) {
                                                                                                                                                                                        i = R.id.gm_rl_auto_unlock_m;
                                                                                                                                                                                        RelativeLayout relativeLayout12 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_unlock_m);
                                                                                                                                                                                        if (relativeLayout12 != null) {
                                                                                                                                                                                            i = R.id.gm_rl_auto_wind_set;
                                                                                                                                                                                            RelativeLayout relativeLayout13 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_wind_set);
                                                                                                                                                                                            if (relativeLayout13 != null) {
                                                                                                                                                                                                i = R.id.gm_rl_auto_wiper;
                                                                                                                                                                                                RelativeLayout relativeLayout14 = (RelativeLayout) view.findViewById(R.id.gm_rl_auto_wiper);
                                                                                                                                                                                                if (relativeLayout14 != null) {
                                                                                                                                                                                                    i = R.id.gm_rl_away_lock1;
                                                                                                                                                                                                    RelativeLayout relativeLayout15 = (RelativeLayout) view.findViewById(R.id.gm_rl_away_lock1);
                                                                                                                                                                                                    if (relativeLayout15 != null) {
                                                                                                                                                                                                        i = R.id.gm_rl_backlight_state;
                                                                                                                                                                                                        RelativeLayout relativeLayout16 = (RelativeLayout) view.findViewById(R.id.gm_rl_backlight_state);
                                                                                                                                                                                                        if (relativeLayout16 != null) {
                                                                                                                                                                                                            i = R.id.gm_rl_car_state;
                                                                                                                                                                                                            RelativeLayout relativeLayout17 = (RelativeLayout) view.findViewById(R.id.gm_rl_car_state);
                                                                                                                                                                                                            if (relativeLayout17 != null) {
                                                                                                                                                                                                                i = R.id.gm_rl_delay_lock;
                                                                                                                                                                                                                RelativeLayout relativeLayout18 = (RelativeLayout) view.findViewById(R.id.gm_rl_delay_lock);
                                                                                                                                                                                                                if (relativeLayout18 != null) {
                                                                                                                                                                                                                    i = R.id.gm_rl_driver_personality;
                                                                                                                                                                                                                    RelativeLayout relativeLayout19 = (RelativeLayout) view.findViewById(R.id.gm_rl_driver_personality);
                                                                                                                                                                                                                    if (relativeLayout19 != null) {
                                                                                                                                                                                                                        i = R.id.gm_rl_driver_seat_mode;
                                                                                                                                                                                                                        RelativeLayout relativeLayout20 = (RelativeLayout) view.findViewById(R.id.gm_rl_driver_seat_mode);
                                                                                                                                                                                                                        if (relativeLayout20 != null) {
                                                                                                                                                                                                                            i = R.id.gm_rl_engine_state;
                                                                                                                                                                                                                            RelativeLayout relativeLayout21 = (RelativeLayout) view.findViewById(R.id.gm_rl_engine_state);
                                                                                                                                                                                                                            if (relativeLayout21 != null) {
                                                                                                                                                                                                                                i = R.id.gm_rl_flank_warning_sys;
                                                                                                                                                                                                                                RelativeLayout relativeLayout22 = (RelativeLayout) view.findViewById(R.id.gm_rl_flank_warning_sys);
                                                                                                                                                                                                                                if (relativeLayout22 != null) {
                                                                                                                                                                                                                                    i = R.id.gm_rl_froget_key;
                                                                                                                                                                                                                                    RelativeLayout relativeLayout23 = (RelativeLayout) view.findViewById(R.id.gm_rl_froget_key);
                                                                                                                                                                                                                                    if (relativeLayout23 != null) {
                                                                                                                                                                                                                                        i = R.id.gm_rl_hybrid_eceo;
                                                                                                                                                                                                                                        RelativeLayout relativeLayout24 = (RelativeLayout) view.findViewById(R.id.gm_rl_hybrid_eceo);
                                                                                                                                                                                                                                        if (relativeLayout24 != null) {
                                                                                                                                                                                                                                            i = R.id.gm_rl_key_identify;
                                                                                                                                                                                                                                            RelativeLayout relativeLayout25 = (RelativeLayout) view.findViewById(R.id.gm_rl_key_identify);
                                                                                                                                                                                                                                            if (relativeLayout25 != null) {
                                                                                                                                                                                                                                                i = R.id.gm_rl_left_turn_lights;
                                                                                                                                                                                                                                                RelativeLayout relativeLayout26 = (RelativeLayout) view.findViewById(R.id.gm_rl_left_turn_lights);
                                                                                                                                                                                                                                                if (relativeLayout26 != null) {
                                                                                                                                                                                                                                                    i = R.id.gm_rl_lock_headlight_delay;
                                                                                                                                                                                                                                                    RelativeLayout relativeLayout27 = (RelativeLayout) view.findViewById(R.id.gm_rl_lock_headlight_delay);
                                                                                                                                                                                                                                                    if (relativeLayout27 != null) {
                                                                                                                                                                                                                                                        i = R.id.gm_rl_meter_media;
                                                                                                                                                                                                                                                        RelativeLayout relativeLayout28 = (RelativeLayout) view.findViewById(R.id.gm_rl_meter_media);
                                                                                                                                                                                                                                                        if (relativeLayout28 != null) {
                                                                                                                                                                                                                                                            i = R.id.gm_rl_near_unlock;
                                                                                                                                                                                                                                                            RelativeLayout relativeLayout29 = (RelativeLayout) view.findViewById(R.id.gm_rl_near_unlock);
                                                                                                                                                                                                                                                            if (relativeLayout29 != null) {
                                                                                                                                                                                                                                                                i = R.id.gm_rl_parking_assist_sys;
                                                                                                                                                                                                                                                                RelativeLayout relativeLayout30 = (RelativeLayout) view.findViewById(R.id.gm_rl_parking_assist_sys);
                                                                                                                                                                                                                                                                if (relativeLayout30 != null) {
                                                                                                                                                                                                                                                                    i = R.id.gm_rl_parking_assist_sys1;
                                                                                                                                                                                                                                                                    RelativeLayout relativeLayout31 = (RelativeLayout) view.findViewById(R.id.gm_rl_parking_assist_sys1);
                                                                                                                                                                                                                                                                    if (relativeLayout31 != null) {
                                                                                                                                                                                                                                                                        i = R.id.gm_rl_prevent_lock;
                                                                                                                                                                                                                                                                        RelativeLayout relativeLayout32 = (RelativeLayout) view.findViewById(R.id.gm_rl_prevent_lock);
                                                                                                                                                                                                                                                                        if (relativeLayout32 != null) {
                                                                                                                                                                                                                                                                            i = R.id.gm_rl_ramp_support_sys;
                                                                                                                                                                                                                                                                            RelativeLayout relativeLayout33 = (RelativeLayout) view.findViewById(R.id.gm_rl_ramp_support_sys);
                                                                                                                                                                                                                                                                            if (relativeLayout33 != null) {
                                                                                                                                                                                                                                                                                i = R.id.gm_rl_rear_temp_ctrl;
                                                                                                                                                                                                                                                                                RelativeLayout relativeLayout34 = (RelativeLayout) view.findViewById(R.id.gm_rl_rear_temp_ctrl);
                                                                                                                                                                                                                                                                                if (relativeLayout34 != null) {
                                                                                                                                                                                                                                                                                    i = R.id.gm_rl_rearview_mirror;
                                                                                                                                                                                                                                                                                    RelativeLayout relativeLayout35 = (RelativeLayout) view.findViewById(R.id.gm_rl_rearview_mirror);
                                                                                                                                                                                                                                                                                    if (relativeLayout35 != null) {
                                                                                                                                                                                                                                                                                        i = R.id.gm_rl_rearview_mirror1;
                                                                                                                                                                                                                                                                                        RelativeLayout relativeLayout36 = (RelativeLayout) view.findViewById(R.id.gm_rl_rearview_mirror1);
                                                                                                                                                                                                                                                                                        if (relativeLayout36 != null) {
                                                                                                                                                                                                                                                                                            i = R.id.gm_rl_relock_open;
                                                                                                                                                                                                                                                                                            RelativeLayout relativeLayout37 = (RelativeLayout) view.findViewById(R.id.gm_rl_relock_open);
                                                                                                                                                                                                                                                                                            if (relativeLayout37 != null) {
                                                                                                                                                                                                                                                                                                i = R.id.gm_rl_remote_lock_fb;
                                                                                                                                                                                                                                                                                                RelativeLayout relativeLayout38 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_lock_fb);
                                                                                                                                                                                                                                                                                                if (relativeLayout38 != null) {
                                                                                                                                                                                                                                                                                                    i = R.id.gm_rl_remote_relock;
                                                                                                                                                                                                                                                                                                    RelativeLayout relativeLayout39 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_relock);
                                                                                                                                                                                                                                                                                                    if (relativeLayout39 != null) {
                                                                                                                                                                                                                                                                                                        i = R.id.gm_rl_remote_seat_heat;
                                                                                                                                                                                                                                                                                                        RelativeLayout relativeLayout40 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_seat_heat);
                                                                                                                                                                                                                                                                                                        if (relativeLayout40 != null) {
                                                                                                                                                                                                                                                                                                            i = R.id.gm_rl_remote_seat_heat2;
                                                                                                                                                                                                                                                                                                            RelativeLayout relativeLayout41 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_seat_heat2);
                                                                                                                                                                                                                                                                                                            if (relativeLayout41 != null) {
                                                                                                                                                                                                                                                                                                                i = R.id.gm_rl_remote_seat_ventilation;
                                                                                                                                                                                                                                                                                                                RelativeLayout relativeLayout42 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_seat_ventilation);
                                                                                                                                                                                                                                                                                                                if (relativeLayout42 != null) {
                                                                                                                                                                                                                                                                                                                    i = R.id.gm_rl_remote_slider_door;
                                                                                                                                                                                                                                                                                                                    RelativeLayout relativeLayout43 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_slider_door);
                                                                                                                                                                                                                                                                                                                    if (relativeLayout43 != null) {
                                                                                                                                                                                                                                                                                                                        i = R.id.gm_rl_remote_start;
                                                                                                                                                                                                                                                                                                                        RelativeLayout relativeLayout44 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_start);
                                                                                                                                                                                                                                                                                                                        if (relativeLayout44 != null) {
                                                                                                                                                                                                                                                                                                                            i = R.id.gm_rl_remote_start_set;
                                                                                                                                                                                                                                                                                                                            RelativeLayout relativeLayout45 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_start_set);
                                                                                                                                                                                                                                                                                                                            if (relativeLayout45 != null) {
                                                                                                                                                                                                                                                                                                                                i = R.id.gm_rl_remote_unlock_fb;
                                                                                                                                                                                                                                                                                                                                RelativeLayout relativeLayout46 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_unlock_fb);
                                                                                                                                                                                                                                                                                                                                if (relativeLayout46 != null) {
                                                                                                                                                                                                                                                                                                                                    i = R.id.gm_rl_remote_unlock_set;
                                                                                                                                                                                                                                                                                                                                    RelativeLayout relativeLayout47 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_unlock_set);
                                                                                                                                                                                                                                                                                                                                    if (relativeLayout47 != null) {
                                                                                                                                                                                                                                                                                                                                        i = R.id.gm_rl_remote_wind;
                                                                                                                                                                                                                                                                                                                                        RelativeLayout relativeLayout48 = (RelativeLayout) view.findViewById(R.id.gm_rl_remote_wind);
                                                                                                                                                                                                                                                                                                                                        if (relativeLayout48 != null) {
                                                                                                                                                                                                                                                                                                                                            i = R.id.gm_rl_rerver_wiper;
                                                                                                                                                                                                                                                                                                                                            RelativeLayout relativeLayout49 = (RelativeLayout) view.findViewById(R.id.gm_rl_rerver_wiper);
                                                                                                                                                                                                                                                                                                                                            if (relativeLayout49 != null) {
                                                                                                                                                                                                                                                                                                                                                i = R.id.gm_rl_right_turn_lights;
                                                                                                                                                                                                                                                                                                                                                RelativeLayout relativeLayout50 = (RelativeLayout) view.findViewById(R.id.gm_rl_right_turn_lights);
                                                                                                                                                                                                                                                                                                                                                if (relativeLayout50 != null) {
                                                                                                                                                                                                                                                                                                                                                    i = R.id.gm_rl_seat_heating;
                                                                                                                                                                                                                                                                                                                                                    RelativeLayout relativeLayout51 = (RelativeLayout) view.findViewById(R.id.gm_rl_seat_heating);
                                                                                                                                                                                                                                                                                                                                                    if (relativeLayout51 != null) {
                                                                                                                                                                                                                                                                                                                                                        i = R.id.gm_rl_seat_ventilation;
                                                                                                                                                                                                                                                                                                                                                        RelativeLayout relativeLayout52 = (RelativeLayout) view.findViewById(R.id.gm_rl_seat_ventilation);
                                                                                                                                                                                                                                                                                                                                                        if (relativeLayout52 != null) {
                                                                                                                                                                                                                                                                                                                                                            i = R.id.gm_rl_seek_headlight;
                                                                                                                                                                                                                                                                                                                                                            RelativeLayout relativeLayout53 = (RelativeLayout) view.findViewById(R.id.gm_rl_seek_headlight);
                                                                                                                                                                                                                                                                                                                                                            if (relativeLayout53 != null) {
                                                                                                                                                                                                                                                                                                                                                                i = R.id.gm_rl_speed_range;
                                                                                                                                                                                                                                                                                                                                                                RelativeLayout relativeLayout54 = (RelativeLayout) view.findViewById(R.id.gm_rl_speed_range);
                                                                                                                                                                                                                                                                                                                                                                if (relativeLayout54 != null) {
                                                                                                                                                                                                                                                                                                                                                                    i = R.id.gm_rl_steering_column;
                                                                                                                                                                                                                                                                                                                                                                    RelativeLayout relativeLayout55 = (RelativeLayout) view.findViewById(R.id.gm_rl_steering_column);
                                                                                                                                                                                                                                                                                                                                                                    if (relativeLayout55 != null) {
                                                                                                                                                                                                                                                                                                                                                                        i = R.id.gm_rl_steering_column1;
                                                                                                                                                                                                                                                                                                                                                                        RelativeLayout relativeLayout56 = (RelativeLayout) view.findViewById(R.id.gm_rl_steering_column1);
                                                                                                                                                                                                                                                                                                                                                                        if (relativeLayout56 != null) {
                                                                                                                                                                                                                                                                                                                                                                            return new GmHdCarSetBinding((ScrollView) view, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, checkBox11, checkBox12, checkBox13, checkBox14, checkBox15, checkBox16, checkBox17, checkBox18, checkBox19, checkBox20, checkBox21, checkBox22, checkBox23, checkBox24, checkBox25, checkBox26, checkBox27, checkBox28, checkBox29, checkBox30, checkBox31, checkBox32, checkBox33, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, relativeLayout10, relativeLayout11, relativeLayout12, relativeLayout13, relativeLayout14, relativeLayout15, relativeLayout16, relativeLayout17, relativeLayout18, relativeLayout19, relativeLayout20, relativeLayout21, relativeLayout22, relativeLayout23, relativeLayout24, relativeLayout25, relativeLayout26, relativeLayout27, relativeLayout28, relativeLayout29, relativeLayout30, relativeLayout31, relativeLayout32, relativeLayout33, relativeLayout34, relativeLayout35, relativeLayout36, relativeLayout37, relativeLayout38, relativeLayout39, relativeLayout40, relativeLayout41, relativeLayout42, relativeLayout43, relativeLayout44, relativeLayout45, relativeLayout46, relativeLayout47, relativeLayout48, relativeLayout49, relativeLayout50, relativeLayout51, relativeLayout52, relativeLayout53, relativeLayout54, relativeLayout55, relativeLayout56);
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
