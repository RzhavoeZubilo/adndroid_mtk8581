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
public final class GeelyCarSetBinding implements ViewBinding {
    public final CheckBox geelyCheckboxAllOpen;
    public final CheckBox geelyCheckboxAuxiliaryFollow;
    public final CheckBox geelyCheckboxCloseLights;
    public final CheckBox geelyCheckboxCloseWind;
    public final CheckBox geelyCheckboxCorrection;
    public final CheckBox geelyCheckboxDynamicTra;
    public final CheckBox geelyCheckboxQuitRDelay;
    public final CheckBox geelyCheckboxSingleVideo;
    public final CheckBox geelyCheckboxStaticTra;
    public final CheckBox geelyCheckboxUnlockByOff;
    public final RelativeLayout geelyRlHelpMode;
    public final RelativeLayout geelyRlLanSet;
    public final RelativeLayout geelyRlRemoteLock;
    private final ScrollView rootView;

    private GeelyCarSetBinding(ScrollView scrollView, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3) {
        this.rootView = scrollView;
        this.geelyCheckboxAllOpen = checkBox;
        this.geelyCheckboxAuxiliaryFollow = checkBox2;
        this.geelyCheckboxCloseLights = checkBox3;
        this.geelyCheckboxCloseWind = checkBox4;
        this.geelyCheckboxCorrection = checkBox5;
        this.geelyCheckboxDynamicTra = checkBox6;
        this.geelyCheckboxQuitRDelay = checkBox7;
        this.geelyCheckboxSingleVideo = checkBox8;
        this.geelyCheckboxStaticTra = checkBox9;
        this.geelyCheckboxUnlockByOff = checkBox10;
        this.geelyRlHelpMode = relativeLayout;
        this.geelyRlLanSet = relativeLayout2;
        this.geelyRlRemoteLock = relativeLayout3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static GeelyCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GeelyCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.geely_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static GeelyCarSetBinding bind(View view) {
        int i = R.id.geely_checkbox_all_open;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.geely_checkbox_all_open);
        if (checkBox != null) {
            i = R.id.geely_checkbox_auxiliary_follow;
            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.geely_checkbox_auxiliary_follow);
            if (checkBox2 != null) {
                i = R.id.geely_checkbox_close_lights;
                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.geely_checkbox_close_lights);
                if (checkBox3 != null) {
                    i = R.id.geely_checkbox_close_wind;
                    CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.geely_checkbox_close_wind);
                    if (checkBox4 != null) {
                        i = R.id.geely_checkbox_correction;
                        CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.geely_checkbox_correction);
                        if (checkBox5 != null) {
                            i = R.id.geely_checkbox_dynamic_tra;
                            CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.geely_checkbox_dynamic_tra);
                            if (checkBox6 != null) {
                                i = R.id.geely_checkbox_quit_r_delay;
                                CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.geely_checkbox_quit_r_delay);
                                if (checkBox7 != null) {
                                    i = R.id.geely_checkbox_single_video;
                                    CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.geely_checkbox_single_video);
                                    if (checkBox8 != null) {
                                        i = R.id.geely_checkbox_static_tra;
                                        CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.geely_checkbox_static_tra);
                                        if (checkBox9 != null) {
                                            i = R.id.geely_checkbox_unlock_by_off;
                                            CheckBox checkBox10 = (CheckBox) view.findViewById(R.id.geely_checkbox_unlock_by_off);
                                            if (checkBox10 != null) {
                                                i = R.id.geely_rl_help_mode;
                                                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.geely_rl_help_mode);
                                                if (relativeLayout != null) {
                                                    i = R.id.geely_rl_lan_set;
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.geely_rl_lan_set);
                                                    if (relativeLayout2 != null) {
                                                        i = R.id.geely_rl_remote_lock;
                                                        RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.geely_rl_remote_lock);
                                                        if (relativeLayout3 != null) {
                                                            return new GeelyCarSetBinding((ScrollView) view, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, relativeLayout, relativeLayout2, relativeLayout3);
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
