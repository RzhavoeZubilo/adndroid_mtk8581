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
public final class PopDailogV2Binding implements ViewBinding {
    public final SeekBar popDailogSeekbar;
    public final TextView popDailogSeekbarVal;
    public final TextView popDailogV2Title;
    private final LinearLayout rootView;

    private PopDailogV2Binding(LinearLayout linearLayout, SeekBar seekBar, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.popDailogSeekbar = seekBar;
        this.popDailogSeekbarVal = textView;
        this.popDailogV2Title = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static PopDailogV2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PopDailogV2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.pop_dailog_v2, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PopDailogV2Binding bind(View view) {
        int i = R.id.pop_dailog_seekbar;
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.pop_dailog_seekbar);
        if (seekBar != null) {
            i = R.id.pop_dailog_seekbar_val;
            TextView textView = (TextView) view.findViewById(R.id.pop_dailog_seekbar_val);
            if (textView != null) {
                i = R.id.pop_dailog_v2_title;
                TextView textView2 = (TextView) view.findViewById(R.id.pop_dailog_v2_title);
                if (textView2 != null) {
                    return new PopDailogV2Binding((LinearLayout) view, seekBar, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
