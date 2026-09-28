package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Nissan08teanaRadioBinding implements ViewBinding {
    public final LinearLayout nissan08Layout1;
    public final LinearLayout nissan08Layout2;
    private final LinearLayout rootView;
    public final TextView textViewAuto08teana;
    public final TextView textViewBand08teana;
    public final TextView textViewDiscstatus08teana;
    public final TextView textViewFloder08teana;
    public final TextView textViewFreq08teana;
    public final TextView textViewMp308teana;
    public final TextView textViewPlaymode08teana;
    public final TextView textViewRds08teana;
    public final TextView textViewScan08teana;
    public final TextView textViewScane08teana;
    public final TextView textViewSt08teana;
    public final TextView textViewTextinfo08teana;
    public final TextView textViewTextinfo108teana;
    public final TextView textViewTrack08teana;
    public final TextView textViewUnit08teana;
    public final TextView textViewWma08teana;
    public final TextView textViewWorkmode08teana;

    private Nissan08teanaRadioBinding(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, TextView textView16, TextView textView17) {
        this.rootView = linearLayout;
        this.nissan08Layout1 = linearLayout2;
        this.nissan08Layout2 = linearLayout3;
        this.textViewAuto08teana = textView;
        this.textViewBand08teana = textView2;
        this.textViewDiscstatus08teana = textView3;
        this.textViewFloder08teana = textView4;
        this.textViewFreq08teana = textView5;
        this.textViewMp308teana = textView6;
        this.textViewPlaymode08teana = textView7;
        this.textViewRds08teana = textView8;
        this.textViewScan08teana = textView9;
        this.textViewScane08teana = textView10;
        this.textViewSt08teana = textView11;
        this.textViewTextinfo08teana = textView12;
        this.textViewTextinfo108teana = textView13;
        this.textViewTrack08teana = textView14;
        this.textViewUnit08teana = textView15;
        this.textViewWma08teana = textView16;
        this.textViewWorkmode08teana = textView17;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static Nissan08teanaRadioBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Nissan08teanaRadioBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.nissan_08teana_radio, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Nissan08teanaRadioBinding bind(View view) {
        int i = R.id.nissan_08_layout_1;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.nissan_08_layout_1);
        if (linearLayout != null) {
            i = R.id.nissan_08_layout_2;
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.nissan_08_layout_2);
            if (linearLayout2 != null) {
                i = R.id.textView_auto_08teana;
                TextView textView = (TextView) view.findViewById(R.id.textView_auto_08teana);
                if (textView != null) {
                    i = R.id.textView_band_08teana;
                    TextView textView2 = (TextView) view.findViewById(R.id.textView_band_08teana);
                    if (textView2 != null) {
                        i = R.id.textView_discstatus_08teana;
                        TextView textView3 = (TextView) view.findViewById(R.id.textView_discstatus_08teana);
                        if (textView3 != null) {
                            i = R.id.textView_floder_08teana;
                            TextView textView4 = (TextView) view.findViewById(R.id.textView_floder_08teana);
                            if (textView4 != null) {
                                i = R.id.textView_freq_08teana;
                                TextView textView5 = (TextView) view.findViewById(R.id.textView_freq_08teana);
                                if (textView5 != null) {
                                    i = R.id.textView_mp3_08teana;
                                    TextView textView6 = (TextView) view.findViewById(R.id.textView_mp3_08teana);
                                    if (textView6 != null) {
                                        i = R.id.textView_playmode_08teana;
                                        TextView textView7 = (TextView) view.findViewById(R.id.textView_playmode_08teana);
                                        if (textView7 != null) {
                                            i = R.id.textView_rds_08teana;
                                            TextView textView8 = (TextView) view.findViewById(R.id.textView_rds_08teana);
                                            if (textView8 != null) {
                                                i = R.id.textView_scan_08teana;
                                                TextView textView9 = (TextView) view.findViewById(R.id.textView_scan_08teana);
                                                if (textView9 != null) {
                                                    i = R.id.textView_scane_08teana;
                                                    TextView textView10 = (TextView) view.findViewById(R.id.textView_scane_08teana);
                                                    if (textView10 != null) {
                                                        i = R.id.textView_st_08teana;
                                                        TextView textView11 = (TextView) view.findViewById(R.id.textView_st_08teana);
                                                        if (textView11 != null) {
                                                            i = R.id.textView_textinfo_08teana;
                                                            TextView textView12 = (TextView) view.findViewById(R.id.textView_textinfo_08teana);
                                                            if (textView12 != null) {
                                                                i = R.id.textView_textinfo1_08teana;
                                                                TextView textView13 = (TextView) view.findViewById(R.id.textView_textinfo1_08teana);
                                                                if (textView13 != null) {
                                                                    i = R.id.textView_track_08teana;
                                                                    TextView textView14 = (TextView) view.findViewById(R.id.textView_track_08teana);
                                                                    if (textView14 != null) {
                                                                        i = R.id.textView_unit_08teana;
                                                                        TextView textView15 = (TextView) view.findViewById(R.id.textView_unit_08teana);
                                                                        if (textView15 != null) {
                                                                            i = R.id.textView_wma_08teana;
                                                                            TextView textView16 = (TextView) view.findViewById(R.id.textView_wma_08teana);
                                                                            if (textView16 != null) {
                                                                                i = R.id.textView_workmode_08teana;
                                                                                TextView textView17 = (TextView) view.findViewById(R.id.textView_workmode_08teana);
                                                                                if (textView17 != null) {
                                                                                    return new Nissan08teanaRadioBinding((LinearLayout) view, linearLayout, linearLayout2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17);
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
