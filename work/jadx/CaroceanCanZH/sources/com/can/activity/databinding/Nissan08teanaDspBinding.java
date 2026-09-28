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
import com.can.ui.draw.DspBalance;

/* JADX INFO: loaded from: classes.dex */
public final class Nissan08teanaDspBinding implements ViewBinding {
    public final DspBalance dspBalance;
    public final CheckBox dspCheckBeep;
    public final TextView nissan08BeepOnoff;
    private final LinearLayout rootView;
    public final SeekBar toyotaDspBass;
    public final TextView toyotaDspBassVal;
    public final SeekBar toyotaDspTre;
    public final TextView toyotaDspTreVal;
    public final SeekBar toyotaDspVolume;
    public final TextView toyotaDspVolumeHint;
    public final TextView toyotaDspVolumeVal;

    private Nissan08teanaDspBinding(LinearLayout linearLayout, DspBalance dspBalance, CheckBox checkBox, TextView textView, SeekBar seekBar, TextView textView2, SeekBar seekBar2, TextView textView3, SeekBar seekBar3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.dspBalance = dspBalance;
        this.dspCheckBeep = checkBox;
        this.nissan08BeepOnoff = textView;
        this.toyotaDspBass = seekBar;
        this.toyotaDspBassVal = textView2;
        this.toyotaDspTre = seekBar2;
        this.toyotaDspTreVal = textView3;
        this.toyotaDspVolume = seekBar3;
        this.toyotaDspVolumeHint = textView4;
        this.toyotaDspVolumeVal = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static Nissan08teanaDspBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Nissan08teanaDspBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.nissan_08teana_dsp, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Nissan08teanaDspBinding bind(View view) {
        int i = R.id.dsp_balance;
        DspBalance dspBalance = (DspBalance) view.findViewById(R.id.dsp_balance);
        if (dspBalance != null) {
            i = R.id.dsp_check_beep;
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.dsp_check_beep);
            if (checkBox != null) {
                i = R.id.nissan_08_beep_onoff;
                TextView textView = (TextView) view.findViewById(R.id.nissan_08_beep_onoff);
                if (textView != null) {
                    i = R.id.toyota_dsp_bass;
                    SeekBar seekBar = (SeekBar) view.findViewById(R.id.toyota_dsp_bass);
                    if (seekBar != null) {
                        i = R.id.toyota_dsp_bass_val;
                        TextView textView2 = (TextView) view.findViewById(R.id.toyota_dsp_bass_val);
                        if (textView2 != null) {
                            i = R.id.toyota_dsp_tre;
                            SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.toyota_dsp_tre);
                            if (seekBar2 != null) {
                                i = R.id.toyota_dsp_tre_val;
                                TextView textView3 = (TextView) view.findViewById(R.id.toyota_dsp_tre_val);
                                if (textView3 != null) {
                                    i = R.id.toyota_dsp_volume;
                                    SeekBar seekBar3 = (SeekBar) view.findViewById(R.id.toyota_dsp_volume);
                                    if (seekBar3 != null) {
                                        i = R.id.toyota_dsp_volume_hint;
                                        TextView textView4 = (TextView) view.findViewById(R.id.toyota_dsp_volume_hint);
                                        if (textView4 != null) {
                                            i = R.id.toyota_dsp_volume_val;
                                            TextView textView5 = (TextView) view.findViewById(R.id.toyota_dsp_volume_val);
                                            if (textView5 != null) {
                                                return new Nissan08teanaDspBinding((LinearLayout) view, dspBalance, checkBox, textView, seekBar, textView2, seekBar2, textView3, seekBar3, textView4, textView5);
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
