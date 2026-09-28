package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ItemLeftRightButtonBinding implements ViewBinding {
    public final Button itemIconLeft;
    public final Button itemIconRight;
    public final TextView itemTextMiddle;
    private final RelativeLayout rootView;

    private ItemLeftRightButtonBinding(RelativeLayout relativeLayout, Button button, Button button2, TextView textView) {
        this.rootView = relativeLayout;
        this.itemIconLeft = button;
        this.itemIconRight = button2;
        this.itemTextMiddle = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemLeftRightButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemLeftRightButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_left_right_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemLeftRightButtonBinding bind(View view) {
        int i = R.id.item_icon_left;
        Button button = (Button) view.findViewById(R.id.item_icon_left);
        if (button != null) {
            i = R.id.item_icon_right;
            Button button2 = (Button) view.findViewById(R.id.item_icon_right);
            if (button2 != null) {
                i = R.id.item_text_middle;
                TextView textView = (TextView) view.findViewById(R.id.item_text_middle);
                if (textView != null) {
                    return new ItemLeftRightButtonBinding((RelativeLayout) view, button, button2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
