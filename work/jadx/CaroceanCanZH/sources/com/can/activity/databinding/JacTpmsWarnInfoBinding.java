package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class JacTpmsWarnInfoBinding implements ViewBinding {
    public final ListView jacListWarnInfo;
    private final FrameLayout rootView;

    private JacTpmsWarnInfoBinding(FrameLayout frameLayout, ListView listView) {
        this.rootView = frameLayout;
        this.jacListWarnInfo = listView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static JacTpmsWarnInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static JacTpmsWarnInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.jac_tpms_warn_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static JacTpmsWarnInfoBinding bind(View view) {
        ListView listView = (ListView) view.findViewById(R.id.jac_list_warn_info);
        if (listView != null) {
            return new JacTpmsWarnInfoBinding((FrameLayout) view, listView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.jac_list_warn_info)));
    }
}
