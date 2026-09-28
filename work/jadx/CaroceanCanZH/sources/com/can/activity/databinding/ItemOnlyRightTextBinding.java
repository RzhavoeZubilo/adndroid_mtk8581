package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ItemOnlyRightTextBinding implements ViewBinding {
    public final TextView oneRightText;
    private final TextView rootView;

    private ItemOnlyRightTextBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.oneRightText = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemOnlyRightTextBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemOnlyRightTextBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_only_right_text, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemOnlyRightTextBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new ItemOnlyRightTextBinding(textView, textView);
    }
}
