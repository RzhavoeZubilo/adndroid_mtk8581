package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PopDailogV3Binding implements ViewBinding {
    public final ImageView popDailogImage;
    public final TextView popDailogText;
    public final TextView popDailogV3Title;
    private final LinearLayout rootView;

    private PopDailogV3Binding(LinearLayout linearLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.popDailogImage = imageView;
        this.popDailogText = textView;
        this.popDailogV3Title = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static PopDailogV3Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PopDailogV3Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.pop_dailog_v3, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PopDailogV3Binding bind(View view) {
        int i = R.id.pop_dailog_image;
        ImageView imageView = (ImageView) view.findViewById(R.id.pop_dailog_image);
        if (imageView != null) {
            i = R.id.pop_dailog_text;
            TextView textView = (TextView) view.findViewById(R.id.pop_dailog_text);
            if (textView != null) {
                i = R.id.pop_dailog_v3_title;
                TextView textView2 = (TextView) view.findViewById(R.id.pop_dailog_v3_title);
                if (textView2 != null) {
                    return new PopDailogV3Binding((LinearLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
