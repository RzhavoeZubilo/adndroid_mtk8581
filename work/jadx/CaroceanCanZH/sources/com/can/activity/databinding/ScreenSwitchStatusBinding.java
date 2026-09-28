package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenSwitchStatusBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final TextView tvContext;
    public final TextView tvOk;

    private ScreenSwitchStatusBinding(FrameLayout frameLayout, TextView textView, TextView textView2) {
        this.rootView = frameLayout;
        this.tvContext = textView;
        this.tvOk = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ScreenSwitchStatusBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ScreenSwitchStatusBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.screen_switch_status, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ScreenSwitchStatusBinding bind(View view) {
        int i = R.id.tvContext;
        TextView textView = (TextView) view.findViewById(R.id.tvContext);
        if (textView != null) {
            i = R.id.tvOk;
            TextView textView2 = (TextView) view.findViewById(R.id.tvOk);
            if (textView2 != null) {
                return new ScreenSwitchStatusBinding((FrameLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
