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
public final class FordSyncListBinding implements ViewBinding {
    public final ImageView imgSyncListLeftIcon;
    public final ImageView imgSyncListRightIcon;
    public final RelativeLayout layoutFordListItem;
    private final RelativeLayout rootView;
    public final TextView txSyncListInfo;

    private FordSyncListBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout2, TextView textView) {
        this.rootView = relativeLayout;
        this.imgSyncListLeftIcon = imageView;
        this.imgSyncListRightIcon = imageView2;
        this.layoutFordListItem = relativeLayout2;
        this.txSyncListInfo = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FordSyncListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FordSyncListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.ford_sync_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FordSyncListBinding bind(View view) {
        int i = R.id.img_sync_list_left_icon;
        ImageView imageView = (ImageView) view.findViewById(R.id.img_sync_list_left_icon);
        if (imageView != null) {
            i = R.id.img_sync_list_right_icon;
            ImageView imageView2 = (ImageView) view.findViewById(R.id.img_sync_list_right_icon);
            if (imageView2 != null) {
                i = R.id.layout_ford_list_item;
                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.layout_ford_list_item);
                if (relativeLayout != null) {
                    i = R.id.tx_sync_list_info;
                    TextView textView = (TextView) view.findViewById(R.id.tx_sync_list_info);
                    if (textView != null) {
                        return new FordSyncListBinding((RelativeLayout) view, imageView, imageView2, relativeLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
