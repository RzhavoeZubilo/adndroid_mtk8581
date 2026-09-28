package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ChooseListviewBinding implements ViewBinding {
    public final ImageView carIcon;
    private final RelativeLayout rootView;
    public final TextView txListInfo;
    public final TextView txListVer;

    private ChooseListviewBinding(RelativeLayout relativeLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.carIcon = imageView;
        this.txListInfo = textView;
        this.txListVer = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ChooseListviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ChooseListviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.choose_listview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ChooseListviewBinding bind(View view) {
        int i = R.id.car_icon;
        ImageView imageView = (ImageView) view.findViewById(R.id.car_icon);
        if (imageView != null) {
            i = R.id.tx_list_info;
            TextView textView = (TextView) view.findViewById(R.id.tx_list_info);
            if (textView != null) {
                i = R.id.tx_list_ver;
                TextView textView2 = (TextView) view.findViewById(R.id.tx_list_ver);
                if (textView2 != null) {
                    return new ChooseListviewBinding((RelativeLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
