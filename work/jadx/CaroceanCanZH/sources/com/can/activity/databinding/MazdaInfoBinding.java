package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class MazdaInfoBinding implements ViewBinding {
    public final Button btnMazdaSethour;
    public final Button btnMazdaSetmin;
    public final Button btnMazdaSetsen;
    private final RelativeLayout rootView;

    private MazdaInfoBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3) {
        this.rootView = relativeLayout;
        this.btnMazdaSethour = button;
        this.btnMazdaSetmin = button2;
        this.btnMazdaSetsen = button3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static MazdaInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MazdaInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.mazda_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MazdaInfoBinding bind(View view) {
        int i = R.id.btn_mazda_sethour;
        Button button = (Button) view.findViewById(R.id.btn_mazda_sethour);
        if (button != null) {
            i = R.id.btn_mazda_setmin;
            Button button2 = (Button) view.findViewById(R.id.btn_mazda_setmin);
            if (button2 != null) {
                i = R.id.btn_mazda_setsen;
                Button button3 = (Button) view.findViewById(R.id.btn_mazda_setsen);
                if (button3 != null) {
                    return new MazdaInfoBinding((RelativeLayout) view, button, button2, button3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
