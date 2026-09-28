package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.AutoText;

/* JADX INFO: loaded from: classes.dex */
public final class AboutBinding implements ViewBinding {
    public final Button btnCheckUpdate;
    public final Button btnUpdateLocal;
    public final Button btnUpdateRemote;
    public final RelativeLayout layoutUpdate;
    public final RelativeLayout layoutWind;
    private final RelativeLayout rootView;
    public final TextView txAboutAppver;
    public final TextView txAboutCanbox;
    public final TextView txAboutCanver;
    public final TextView txAboutCarconfig;
    public final TextView txAboutCarline;
    public final AutoText txAboutCartype;

    private AboutBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, AutoText autoText) {
        this.rootView = relativeLayout;
        this.btnCheckUpdate = button;
        this.btnUpdateLocal = button2;
        this.btnUpdateRemote = button3;
        this.layoutUpdate = relativeLayout2;
        this.layoutWind = relativeLayout3;
        this.txAboutAppver = textView;
        this.txAboutCanbox = textView2;
        this.txAboutCanver = textView3;
        this.txAboutCarconfig = textView4;
        this.txAboutCarline = textView5;
        this.txAboutCartype = autoText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static AboutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AboutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.about, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AboutBinding bind(View view) {
        int i = R.id.btn_check_update;
        Button button = (Button) view.findViewById(R.id.btn_check_update);
        if (button != null) {
            i = R.id.btn_update_local;
            Button button2 = (Button) view.findViewById(R.id.btn_update_local);
            if (button2 != null) {
                i = R.id.btn_update_remote;
                Button button3 = (Button) view.findViewById(R.id.btn_update_remote);
                if (button3 != null) {
                    i = R.id.layout_update;
                    RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.layout_update);
                    if (relativeLayout != null) {
                        i = R.id.layout_wind;
                        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.layout_wind);
                        if (relativeLayout2 != null) {
                            i = R.id.tx_about_appver;
                            TextView textView = (TextView) view.findViewById(R.id.tx_about_appver);
                            if (textView != null) {
                                i = R.id.tx_about_canbox;
                                TextView textView2 = (TextView) view.findViewById(R.id.tx_about_canbox);
                                if (textView2 != null) {
                                    i = R.id.tx_about_canver;
                                    TextView textView3 = (TextView) view.findViewById(R.id.tx_about_canver);
                                    if (textView3 != null) {
                                        i = R.id.tx_about_carconfig;
                                        TextView textView4 = (TextView) view.findViewById(R.id.tx_about_carconfig);
                                        if (textView4 != null) {
                                            i = R.id.tx_about_carline;
                                            TextView textView5 = (TextView) view.findViewById(R.id.tx_about_carline);
                                            if (textView5 != null) {
                                                i = R.id.tx_about_cartype;
                                                AutoText autoText = (AutoText) view.findViewById(R.id.tx_about_cartype);
                                                if (autoText != null) {
                                                    return new AboutBinding((RelativeLayout) view, button, button2, button3, relativeLayout, relativeLayout2, textView, textView2, textView3, textView4, textView5, autoText);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
