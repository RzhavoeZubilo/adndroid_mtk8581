package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Nissan08teanaXbsDspBinding implements ViewBinding {
    public final CheckBox dspCheckBeep;
    public final LinearLayout layoutVolume;
    public final TextView nissan08BeepOnoff;
    private final LinearLayout rootView;
    public final SeekBar seekbarEqBalance;
    public final SeekBar seekbarEqBass;
    public final SeekBar seekbarEqFade;
    public final SeekBar seekbarEqTreble;
    public final SeekBar seekbarEqVolume;
    public final TextView tvEqBalance;
    public final TextView tvEqBass;
    public final TextView tvEqFade;
    public final TextView tvEqTreble;
    public final TextView tvEqVolume;

    private Nissan08teanaXbsDspBinding(LinearLayout linearLayout, CheckBox checkBox, LinearLayout linearLayout2, TextView textView, SeekBar seekBar, SeekBar seekBar2, SeekBar seekBar3, SeekBar seekBar4, SeekBar seekBar5, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = linearLayout;
        this.dspCheckBeep = checkBox;
        this.layoutVolume = linearLayout2;
        this.nissan08BeepOnoff = textView;
        this.seekbarEqBalance = seekBar;
        this.seekbarEqBass = seekBar2;
        this.seekbarEqFade = seekBar3;
        this.seekbarEqTreble = seekBar4;
        this.seekbarEqVolume = seekBar5;
        this.tvEqBalance = textView2;
        this.tvEqBass = textView3;
        this.tvEqFade = textView4;
        this.tvEqTreble = textView5;
        this.tvEqVolume = textView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static Nissan08teanaXbsDspBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Nissan08teanaXbsDspBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.nissan_08teana_xbs_dsp, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Nissan08teanaXbsDspBinding bind(View view) {
        int i = R.id.dsp_check_beep;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.dsp_check_beep);
        if (checkBox != null) {
            i = R.id.layout_volume;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.layout_volume);
            if (linearLayout != null) {
                i = R.id.nissan_08_beep_onoff;
                TextView textView = (TextView) view.findViewById(R.id.nissan_08_beep_onoff);
                if (textView != null) {
                    i = R.id.seekbar_eq_balance;
                    SeekBar seekBar = (SeekBar) view.findViewById(R.id.seekbar_eq_balance);
                    if (seekBar != null) {
                        i = R.id.seekbar_eq_bass;
                        SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.seekbar_eq_bass);
                        if (seekBar2 != null) {
                            i = R.id.seekbar_eq_fade;
                            SeekBar seekBar3 = (SeekBar) view.findViewById(R.id.seekbar_eq_fade);
                            if (seekBar3 != null) {
                                i = R.id.seekbar_eq_treble;
                                SeekBar seekBar4 = (SeekBar) view.findViewById(R.id.seekbar_eq_treble);
                                if (seekBar4 != null) {
                                    i = R.id.seekbar_eq_volume;
                                    SeekBar seekBar5 = (SeekBar) view.findViewById(R.id.seekbar_eq_volume);
                                    if (seekBar5 != null) {
                                        i = R.id.tv_eq_balance;
                                        TextView textView2 = (TextView) view.findViewById(R.id.tv_eq_balance);
                                        if (textView2 != null) {
                                            i = R.id.tv_eq_bass;
                                            TextView textView3 = (TextView) view.findViewById(R.id.tv_eq_bass);
                                            if (textView3 != null) {
                                                i = R.id.tv_eq_fade;
                                                TextView textView4 = (TextView) view.findViewById(R.id.tv_eq_fade);
                                                if (textView4 != null) {
                                                    i = R.id.tv_eq_treble;
                                                    TextView textView5 = (TextView) view.findViewById(R.id.tv_eq_treble);
                                                    if (textView5 != null) {
                                                        i = R.id.tv_eq_volume;
                                                        TextView textView6 = (TextView) view.findViewById(R.id.tv_eq_volume);
                                                        if (textView6 != null) {
                                                            return new Nissan08teanaXbsDspBinding((LinearLayout) view, checkBox, linearLayout, textView, seekBar, seekBar2, seekBar3, seekBar4, seekBar5, textView2, textView3, textView4, textView5, textView6);
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
