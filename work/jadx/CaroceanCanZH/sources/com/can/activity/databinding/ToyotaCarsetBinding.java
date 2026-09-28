package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ToyotaCarsetBinding implements ViewBinding {
    public final RelativeLayout btnToyotaAirsetAutorelocktimeRight;
    public final RelativeLayout btnToyotaLightsetHeadlampofftimeRight;
    public final RelativeLayout btnToyotaLightsetHeadlampssensitivityRight;
    public final RelativeLayout btnToyotaLightsetSetcarlightofftimeRight;
    public final RelativeLayout btnToyotaLocksetElectricdooradjustRight;
    public final Button btnToyotaLocksetLockunlockfeedtoneRight;
    public final RelativeLayout btnToyotaOthersetCameratrackRight;
    public final RelativeLayout btnToyotaOthersetFueluintRight;
    public final RelativeLayout btnToyotaOthersetRadarvolRight;
    public final CheckBox checkboxToyotaAirsetAutolinkageOnoff;
    public final CheckBox checkboxToyotaAirsetInoutgasautolinkageOnoff;
    public final CheckBox checkboxToyotaLightsetDaytimelightOnoff;
    public final CheckBox checkboxToyotaLockset2presslockOnoff;
    public final CheckBox checkboxToyotaLocksetBlocklinkunlockOnoff;
    public final CheckBox checkboxToyotaLocksetDrivinglinkunlockOnoff;
    public final CheckBox checkboxToyotaLocksetLinkageautolockOnoff;
    public final CheckBox checkboxToyotaLocksetResponselockOnoff;
    public final CheckBox checkboxToyotaLocksetSmartcarlockOnoff;
    public final CheckBox checkboxToyotaLocksetSpeedautolockOnoff;
    public final CheckBox checkboxToyotaLocksetUnlockthekeyOnoff;
    public final CheckBox checkboxToyotaSmartdoorunlockOnoff;
    private final ScrollView rootView;

    private ToyotaCarsetBinding(ScrollView scrollView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, Button button, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, CheckBox checkBox12) {
        this.rootView = scrollView;
        this.btnToyotaAirsetAutorelocktimeRight = relativeLayout;
        this.btnToyotaLightsetHeadlampofftimeRight = relativeLayout2;
        this.btnToyotaLightsetHeadlampssensitivityRight = relativeLayout3;
        this.btnToyotaLightsetSetcarlightofftimeRight = relativeLayout4;
        this.btnToyotaLocksetElectricdooradjustRight = relativeLayout5;
        this.btnToyotaLocksetLockunlockfeedtoneRight = button;
        this.btnToyotaOthersetCameratrackRight = relativeLayout6;
        this.btnToyotaOthersetFueluintRight = relativeLayout7;
        this.btnToyotaOthersetRadarvolRight = relativeLayout8;
        this.checkboxToyotaAirsetAutolinkageOnoff = checkBox;
        this.checkboxToyotaAirsetInoutgasautolinkageOnoff = checkBox2;
        this.checkboxToyotaLightsetDaytimelightOnoff = checkBox3;
        this.checkboxToyotaLockset2presslockOnoff = checkBox4;
        this.checkboxToyotaLocksetBlocklinkunlockOnoff = checkBox5;
        this.checkboxToyotaLocksetDrivinglinkunlockOnoff = checkBox6;
        this.checkboxToyotaLocksetLinkageautolockOnoff = checkBox7;
        this.checkboxToyotaLocksetResponselockOnoff = checkBox8;
        this.checkboxToyotaLocksetSmartcarlockOnoff = checkBox9;
        this.checkboxToyotaLocksetSpeedautolockOnoff = checkBox10;
        this.checkboxToyotaLocksetUnlockthekeyOnoff = checkBox11;
        this.checkboxToyotaSmartdoorunlockOnoff = checkBox12;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static ToyotaCarsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ToyotaCarsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toyota_carset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToyotaCarsetBinding bind(View view) {
        int i = R.id.btn_toyota_airset_autorelocktime_right;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.btn_toyota_airset_autorelocktime_right);
        if (relativeLayout != null) {
            i = R.id.btn_toyota_lightset_headlampofftime_right;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.btn_toyota_lightset_headlampofftime_right);
            if (relativeLayout2 != null) {
                i = R.id.btn_toyota_lightset_headlampssensitivity_right;
                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.btn_toyota_lightset_headlampssensitivity_right);
                if (relativeLayout3 != null) {
                    i = R.id.btn_toyota_lightset_setcarlightofftime_right;
                    RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.btn_toyota_lightset_setcarlightofftime_right);
                    if (relativeLayout4 != null) {
                        i = R.id.btn_toyota_lockset_electricdooradjust_right;
                        RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.btn_toyota_lockset_electricdooradjust_right);
                        if (relativeLayout5 != null) {
                            i = R.id.btn_toyota_lockset_lockunlockfeedtone_right;
                            Button button = (Button) view.findViewById(R.id.btn_toyota_lockset_lockunlockfeedtone_right);
                            if (button != null) {
                                i = R.id.btn_toyota_otherset_cameratrack_right;
                                RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.btn_toyota_otherset_cameratrack_right);
                                if (relativeLayout6 != null) {
                                    i = R.id.btn_toyota_otherset_fueluint_right;
                                    RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.btn_toyota_otherset_fueluint_right);
                                    if (relativeLayout7 != null) {
                                        i = R.id.btn_toyota_otherset_radarvol_right;
                                        RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.btn_toyota_otherset_radarvol_right);
                                        if (relativeLayout8 != null) {
                                            i = R.id.checkbox_toyota_airset_autolinkage_onoff;
                                            CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkbox_toyota_airset_autolinkage_onoff);
                                            if (checkBox != null) {
                                                i = R.id.checkbox_toyota_airset_inoutgasautolinkage_onoff;
                                                CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.checkbox_toyota_airset_inoutgasautolinkage_onoff);
                                                if (checkBox2 != null) {
                                                    i = R.id.checkbox_toyota_lightset_daytimelight_onoff;
                                                    CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lightset_daytimelight_onoff);
                                                    if (checkBox3 != null) {
                                                        i = R.id.checkbox_toyota_lockset_2presslock_onoff;
                                                        CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_2presslock_onoff);
                                                        if (checkBox4 != null) {
                                                            i = R.id.checkbox_toyota_lockset_blocklinkunlock_onoff;
                                                            CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_blocklinkunlock_onoff);
                                                            if (checkBox5 != null) {
                                                                i = R.id.checkbox_toyota_lockset_drivinglinkunlock_onoff;
                                                                CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_drivinglinkunlock_onoff);
                                                                if (checkBox6 != null) {
                                                                    i = R.id.checkbox_toyota_lockset_linkageautolock_onoff;
                                                                    CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_linkageautolock_onoff);
                                                                    if (checkBox7 != null) {
                                                                        i = R.id.checkbox_toyota_lockset_responselock_onoff;
                                                                        CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_responselock_onoff);
                                                                        if (checkBox8 != null) {
                                                                            i = R.id.checkbox_toyota_lockset_smartcarlock_onoff;
                                                                            CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_smartcarlock_onoff);
                                                                            if (checkBox9 != null) {
                                                                                i = R.id.checkbox_toyota_lockset_speedautolock_onoff;
                                                                                CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_speedautolock_onoff);
                                                                                if (checkBox10 != null) {
                                                                                    i = R.id.checkbox_toyota_lockset_unlockthekey_onoff;
                                                                                    CheckBox checkBox11 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_unlockthekey_onoff);
                                                                                    if (checkBox11 != null) {
                                                                                        i = R.id.checkbox_toyota_smartdoorunlock_onoff;
                                                                                        CheckBox checkBox12 = (CheckBox) view.findViewById(R.id.checkbox_toyota_smartdoorunlock_onoff);
                                                                                        if (checkBox12 != null) {
                                                                                            return new ToyotaCarsetBinding((ScrollView) view, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, button, relativeLayout6, relativeLayout7, relativeLayout8, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, checkBox11, checkBox12);
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
