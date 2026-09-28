package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class CqCarSetBinding implements ViewBinding {
    public final RelativeLayout cq17Gs4;
    public final TextView cqBtnLeftheatlv;
    public final TextView cqBtnReset;
    public final TextView cqBtnRightheatlv;
    public final CheckBox cqCheckboxAnionMode;
    public final CheckBox cqCheckboxAutokey;
    public final CheckBox cqCheckboxAutounlock;
    public final CheckBox cqCheckboxCompressor;
    public final CheckBox cqCheckboxDaylights;
    public final CheckBox cqCheckboxFoglights;
    public final CheckBox cqCheckboxFrontwiper;
    public final CheckBox cqCheckboxLeftautoheat;
    public final CheckBox cqCheckboxLockbyspeed;
    public final CheckBox cqCheckboxRearviewmirror;
    public final CheckBox cqCheckboxRearwiper;
    public final CheckBox cqCheckboxRemotewind;
    public final CheckBox cqCheckboxRightautoheat;
    public final CheckBox cqCheckboxUnlockTone;
    public final CheckBox cqCheckboxWelcomefunc;
    public final RelativeLayout cqRlAlramvol;
    public final RelativeLayout cqRlCozy;
    public final RelativeLayout cqRlCyclectrl;
    public final RelativeLayout cqRlFollowtohome;
    public final RelativeLayout cqRlLan;
    public final RelativeLayout cqRlLightsensitivity;
    public final RelativeLayout cqRlOverspeed;
    public final RelativeLayout cqRlPowertime;
    public final RelativeLayout cqRlRemoteunlock;
    public final RelativeLayout cqRlStarttime;
    public final RelativeLayout cqRlSteermode;
    private final ScrollView rootView;

    private CqCarSetBinding(ScrollView scrollView, RelativeLayout relativeLayout, TextView textView, TextView textView2, TextView textView3, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, CheckBox checkBox12, CheckBox checkBox13, CheckBox checkBox14, CheckBox checkBox15, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, RelativeLayout relativeLayout10, RelativeLayout relativeLayout11, RelativeLayout relativeLayout12) {
        this.rootView = scrollView;
        this.cq17Gs4 = relativeLayout;
        this.cqBtnLeftheatlv = textView;
        this.cqBtnReset = textView2;
        this.cqBtnRightheatlv = textView3;
        this.cqCheckboxAnionMode = checkBox;
        this.cqCheckboxAutokey = checkBox2;
        this.cqCheckboxAutounlock = checkBox3;
        this.cqCheckboxCompressor = checkBox4;
        this.cqCheckboxDaylights = checkBox5;
        this.cqCheckboxFoglights = checkBox6;
        this.cqCheckboxFrontwiper = checkBox7;
        this.cqCheckboxLeftautoheat = checkBox8;
        this.cqCheckboxLockbyspeed = checkBox9;
        this.cqCheckboxRearviewmirror = checkBox10;
        this.cqCheckboxRearwiper = checkBox11;
        this.cqCheckboxRemotewind = checkBox12;
        this.cqCheckboxRightautoheat = checkBox13;
        this.cqCheckboxUnlockTone = checkBox14;
        this.cqCheckboxWelcomefunc = checkBox15;
        this.cqRlAlramvol = relativeLayout2;
        this.cqRlCozy = relativeLayout3;
        this.cqRlCyclectrl = relativeLayout4;
        this.cqRlFollowtohome = relativeLayout5;
        this.cqRlLan = relativeLayout6;
        this.cqRlLightsensitivity = relativeLayout7;
        this.cqRlOverspeed = relativeLayout8;
        this.cqRlPowertime = relativeLayout9;
        this.cqRlRemoteunlock = relativeLayout10;
        this.cqRlStarttime = relativeLayout11;
        this.cqRlSteermode = relativeLayout12;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static CqCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CqCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.cq_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CqCarSetBinding bind(View view) {
        int i = R.id.cq_17_gs4;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.cq_17_gs4);
        if (relativeLayout != null) {
            i = R.id.cq_btn_leftheatlv;
            TextView textView = (TextView) view.findViewById(R.id.cq_btn_leftheatlv);
            if (textView != null) {
                i = R.id.cq_btn_reset;
                TextView textView2 = (TextView) view.findViewById(R.id.cq_btn_reset);
                if (textView2 != null) {
                    i = R.id.cq_btn_rightheatlv;
                    TextView textView3 = (TextView) view.findViewById(R.id.cq_btn_rightheatlv);
                    if (textView3 != null) {
                        i = R.id.cq_checkbox_anion_mode;
                        CheckBox checkBox = (CheckBox) view.findViewById(R.id.cq_checkbox_anion_mode);
                        if (checkBox != null) {
                            i = R.id.cq_checkbox_autokey;
                            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.cq_checkbox_autokey);
                            if (checkBox2 != null) {
                                i = R.id.cq_checkbox_autounlock;
                                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.cq_checkbox_autounlock);
                                if (checkBox3 != null) {
                                    i = R.id.cq_checkbox_compressor;
                                    CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.cq_checkbox_compressor);
                                    if (checkBox4 != null) {
                                        i = R.id.cq_checkbox_daylights;
                                        CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.cq_checkbox_daylights);
                                        if (checkBox5 != null) {
                                            i = R.id.cq_checkbox_foglights;
                                            CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.cq_checkbox_foglights);
                                            if (checkBox6 != null) {
                                                i = R.id.cq_checkbox_frontwiper;
                                                CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.cq_checkbox_frontwiper);
                                                if (checkBox7 != null) {
                                                    i = R.id.cq_checkbox_leftautoheat;
                                                    CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.cq_checkbox_leftautoheat);
                                                    if (checkBox8 != null) {
                                                        i = R.id.cq_checkbox_lockbyspeed;
                                                        CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.cq_checkbox_lockbyspeed);
                                                        if (checkBox9 != null) {
                                                            i = R.id.cq_checkbox_rearviewmirror;
                                                            CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.cq_checkbox_rearviewmirror);
                                                            if (checkBox10 != null) {
                                                                i = R.id.cq_checkbox_rearwiper;
                                                                CheckBox checkBox11 = (CheckBox) view.findViewById(R.id.cq_checkbox_rearwiper);
                                                                if (checkBox11 != null) {
                                                                    i = R.id.cq_checkbox_remotewind;
                                                                    CheckBox checkBox12 = (CheckBox) view.findViewById(R.id.cq_checkbox_remotewind);
                                                                    if (checkBox12 != null) {
                                                                        i = R.id.cq_checkbox_rightautoheat;
                                                                        CheckBox checkBox13 = (CheckBox) view.findViewById(R.id.cq_checkbox_rightautoheat);
                                                                        if (checkBox13 != null) {
                                                                            i = R.id.cq_checkbox_unlock_tone;
                                                                            CheckBox checkBox14 = (CheckBox) view.findViewById(R.id.cq_checkbox_unlock_tone);
                                                                            if (checkBox14 != null) {
                                                                                i = R.id.cq_checkbox_welcomefunc;
                                                                                CheckBox checkBox15 = (CheckBox) view.findViewById(R.id.cq_checkbox_welcomefunc);
                                                                                if (checkBox15 != null) {
                                                                                    i = R.id.cq_rl_alramvol;
                                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.cq_rl_alramvol);
                                                                                    if (relativeLayout2 != null) {
                                                                                        i = R.id.cq_rl_cozy;
                                                                                        RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.cq_rl_cozy);
                                                                                        if (relativeLayout3 != null) {
                                                                                            i = R.id.cq_rl_cyclectrl;
                                                                                            RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.cq_rl_cyclectrl);
                                                                                            if (relativeLayout4 != null) {
                                                                                                i = R.id.cq_rl_followtohome;
                                                                                                RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.cq_rl_followtohome);
                                                                                                if (relativeLayout5 != null) {
                                                                                                    i = R.id.cq_rl_lan;
                                                                                                    RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.cq_rl_lan);
                                                                                                    if (relativeLayout6 != null) {
                                                                                                        i = R.id.cq_rl_lightsensitivity;
                                                                                                        RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.cq_rl_lightsensitivity);
                                                                                                        if (relativeLayout7 != null) {
                                                                                                            i = R.id.cq_rl_overspeed;
                                                                                                            RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.cq_rl_overspeed);
                                                                                                            if (relativeLayout8 != null) {
                                                                                                                i = R.id.cq_rl_powertime;
                                                                                                                RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.cq_rl_powertime);
                                                                                                                if (relativeLayout9 != null) {
                                                                                                                    i = R.id.cq_rl_remoteunlock;
                                                                                                                    RelativeLayout relativeLayout10 = (RelativeLayout) view.findViewById(R.id.cq_rl_remoteunlock);
                                                                                                                    if (relativeLayout10 != null) {
                                                                                                                        i = R.id.cq_rl_starttime;
                                                                                                                        RelativeLayout relativeLayout11 = (RelativeLayout) view.findViewById(R.id.cq_rl_starttime);
                                                                                                                        if (relativeLayout11 != null) {
                                                                                                                            i = R.id.cq_rl_steermode;
                                                                                                                            RelativeLayout relativeLayout12 = (RelativeLayout) view.findViewById(R.id.cq_rl_steermode);
                                                                                                                            if (relativeLayout12 != null) {
                                                                                                                                return new CqCarSetBinding((ScrollView) view, relativeLayout, textView, textView2, textView3, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, checkBox11, checkBox12, checkBox13, checkBox14, checkBox15, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, relativeLayout10, relativeLayout11, relativeLayout12);
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
