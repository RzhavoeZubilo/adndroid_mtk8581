package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Dz7TpmsBinding implements ViewBinding {
    public final ImageView imageKodiaqTpmsLb;
    public final ImageView imageKodiaqTpmsLf;
    public final ImageView imageKodiaqTpmsRb;
    public final ImageView imageKodiaqTpmsRf;
    public final ImageView kodiaqTpmsImageView1;
    public final TextView kodiaqTpmsWarnInfo;
    private final RelativeLayout rootView;
    public final TextView txKodiaqTpmsValLb;
    public final TextView txKodiaqTpmsValLf;
    public final TextView txKodiaqTpmsValRb;
    public final TextView txKodiaqTpmsValRf;

    private Dz7TpmsBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = relativeLayout;
        this.imageKodiaqTpmsLb = imageView;
        this.imageKodiaqTpmsLf = imageView2;
        this.imageKodiaqTpmsRb = imageView3;
        this.imageKodiaqTpmsRf = imageView4;
        this.kodiaqTpmsImageView1 = imageView5;
        this.kodiaqTpmsWarnInfo = textView;
        this.txKodiaqTpmsValLb = textView2;
        this.txKodiaqTpmsValLf = textView3;
        this.txKodiaqTpmsValRb = textView4;
        this.txKodiaqTpmsValRf = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static Dz7TpmsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Dz7TpmsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dz7_tpms, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Dz7TpmsBinding bind(View view) {
        int i = R.id.image_kodiaq_tpms_lb;
        ImageView imageView = (ImageView) view.findViewById(R.id.image_kodiaq_tpms_lb);
        if (imageView != null) {
            i = R.id.image_kodiaq_tpms_lf;
            ImageView imageView2 = (ImageView) view.findViewById(R.id.image_kodiaq_tpms_lf);
            if (imageView2 != null) {
                i = R.id.image_kodiaq_tpms_rb;
                ImageView imageView3 = (ImageView) view.findViewById(R.id.image_kodiaq_tpms_rb);
                if (imageView3 != null) {
                    i = R.id.image_kodiaq_tpms_rf;
                    ImageView imageView4 = (ImageView) view.findViewById(R.id.image_kodiaq_tpms_rf);
                    if (imageView4 != null) {
                        i = R.id.kodiaq_tpms_imageView1;
                        ImageView imageView5 = (ImageView) view.findViewById(R.id.kodiaq_tpms_imageView1);
                        if (imageView5 != null) {
                            i = R.id.kodiaq_tpms_warn_info;
                            TextView textView = (TextView) view.findViewById(R.id.kodiaq_tpms_warn_info);
                            if (textView != null) {
                                i = R.id.tx_kodiaq_tpms_val_lb;
                                TextView textView2 = (TextView) view.findViewById(R.id.tx_kodiaq_tpms_val_lb);
                                if (textView2 != null) {
                                    i = R.id.tx_kodiaq_tpms_val_lf;
                                    TextView textView3 = (TextView) view.findViewById(R.id.tx_kodiaq_tpms_val_lf);
                                    if (textView3 != null) {
                                        i = R.id.tx_kodiaq_tpms_val_rb;
                                        TextView textView4 = (TextView) view.findViewById(R.id.tx_kodiaq_tpms_val_rb);
                                        if (textView4 != null) {
                                            i = R.id.tx_kodiaq_tpms_val_rf;
                                            TextView textView5 = (TextView) view.findViewById(R.id.tx_kodiaq_tpms_val_rf);
                                            if (textView5 != null) {
                                                return new Dz7TpmsBinding((RelativeLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, textView, textView2, textView3, textView4, textView5);
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
