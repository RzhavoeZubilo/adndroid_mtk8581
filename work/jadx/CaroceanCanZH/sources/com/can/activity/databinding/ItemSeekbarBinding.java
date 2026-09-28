package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ItemSeekbarBinding implements ViewBinding {
    public final SeekBar itemSeekbar;
    public final TextView itemSeekbarTitle;
    private final LinearLayout rootView;

    private ItemSeekbarBinding(LinearLayout linearLayout, SeekBar seekBar, TextView textView) {
        this.rootView = linearLayout;
        this.itemSeekbar = seekBar;
        this.itemSeekbarTitle = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemSeekbarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSeekbarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_seekbar, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemSeekbarBinding bind(View view) {
        int i = R.id.item_seekbar;
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.item_seekbar);
        if (seekBar != null) {
            i = R.id.item_seekbar_title;
            TextView textView = (TextView) view.findViewById(R.id.item_seekbar_title);
            if (textView != null) {
                return new ItemSeekbarBinding((LinearLayout) view, seekBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
