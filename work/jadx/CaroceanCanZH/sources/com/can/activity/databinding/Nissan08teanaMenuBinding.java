package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Nissan08teanaMenuBinding implements ViewBinding {
    public final Button btnMenuAudio;
    public final Button btnMenuDsp;
    public final Button btnMenuTime;
    private final RelativeLayout rootView;

    private Nissan08teanaMenuBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3) {
        this.rootView = relativeLayout;
        this.btnMenuAudio = button;
        this.btnMenuDsp = button2;
        this.btnMenuTime = button3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static Nissan08teanaMenuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Nissan08teanaMenuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.nissan_08teana_menu, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Nissan08teanaMenuBinding bind(View view) {
        int i = R.id.btn_menu_audio;
        Button button = (Button) view.findViewById(R.id.btn_menu_audio);
        if (button != null) {
            i = R.id.btn_menu_dsp;
            Button button2 = (Button) view.findViewById(R.id.btn_menu_dsp);
            if (button2 != null) {
                i = R.id.btn_menu_time;
                Button button3 = (Button) view.findViewById(R.id.btn_menu_time);
                if (button3 != null) {
                    return new Nissan08teanaMenuBinding((RelativeLayout) view, button, button2, button3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
