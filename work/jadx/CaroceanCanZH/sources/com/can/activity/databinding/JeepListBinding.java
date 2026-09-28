package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class JeepListBinding implements ViewBinding {
    private final RelativeLayout rootView;
    public final TextView txJeepListInfo;

    private JeepListBinding(RelativeLayout relativeLayout, TextView textView) {
        this.rootView = relativeLayout;
        this.txJeepListInfo = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static JeepListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static JeepListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.jeep_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static JeepListBinding bind(View view) {
        TextView textView = (TextView) view.findViewById(R.id.tx_jeep_list_info);
        if (textView != null) {
            return new JeepListBinding((RelativeLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tx_jeep_list_info)));
    }
}
