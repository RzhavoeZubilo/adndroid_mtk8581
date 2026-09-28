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
public final class ToyotaHdCarsetBinding implements ViewBinding {
    public final RelativeLayout btnToyotaFradarDis;
    public final RelativeLayout btnToyotaOthersetRadarvolRight;
    public final RelativeLayout btnToyotaRradarDis;
    public final CheckBox checkboxToyotaAirsetAutolinkageOnoff;
    public final CheckBox checkboxToyotaAirsetInoutgasautolinkageOnoff;
    public final CheckBox checkboxToyotaLockset2presslockOnoff;
    public final CheckBox checkboxToyotaLocksetBlocklinkunlockOnoff;
    public final CheckBox checkboxToyotaLocksetDrivinglinkunlockOnoff;
    public final CheckBox checkboxToyotaLocksetLinkageautolockOnoff;
    public final CheckBox checkboxToyotaLocksetResponselockOnoff;
    public final CheckBox checkboxToyotaLocksetSmartcarlockOnoff;
    public final CheckBox checkboxToyotaLocksetSpeedautolockOnoff;
    public final CheckBox checkboxToyotaLocksetUnlockthekeyOnoff;
    public final CheckBox checkboxToyotaSmartdoorunlockOnoff;
    public final RelativeLayout layout0;
    public final RelativeLayout layout1;
    public final RelativeLayout layout10;
    public final RelativeLayout layout11;
    public final RelativeLayout layout12;
    public final RelativeLayout layout13;
    public final RelativeLayout layout14;
    public final RelativeLayout layout15;
    public final RelativeLayout layout2;
    public final RelativeLayout layout3;
    public final RelativeLayout layout4;
    public final RelativeLayout layout5;
    public final RelativeLayout layout6;
    public final RelativeLayout layout7;
    public final RelativeLayout layout8;
    public final RelativeLayout layout9;
    public final LinearLayout layoutToyotaOther;
    public final LinearLayout layoutTpyotaRadarSet;
    private final ScrollView rootView;

    private ToyotaHdCarsetBinding(ScrollView scrollView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, RelativeLayout relativeLayout10, RelativeLayout relativeLayout11, RelativeLayout relativeLayout12, RelativeLayout relativeLayout13, RelativeLayout relativeLayout14, RelativeLayout relativeLayout15, RelativeLayout relativeLayout16, RelativeLayout relativeLayout17, RelativeLayout relativeLayout18, RelativeLayout relativeLayout19, LinearLayout linearLayout, LinearLayout linearLayout2) {
        this.rootView = scrollView;
        this.btnToyotaFradarDis = relativeLayout;
        this.btnToyotaOthersetRadarvolRight = relativeLayout2;
        this.btnToyotaRradarDis = relativeLayout3;
        this.checkboxToyotaAirsetAutolinkageOnoff = checkBox;
        this.checkboxToyotaAirsetInoutgasautolinkageOnoff = checkBox2;
        this.checkboxToyotaLockset2presslockOnoff = checkBox3;
        this.checkboxToyotaLocksetBlocklinkunlockOnoff = checkBox4;
        this.checkboxToyotaLocksetDrivinglinkunlockOnoff = checkBox5;
        this.checkboxToyotaLocksetLinkageautolockOnoff = checkBox6;
        this.checkboxToyotaLocksetResponselockOnoff = checkBox7;
        this.checkboxToyotaLocksetSmartcarlockOnoff = checkBox8;
        this.checkboxToyotaLocksetSpeedautolockOnoff = checkBox9;
        this.checkboxToyotaLocksetUnlockthekeyOnoff = checkBox10;
        this.checkboxToyotaSmartdoorunlockOnoff = checkBox11;
        this.layout0 = relativeLayout4;
        this.layout1 = relativeLayout5;
        this.layout10 = relativeLayout6;
        this.layout11 = relativeLayout7;
        this.layout12 = relativeLayout8;
        this.layout13 = relativeLayout9;
        this.layout14 = relativeLayout10;
        this.layout15 = relativeLayout11;
        this.layout2 = relativeLayout12;
        this.layout3 = relativeLayout13;
        this.layout4 = relativeLayout14;
        this.layout5 = relativeLayout15;
        this.layout6 = relativeLayout16;
        this.layout7 = relativeLayout17;
        this.layout8 = relativeLayout18;
        this.layout9 = relativeLayout19;
        this.layoutToyotaOther = linearLayout;
        this.layoutTpyotaRadarSet = linearLayout2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static ToyotaHdCarsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ToyotaHdCarsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toyota_hd_carset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToyotaHdCarsetBinding bind(View view) {
        int i = R.id.btn_toyota_fradar_dis;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.btn_toyota_fradar_dis);
        if (relativeLayout != null) {
            i = R.id.btn_toyota_otherset_radarvol_right;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.btn_toyota_otherset_radarvol_right);
            if (relativeLayout2 != null) {
                i = R.id.btn_toyota_rradar_dis;
                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.btn_toyota_rradar_dis);
                if (relativeLayout3 != null) {
                    i = R.id.checkbox_toyota_airset_autolinkage_onoff;
                    CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkbox_toyota_airset_autolinkage_onoff);
                    if (checkBox != null) {
                        i = R.id.checkbox_toyota_airset_inoutgasautolinkage_onoff;
                        CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.checkbox_toyota_airset_inoutgasautolinkage_onoff);
                        if (checkBox2 != null) {
                            i = R.id.checkbox_toyota_lockset_2presslock_onoff;
                            CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_2presslock_onoff);
                            if (checkBox3 != null) {
                                i = R.id.checkbox_toyota_lockset_blocklinkunlock_onoff;
                                CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_blocklinkunlock_onoff);
                                if (checkBox4 != null) {
                                    i = R.id.checkbox_toyota_lockset_drivinglinkunlock_onoff;
                                    CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_drivinglinkunlock_onoff);
                                    if (checkBox5 != null) {
                                        i = R.id.checkbox_toyota_lockset_linkageautolock_onoff;
                                        CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_linkageautolock_onoff);
                                        if (checkBox6 != null) {
                                            i = R.id.checkbox_toyota_lockset_responselock_onoff;
                                            CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_responselock_onoff);
                                            if (checkBox7 != null) {
                                                i = R.id.checkbox_toyota_lockset_smartcarlock_onoff;
                                                CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_smartcarlock_onoff);
                                                if (checkBox8 != null) {
                                                    i = R.id.checkbox_toyota_lockset_speedautolock_onoff;
                                                    CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_speedautolock_onoff);
                                                    if (checkBox9 != null) {
                                                        i = R.id.checkbox_toyota_lockset_unlockthekey_onoff;
                                                        CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.checkbox_toyota_lockset_unlockthekey_onoff);
                                                        if (checkBox10 != null) {
                                                            i = R.id.checkbox_toyota_smartdoorunlock_onoff;
                                                            CheckBox checkBox11 = (CheckBox) view.findViewById(R.id.checkbox_toyota_smartdoorunlock_onoff);
                                                            if (checkBox11 != null) {
                                                                i = R.id.layout_0;
                                                                RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.layout_0);
                                                                if (relativeLayout4 != null) {
                                                                    i = R.id.layout_1;
                                                                    RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.layout_1);
                                                                    if (relativeLayout5 != null) {
                                                                        i = R.id.layout_10;
                                                                        RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.layout_10);
                                                                        if (relativeLayout6 != null) {
                                                                            i = R.id.layout_11;
                                                                            RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.layout_11);
                                                                            if (relativeLayout7 != null) {
                                                                                i = R.id.layout_12;
                                                                                RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.layout_12);
                                                                                if (relativeLayout8 != null) {
                                                                                    i = R.id.layout_13;
                                                                                    RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.layout_13);
                                                                                    if (relativeLayout9 != null) {
                                                                                        i = R.id.layout_14;
                                                                                        RelativeLayout relativeLayout10 = (RelativeLayout) view.findViewById(R.id.layout_14);
                                                                                        if (relativeLayout10 != null) {
                                                                                            i = R.id.layout_15;
                                                                                            RelativeLayout relativeLayout11 = (RelativeLayout) view.findViewById(R.id.layout_15);
                                                                                            if (relativeLayout11 != null) {
                                                                                                i = R.id.layout_2;
                                                                                                RelativeLayout relativeLayout12 = (RelativeLayout) view.findViewById(R.id.layout_2);
                                                                                                if (relativeLayout12 != null) {
                                                                                                    i = R.id.layout_3;
                                                                                                    RelativeLayout relativeLayout13 = (RelativeLayout) view.findViewById(R.id.layout_3);
                                                                                                    if (relativeLayout13 != null) {
                                                                                                        i = R.id.layout_4;
                                                                                                        RelativeLayout relativeLayout14 = (RelativeLayout) view.findViewById(R.id.layout_4);
                                                                                                        if (relativeLayout14 != null) {
                                                                                                            i = R.id.layout_5;
                                                                                                            RelativeLayout relativeLayout15 = (RelativeLayout) view.findViewById(R.id.layout_5);
                                                                                                            if (relativeLayout15 != null) {
                                                                                                                i = R.id.layout_6;
                                                                                                                RelativeLayout relativeLayout16 = (RelativeLayout) view.findViewById(R.id.layout_6);
                                                                                                                if (relativeLayout16 != null) {
                                                                                                                    i = R.id.layout_7;
                                                                                                                    RelativeLayout relativeLayout17 = (RelativeLayout) view.findViewById(R.id.layout_7);
                                                                                                                    if (relativeLayout17 != null) {
                                                                                                                        i = R.id.layout_8;
                                                                                                                        RelativeLayout relativeLayout18 = (RelativeLayout) view.findViewById(R.id.layout_8);
                                                                                                                        if (relativeLayout18 != null) {
                                                                                                                            i = R.id.layout_9;
                                                                                                                            RelativeLayout relativeLayout19 = (RelativeLayout) view.findViewById(R.id.layout_9);
                                                                                                                            if (relativeLayout19 != null) {
                                                                                                                                i = R.id.layout_toyota_other;
                                                                                                                                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.layout_toyota_other);
                                                                                                                                if (linearLayout != null) {
                                                                                                                                    i = R.id.layout_tpyota_radar_set;
                                                                                                                                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.layout_tpyota_radar_set);
                                                                                                                                    if (linearLayout2 != null) {
                                                                                                                                        return new ToyotaHdCarsetBinding((ScrollView) view, relativeLayout, relativeLayout2, relativeLayout3, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, checkBox11, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, relativeLayout10, relativeLayout11, relativeLayout12, relativeLayout13, relativeLayout14, relativeLayout15, relativeLayout16, relativeLayout17, relativeLayout18, relativeLayout19, linearLayout, linearLayout2);
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
