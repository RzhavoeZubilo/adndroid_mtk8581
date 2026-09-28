package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PsaCanWarnInfoBinding implements ViewBinding {
    public final ListView psaListWarnInfo;
    public final TextView psaTvWarnNum;
    public final TextView psaTvWarnNumType;
    public final TextView psaTvWarnType;
    private final FrameLayout rootView;

    private PsaCanWarnInfoBinding(FrameLayout frameLayout, ListView listView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = frameLayout;
        this.psaListWarnInfo = listView;
        this.psaTvWarnNum = textView;
        this.psaTvWarnNumType = textView2;
        this.psaTvWarnType = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static PsaCanWarnInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaCanWarnInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_can_warn_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaCanWarnInfoBinding bind(View view) {
        int i = R.id.psa_list_warn_info;
        ListView listView = (ListView) view.findViewById(R.id.psa_list_warn_info);
        if (listView != null) {
            i = R.id.psa_tv_warn_num;
            TextView textView = (TextView) view.findViewById(R.id.psa_tv_warn_num);
            if (textView != null) {
                i = R.id.psa_tv_warn_num_type;
                TextView textView2 = (TextView) view.findViewById(R.id.psa_tv_warn_num_type);
                if (textView2 != null) {
                    i = R.id.psa_tv_warn_type;
                    TextView textView3 = (TextView) view.findViewById(R.id.psa_tv_warn_type);
                    if (textView3 != null) {
                        return new PsaCanWarnInfoBinding((FrameLayout) view, listView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
