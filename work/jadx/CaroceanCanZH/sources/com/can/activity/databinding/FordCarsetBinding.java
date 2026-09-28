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
public final class FordCarsetBinding implements ViewBinding {
    public final RelativeLayout btnFordCarsetAmbientBright;
    public final RelativeLayout btnFordCarsetAmbientColor;
    public final RelativeLayout btnFordCarsetAutobright;
    public final RelativeLayout btnFordCarsetEnginehotper;
    public final RelativeLayout btnFordCarsetMileunit;
    public final RelativeLayout btnFordCarsetShowenginehot;
    public final RelativeLayout btnFordCarsetTonetype;
    public final RelativeLayout btnFordCarsetTravelplan;
    public final RelativeLayout btnFordCarsetTravelspeed;
    public final RelativeLayout btnFordCarsetTrunLightonce;
    public final CheckBox checkboxFordCarsetInteriorlightOnoff;
    public final CheckBox checkboxFordCarsetMsgtoneonOnoff;
    public final CheckBox checkboxFordCarsetParklockctrlOnoff;
    public final CheckBox checkboxFordCarsetRainsensorOnoff;
    public final CheckBox checkboxFordCarsetTractionctrlOnoff;
    public final CheckBox checkboxFordCarsetWarntoneonOnoff;
    private final ScrollView rootView;

    private FordCarsetBinding(ScrollView scrollView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, RelativeLayout relativeLayout10, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6) {
        this.rootView = scrollView;
        this.btnFordCarsetAmbientBright = relativeLayout;
        this.btnFordCarsetAmbientColor = relativeLayout2;
        this.btnFordCarsetAutobright = relativeLayout3;
        this.btnFordCarsetEnginehotper = relativeLayout4;
        this.btnFordCarsetMileunit = relativeLayout5;
        this.btnFordCarsetShowenginehot = relativeLayout6;
        this.btnFordCarsetTonetype = relativeLayout7;
        this.btnFordCarsetTravelplan = relativeLayout8;
        this.btnFordCarsetTravelspeed = relativeLayout9;
        this.btnFordCarsetTrunLightonce = relativeLayout10;
        this.checkboxFordCarsetInteriorlightOnoff = checkBox;
        this.checkboxFordCarsetMsgtoneonOnoff = checkBox2;
        this.checkboxFordCarsetParklockctrlOnoff = checkBox3;
        this.checkboxFordCarsetRainsensorOnoff = checkBox4;
        this.checkboxFordCarsetTractionctrlOnoff = checkBox5;
        this.checkboxFordCarsetWarntoneonOnoff = checkBox6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static FordCarsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FordCarsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.ford_carset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FordCarsetBinding bind(View view) {
        int i = R.id.btn_ford_carset_ambient_bright;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.btn_ford_carset_ambient_bright);
        if (relativeLayout != null) {
            i = R.id.btn_ford_carset_ambient_color;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.btn_ford_carset_ambient_color);
            if (relativeLayout2 != null) {
                i = R.id.btn_ford_carset_autobright;
                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.btn_ford_carset_autobright);
                if (relativeLayout3 != null) {
                    i = R.id.btn_ford_carset_enginehotper;
                    RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.btn_ford_carset_enginehotper);
                    if (relativeLayout4 != null) {
                        i = R.id.btn_ford_carset_mileunit;
                        RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.btn_ford_carset_mileunit);
                        if (relativeLayout5 != null) {
                            i = R.id.btn_ford_carset_showenginehot;
                            RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.btn_ford_carset_showenginehot);
                            if (relativeLayout6 != null) {
                                i = R.id.btn_ford_carset_tonetype;
                                RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.btn_ford_carset_tonetype);
                                if (relativeLayout7 != null) {
                                    i = R.id.btn_ford_carset_travelplan;
                                    RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.btn_ford_carset_travelplan);
                                    if (relativeLayout8 != null) {
                                        i = R.id.btn_ford_carset_travelspeed;
                                        RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.btn_ford_carset_travelspeed);
                                        if (relativeLayout9 != null) {
                                            i = R.id.btn_ford_carset_trunLightonce;
                                            RelativeLayout relativeLayout10 = (RelativeLayout) view.findViewById(R.id.btn_ford_carset_trunLightonce);
                                            if (relativeLayout10 != null) {
                                                i = R.id.checkbox_ford_carset_interiorlight_onoff;
                                                CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkbox_ford_carset_interiorlight_onoff);
                                                if (checkBox != null) {
                                                    i = R.id.checkbox_ford_carset_msgtoneon_onoff;
                                                    CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.checkbox_ford_carset_msgtoneon_onoff);
                                                    if (checkBox2 != null) {
                                                        i = R.id.checkbox_ford_carset_parklockctrl_onoff;
                                                        CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.checkbox_ford_carset_parklockctrl_onoff);
                                                        if (checkBox3 != null) {
                                                            i = R.id.checkbox_ford_carset_rainsensor_onoff;
                                                            CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.checkbox_ford_carset_rainsensor_onoff);
                                                            if (checkBox4 != null) {
                                                                i = R.id.checkbox_ford_carset_tractionctrl_onoff;
                                                                CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.checkbox_ford_carset_tractionctrl_onoff);
                                                                if (checkBox5 != null) {
                                                                    i = R.id.checkbox_ford_carset_warntoneon_onoff;
                                                                    CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.checkbox_ford_carset_warntoneon_onoff);
                                                                    if (checkBox6 != null) {
                                                                        return new FordCarsetBinding((ScrollView) view, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, relativeLayout10, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6);
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
