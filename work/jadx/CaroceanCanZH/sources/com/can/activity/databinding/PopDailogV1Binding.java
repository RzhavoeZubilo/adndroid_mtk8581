package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PopDailogV1Binding implements ViewBinding {
    public final ListView popDailogListInfo;
    public final TextView popDailogTitle;
    private final LinearLayout rootView;

    private PopDailogV1Binding(LinearLayout linearLayout, ListView listView, TextView textView) {
        this.rootView = linearLayout;
        this.popDailogListInfo = listView;
        this.popDailogTitle = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static PopDailogV1Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PopDailogV1Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.pop_dailog_v1, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PopDailogV1Binding bind(View view) {
        int i = R.id.pop_dailog_list_info;
        ListView listView = (ListView) view.findViewById(R.id.pop_dailog_list_info);
        if (listView != null) {
            i = R.id.pop_dailog_title;
            TextView textView = (TextView) view.findViewById(R.id.pop_dailog_title);
            if (textView != null) {
                return new PopDailogV1Binding((LinearLayout) view, listView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
