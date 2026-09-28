package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class KodiaqDrvingModeBinding implements ViewBinding {
    public final CheckBox kodiaqCheckboxDownHill;
    public final CheckBox kodiaqCheckboxPakingAssit;
    public final CheckBox kodiaqCheckboxRampStart;
    public final CheckBox kodiaqCheckboxSlowDown;
    public final LinearLayout kodiaqLayoutOr;
    public final LinearLayout kodiaqLayoutOrPerson;
    public final LinearLayout kodiaqLayoutPerson;
    public final RelativeLayout kodiaqRlAir;
    public final RelativeLayout kodiaqRlDrivingMode;
    public final RelativeLayout kodiaqRlEngine;
    public final RelativeLayout kodiaqRlFrontLight;
    public final RelativeLayout kodiaqRlOrAir;
    public final RelativeLayout kodiaqRlOrEngine;
    public final RelativeLayout kodiaqRlOrFourWheel;
    public final RelativeLayout kodiaqRlOrSteering;
    public final RelativeLayout kodiaqRlSteering;
    public final TextView kodiaqTxtAir;
    public final TextView kodiaqTxtDrivingMode;
    public final TextView kodiaqTxtEngine;
    public final TextView kodiaqTxtFrontLight;
    public final TextView kodiaqTxtOrAir;
    public final TextView kodiaqTxtOrEngine;
    public final TextView kodiaqTxtOrFourWheel;
    public final TextView kodiaqTxtOrReset;
    public final TextView kodiaqTxtOrSteering;
    public final TextView kodiaqTxtReset;
    public final TextView kodiaqTxtSteering;
    private final ScrollView rootView;

    private KodiaqDrvingModeBinding(ScrollView scrollView, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11) {
        this.rootView = scrollView;
        this.kodiaqCheckboxDownHill = checkBox;
        this.kodiaqCheckboxPakingAssit = checkBox2;
        this.kodiaqCheckboxRampStart = checkBox3;
        this.kodiaqCheckboxSlowDown = checkBox4;
        this.kodiaqLayoutOr = linearLayout;
        this.kodiaqLayoutOrPerson = linearLayout2;
        this.kodiaqLayoutPerson = linearLayout3;
        this.kodiaqRlAir = relativeLayout;
        this.kodiaqRlDrivingMode = relativeLayout2;
        this.kodiaqRlEngine = relativeLayout3;
        this.kodiaqRlFrontLight = relativeLayout4;
        this.kodiaqRlOrAir = relativeLayout5;
        this.kodiaqRlOrEngine = relativeLayout6;
        this.kodiaqRlOrFourWheel = relativeLayout7;
        this.kodiaqRlOrSteering = relativeLayout8;
        this.kodiaqRlSteering = relativeLayout9;
        this.kodiaqTxtAir = textView;
        this.kodiaqTxtDrivingMode = textView2;
        this.kodiaqTxtEngine = textView3;
        this.kodiaqTxtFrontLight = textView4;
        this.kodiaqTxtOrAir = textView5;
        this.kodiaqTxtOrEngine = textView6;
        this.kodiaqTxtOrFourWheel = textView7;
        this.kodiaqTxtOrReset = textView8;
        this.kodiaqTxtOrSteering = textView9;
        this.kodiaqTxtReset = textView10;
        this.kodiaqTxtSteering = textView11;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static KodiaqDrvingModeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static KodiaqDrvingModeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.kodiaq_drving_mode, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static KodiaqDrvingModeBinding bind(View view) {
        int i = R.id.kodiaq_checkbox_down_hill;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.kodiaq_checkbox_down_hill);
        if (checkBox != null) {
            i = R.id.kodiaq_checkbox_paking_assit;
            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.kodiaq_checkbox_paking_assit);
            if (checkBox2 != null) {
                i = R.id.kodiaq_checkbox_ramp_start;
                CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.kodiaq_checkbox_ramp_start);
                if (checkBox3 != null) {
                    i = R.id.kodiaq_checkbox_slow_down;
                    CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.kodiaq_checkbox_slow_down);
                    if (checkBox4 != null) {
                        i = R.id.kodiaq_layout_or;
                        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.kodiaq_layout_or);
                        if (linearLayout != null) {
                            i = R.id.kodiaq_layout_or_person;
                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.kodiaq_layout_or_person);
                            if (linearLayout2 != null) {
                                i = R.id.kodiaq_layout_person;
                                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.kodiaq_layout_person);
                                if (linearLayout3 != null) {
                                    i = R.id.kodiaq_rl_air;
                                    RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.kodiaq_rl_air);
                                    if (relativeLayout != null) {
                                        i = R.id.kodiaq_rl_driving_mode;
                                        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.kodiaq_rl_driving_mode);
                                        if (relativeLayout2 != null) {
                                            i = R.id.kodiaq_rl_engine;
                                            RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.kodiaq_rl_engine);
                                            if (relativeLayout3 != null) {
                                                i = R.id.kodiaq_rl_front_light;
                                                RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.kodiaq_rl_front_light);
                                                if (relativeLayout4 != null) {
                                                    i = R.id.kodiaq_rl_or_air;
                                                    RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.kodiaq_rl_or_air);
                                                    if (relativeLayout5 != null) {
                                                        i = R.id.kodiaq_rl_or_engine;
                                                        RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.kodiaq_rl_or_engine);
                                                        if (relativeLayout6 != null) {
                                                            i = R.id.kodiaq_rl_or_four_wheel;
                                                            RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.kodiaq_rl_or_four_wheel);
                                                            if (relativeLayout7 != null) {
                                                                i = R.id.kodiaq_rl_or_steering;
                                                                RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.kodiaq_rl_or_steering);
                                                                if (relativeLayout8 != null) {
                                                                    i = R.id.kodiaq_rl_steering;
                                                                    RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.kodiaq_rl_steering);
                                                                    if (relativeLayout9 != null) {
                                                                        i = R.id.kodiaq_txt_air;
                                                                        TextView textView = (TextView) view.findViewById(R.id.kodiaq_txt_air);
                                                                        if (textView != null) {
                                                                            i = R.id.kodiaq_txt_driving_mode;
                                                                            TextView textView2 = (TextView) view.findViewById(R.id.kodiaq_txt_driving_mode);
                                                                            if (textView2 != null) {
                                                                                i = R.id.kodiaq_txt_engine;
                                                                                TextView textView3 = (TextView) view.findViewById(R.id.kodiaq_txt_engine);
                                                                                if (textView3 != null) {
                                                                                    i = R.id.kodiaq_txt_front_light;
                                                                                    TextView textView4 = (TextView) view.findViewById(R.id.kodiaq_txt_front_light);
                                                                                    if (textView4 != null) {
                                                                                        i = R.id.kodiaq_txt_or_air;
                                                                                        TextView textView5 = (TextView) view.findViewById(R.id.kodiaq_txt_or_air);
                                                                                        if (textView5 != null) {
                                                                                            i = R.id.kodiaq_txt_or_engine;
                                                                                            TextView textView6 = (TextView) view.findViewById(R.id.kodiaq_txt_or_engine);
                                                                                            if (textView6 != null) {
                                                                                                i = R.id.kodiaq_txt_or_four_wheel;
                                                                                                TextView textView7 = (TextView) view.findViewById(R.id.kodiaq_txt_or_four_wheel);
                                                                                                if (textView7 != null) {
                                                                                                    i = R.id.kodiaq_txt_or_reset;
                                                                                                    TextView textView8 = (TextView) view.findViewById(R.id.kodiaq_txt_or_reset);
                                                                                                    if (textView8 != null) {
                                                                                                        i = R.id.kodiaq_txt_or_steering;
                                                                                                        TextView textView9 = (TextView) view.findViewById(R.id.kodiaq_txt_or_steering);
                                                                                                        if (textView9 != null) {
                                                                                                            i = R.id.kodiaq_txt_reset;
                                                                                                            TextView textView10 = (TextView) view.findViewById(R.id.kodiaq_txt_reset);
                                                                                                            if (textView10 != null) {
                                                                                                                i = R.id.kodiaq_txt_steering;
                                                                                                                TextView textView11 = (TextView) view.findViewById(R.id.kodiaq_txt_steering);
                                                                                                                if (textView11 != null) {
                                                                                                                    return new KodiaqDrvingModeBinding((ScrollView) view, checkBox, checkBox2, checkBox3, checkBox4, linearLayout, linearLayout2, linearLayout3, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11);
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
