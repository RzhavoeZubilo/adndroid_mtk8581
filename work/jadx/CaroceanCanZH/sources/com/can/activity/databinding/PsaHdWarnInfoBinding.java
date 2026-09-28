package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PsaHdWarnInfoBinding implements ViewBinding {
    public final TextView psaHdTvWarnNumType;
    private final FrameLayout rootView;

    private PsaHdWarnInfoBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.psaHdTvWarnNumType = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static PsaHdWarnInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaHdWarnInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_hd_warn_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaHdWarnInfoBinding bind(View view) {
        TextView textView = (TextView) view.findViewById(R.id.psa_hd_tv_warn_num_type);
        if (textView != null) {
            return new PsaHdWarnInfoBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.psa_hd_tv_warn_num_type)));
    }
}
