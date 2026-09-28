package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.Rgb;

/* JADX INFO: loaded from: classes.dex */
public final class RgbsetBinding implements ViewBinding {
    public final Button rgbResetAll;
    public final Button rgbResetClose;
    private final Rgb rootView;
    public final SeekBar seekBarBrightness;
    public final SeekBar seekBarContrast;
    public final SeekBar seekBarHue;
    public final SeekBar seekBarSaturation;
    public final TextView textBrightValue;
    public final TextView textContrastValue;
    public final TextView textHueValue;
    public final TextView textSaturationValue;
    public final TextView textTitle;

    private RgbsetBinding(Rgb rgb, Button button, Button button2, SeekBar seekBar, SeekBar seekBar2, SeekBar seekBar3, SeekBar seekBar4, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = rgb;
        this.rgbResetAll = button;
        this.rgbResetClose = button2;
        this.seekBarBrightness = seekBar;
        this.seekBarContrast = seekBar2;
        this.seekBarHue = seekBar3;
        this.seekBarSaturation = seekBar4;
        this.textBrightValue = textView;
        this.textContrastValue = textView2;
        this.textHueValue = textView3;
        this.textSaturationValue = textView4;
        this.textTitle = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public Rgb getRoot() {
        return this.rootView;
    }

    public static RgbsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RgbsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.rgbset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static RgbsetBinding bind(View view) {
        int i = R.id.rgb_reset_all;
        Button button = (Button) view.findViewById(R.id.rgb_reset_all);
        if (button != null) {
            i = R.id.rgb_reset_close;
            Button button2 = (Button) view.findViewById(R.id.rgb_reset_close);
            if (button2 != null) {
                i = R.id.seekBar_brightness;
                SeekBar seekBar = (SeekBar) view.findViewById(R.id.seekBar_brightness);
                if (seekBar != null) {
                    i = R.id.seekBar_contrast;
                    SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.seekBar_contrast);
                    if (seekBar2 != null) {
                        i = R.id.seekBar_hue;
                        SeekBar seekBar3 = (SeekBar) view.findViewById(R.id.seekBar_hue);
                        if (seekBar3 != null) {
                            i = R.id.seekBar_saturation;
                            SeekBar seekBar4 = (SeekBar) view.findViewById(R.id.seekBar_saturation);
                            if (seekBar4 != null) {
                                i = R.id.text_bright_value;
                                TextView textView = (TextView) view.findViewById(R.id.text_bright_value);
                                if (textView != null) {
                                    i = R.id.text_contrast_value;
                                    TextView textView2 = (TextView) view.findViewById(R.id.text_contrast_value);
                                    if (textView2 != null) {
                                        i = R.id.text_hue_value;
                                        TextView textView3 = (TextView) view.findViewById(R.id.text_hue_value);
                                        if (textView3 != null) {
                                            i = R.id.text_saturation_value;
                                            TextView textView4 = (TextView) view.findViewById(R.id.text_saturation_value);
                                            if (textView4 != null) {
                                                i = R.id.text_title;
                                                TextView textView5 = (TextView) view.findViewById(R.id.text_title);
                                                if (textView5 != null) {
                                                    return new RgbsetBinding((Rgb) view, button, button2, seekBar, seekBar2, seekBar3, seekBar4, textView, textView2, textView3, textView4, textView5);
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
