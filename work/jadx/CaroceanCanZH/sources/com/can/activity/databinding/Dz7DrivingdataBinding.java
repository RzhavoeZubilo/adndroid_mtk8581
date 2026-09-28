package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Dz7DrivingdataBinding implements ViewBinding {
    public final Button btnDz7DrivingLeft;
    public final Button btnDz7DrivingRight;
    private final LinearLayout rootView;
    public final TextView txDz7DrivingAvgFuel;
    public final TextView txDz7DrivingAvgSpeed;
    public final TextView txDz7DrivingConvs;
    public final TextView txDz7DrivingCurfuel;
    public final TextView txDz7DrivingRange;
    public final TextView txDz7DrivingRundis;
    public final TextView txDz7DrivingRuntime;
    public final TextView txDz7DrivingTitle;

    private Dz7DrivingdataBinding(LinearLayout linearLayout, Button button, Button button2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = linearLayout;
        this.btnDz7DrivingLeft = button;
        this.btnDz7DrivingRight = button2;
        this.txDz7DrivingAvgFuel = textView;
        this.txDz7DrivingAvgSpeed = textView2;
        this.txDz7DrivingConvs = textView3;
        this.txDz7DrivingCurfuel = textView4;
        this.txDz7DrivingRange = textView5;
        this.txDz7DrivingRundis = textView6;
        this.txDz7DrivingRuntime = textView7;
        this.txDz7DrivingTitle = textView8;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static Dz7DrivingdataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Dz7DrivingdataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dz7_drivingdata, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Dz7DrivingdataBinding bind(View view) {
        int i = R.id.btn_dz7_driving_left;
        Button button = (Button) view.findViewById(R.id.btn_dz7_driving_left);
        if (button != null) {
            i = R.id.btn_dz7_driving_right;
            Button button2 = (Button) view.findViewById(R.id.btn_dz7_driving_right);
            if (button2 != null) {
                i = R.id.tx_dz7_driving_avg_fuel;
                TextView textView = (TextView) view.findViewById(R.id.tx_dz7_driving_avg_fuel);
                if (textView != null) {
                    i = R.id.tx_dz7_driving_avg_speed;
                    TextView textView2 = (TextView) view.findViewById(R.id.tx_dz7_driving_avg_speed);
                    if (textView2 != null) {
                        i = R.id.tx_dz7_driving_convs;
                        TextView textView3 = (TextView) view.findViewById(R.id.tx_dz7_driving_convs);
                        if (textView3 != null) {
                            i = R.id.tx_dz7_driving_curfuel;
                            TextView textView4 = (TextView) view.findViewById(R.id.tx_dz7_driving_curfuel);
                            if (textView4 != null) {
                                i = R.id.tx_dz7_driving_range;
                                TextView textView5 = (TextView) view.findViewById(R.id.tx_dz7_driving_range);
                                if (textView5 != null) {
                                    i = R.id.tx_dz7_driving_rundis;
                                    TextView textView6 = (TextView) view.findViewById(R.id.tx_dz7_driving_rundis);
                                    if (textView6 != null) {
                                        i = R.id.tx_dz7_driving_runtime;
                                        TextView textView7 = (TextView) view.findViewById(R.id.tx_dz7_driving_runtime);
                                        if (textView7 != null) {
                                            i = R.id.tx_dz7_driving_title;
                                            TextView textView8 = (TextView) view.findViewById(R.id.tx_dz7_driving_title);
                                            if (textView8 != null) {
                                                return new Dz7DrivingdataBinding((LinearLayout) view, button, button2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
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
