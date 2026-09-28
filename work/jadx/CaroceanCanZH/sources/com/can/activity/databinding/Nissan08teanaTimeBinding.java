package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Nissan08teanaTimeBinding implements ViewBinding {
    private final RelativeLayout rootView;
    public final TextView textNissanHour;
    public final TextView textNissanMid;
    public final TextView textNissanSec;

    private Nissan08teanaTimeBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = relativeLayout;
        this.textNissanHour = textView;
        this.textNissanMid = textView2;
        this.textNissanSec = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static Nissan08teanaTimeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Nissan08teanaTimeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.nissan_08teana_time, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Nissan08teanaTimeBinding bind(View view) {
        int i = R.id.text_nissan_hour;
        TextView textView = (TextView) view.findViewById(R.id.text_nissan_hour);
        if (textView != null) {
            i = R.id.text_nissan_mid;
            TextView textView2 = (TextView) view.findViewById(R.id.text_nissan_mid);
            if (textView2 != null) {
                i = R.id.text_nissan_sec;
                TextView textView3 = (TextView) view.findViewById(R.id.text_nissan_sec);
                if (textView3 != null) {
                    return new Nissan08teanaTimeBinding((RelativeLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
