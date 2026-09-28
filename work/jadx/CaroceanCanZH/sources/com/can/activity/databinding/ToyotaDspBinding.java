package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.DspBalance;

/* JADX INFO: loaded from: classes.dex */
public final class ToyotaDspBinding implements ViewBinding {
    public final DspBalance dspBalance;
    public final CheckBox dspCheckAsl;
    public final CheckBox dspCheckSurround;
    public final RelativeLayout dspLayoutDev;
    public final LinearLayout dspLayoutInfo;
    public final ImageView imAddFront;
    public final ImageView imAddLeft;
    public final ImageView imAddRear;
    public final ImageView imAddRight;
    private final LinearLayout rootView;
    public final TextView toyotaBtnAsl;
    public final TextView toyotaBtnSurround;
    public final LinearLayout toyotaDspAseq;
    public final SeekBar toyotaDspBass;
    public final TextView toyotaDspBassVal;
    public final SeekBar toyotaDspMid;
    public final TextView toyotaDspMidVal;
    public final SeekBar toyotaDspTre;
    public final TextView toyotaDspTreVal;

    private ToyotaDspBinding(LinearLayout linearLayout, DspBalance dspBalance, CheckBox checkBox, CheckBox checkBox2, RelativeLayout relativeLayout, LinearLayout linearLayout2, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, TextView textView, TextView textView2, LinearLayout linearLayout3, SeekBar seekBar, TextView textView3, SeekBar seekBar2, TextView textView4, SeekBar seekBar3, TextView textView5) {
        this.rootView = linearLayout;
        this.dspBalance = dspBalance;
        this.dspCheckAsl = checkBox;
        this.dspCheckSurround = checkBox2;
        this.dspLayoutDev = relativeLayout;
        this.dspLayoutInfo = linearLayout2;
        this.imAddFront = imageView;
        this.imAddLeft = imageView2;
        this.imAddRear = imageView3;
        this.imAddRight = imageView4;
        this.toyotaBtnAsl = textView;
        this.toyotaBtnSurround = textView2;
        this.toyotaDspAseq = linearLayout3;
        this.toyotaDspBass = seekBar;
        this.toyotaDspBassVal = textView3;
        this.toyotaDspMid = seekBar2;
        this.toyotaDspMidVal = textView4;
        this.toyotaDspTre = seekBar3;
        this.toyotaDspTreVal = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ToyotaDspBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ToyotaDspBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toyota_dsp, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToyotaDspBinding bind(View view) {
        int i = R.id.dsp_balance;
        DspBalance dspBalance = (DspBalance) view.findViewById(R.id.dsp_balance);
        if (dspBalance != null) {
            i = R.id.dsp_check_asl;
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.dsp_check_asl);
            if (checkBox != null) {
                i = R.id.dsp_check_surround;
                CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.dsp_check_surround);
                if (checkBox2 != null) {
                    i = R.id.dsp_layout_dev;
                    RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.dsp_layout_dev);
                    if (relativeLayout != null) {
                        i = R.id.dsp_layout_info;
                        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.dsp_layout_info);
                        if (linearLayout != null) {
                            i = R.id.im_add_front;
                            ImageView imageView = (ImageView) view.findViewById(R.id.im_add_front);
                            if (imageView != null) {
                                i = R.id.im_add_left;
                                ImageView imageView2 = (ImageView) view.findViewById(R.id.im_add_left);
                                if (imageView2 != null) {
                                    i = R.id.im_add_rear;
                                    ImageView imageView3 = (ImageView) view.findViewById(R.id.im_add_rear);
                                    if (imageView3 != null) {
                                        i = R.id.im_add_right;
                                        ImageView imageView4 = (ImageView) view.findViewById(R.id.im_add_right);
                                        if (imageView4 != null) {
                                            i = R.id.toyota_btn_asl;
                                            TextView textView = (TextView) view.findViewById(R.id.toyota_btn_asl);
                                            if (textView != null) {
                                                i = R.id.toyota_btn_surround;
                                                TextView textView2 = (TextView) view.findViewById(R.id.toyota_btn_surround);
                                                if (textView2 != null) {
                                                    i = R.id.toyota_dsp_aseq;
                                                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.toyota_dsp_aseq);
                                                    if (linearLayout2 != null) {
                                                        i = R.id.toyota_dsp_bass;
                                                        SeekBar seekBar = (SeekBar) view.findViewById(R.id.toyota_dsp_bass);
                                                        if (seekBar != null) {
                                                            i = R.id.toyota_dsp_bass_val;
                                                            TextView textView3 = (TextView) view.findViewById(R.id.toyota_dsp_bass_val);
                                                            if (textView3 != null) {
                                                                i = R.id.toyota_dsp_mid;
                                                                SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.toyota_dsp_mid);
                                                                if (seekBar2 != null) {
                                                                    i = R.id.toyota_dsp_mid_val;
                                                                    TextView textView4 = (TextView) view.findViewById(R.id.toyota_dsp_mid_val);
                                                                    if (textView4 != null) {
                                                                        i = R.id.toyota_dsp_tre;
                                                                        SeekBar seekBar3 = (SeekBar) view.findViewById(R.id.toyota_dsp_tre);
                                                                        if (seekBar3 != null) {
                                                                            i = R.id.toyota_dsp_tre_val;
                                                                            TextView textView5 = (TextView) view.findViewById(R.id.toyota_dsp_tre_val);
                                                                            if (textView5 != null) {
                                                                                return new ToyotaDspBinding((LinearLayout) view, dspBalance, checkBox, checkBox2, relativeLayout, linearLayout, imageView, imageView2, imageView3, imageView4, textView, textView2, linearLayout2, seekBar, textView3, seekBar2, textView4, seekBar3, textView5);
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
