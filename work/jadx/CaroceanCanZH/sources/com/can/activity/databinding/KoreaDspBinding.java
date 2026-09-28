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
public final class KoreaDspBinding implements ViewBinding {
    public final LinearLayout koreaDspAseq;
    public final DspBalance koreaDspBalance;
    public final SeekBar koreaDspBass;
    public final TextView koreaDspBassVal;
    public final TextView koreaDspMainVal;
    public final SeekBar koreaDspMainVol;
    public final SeekBar koreaDspMid;
    public final TextView koreaDspMidVal;
    public final SeekBar koreaDspTre;
    public final TextView koreaDspTreVal;
    public final ImageView koreaImAddFront;
    public final ImageView koreaImAddLeft;
    public final ImageView koreaImAddRear;
    public final ImageView koreaImAddRight;
    public final LinearLayout koreaLlMainVol;
    private final LinearLayout rootView;

    private KoreaDspBinding(LinearLayout linearLayout, LinearLayout linearLayout2, DspBalance dspBalance, SeekBar seekBar, TextView textView, TextView textView2, SeekBar seekBar2, SeekBar seekBar3, TextView textView3, SeekBar seekBar4, TextView textView4, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.koreaDspAseq = linearLayout2;
        this.koreaDspBalance = dspBalance;
        this.koreaDspBass = seekBar;
        this.koreaDspBassVal = textView;
        this.koreaDspMainVal = textView2;
        this.koreaDspMainVol = seekBar2;
        this.koreaDspMid = seekBar3;
        this.koreaDspMidVal = textView3;
        this.koreaDspTre = seekBar4;
        this.koreaDspTreVal = textView4;
        this.koreaImAddFront = imageView;
        this.koreaImAddLeft = imageView2;
        this.koreaImAddRear = imageView3;
        this.koreaImAddRight = imageView4;
        this.koreaLlMainVol = linearLayout3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static KoreaDspBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static KoreaDspBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.korea_dsp, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static KoreaDspBinding bind(View view) {
        int i = R.id.korea_dsp_aseq;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.korea_dsp_aseq);
        if (linearLayout != null) {
            i = R.id.korea_dsp_balance;
            DspBalance dspBalance = (DspBalance) view.findViewById(R.id.korea_dsp_balance);
            if (dspBalance != null) {
                i = R.id.korea_dsp_bass;
                SeekBar seekBar = (SeekBar) view.findViewById(R.id.korea_dsp_bass);
                if (seekBar != null) {
                    i = R.id.korea_dsp_bass_val;
                    TextView textView = (TextView) view.findViewById(R.id.korea_dsp_bass_val);
                    if (textView != null) {
                        i = R.id.korea_dsp_main_val;
                        TextView textView2 = (TextView) view.findViewById(R.id.korea_dsp_main_val);
                        if (textView2 != null) {
                            i = R.id.korea_dsp_main_vol;
                            SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.korea_dsp_main_vol);
                            if (seekBar2 != null) {
                                i = R.id.korea_dsp_mid;
                                SeekBar seekBar3 = (SeekBar) view.findViewById(R.id.korea_dsp_mid);
                                if (seekBar3 != null) {
                                    i = R.id.korea_dsp_mid_val;
                                    TextView textView3 = (TextView) view.findViewById(R.id.korea_dsp_mid_val);
                                    if (textView3 != null) {
                                        i = R.id.korea_dsp_tre;
                                        SeekBar seekBar4 = (SeekBar) view.findViewById(R.id.korea_dsp_tre);
                                        if (seekBar4 != null) {
                                            i = R.id.korea_dsp_tre_val;
                                            TextView textView4 = (TextView) view.findViewById(R.id.korea_dsp_tre_val);
                                            if (textView4 != null) {
                                                i = R.id.korea_im_add_front;
                                                ImageView imageView = (ImageView) view.findViewById(R.id.korea_im_add_front);
                                                if (imageView != null) {
                                                    i = R.id.korea_im_add_left;
                                                    ImageView imageView2 = (ImageView) view.findViewById(R.id.korea_im_add_left);
                                                    if (imageView2 != null) {
                                                        i = R.id.korea_im_add_rear;
                                                        ImageView imageView3 = (ImageView) view.findViewById(R.id.korea_im_add_rear);
                                                        if (imageView3 != null) {
                                                            i = R.id.korea_im_add_right;
                                                            ImageView imageView4 = (ImageView) view.findViewById(R.id.korea_im_add_right);
                                                            if (imageView4 != null) {
                                                                i = R.id.korea_ll_main_vol;
                                                                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.korea_ll_main_vol);
                                                                if (linearLayout2 != null) {
                                                                    return new KoreaDspBinding((LinearLayout) view, linearLayout, dspBalance, seekBar, textView, textView2, seekBar2, seekBar3, textView3, seekBar4, textView4, imageView, imageView2, imageView3, imageView4, linearLayout2);
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
