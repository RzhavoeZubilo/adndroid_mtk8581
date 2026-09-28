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
public final class JacTpmsBinding implements ViewBinding {
    public final ImageView dz7TpmsImageView1;
    public final ImageView dz7TpmsImageViewLF;
    public final ImageView dz7TpmsImageViewLR;
    public final ImageView dz7TpmsImageViewRF;
    public final ImageView dz7TpmsImageViewRR;
    private final RelativeLayout rootView;
    public final TextView txDz7TpmsLfVal;
    public final TextView txDz7TpmsLrVal;
    public final TextView txDz7TpmsRfVal;
    public final TextView txDz7TpmsRrVal;

    private JacTpmsBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = relativeLayout;
        this.dz7TpmsImageView1 = imageView;
        this.dz7TpmsImageViewLF = imageView2;
        this.dz7TpmsImageViewLR = imageView3;
        this.dz7TpmsImageViewRF = imageView4;
        this.dz7TpmsImageViewRR = imageView5;
        this.txDz7TpmsLfVal = textView;
        this.txDz7TpmsLrVal = textView2;
        this.txDz7TpmsRfVal = textView3;
        this.txDz7TpmsRrVal = textView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static JacTpmsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static JacTpmsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.jac_tpms, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static JacTpmsBinding bind(View view) {
        int i = R.id.dz7_tpms_imageView1;
        ImageView imageView = (ImageView) view.findViewById(R.id.dz7_tpms_imageView1);
        if (imageView != null) {
            i = R.id.dz7_tpms_imageViewLF;
            ImageView imageView2 = (ImageView) view.findViewById(R.id.dz7_tpms_imageViewLF);
            if (imageView2 != null) {
                i = R.id.dz7_tpms_ImageViewLR;
                ImageView imageView3 = (ImageView) view.findViewById(R.id.dz7_tpms_ImageViewLR);
                if (imageView3 != null) {
                    i = R.id.dz7_tpms_ImageViewRF;
                    ImageView imageView4 = (ImageView) view.findViewById(R.id.dz7_tpms_ImageViewRF);
                    if (imageView4 != null) {
                        i = R.id.dz7_tpms_ImageViewRR;
                        ImageView imageView5 = (ImageView) view.findViewById(R.id.dz7_tpms_ImageViewRR);
                        if (imageView5 != null) {
                            i = R.id.tx_dz7_tpms_lf_val;
                            TextView textView = (TextView) view.findViewById(R.id.tx_dz7_tpms_lf_val);
                            if (textView != null) {
                                i = R.id.tx_dz7_tpms_lr_val;
                                TextView textView2 = (TextView) view.findViewById(R.id.tx_dz7_tpms_lr_val);
                                if (textView2 != null) {
                                    i = R.id.tx_dz7_tpms_rf_val;
                                    TextView textView3 = (TextView) view.findViewById(R.id.tx_dz7_tpms_rf_val);
                                    if (textView3 != null) {
                                        i = R.id.tx_dz7_tpms_rr_val;
                                        TextView textView4 = (TextView) view.findViewById(R.id.tx_dz7_tpms_rr_val);
                                        if (textView4 != null) {
                                            return new JacTpmsBinding((RelativeLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, textView, textView2, textView3, textView4);
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
