package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.RadarSurface;

/* JADX INFO: loaded from: classes.dex */
public final class BigRadarBinding implements ViewBinding {
    public final ImageButton bigRadarMute;
    public final RadarSurface bigRadarSurfaceview;
    public final ImageButton btnRadarVideo;
    public final ImageView imageViewWarn;
    public final RelativeLayout radarBottomLayout;
    public final RelativeLayout radarBottonGroup;
    private final LinearLayout rootView;
    public final TextView txRadarWarn;

    private BigRadarBinding(LinearLayout linearLayout, ImageButton imageButton, RadarSurface radarSurface, ImageButton imageButton2, ImageView imageView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TextView textView) {
        this.rootView = linearLayout;
        this.bigRadarMute = imageButton;
        this.bigRadarSurfaceview = radarSurface;
        this.btnRadarVideo = imageButton2;
        this.imageViewWarn = imageView;
        this.radarBottomLayout = relativeLayout;
        this.radarBottonGroup = relativeLayout2;
        this.txRadarWarn = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static BigRadarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static BigRadarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.big_radar, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static BigRadarBinding bind(View view) {
        int i = R.id.big_radar_mute;
        ImageButton imageButton = (ImageButton) view.findViewById(R.id.big_radar_mute);
        if (imageButton != null) {
            i = R.id.big_radar_surfaceview;
            RadarSurface radarSurface = (RadarSurface) view.findViewById(R.id.big_radar_surfaceview);
            if (radarSurface != null) {
                i = R.id.btn_radar_video;
                ImageButton imageButton2 = (ImageButton) view.findViewById(R.id.btn_radar_video);
                if (imageButton2 != null) {
                    i = R.id.imageView_warn;
                    ImageView imageView = (ImageView) view.findViewById(R.id.imageView_warn);
                    if (imageView != null) {
                        i = R.id.radar_bottom_layout;
                        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.radar_bottom_layout);
                        if (relativeLayout != null) {
                            i = R.id.radar_botton_group;
                            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.radar_botton_group);
                            if (relativeLayout2 != null) {
                                i = R.id.tx_radar_warn;
                                TextView textView = (TextView) view.findViewById(R.id.tx_radar_warn);
                                if (textView != null) {
                                    return new BigRadarBinding((LinearLayout) view, imageButton, radarSurface, imageButton2, imageView, relativeLayout, relativeLayout2, textView);
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
