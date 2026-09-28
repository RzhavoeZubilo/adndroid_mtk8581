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
public final class CheryCarSetBinding implements ViewBinding {
    public final LinearLayout cheryArz7Layout;
    public final CheckBox cheryCheckboxAutoLock;
    public final CheckBox cheryCheckboxAutounlock;
    public final CheckBox cheryCheckboxDaytimeLights;
    public final CheckBox cheryCheckboxEgenBrakeAlram;
    public final CheckBox cheryCheckboxHeadlampDelay;
    public final CheckBox cheryCheckboxOpenTrunk;
    public final CheckBox cheryCheckboxPowerShowFlow;
    public final CheckBox cheryCheckboxSteerLight;
    public final CheckBox cheryCheckboxSteeringAnim;
    public final CheckBox cheryCheckboxSteeringAvm;
    public final RelativeLayout cheryRlDashBklight;
    public final RelativeLayout cheryRlSpeedingAlram;
    public final RelativeLayout cheryRlVehicleLine;
    public final RelativeLayout cherySetLang;
    public final RelativeLayout cherySetPrompt;
    private final ScrollView rootView;

    private CheryCarSetBinding(ScrollView scrollView, LinearLayout linearLayout, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5) {
        this.rootView = scrollView;
        this.cheryArz7Layout = linearLayout;
        this.cheryCheckboxAutoLock = checkBox;
        this.cheryCheckboxAutounlock = checkBox2;
        this.cheryCheckboxDaytimeLights = checkBox3;
        this.cheryCheckboxEgenBrakeAlram = checkBox4;
        this.cheryCheckboxHeadlampDelay = checkBox5;
        this.cheryCheckboxOpenTrunk = checkBox6;
        this.cheryCheckboxPowerShowFlow = checkBox7;
        this.cheryCheckboxSteerLight = checkBox8;
        this.cheryCheckboxSteeringAnim = checkBox9;
        this.cheryCheckboxSteeringAvm = checkBox10;
        this.cheryRlDashBklight = relativeLayout;
        this.cheryRlSpeedingAlram = relativeLayout2;
        this.cheryRlVehicleLine = relativeLayout3;
        this.cherySetLang = relativeLayout4;
        this.cherySetPrompt = relativeLayout5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static CheryCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CheryCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.chery_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CheryCarSetBinding bind(View view) {
        int i = R.id.chery_arz7_layout;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.chery_arz7_layout);
        if (linearLayout != null) {
            i = R.id.chery_checkbox_auto_lock;
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.chery_checkbox_auto_lock);
            if (checkBox != null) {
                i = R.id.chery_checkbox_autounlock;
                CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.chery_checkbox_autounlock);
                if (checkBox2 != null) {
                    i = R.id.chery_checkbox_daytime_lights;
                    CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.chery_checkbox_daytime_lights);
                    if (checkBox3 != null) {
                        i = R.id.chery_checkbox_egen_brake_alram;
                        CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.chery_checkbox_egen_brake_alram);
                        if (checkBox4 != null) {
                            i = R.id.chery_checkbox_headlamp_delay;
                            CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.chery_checkbox_headlamp_delay);
                            if (checkBox5 != null) {
                                i = R.id.chery_checkbox_open_trunk;
                                CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.chery_checkbox_open_trunk);
                                if (checkBox6 != null) {
                                    i = R.id.chery_checkbox_power_show_flow;
                                    CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.chery_checkbox_power_show_flow);
                                    if (checkBox7 != null) {
                                        i = R.id.chery_checkbox_steer_light;
                                        CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.chery_checkbox_steer_light);
                                        if (checkBox8 != null) {
                                            i = R.id.chery_checkbox_steering_anim;
                                            CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.chery_checkbox_steering_anim);
                                            if (checkBox9 != null) {
                                                i = R.id.chery_checkbox_steering_avm;
                                                CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.chery_checkbox_steering_avm);
                                                if (checkBox10 != null) {
                                                    i = R.id.chery_rl_dash_bklight;
                                                    RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.chery_rl_dash_bklight);
                                                    if (relativeLayout != null) {
                                                        i = R.id.chery_rl_speeding_alram;
                                                        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.chery_rl_speeding_alram);
                                                        if (relativeLayout2 != null) {
                                                            i = R.id.chery_rl_vehicle_line;
                                                            RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.chery_rl_vehicle_line);
                                                            if (relativeLayout3 != null) {
                                                                i = R.id.chery_set_lang;
                                                                RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.chery_set_lang);
                                                                if (relativeLayout4 != null) {
                                                                    i = R.id.chery_set_prompt;
                                                                    RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.chery_set_prompt);
                                                                    if (relativeLayout5 != null) {
                                                                        return new CheryCarSetBinding((ScrollView) view, linearLayout, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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
