package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ToyotaTpmsBinding implements ViewBinding {
    public final ImageView ImageViewLR;
    public final ImageView ImageViewRF;
    public final ImageView ImageViewRR;
    public final Button btnToyotaTpmsTr1;
    public final Button btnToyotaTpmsTr2;
    public final Button btnToyotaTpmsTr3;
    public final Button btnToyotaTpmsTr4;
    public final Button btnToyotaTpmsTr5;
    public final ImageView imageView1;
    public final ImageView imageViewLF;
    public final RelativeLayout layoutTpmsCar;
    public final RelativeLayout layoutTpmsDev;
    public final LinearLayout layoutTpmsLine;
    private final RelativeLayout rootView;
    public final TextView txToyotaTpmsBrVal;
    public final TextView txToyotaTpmsLfVal;
    public final TextView txToyotaTpmsLrVal;
    public final TextView txToyotaTpmsRfVal;
    public final TextView txToyotaTpmsRrVal;
    public final TextView txTpmsDevState;

    private ToyotaTpmsBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, Button button, Button button2, Button button3, Button button4, Button button5, ImageView imageView4, ImageView imageView5, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = relativeLayout;
        this.ImageViewLR = imageView;
        this.ImageViewRF = imageView2;
        this.ImageViewRR = imageView3;
        this.btnToyotaTpmsTr1 = button;
        this.btnToyotaTpmsTr2 = button2;
        this.btnToyotaTpmsTr3 = button3;
        this.btnToyotaTpmsTr4 = button4;
        this.btnToyotaTpmsTr5 = button5;
        this.imageView1 = imageView4;
        this.imageViewLF = imageView5;
        this.layoutTpmsCar = relativeLayout2;
        this.layoutTpmsDev = relativeLayout3;
        this.layoutTpmsLine = linearLayout;
        this.txToyotaTpmsBrVal = textView;
        this.txToyotaTpmsLfVal = textView2;
        this.txToyotaTpmsLrVal = textView3;
        this.txToyotaTpmsRfVal = textView4;
        this.txToyotaTpmsRrVal = textView5;
        this.txTpmsDevState = textView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ToyotaTpmsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ToyotaTpmsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toyota_tpms, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToyotaTpmsBinding bind(View view) {
        int i = R.id.ImageViewLR;
        ImageView imageView = (ImageView) view.findViewById(R.id.ImageViewLR);
        if (imageView != null) {
            i = R.id.ImageViewRF;
            ImageView imageView2 = (ImageView) view.findViewById(R.id.ImageViewRF);
            if (imageView2 != null) {
                i = R.id.ImageViewRR;
                ImageView imageView3 = (ImageView) view.findViewById(R.id.ImageViewRR);
                if (imageView3 != null) {
                    i = R.id.btn_toyota_tpms_tr1;
                    Button button = (Button) view.findViewById(R.id.btn_toyota_tpms_tr1);
                    if (button != null) {
                        i = R.id.btn_toyota_tpms_tr2;
                        Button button2 = (Button) view.findViewById(R.id.btn_toyota_tpms_tr2);
                        if (button2 != null) {
                            i = R.id.btn_toyota_tpms_tr3;
                            Button button3 = (Button) view.findViewById(R.id.btn_toyota_tpms_tr3);
                            if (button3 != null) {
                                i = R.id.btn_toyota_tpms_tr4;
                                Button button4 = (Button) view.findViewById(R.id.btn_toyota_tpms_tr4);
                                if (button4 != null) {
                                    i = R.id.btn_toyota_tpms_tr5;
                                    Button button5 = (Button) view.findViewById(R.id.btn_toyota_tpms_tr5);
                                    if (button5 != null) {
                                        i = R.id.imageView1;
                                        ImageView imageView4 = (ImageView) view.findViewById(R.id.imageView1);
                                        if (imageView4 != null) {
                                            i = R.id.imageViewLF;
                                            ImageView imageView5 = (ImageView) view.findViewById(R.id.imageViewLF);
                                            if (imageView5 != null) {
                                                i = R.id.layout_tpms_car;
                                                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.layout_tpms_car);
                                                if (relativeLayout != null) {
                                                    i = R.id.layout_tpms_dev;
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.layout_tpms_dev);
                                                    if (relativeLayout2 != null) {
                                                        i = R.id.layout_tpms_line;
                                                        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.layout_tpms_line);
                                                        if (linearLayout != null) {
                                                            i = R.id.tx_toyota_tpms_br_val;
                                                            TextView textView = (TextView) view.findViewById(R.id.tx_toyota_tpms_br_val);
                                                            if (textView != null) {
                                                                i = R.id.tx_toyota_tpms_lf_val;
                                                                TextView textView2 = (TextView) view.findViewById(R.id.tx_toyota_tpms_lf_val);
                                                                if (textView2 != null) {
                                                                    i = R.id.tx_toyota_tpms_lr_val;
                                                                    TextView textView3 = (TextView) view.findViewById(R.id.tx_toyota_tpms_lr_val);
                                                                    if (textView3 != null) {
                                                                        i = R.id.tx_toyota_tpms_rf_val;
                                                                        TextView textView4 = (TextView) view.findViewById(R.id.tx_toyota_tpms_rf_val);
                                                                        if (textView4 != null) {
                                                                            i = R.id.tx_toyota_tpms_rr_val;
                                                                            TextView textView5 = (TextView) view.findViewById(R.id.tx_toyota_tpms_rr_val);
                                                                            if (textView5 != null) {
                                                                                i = R.id.tx_tpms_dev_state;
                                                                                TextView textView6 = (TextView) view.findViewById(R.id.tx_tpms_dev_state);
                                                                                if (textView6 != null) {
                                                                                    return new ToyotaTpmsBinding((RelativeLayout) view, imageView, imageView2, imageView3, button, button2, button3, button4, button5, imageView4, imageView5, relativeLayout, relativeLayout2, linearLayout, textView, textView2, textView3, textView4, textView5, textView6);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
