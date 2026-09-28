package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Dz7ConvinfoBinding implements ViewBinding {
    public final ListView listDz7ConvInfo;
    private final LinearLayout rootView;

    private Dz7ConvinfoBinding(LinearLayout linearLayout, ListView listView) {
        this.rootView = linearLayout;
        this.listDz7ConvInfo = listView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static Dz7ConvinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Dz7ConvinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dz7_convinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Dz7ConvinfoBinding bind(View view) {
        ListView listView = (ListView) view.findViewById(R.id.list_dz7_conv_info);
        if (listView != null) {
            return new Dz7ConvinfoBinding((LinearLayout) view, listView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.list_dz7_conv_info)));
    }
}
