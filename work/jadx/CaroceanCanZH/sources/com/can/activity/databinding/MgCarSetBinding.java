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
public final class MgCarSetBinding implements ViewBinding {
    public final CheckBox mgCheckboxComehomeWithme;
    public final CheckBox mgCheckboxDrivingLatch;
    public final CheckBox mgCheckboxFFogLights;
    public final CheckBox mgCheckboxFNearLights;
    public final CheckBox mgCheckboxFReversLights;
    public final CheckBox mgCheckboxFogLights;
    public final CheckBox mgCheckboxNearLights;
    public final CheckBox mgCheckboxReversLights;
    public final CheckBox mgCheckboxUnlock;
    public final RelativeLayout mgRlFGohomeTime;
    public final RelativeLayout mgRlFRoutingIndicator;
    public final RelativeLayout mgRlFSteeringHandle;
    public final RelativeLayout mgRlGohomeTime;
    public final RelativeLayout mgRlNearUnlock;
    public final RelativeLayout mgRlUnlockMode;
    private final ScrollView rootView;

    private MgCarSetBinding(ScrollView scrollView, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6) {
        this.rootView = scrollView;
        this.mgCheckboxComehomeWithme = checkBox;
        this.mgCheckboxDrivingLatch = checkBox2;
        this.mgCheckboxFFogLights = checkBox3;
        this.mgCheckboxFNearLights = checkBox4;
        this.mgCheckboxFReversLights = checkBox5;
        this.mgCheckboxFogLights = checkBox6;
        this.mgCheckboxNearLights = checkBox7;
        this.mgCheckboxReversLights = checkBox8;
        this.mgCheckboxUnlock = checkBox9;
        this.mgRlFGohomeTime = relativeLayout;
        this.mgRlFRoutingIndicator = relativeLayout2;
        this.mgRlFSteeringHandle = relativeLayout3;
        this.mgRlGohomeTime = relativeLayout4;
        this.mgRlNearUnlock = relativeLayout5;
        this.mgRlUnlockMode = relativeLayout6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static MgCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MgCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.mg_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MgCarSetBinding bind(View view) {
        int i = R.id.mg_checkbox_comehome_withme;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.mg_checkbox_comehome_withme);
        if (checkBox != null) {
            i = R.id.mg_checkbox_driving_latch;
            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.mg_checkbox_driving_latch);
            if (checkBox2 != null) {
                i = R.id.mg_checkbox_f_fog_lights;
                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.mg_checkbox_f_fog_lights);
                if (checkBox3 != null) {
                    i = R.id.mg_checkbox_f_near_lights;
                    CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.mg_checkbox_f_near_lights);
                    if (checkBox4 != null) {
                        i = R.id.mg_checkbox_f_revers_lights;
                        CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.mg_checkbox_f_revers_lights);
                        if (checkBox5 != null) {
                            i = R.id.mg_checkbox_fog_lights;
                            CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.mg_checkbox_fog_lights);
                            if (checkBox6 != null) {
                                i = R.id.mg_checkbox_near_lights;
                                CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.mg_checkbox_near_lights);
                                if (checkBox7 != null) {
                                    i = R.id.mg_checkbox_revers_lights;
                                    CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.mg_checkbox_revers_lights);
                                    if (checkBox8 != null) {
                                        i = R.id.mg_checkbox_unlock;
                                        CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.mg_checkbox_unlock);
                                        if (checkBox9 != null) {
                                            i = R.id.mg_rl_f_gohome_time;
                                            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.mg_rl_f_gohome_time);
                                            if (relativeLayout != null) {
                                                i = R.id.mg_rl_f_routing_indicator;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.mg_rl_f_routing_indicator);
                                                if (relativeLayout2 != null) {
                                                    i = R.id.mg_rl_f_steering_handle;
                                                    RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.mg_rl_f_steering_handle);
                                                    if (relativeLayout3 != null) {
                                                        i = R.id.mg_rl_gohome_time;
                                                        RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.mg_rl_gohome_time);
                                                        if (relativeLayout4 != null) {
                                                            i = R.id.mg_rl_near_unlock;
                                                            RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.mg_rl_near_unlock);
                                                            if (relativeLayout5 != null) {
                                                                i = R.id.mg_rl_unlock_mode;
                                                                RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.mg_rl_unlock_mode);
                                                                if (relativeLayout6 != null) {
                                                                    return new MgCarSetBinding((ScrollView) view, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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
