package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ItemParentBinding implements ViewBinding {
    public final TextView itemHintTitle;
    public final ImageView itemIcon;
    public final LinearLayout itemParentRight;
    public final TextView itemSubTitle;
    private final RelativeLayout rootView;

    private ItemParentBinding(RelativeLayout relativeLayout, TextView textView, ImageView imageView, LinearLayout linearLayout, TextView textView2) {
        this.rootView = relativeLayout;
        this.itemHintTitle = textView;
        this.itemIcon = imageView;
        this.itemParentRight = linearLayout;
        this.itemSubTitle = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemParentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemParentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_parent, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemParentBinding bind(View view) {
        int i = R.id.item_hint_title;
        TextView textView = (TextView) view.findViewById(R.id.item_hint_title);
        if (textView != null) {
            i = R.id.item_icon;
            ImageView imageView = (ImageView) view.findViewById(R.id.item_icon);
            if (imageView != null) {
                i = R.id.item_parent_right;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.item_parent_right);
                if (linearLayout != null) {
                    i = R.id.item_sub_title;
                    TextView textView2 = (TextView) view.findViewById(R.id.item_sub_title);
                    if (textView2 != null) {
                        return new ItemParentBinding((RelativeLayout) view, textView, imageView, linearLayout, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
