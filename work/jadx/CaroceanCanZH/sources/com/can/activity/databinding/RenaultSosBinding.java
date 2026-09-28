package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class RenaultSosBinding implements ViewBinding {
    private final RelativeLayout rootView;

    private RenaultSosBinding(RelativeLayout relativeLayout) {
        this.rootView = relativeLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static RenaultSosBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RenaultSosBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.renault_sos, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static RenaultSosBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new RenaultSosBinding((RelativeLayout) view);
    }
}
