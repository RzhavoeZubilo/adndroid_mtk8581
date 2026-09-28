package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class FordMenuBinding implements ViewBinding {
    public final Button btnFordMenuAirset;
    public final Button btnFordMenuCarset;
    public final Button btnFordMenuSeatset;
    public final Button btnFordMenuSync;
    private final RelativeLayout rootView;

    private FordMenuBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3, Button button4) {
        this.rootView = relativeLayout;
        this.btnFordMenuAirset = button;
        this.btnFordMenuCarset = button2;
        this.btnFordMenuSeatset = button3;
        this.btnFordMenuSync = button4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FordMenuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FordMenuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.ford_menu, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FordMenuBinding bind(View view) {
        int i = R.id.btn_ford_menu_airset;
        Button button = (Button) view.findViewById(R.id.btn_ford_menu_airset);
        if (button != null) {
            i = R.id.btn_ford_menu_carset;
            Button button2 = (Button) view.findViewById(R.id.btn_ford_menu_carset);
            if (button2 != null) {
                i = R.id.btn_ford_menu_seatset;
                Button button3 = (Button) view.findViewById(R.id.btn_ford_menu_seatset);
                if (button3 != null) {
                    i = R.id.btn_ford_menu_sync;
                    Button button4 = (Button) view.findViewById(R.id.btn_ford_menu_sync);
                    if (button4 != null) {
                        return new FordMenuBinding((RelativeLayout) view, button, button2, button3, button4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
