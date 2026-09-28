package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PopDialogBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView textviewNo;
    public final TextView textviewTitle;
    public final TextView textviewYes;

    private PopDialogBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.textviewNo = textView;
        this.textviewTitle = textView2;
        this.textviewYes = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static PopDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PopDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.pop_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PopDialogBinding bind(View view) {
        int i = R.id.textview_no;
        TextView textView = (TextView) view.findViewById(R.id.textview_no);
        if (textView != null) {
            i = R.id.textview_title;
            TextView textView2 = (TextView) view.findViewById(R.id.textview_title);
            if (textView2 != null) {
                i = R.id.textview_yes;
                TextView textView3 = (TextView) view.findViewById(R.id.textview_yes);
                if (textView3 != null) {
                    return new PopDialogBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
