package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Dz7InfoBinding implements ViewBinding {
    public final Button btnDz7MenuAirset;
    public final Button btnDz7MenuCarset;
    public final Button btnDz7MenuConvs;
    public final Button btnDz7MenuSerivces;
    public final Button btnDz7MenuStartstop;
    public final ImageView imgDz7MenuNotify;
    private final LinearLayout rootView;
    public final TextView txDz7MenuNotifyNum;

    private Dz7InfoBinding(LinearLayout linearLayout, Button button, Button button2, Button button3, Button button4, Button button5, ImageView imageView, TextView textView) {
        this.rootView = linearLayout;
        this.btnDz7MenuAirset = button;
        this.btnDz7MenuCarset = button2;
        this.btnDz7MenuConvs = button3;
        this.btnDz7MenuSerivces = button4;
        this.btnDz7MenuStartstop = button5;
        this.imgDz7MenuNotify = imageView;
        this.txDz7MenuNotifyNum = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static Dz7InfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Dz7InfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dz7_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Dz7InfoBinding bind(View view) {
        int i = R.id.btn_dz7_menu_airset;
        Button button = (Button) view.findViewById(R.id.btn_dz7_menu_airset);
        if (button != null) {
            i = R.id.btn_dz7_menu_carset;
            Button button2 = (Button) view.findViewById(R.id.btn_dz7_menu_carset);
            if (button2 != null) {
                i = R.id.btn_dz7_menu_convs;
                Button button3 = (Button) view.findViewById(R.id.btn_dz7_menu_convs);
                if (button3 != null) {
                    i = R.id.btn_dz7_menu_serivces;
                    Button button4 = (Button) view.findViewById(R.id.btn_dz7_menu_serivces);
                    if (button4 != null) {
                        i = R.id.btn_dz7_menu_startstop;
                        Button button5 = (Button) view.findViewById(R.id.btn_dz7_menu_startstop);
                        if (button5 != null) {
                            i = R.id.img_dz7_menu_notify;
                            ImageView imageView = (ImageView) view.findViewById(R.id.img_dz7_menu_notify);
                            if (imageView != null) {
                                i = R.id.tx_dz7_menu_notify_num;
                                TextView textView = (TextView) view.findViewById(R.id.tx_dz7_menu_notify_num);
                                if (textView != null) {
                                    return new Dz7InfoBinding((LinearLayout) view, button, button2, button3, button4, button5, imageView, textView);
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
