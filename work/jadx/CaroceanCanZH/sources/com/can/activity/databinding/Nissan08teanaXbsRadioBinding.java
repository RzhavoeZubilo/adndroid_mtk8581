package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Nissan08teanaXbsRadioBinding implements ViewBinding {
    public final LinearLayout nissan08Layout1;
    public final LinearLayout nissan08Layout2;
    private final LinearLayout rootView;
    public final TextView tvAutoPState;
    public final TextView tvCdDisc;
    public final TextView tvCdPlayMode;
    public final TextView tvCdTextInfo;
    public final TextView tvCdTime;
    public final TextView tvCdTrack;
    public final TextView tvCdWorkMode;
    public final TextView tvDisc01Status;
    public final TextView tvDisc02Status;
    public final TextView tvDisc03Status;
    public final TextView tvDisc04Status;
    public final TextView tvDisc05Status;
    public final TextView tvDisc06Status;
    public final TextView tvFolderState;
    public final TextView tvMp3State;
    public final TextView tvRadioBand;
    public final TextView tvRadioChannel;
    public final TextView tvRadioFreq;
    public final TextView tvRadioScaneState;
    public final TextView tvRadioText;
    public final TextView tvRadioUnit;
    public final TextView tvRdsState;
    public final TextView tvScaneState;
    public final TextView tvStState;
    public final TextView tvWmaState;

    private Nissan08teanaXbsRadioBinding(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, TextView textView16, TextView textView17, TextView textView18, TextView textView19, TextView textView20, TextView textView21, TextView textView22, TextView textView23, TextView textView24, TextView textView25) {
        this.rootView = linearLayout;
        this.nissan08Layout1 = linearLayout2;
        this.nissan08Layout2 = linearLayout3;
        this.tvAutoPState = textView;
        this.tvCdDisc = textView2;
        this.tvCdPlayMode = textView3;
        this.tvCdTextInfo = textView4;
        this.tvCdTime = textView5;
        this.tvCdTrack = textView6;
        this.tvCdWorkMode = textView7;
        this.tvDisc01Status = textView8;
        this.tvDisc02Status = textView9;
        this.tvDisc03Status = textView10;
        this.tvDisc04Status = textView11;
        this.tvDisc05Status = textView12;
        this.tvDisc06Status = textView13;
        this.tvFolderState = textView14;
        this.tvMp3State = textView15;
        this.tvRadioBand = textView16;
        this.tvRadioChannel = textView17;
        this.tvRadioFreq = textView18;
        this.tvRadioScaneState = textView19;
        this.tvRadioText = textView20;
        this.tvRadioUnit = textView21;
        this.tvRdsState = textView22;
        this.tvScaneState = textView23;
        this.tvStState = textView24;
        this.tvWmaState = textView25;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static Nissan08teanaXbsRadioBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Nissan08teanaXbsRadioBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.nissan_08teana_xbs_radio, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Nissan08teanaXbsRadioBinding bind(View view) {
        int i = R.id.nissan_08_layout_1;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.nissan_08_layout_1);
        if (linearLayout != null) {
            i = R.id.nissan_08_layout_2;
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.nissan_08_layout_2);
            if (linearLayout2 != null) {
                i = R.id.tv_auto_p_state;
                TextView textView = (TextView) view.findViewById(R.id.tv_auto_p_state);
                if (textView != null) {
                    i = R.id.tv_cd_disc;
                    TextView textView2 = (TextView) view.findViewById(R.id.tv_cd_disc);
                    if (textView2 != null) {
                        i = R.id.tv_cd_play_mode;
                        TextView textView3 = (TextView) view.findViewById(R.id.tv_cd_play_mode);
                        if (textView3 != null) {
                            i = R.id.tv_cd_text_info;
                            TextView textView4 = (TextView) view.findViewById(R.id.tv_cd_text_info);
                            if (textView4 != null) {
                                i = R.id.tv_cd_time;
                                TextView textView5 = (TextView) view.findViewById(R.id.tv_cd_time);
                                if (textView5 != null) {
                                    i = R.id.tv_cd_track;
                                    TextView textView6 = (TextView) view.findViewById(R.id.tv_cd_track);
                                    if (textView6 != null) {
                                        i = R.id.tv_cd_work_mode;
                                        TextView textView7 = (TextView) view.findViewById(R.id.tv_cd_work_mode);
                                        if (textView7 != null) {
                                            i = R.id.tv_disc_01_status;
                                            TextView textView8 = (TextView) view.findViewById(R.id.tv_disc_01_status);
                                            if (textView8 != null) {
                                                i = R.id.tv_disc_02_status;
                                                TextView textView9 = (TextView) view.findViewById(R.id.tv_disc_02_status);
                                                if (textView9 != null) {
                                                    i = R.id.tv_disc_03_status;
                                                    TextView textView10 = (TextView) view.findViewById(R.id.tv_disc_03_status);
                                                    if (textView10 != null) {
                                                        i = R.id.tv_disc_04_status;
                                                        TextView textView11 = (TextView) view.findViewById(R.id.tv_disc_04_status);
                                                        if (textView11 != null) {
                                                            i = R.id.tv_disc_05_status;
                                                            TextView textView12 = (TextView) view.findViewById(R.id.tv_disc_05_status);
                                                            if (textView12 != null) {
                                                                i = R.id.tv_disc_06_status;
                                                                TextView textView13 = (TextView) view.findViewById(R.id.tv_disc_06_status);
                                                                if (textView13 != null) {
                                                                    i = R.id.tv_folder_state;
                                                                    TextView textView14 = (TextView) view.findViewById(R.id.tv_folder_state);
                                                                    if (textView14 != null) {
                                                                        i = R.id.tv_mp3_state;
                                                                        TextView textView15 = (TextView) view.findViewById(R.id.tv_mp3_state);
                                                                        if (textView15 != null) {
                                                                            i = R.id.tv_radio_band;
                                                                            TextView textView16 = (TextView) view.findViewById(R.id.tv_radio_band);
                                                                            if (textView16 != null) {
                                                                                i = R.id.tv_radio_channel;
                                                                                TextView textView17 = (TextView) view.findViewById(R.id.tv_radio_channel);
                                                                                if (textView17 != null) {
                                                                                    i = R.id.tv_radio_freq;
                                                                                    TextView textView18 = (TextView) view.findViewById(R.id.tv_radio_freq);
                                                                                    if (textView18 != null) {
                                                                                        i = R.id.tv_radio_scane_state;
                                                                                        TextView textView19 = (TextView) view.findViewById(R.id.tv_radio_scane_state);
                                                                                        if (textView19 != null) {
                                                                                            i = R.id.tv_radio_text;
                                                                                            TextView textView20 = (TextView) view.findViewById(R.id.tv_radio_text);
                                                                                            if (textView20 != null) {
                                                                                                i = R.id.tv_radio_unit;
                                                                                                TextView textView21 = (TextView) view.findViewById(R.id.tv_radio_unit);
                                                                                                if (textView21 != null) {
                                                                                                    i = R.id.tv_rds_state;
                                                                                                    TextView textView22 = (TextView) view.findViewById(R.id.tv_rds_state);
                                                                                                    if (textView22 != null) {
                                                                                                        i = R.id.tv_scane_state;
                                                                                                        TextView textView23 = (TextView) view.findViewById(R.id.tv_scane_state);
                                                                                                        if (textView23 != null) {
                                                                                                            i = R.id.tv_st_state;
                                                                                                            TextView textView24 = (TextView) view.findViewById(R.id.tv_st_state);
                                                                                                            if (textView24 != null) {
                                                                                                                i = R.id.tv_wma_state;
                                                                                                                TextView textView25 = (TextView) view.findViewById(R.id.tv_wma_state);
                                                                                                                if (textView25 != null) {
                                                                                                                    return new Nissan08teanaXbsRadioBinding((LinearLayout) view, linearLayout, linearLayout2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, textView21, textView22, textView23, textView24, textView25);
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
