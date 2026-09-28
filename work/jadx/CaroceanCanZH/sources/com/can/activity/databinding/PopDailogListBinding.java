package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PopDailogListBinding implements ViewBinding {
    public final TextView popDailogListTx;
    private final LinearLayout rootView;

    private PopDailogListBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.popDailogListTx = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static PopDailogListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PopDailogListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.pop_dailog_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PopDailogListBinding bind(View view) {
        TextView textView = (TextView) view.findViewById(R.id.pop_dailog_list_tx);
        if (textView != null) {
            return new PopDailogListBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.pop_dailog_list_tx)));
    }
}
