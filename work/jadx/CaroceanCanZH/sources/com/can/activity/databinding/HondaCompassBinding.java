package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.AutoText;
import com.can.ui.draw.Compass;

/* JADX INFO: loaded from: classes.dex */
public final class HondaCompassBinding implements ViewBinding {
    public final Compass compassClock;
    public final RelativeLayout compassLayout;
    public final SeekBar compassSkbarArea;
    public final AutoText compassTvState;
    public final TextView compassValid;
    private final RelativeLayout rootView;
    public final TextView tvCompassCalibration;

    private HondaCompassBinding(RelativeLayout relativeLayout, Compass compass, RelativeLayout relativeLayout2, SeekBar seekBar, AutoText autoText, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.compassClock = compass;
        this.compassLayout = relativeLayout2;
        this.compassSkbarArea = seekBar;
        this.compassTvState = autoText;
        this.compassValid = textView;
        this.tvCompassCalibration = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static HondaCompassBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HondaCompassBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.honda_compass, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HondaCompassBinding bind(View view) {
        int i = R.id.compass_clock;
        Compass compass = (Compass) view.findViewById(R.id.compass_clock);
        if (compass != null) {
            i = R.id.compass_layout;
            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.compass_layout);
            if (relativeLayout != null) {
                i = R.id.compass_skbar_area;
                SeekBar seekBar = (SeekBar) view.findViewById(R.id.compass_skbar_area);
                if (seekBar != null) {
                    i = R.id.compass_tv_state;
                    AutoText autoText = (AutoText) view.findViewById(R.id.compass_tv_state);
                    if (autoText != null) {
                        i = R.id.compass_valid;
                        TextView textView = (TextView) view.findViewById(R.id.compass_valid);
                        if (textView != null) {
                            i = R.id.tv_compass_calibration;
                            TextView textView2 = (TextView) view.findViewById(R.id.tv_compass_calibration);
                            if (textView2 != null) {
                                return new HondaCompassBinding((RelativeLayout) view, compass, relativeLayout, seekBar, autoText, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
