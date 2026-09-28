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
public final class CheryHdCarSetBinding implements ViewBinding {
    public final CheckBox cheryCheckboxAutoLock;
    public final CheckBox cheryCheckboxDaytimeLights;
    public final CheckBox cheryCheckboxEgenBrakeAlram;
    public final CheckBox cheryCheckboxHeadlampDelay;
    public final CheckBox cheryCheckboxSteeringAnim;
    public final CheckBox cheryCheckboxSteeringAvm;
    public final RelativeLayout cheryEgenBrakingAlram;
    public final RelativeLayout cheryRlDashBklight;
    public final RelativeLayout cheryRlSpeedingAlram;
    public final RelativeLayout cheryRlVehicleLine;
    private final ScrollView rootView;

    private CheryHdCarSetBinding(ScrollView scrollView, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4) {
        this.rootView = scrollView;
        this.cheryCheckboxAutoLock = checkBox;
        this.cheryCheckboxDaytimeLights = checkBox2;
        this.cheryCheckboxEgenBrakeAlram = checkBox3;
        this.cheryCheckboxHeadlampDelay = checkBox4;
        this.cheryCheckboxSteeringAnim = checkBox5;
        this.cheryCheckboxSteeringAvm = checkBox6;
        this.cheryEgenBrakingAlram = relativeLayout;
        this.cheryRlDashBklight = relativeLayout2;
        this.cheryRlSpeedingAlram = relativeLayout3;
        this.cheryRlVehicleLine = relativeLayout4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static CheryHdCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CheryHdCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.chery_hd_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CheryHdCarSetBinding bind(View view) {
        int i = R.id.chery_checkbox_auto_lock;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.chery_checkbox_auto_lock);
        if (checkBox != null) {
            i = R.id.chery_checkbox_daytime_lights;
            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.chery_checkbox_daytime_lights);
            if (checkBox2 != null) {
                i = R.id.chery_checkbox_egen_brake_alram;
                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.chery_checkbox_egen_brake_alram);
                if (checkBox3 != null) {
                    i = R.id.chery_checkbox_headlamp_delay;
                    CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.chery_checkbox_headlamp_delay);
                    if (checkBox4 != null) {
                        i = R.id.chery_checkbox_steering_anim;
                        CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.chery_checkbox_steering_anim);
                        if (checkBox5 != null) {
                            i = R.id.chery_checkbox_steering_avm;
                            CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.chery_checkbox_steering_avm);
                            if (checkBox6 != null) {
                                i = R.id.chery_egen_braking_alram;
                                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.chery_egen_braking_alram);
                                if (relativeLayout != null) {
                                    i = R.id.chery_rl_dash_bklight;
                                    RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.chery_rl_dash_bklight);
                                    if (relativeLayout2 != null) {
                                        i = R.id.chery_rl_speeding_alram;
                                        RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.chery_rl_speeding_alram);
                                        if (relativeLayout3 != null) {
                                            i = R.id.chery_rl_vehicle_line;
                                            RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.chery_rl_vehicle_line);
                                            if (relativeLayout4 != null) {
                                                return new CheryHdCarSetBinding((ScrollView) view, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4);
                                            }
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
