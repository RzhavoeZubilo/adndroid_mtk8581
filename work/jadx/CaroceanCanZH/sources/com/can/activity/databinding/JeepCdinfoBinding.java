package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.FuelSeekBar;

/* JADX INFO: loaded from: classes.dex */
public final class JeepCdinfoBinding implements ViewBinding {
    public final FuelSeekBar barJeepCdinfoProcess;
    public final TextView btnJeepCdinfoFNext;
    public final TextView btnJeepCdinfoFPre;
    public final TextView btnJeepCdinfoNext;
    public final TextView btnJeepCdinfoPause;
    public final TextView btnJeepCdinfoPlay;
    public final TextView btnJeepCdinfoPre;
    public final TextView btnJeepCdinfoRandomOff;
    public final TextView btnJeepCdinfoRandomOn;
    public final TextView btnJeepCdinfoRepeatOff;
    public final TextView btnJeepCdinfoRepeatOn;
    public final LinearLayout layoutAllBtn;
    public final LinearLayout layoutAllProgress;
    public final ListView listJeepCdInfo;
    private final RelativeLayout rootView;
    public final TextView txJeepCdinfoCurTime;
    public final TextView txJeepCdinfoMode;
    public final TextView txJeepCdinfoState;
    public final TextView txJeepCdinfoTrack;

    private JeepCdinfoBinding(RelativeLayout relativeLayout, FuelSeekBar fuelSeekBar, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, LinearLayout linearLayout, LinearLayout linearLayout2, ListView listView, TextView textView11, TextView textView12, TextView textView13, TextView textView14) {
        this.rootView = relativeLayout;
        this.barJeepCdinfoProcess = fuelSeekBar;
        this.btnJeepCdinfoFNext = textView;
        this.btnJeepCdinfoFPre = textView2;
        this.btnJeepCdinfoNext = textView3;
        this.btnJeepCdinfoPause = textView4;
        this.btnJeepCdinfoPlay = textView5;
        this.btnJeepCdinfoPre = textView6;
        this.btnJeepCdinfoRandomOff = textView7;
        this.btnJeepCdinfoRandomOn = textView8;
        this.btnJeepCdinfoRepeatOff = textView9;
        this.btnJeepCdinfoRepeatOn = textView10;
        this.layoutAllBtn = linearLayout;
        this.layoutAllProgress = linearLayout2;
        this.listJeepCdInfo = listView;
        this.txJeepCdinfoCurTime = textView11;
        this.txJeepCdinfoMode = textView12;
        this.txJeepCdinfoState = textView13;
        this.txJeepCdinfoTrack = textView14;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static JeepCdinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static JeepCdinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.jeep_cdinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static JeepCdinfoBinding bind(View view) {
        int i = R.id.bar_jeep_cdinfo_process;
        FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.bar_jeep_cdinfo_process);
        if (fuelSeekBar != null) {
            i = R.id.btn_jeep_cdinfo_f_next;
            TextView textView = (TextView) view.findViewById(R.id.btn_jeep_cdinfo_f_next);
            if (textView != null) {
                i = R.id.btn_jeep_cdinfo_f_pre;
                TextView textView2 = (TextView) view.findViewById(R.id.btn_jeep_cdinfo_f_pre);
                if (textView2 != null) {
                    i = R.id.btn_jeep_cdinfo_next;
                    TextView textView3 = (TextView) view.findViewById(R.id.btn_jeep_cdinfo_next);
                    if (textView3 != null) {
                        i = R.id.btn_jeep_cdinfo_pause;
                        TextView textView4 = (TextView) view.findViewById(R.id.btn_jeep_cdinfo_pause);
                        if (textView4 != null) {
                            i = R.id.btn_jeep_cdinfo_play;
                            TextView textView5 = (TextView) view.findViewById(R.id.btn_jeep_cdinfo_play);
                            if (textView5 != null) {
                                i = R.id.btn_jeep_cdinfo_pre;
                                TextView textView6 = (TextView) view.findViewById(R.id.btn_jeep_cdinfo_pre);
                                if (textView6 != null) {
                                    i = R.id.btn_jeep_cdinfo_random_off;
                                    TextView textView7 = (TextView) view.findViewById(R.id.btn_jeep_cdinfo_random_off);
                                    if (textView7 != null) {
                                        i = R.id.btn_jeep_cdinfo_random_on;
                                        TextView textView8 = (TextView) view.findViewById(R.id.btn_jeep_cdinfo_random_on);
                                        if (textView8 != null) {
                                            i = R.id.btn_jeep_cdinfo_repeat_off;
                                            TextView textView9 = (TextView) view.findViewById(R.id.btn_jeep_cdinfo_repeat_off);
                                            if (textView9 != null) {
                                                i = R.id.btn_jeep_cdinfo_repeat_on;
                                                TextView textView10 = (TextView) view.findViewById(R.id.btn_jeep_cdinfo_repeat_on);
                                                if (textView10 != null) {
                                                    i = R.id.layout_all_btn;
                                                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.layout_all_btn);
                                                    if (linearLayout != null) {
                                                        i = R.id.layout_all_progress;
                                                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.layout_all_progress);
                                                        if (linearLayout2 != null) {
                                                            i = R.id.list_jeep_cd_info;
                                                            ListView listView = (ListView) view.findViewById(R.id.list_jeep_cd_info);
                                                            if (listView != null) {
                                                                i = R.id.tx_jeep_cdinfo_cur_time;
                                                                TextView textView11 = (TextView) view.findViewById(R.id.tx_jeep_cdinfo_cur_time);
                                                                if (textView11 != null) {
                                                                    i = R.id.tx_jeep_cdinfo_mode;
                                                                    TextView textView12 = (TextView) view.findViewById(R.id.tx_jeep_cdinfo_mode);
                                                                    if (textView12 != null) {
                                                                        i = R.id.tx_jeep_cdinfo_state;
                                                                        TextView textView13 = (TextView) view.findViewById(R.id.tx_jeep_cdinfo_state);
                                                                        if (textView13 != null) {
                                                                            i = R.id.tx_jeep_cdinfo_track;
                                                                            TextView textView14 = (TextView) view.findViewById(R.id.tx_jeep_cdinfo_track);
                                                                            if (textView14 != null) {
                                                                                return new JeepCdinfoBinding((RelativeLayout) view, fuelSeekBar, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, linearLayout, linearLayout2, listView, textView11, textView12, textView13, textView14);
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
