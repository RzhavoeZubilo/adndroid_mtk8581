package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.AutoText;

/* JADX INFO: loaded from: classes.dex */
public final class JacListviewBinding implements ViewBinding {
    public final AutoText jacTxListInfo;
    private final LinearLayout rootView;

    private JacListviewBinding(LinearLayout linearLayout, AutoText autoText) {
        this.rootView = linearLayout;
        this.jacTxListInfo = autoText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static JacListviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static JacListviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.jac_listview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static JacListviewBinding bind(View view) {
        AutoText autoText = (AutoText) view.findViewById(R.id.jac_tx_list_info);
        if (autoText != null) {
            return new JacListviewBinding((LinearLayout) view, autoText);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.jac_tx_list_info)));
    }
}
