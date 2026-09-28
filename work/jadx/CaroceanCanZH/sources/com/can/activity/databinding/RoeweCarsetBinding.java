package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class RoeweCarsetBinding implements ViewBinding {
    public final RelativeLayout btnRoeweColor;
    private final ScrollView rootView;

    private RoeweCarsetBinding(ScrollView scrollView, RelativeLayout relativeLayout) {
        this.rootView = scrollView;
        this.btnRoeweColor = relativeLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static RoeweCarsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RoeweCarsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.roewe_carset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static RoeweCarsetBinding bind(View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.btn_roewe_color);
        if (relativeLayout != null) {
            return new RoeweCarsetBinding((ScrollView) view, relativeLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.btn_roewe_color)));
    }
}
