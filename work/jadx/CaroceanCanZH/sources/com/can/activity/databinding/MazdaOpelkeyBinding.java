package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class MazdaOpelkeyBinding implements ViewBinding {
    public final Button btnMazdaKb1;
    public final Button btnMazdaKb2;
    public final Button btnMazdaKb3;
    public final Button btnMazdaKb4;
    public final Button btnMazdaKb5;
    public final Button btnMazdaKb6;
    public final Button btnMazdaKb7;
    public final Button btnMazdaKb8;
    public final Button btnMazdaKb9;
    public final Button btnMazdaKbBc;
    public final Button btnMazdaKbCdmp3;
    public final Button btnMazdaKbFmam;
    public final Button btnMazdaKbLeft;
    public final Button btnMazdaKbOk;
    public final Button btnMazdaKbRight;
    public final Button btnMazdaKbSet;
    private final RelativeLayout rootView;

    private MazdaOpelkeyBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11, Button button12, Button button13, Button button14, Button button15, Button button16) {
        this.rootView = relativeLayout;
        this.btnMazdaKb1 = button;
        this.btnMazdaKb2 = button2;
        this.btnMazdaKb3 = button3;
        this.btnMazdaKb4 = button4;
        this.btnMazdaKb5 = button5;
        this.btnMazdaKb6 = button6;
        this.btnMazdaKb7 = button7;
        this.btnMazdaKb8 = button8;
        this.btnMazdaKb9 = button9;
        this.btnMazdaKbBc = button10;
        this.btnMazdaKbCdmp3 = button11;
        this.btnMazdaKbFmam = button12;
        this.btnMazdaKbLeft = button13;
        this.btnMazdaKbOk = button14;
        this.btnMazdaKbRight = button15;
        this.btnMazdaKbSet = button16;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static MazdaOpelkeyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MazdaOpelkeyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.mazda_opelkey, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MazdaOpelkeyBinding bind(View view) {
        int i = R.id.btn_mazda_kb_1;
        Button button = (Button) view.findViewById(R.id.btn_mazda_kb_1);
        if (button != null) {
            i = R.id.btn_mazda_kb_2;
            Button button2 = (Button) view.findViewById(R.id.btn_mazda_kb_2);
            if (button2 != null) {
                i = R.id.btn_mazda_kb_3;
                Button button3 = (Button) view.findViewById(R.id.btn_mazda_kb_3);
                if (button3 != null) {
                    i = R.id.btn_mazda_kb_4;
                    Button button4 = (Button) view.findViewById(R.id.btn_mazda_kb_4);
                    if (button4 != null) {
                        i = R.id.btn_mazda_kb_5;
                        Button button5 = (Button) view.findViewById(R.id.btn_mazda_kb_5);
                        if (button5 != null) {
                            i = R.id.btn_mazda_kb_6;
                            Button button6 = (Button) view.findViewById(R.id.btn_mazda_kb_6);
                            if (button6 != null) {
                                i = R.id.btn_mazda_kb_7;
                                Button button7 = (Button) view.findViewById(R.id.btn_mazda_kb_7);
                                if (button7 != null) {
                                    i = R.id.btn_mazda_kb_8;
                                    Button button8 = (Button) view.findViewById(R.id.btn_mazda_kb_8);
                                    if (button8 != null) {
                                        i = R.id.btn_mazda_kb_9;
                                        Button button9 = (Button) view.findViewById(R.id.btn_mazda_kb_9);
                                        if (button9 != null) {
                                            i = R.id.btn_mazda_kb_bc;
                                            Button button10 = (Button) view.findViewById(R.id.btn_mazda_kb_bc);
                                            if (button10 != null) {
                                                i = R.id.btn_mazda_kb_cdmp3;
                                                Button button11 = (Button) view.findViewById(R.id.btn_mazda_kb_cdmp3);
                                                if (button11 != null) {
                                                    i = R.id.btn_mazda_kb_fmam;
                                                    Button button12 = (Button) view.findViewById(R.id.btn_mazda_kb_fmam);
                                                    if (button12 != null) {
                                                        i = R.id.btn_mazda_kb_left;
                                                        Button button13 = (Button) view.findViewById(R.id.btn_mazda_kb_left);
                                                        if (button13 != null) {
                                                            i = R.id.btn_mazda_kb_ok;
                                                            Button button14 = (Button) view.findViewById(R.id.btn_mazda_kb_ok);
                                                            if (button14 != null) {
                                                                i = R.id.btn_mazda_kb_right;
                                                                Button button15 = (Button) view.findViewById(R.id.btn_mazda_kb_right);
                                                                if (button15 != null) {
                                                                    i = R.id.btn_mazda_kb_set;
                                                                    Button button16 = (Button) view.findViewById(R.id.btn_mazda_kb_set);
                                                                    if (button16 != null) {
                                                                        return new MazdaOpelkeyBinding((RelativeLayout) view, button, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
