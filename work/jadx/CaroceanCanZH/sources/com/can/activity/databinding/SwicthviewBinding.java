package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class SwicthviewBinding implements ViewBinding {
    public final Button btnViewDepresangle;
    public final Button btnViewStandardview;
    public final Button btnViewWideangle;
    public final RelativeLayout layoutSwicthview0;
    public final LinearLayout layoutSwicthview1;
    public final LinearLayout layoutSwicthview2;
    private final RelativeLayout rootView;

    private SwicthviewBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3, RelativeLayout relativeLayout2, LinearLayout linearLayout, LinearLayout linearLayout2) {
        this.rootView = relativeLayout;
        this.btnViewDepresangle = button;
        this.btnViewStandardview = button2;
        this.btnViewWideangle = button3;
        this.layoutSwicthview0 = relativeLayout2;
        this.layoutSwicthview1 = linearLayout;
        this.layoutSwicthview2 = linearLayout2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static SwicthviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SwicthviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.swicthview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SwicthviewBinding bind(View view) {
        int i = R.id.btn_view_depresangle;
        Button button = (Button) view.findViewById(R.id.btn_view_depresangle);
        if (button != null) {
            i = R.id.btn_view_standardview;
            Button button2 = (Button) view.findViewById(R.id.btn_view_standardview);
            if (button2 != null) {
                i = R.id.btn_view_wideangle;
                Button button3 = (Button) view.findViewById(R.id.btn_view_wideangle);
                if (button3 != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    i = R.id.layout_swicthview_1;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.layout_swicthview_1);
                    if (linearLayout != null) {
                        i = R.id.layout_swicthview_2;
                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.layout_swicthview_2);
                        if (linearLayout2 != null) {
                            return new SwicthviewBinding(relativeLayout, button, button2, button3, relativeLayout, linearLayout, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
