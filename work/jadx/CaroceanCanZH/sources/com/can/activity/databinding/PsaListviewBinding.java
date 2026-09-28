package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.AutoText;

/* JADX INFO: loaded from: classes.dex */
public final class PsaListviewBinding implements ViewBinding {
    public final AutoText psaTxListInfo;
    private final LinearLayout rootView;

    private PsaListviewBinding(LinearLayout linearLayout, AutoText autoText) {
        this.rootView = linearLayout;
        this.psaTxListInfo = autoText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static PsaListviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaListviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_listview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaListviewBinding bind(View view) {
        AutoText autoText = (AutoText) view.findViewById(R.id.psa_tx_list_info);
        if (autoText != null) {
            return new PsaListviewBinding((LinearLayout) view, autoText);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.psa_tx_list_info)));
    }
}
