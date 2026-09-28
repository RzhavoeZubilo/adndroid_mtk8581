package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewpager.widget.ViewPager;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class LexusActivityCarinfoBinding implements ViewBinding {
    public final ViewPager mainContainer;
    private final FrameLayout rootView;

    private LexusActivityCarinfoBinding(FrameLayout frameLayout, ViewPager viewPager) {
        this.rootView = frameLayout;
        this.mainContainer = viewPager;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LexusActivityCarinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LexusActivityCarinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.lexus_activity_carinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LexusActivityCarinfoBinding bind(View view) {
        ViewPager viewPager = (ViewPager) view.findViewById(R.id.main_container);
        if (viewPager != null) {
            return new LexusActivityCarinfoBinding((FrameLayout) view, viewPager);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.main_container)));
    }
}
