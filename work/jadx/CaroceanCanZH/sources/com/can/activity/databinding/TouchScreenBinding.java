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
public final class TouchScreenBinding implements ViewBinding {
    public final ImageView img;
    private final RelativeLayout rootView;
    public final TextView text;
    public final TextView time;

    private TouchScreenBinding(RelativeLayout relativeLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.img = imageView;
        this.text = textView;
        this.time = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static TouchScreenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TouchScreenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.touch_screen, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static TouchScreenBinding bind(View view) {
        int i = R.id.img;
        ImageView imageView = (ImageView) view.findViewById(R.id.img);
        if (imageView != null) {
            i = R.id.text;
            TextView textView = (TextView) view.findViewById(R.id.text);
            if (textView != null) {
                i = R.id.time;
                TextView textView2 = (TextView) view.findViewById(R.id.time);
                if (textView2 != null) {
                    return new TouchScreenBinding((RelativeLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
