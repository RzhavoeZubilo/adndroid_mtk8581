package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class HimaMenuBinding implements ViewBinding {
    public final Button btnHaimaMenuInfo;
    private final RelativeLayout rootView;

    private HimaMenuBinding(RelativeLayout relativeLayout, Button button) {
        this.rootView = relativeLayout;
        this.btnHaimaMenuInfo = button;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static HimaMenuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HimaMenuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hima_menu, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HimaMenuBinding bind(View view) {
        Button button = (Button) view.findViewById(R.id.btn_haima_menu_info);
        if (button != null) {
            return new HimaMenuBinding((RelativeLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.btn_haima_menu_info)));
    }
}
