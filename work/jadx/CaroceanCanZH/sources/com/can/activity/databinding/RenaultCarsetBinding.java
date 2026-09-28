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
public final class RenaultCarsetBinding implements ViewBinding {
    public final RelativeLayout btnRenaultCarsetDefset;
    public final RelativeLayout btnRenaultCarsetReset;
    public final RelativeLayout btnRenaultCarsetTakecareGenerator;
    public final RelativeLayout btnRenaultCarsetUsersetBrightness;
    public final RelativeLayout btnRenaultCarsetUsersetColor;
    public final RelativeLayout btnRenaultCarsetUsersetDisplaystyle;
    public final RelativeLayout btnRenaultCarsetUsersetLang;
    public final RelativeLayout btnRenaultCarsetUsersetPromptvol;
    public final CheckBox checkboxRenaultCarsetParkingFront;
    public final CheckBox checkboxRenaultCarsetParkingLateral;
    public final CheckBox checkboxRenaultCarsetParkingRear;
    public final CheckBox checkboxRenaultCarsetParkingSpotalert;
    public final CheckBox checkboxRenaultCarsetTakecareAutostart;
    public final CheckBox checkboxRenaultCarsetTakecareFresh;
    public final CheckBox checkboxRenaultCarsetUsersetCabinlamp;
    public final CheckBox checkboxRenaultCarsetUsersetDrivinglock;
    public final CheckBox checkboxRenaultCarsetUsersetEnvindicator;
    public final CheckBox checkboxRenaultCarsetUsersetExternal;
    public final CheckBox checkboxRenaultCarsetUsersetWiperopen;
    private final ScrollView rootView;

    private RenaultCarsetBinding(ScrollView scrollView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11) {
        this.rootView = scrollView;
        this.btnRenaultCarsetDefset = relativeLayout;
        this.btnRenaultCarsetReset = relativeLayout2;
        this.btnRenaultCarsetTakecareGenerator = relativeLayout3;
        this.btnRenaultCarsetUsersetBrightness = relativeLayout4;
        this.btnRenaultCarsetUsersetColor = relativeLayout5;
        this.btnRenaultCarsetUsersetDisplaystyle = relativeLayout6;
        this.btnRenaultCarsetUsersetLang = relativeLayout7;
        this.btnRenaultCarsetUsersetPromptvol = relativeLayout8;
        this.checkboxRenaultCarsetParkingFront = checkBox;
        this.checkboxRenaultCarsetParkingLateral = checkBox2;
        this.checkboxRenaultCarsetParkingRear = checkBox3;
        this.checkboxRenaultCarsetParkingSpotalert = checkBox4;
        this.checkboxRenaultCarsetTakecareAutostart = checkBox5;
        this.checkboxRenaultCarsetTakecareFresh = checkBox6;
        this.checkboxRenaultCarsetUsersetCabinlamp = checkBox7;
        this.checkboxRenaultCarsetUsersetDrivinglock = checkBox8;
        this.checkboxRenaultCarsetUsersetEnvindicator = checkBox9;
        this.checkboxRenaultCarsetUsersetExternal = checkBox10;
        this.checkboxRenaultCarsetUsersetWiperopen = checkBox11;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static RenaultCarsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RenaultCarsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.renault_carset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static RenaultCarsetBinding bind(View view) {
        int i = R.id.btn_renault_carset_defset;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.btn_renault_carset_defset);
        if (relativeLayout != null) {
            i = R.id.btn_renault_carset_reset;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.btn_renault_carset_reset);
            if (relativeLayout2 != null) {
                i = R.id.btn_renault_carset_takecare_generator;
                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.btn_renault_carset_takecare_generator);
                if (relativeLayout3 != null) {
                    i = R.id.btn_renault_carset_userset_brightness;
                    RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.btn_renault_carset_userset_brightness);
                    if (relativeLayout4 != null) {
                        i = R.id.btn_renault_carset_userset_color;
                        RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.btn_renault_carset_userset_color);
                        if (relativeLayout5 != null) {
                            i = R.id.btn_renault_carset_userset_displaystyle;
                            RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.btn_renault_carset_userset_displaystyle);
                            if (relativeLayout6 != null) {
                                i = R.id.btn_renault_carset_userset_lang;
                                RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.btn_renault_carset_userset_lang);
                                if (relativeLayout7 != null) {
                                    i = R.id.btn_renault_carset_userset_promptvol;
                                    RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.btn_renault_carset_userset_promptvol);
                                    if (relativeLayout8 != null) {
                                        i = R.id.checkbox_renault_carset_parking_front;
                                        CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_parking_front);
                                        if (checkBox != null) {
                                            i = R.id.checkbox_renault_carset_parking_lateral;
                                            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_parking_lateral);
                                            if (checkBox2 != null) {
                                                i = R.id.checkbox_renault_carset_parking_rear;
                                                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_parking_rear);
                                                if (checkBox3 != null) {
                                                    i = R.id.checkbox_renault_carset_parking_spotalert;
                                                    CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_parking_spotalert);
                                                    if (checkBox4 != null) {
                                                        i = R.id.checkbox_renault_carset_takecare_autostart;
                                                        CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_takecare_autostart);
                                                        if (checkBox5 != null) {
                                                            i = R.id.checkbox_renault_carset_takecare_fresh;
                                                            CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_takecare_fresh);
                                                            if (checkBox6 != null) {
                                                                i = R.id.checkbox_renault_carset_userset_cabinlamp;
                                                                CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_userset_cabinlamp);
                                                                if (checkBox7 != null) {
                                                                    i = R.id.checkbox_renault_carset_userset_drivinglock;
                                                                    CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_userset_drivinglock);
                                                                    if (checkBox8 != null) {
                                                                        i = R.id.checkbox_renault_carset_userset_envindicator;
                                                                        CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_userset_envindicator);
                                                                        if (checkBox9 != null) {
                                                                            i = R.id.checkbox_renault_carset_userset_external;
                                                                            CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_userset_external);
                                                                            if (checkBox10 != null) {
                                                                                i = R.id.checkbox_renault_carset_userset_wiperopen;
                                                                                CheckBox checkBox11 = (CheckBox) view.findViewById(R.id.checkbox_renault_carset_userset_wiperopen);
                                                                                if (checkBox11 != null) {
                                                                                    return new RenaultCarsetBinding((ScrollView) view, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, checkBox11);
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
