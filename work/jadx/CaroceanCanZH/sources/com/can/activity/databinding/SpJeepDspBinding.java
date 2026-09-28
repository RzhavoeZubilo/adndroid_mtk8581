package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.DspBalance;

/* JADX INFO: loaded from: classes.dex */
public final class SpJeepDspBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final LinearLayout spJeepDspAseq;
    public final DspBalance spJeepDspBalance;
    public final SeekBar spJeepDspBass;
    public final TextView spJeepDspBassVal;
    public final TextView spJeepDspMainVal;
    public final SeekBar spJeepDspMainVol;
    public final SeekBar spJeepDspMid;
    public final TextView spJeepDspMidVal;
    public final SeekBar spJeepDspTre;
    public final TextView spJeepDspTreVal;
    public final ImageView spJeepImAddFront;
    public final ImageView spJeepImAddLeft;
    public final ImageView spJeepImAddRear;
    public final ImageView spJeepImAddRight;

    private SpJeepDspBinding(LinearLayout linearLayout, LinearLayout linearLayout2, DspBalance dspBalance, SeekBar seekBar, TextView textView, TextView textView2, SeekBar seekBar2, SeekBar seekBar3, TextView textView3, SeekBar seekBar4, TextView textView4, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4) {
        this.rootView = linearLayout;
        this.spJeepDspAseq = linearLayout2;
        this.spJeepDspBalance = dspBalance;
        this.spJeepDspBass = seekBar;
        this.spJeepDspBassVal = textView;
        this.spJeepDspMainVal = textView2;
        this.spJeepDspMainVol = seekBar2;
        this.spJeepDspMid = seekBar3;
        this.spJeepDspMidVal = textView3;
        this.spJeepDspTre = seekBar4;
        this.spJeepDspTreVal = textView4;
        this.spJeepImAddFront = imageView;
        this.spJeepImAddLeft = imageView2;
        this.spJeepImAddRear = imageView3;
        this.spJeepImAddRight = imageView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static SpJeepDspBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SpJeepDspBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.sp_jeep_dsp, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SpJeepDspBinding bind(View view) {
        int i = R.id.sp_jeep_dsp_aseq;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.sp_jeep_dsp_aseq);
        if (linearLayout != null) {
            i = R.id.sp_jeep_dsp_balance;
            DspBalance dspBalance = (DspBalance) view.findViewById(R.id.sp_jeep_dsp_balance);
            if (dspBalance != null) {
                i = R.id.sp_jeep_dsp_bass;
                SeekBar seekBar = (SeekBar) view.findViewById(R.id.sp_jeep_dsp_bass);
                if (seekBar != null) {
                    i = R.id.sp_jeep_dsp_bass_val;
                    TextView textView = (TextView) view.findViewById(R.id.sp_jeep_dsp_bass_val);
                    if (textView != null) {
                        i = R.id.sp_jeep_dsp_main_val;
                        TextView textView2 = (TextView) view.findViewById(R.id.sp_jeep_dsp_main_val);
                        if (textView2 != null) {
                            i = R.id.sp_jeep_dsp_main_vol;
                            SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.sp_jeep_dsp_main_vol);
                            if (seekBar2 != null) {
                                i = R.id.sp_jeep_dsp_mid;
                                SeekBar seekBar3 = (SeekBar) view.findViewById(R.id.sp_jeep_dsp_mid);
                                if (seekBar3 != null) {
                                    i = R.id.sp_jeep_dsp_mid_val;
                                    TextView textView3 = (TextView) view.findViewById(R.id.sp_jeep_dsp_mid_val);
                                    if (textView3 != null) {
                                        i = R.id.sp_jeep_dsp_tre;
                                        SeekBar seekBar4 = (SeekBar) view.findViewById(R.id.sp_jeep_dsp_tre);
                                        if (seekBar4 != null) {
                                            i = R.id.sp_jeep_dsp_tre_val;
                                            TextView textView4 = (TextView) view.findViewById(R.id.sp_jeep_dsp_tre_val);
                                            if (textView4 != null) {
                                                i = R.id.sp_jeep_im_add_front;
                                                ImageView imageView = (ImageView) view.findViewById(R.id.sp_jeep_im_add_front);
                                                if (imageView != null) {
                                                    i = R.id.sp_jeep_im_add_left;
                                                    ImageView imageView2 = (ImageView) view.findViewById(R.id.sp_jeep_im_add_left);
                                                    if (imageView2 != null) {
                                                        i = R.id.sp_jeep_im_add_rear;
                                                        ImageView imageView3 = (ImageView) view.findViewById(R.id.sp_jeep_im_add_rear);
                                                        if (imageView3 != null) {
                                                            i = R.id.sp_jeep_im_add_right;
                                                            ImageView imageView4 = (ImageView) view.findViewById(R.id.sp_jeep_im_add_right);
                                                            if (imageView4 != null) {
                                                                return new SpJeepDspBinding((LinearLayout) view, linearLayout, dspBalance, seekBar, textView, textView2, seekBar2, seekBar3, textView3, seekBar4, textView4, imageView, imageView2, imageView3, imageView4);
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
