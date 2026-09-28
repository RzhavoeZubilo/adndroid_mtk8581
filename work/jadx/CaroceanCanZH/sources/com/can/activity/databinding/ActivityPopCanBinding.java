package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityPopCanBinding implements ViewBinding {
    public final FrameLayout fragmentPopContainer;
    private final RelativeLayout rootView;

    private ActivityPopCanBinding(RelativeLayout relativeLayout, FrameLayout frameLayout) {
        this.rootView = relativeLayout;
        this.fragmentPopContainer = frameLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActivityPopCanBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityPopCanBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_pop_can, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityPopCanBinding bind(View view) {
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.fragment_pop_container);
        if (frameLayout != null) {
            return new ActivityPopCanBinding((RelativeLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.fragment_pop_container)));
    }
}
