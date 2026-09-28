package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ItemOnlyRightButtonBinding implements ViewBinding {
    public final TextView itemPromptTitle;
    public final TextView itemPromptTitle2;
    public final Button oneRightButton;
    private final LinearLayout rootView;

    private ItemOnlyRightButtonBinding(LinearLayout linearLayout, TextView textView, TextView textView2, Button button) {
        this.rootView = linearLayout;
        this.itemPromptTitle = textView;
        this.itemPromptTitle2 = textView2;
        this.oneRightButton = button;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemOnlyRightButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemOnlyRightButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_only_right_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemOnlyRightButtonBinding bind(View view) {
        int i = R.id.item_prompt_title;
        TextView textView = (TextView) view.findViewById(R.id.item_prompt_title);
        if (textView != null) {
            i = R.id.item_prompt_title2;
            TextView textView2 = (TextView) view.findViewById(R.id.item_prompt_title2);
            if (textView2 != null) {
                i = R.id.one_right_button;
                Button button = (Button) view.findViewById(R.id.one_right_button);
                if (button != null) {
                    return new ItemOnlyRightButtonBinding((LinearLayout) view, textView, textView2, button);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
