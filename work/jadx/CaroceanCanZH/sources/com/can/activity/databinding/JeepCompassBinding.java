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
public final class JeepCompassBinding implements ViewBinding {
    public final AutoText compassTvState;
    public final Compass jeepCompassClock;
    public final SeekBar jeepCompassSkbarArea;
    private final RelativeLayout rootView;
    public final TextView tvCompassCalibration;

    private JeepCompassBinding(RelativeLayout relativeLayout, AutoText autoText, Compass compass, SeekBar seekBar, TextView textView) {
        this.rootView = relativeLayout;
        this.compassTvState = autoText;
        this.jeepCompassClock = compass;
        this.jeepCompassSkbarArea = seekBar;
        this.tvCompassCalibration = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static JeepCompassBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static JeepCompassBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.jeep_compass, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static JeepCompassBinding bind(View view) {
        int i = R.id.compass_tv_state;
        AutoText autoText = (AutoText) view.findViewById(R.id.compass_tv_state);
        if (autoText != null) {
            i = R.id.jeep_compass_clock;
            Compass compass = (Compass) view.findViewById(R.id.jeep_compass_clock);
            if (compass != null) {
                i = R.id.jeep_compass_skbar_area;
                SeekBar seekBar = (SeekBar) view.findViewById(R.id.jeep_compass_skbar_area);
                if (seekBar != null) {
                    i = R.id.tv_compass_calibration;
                    TextView textView = (TextView) view.findViewById(R.id.tv_compass_calibration);
                    if (textView != null) {
                        return new JeepCompassBinding((RelativeLayout) view, autoText, compass, seekBar, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
