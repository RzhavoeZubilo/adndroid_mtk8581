package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.AutoText;

/* JADX INFO: loaded from: classes.dex */
public final class GmSpOnStarBinding implements ViewBinding {
    public final ImageButton gmBtnCall;
    public final ImageButton gmBtnCallEight;
    public final ImageButton gmBtnCallFive;
    public final ImageButton gmBtnCallFour;
    public final ImageButton gmBtnCallNine;
    public final ImageButton gmBtnCallOne;
    public final ImageButton gmBtnCallRecall;
    public final ImageButton gmBtnCallSeven;
    public final ImageButton gmBtnCallSix;
    public final ImageButton gmBtnCallStar;
    public final ImageButton gmBtnCallThree;
    public final ImageButton gmBtnCallTwo;
    public final ImageButton gmBtnCallZero;
    public final ImageButton gmBtnDelNum;
    public final ImageButton gmBtnHung;
    public final Button gmBtnNet;
    public final TextView gmTvName;
    public final TextView gmTvPwd;
    public final TextView gmTvType;
    private final LinearLayout rootView;
    public final AutoText textCallInfo;

    private GmSpOnStarBinding(LinearLayout linearLayout, ImageButton imageButton, ImageButton imageButton2, ImageButton imageButton3, ImageButton imageButton4, ImageButton imageButton5, ImageButton imageButton6, ImageButton imageButton7, ImageButton imageButton8, ImageButton imageButton9, ImageButton imageButton10, ImageButton imageButton11, ImageButton imageButton12, ImageButton imageButton13, ImageButton imageButton14, ImageButton imageButton15, Button button, TextView textView, TextView textView2, TextView textView3, AutoText autoText) {
        this.rootView = linearLayout;
        this.gmBtnCall = imageButton;
        this.gmBtnCallEight = imageButton2;
        this.gmBtnCallFive = imageButton3;
        this.gmBtnCallFour = imageButton4;
        this.gmBtnCallNine = imageButton5;
        this.gmBtnCallOne = imageButton6;
        this.gmBtnCallRecall = imageButton7;
        this.gmBtnCallSeven = imageButton8;
        this.gmBtnCallSix = imageButton9;
        this.gmBtnCallStar = imageButton10;
        this.gmBtnCallThree = imageButton11;
        this.gmBtnCallTwo = imageButton12;
        this.gmBtnCallZero = imageButton13;
        this.gmBtnDelNum = imageButton14;
        this.gmBtnHung = imageButton15;
        this.gmBtnNet = button;
        this.gmTvName = textView;
        this.gmTvPwd = textView2;
        this.gmTvType = textView3;
        this.textCallInfo = autoText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static GmSpOnStarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GmSpOnStarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gm_sp_on_star, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static GmSpOnStarBinding bind(View view) {
        int i = R.id.gm_btn_call;
        ImageButton imageButton = (ImageButton) view.findViewById(R.id.gm_btn_call);
        if (imageButton != null) {
            i = R.id.gm_btn_call_eight;
            ImageButton imageButton2 = (ImageButton) view.findViewById(R.id.gm_btn_call_eight);
            if (imageButton2 != null) {
                i = R.id.gm_btn_call_five;
                ImageButton imageButton3 = (ImageButton) view.findViewById(R.id.gm_btn_call_five);
                if (imageButton3 != null) {
                    i = R.id.gm_btn_call_four;
                    ImageButton imageButton4 = (ImageButton) view.findViewById(R.id.gm_btn_call_four);
                    if (imageButton4 != null) {
                        i = R.id.gm_btn_call_nine;
                        ImageButton imageButton5 = (ImageButton) view.findViewById(R.id.gm_btn_call_nine);
                        if (imageButton5 != null) {
                            i = R.id.gm_btn_call_one;
                            ImageButton imageButton6 = (ImageButton) view.findViewById(R.id.gm_btn_call_one);
                            if (imageButton6 != null) {
                                i = R.id.gm_btn_call_recall;
                                ImageButton imageButton7 = (ImageButton) view.findViewById(R.id.gm_btn_call_recall);
                                if (imageButton7 != null) {
                                    i = R.id.gm_btn_call_seven;
                                    ImageButton imageButton8 = (ImageButton) view.findViewById(R.id.gm_btn_call_seven);
                                    if (imageButton8 != null) {
                                        i = R.id.gm_btn_call_six;
                                        ImageButton imageButton9 = (ImageButton) view.findViewById(R.id.gm_btn_call_six);
                                        if (imageButton9 != null) {
                                            i = R.id.gm_btn_call_star;
                                            ImageButton imageButton10 = (ImageButton) view.findViewById(R.id.gm_btn_call_star);
                                            if (imageButton10 != null) {
                                                i = R.id.gm_btn_call_three;
                                                ImageButton imageButton11 = (ImageButton) view.findViewById(R.id.gm_btn_call_three);
                                                if (imageButton11 != null) {
                                                    i = R.id.gm_btn_call_two;
                                                    ImageButton imageButton12 = (ImageButton) view.findViewById(R.id.gm_btn_call_two);
                                                    if (imageButton12 != null) {
                                                        i = R.id.gm_btn_call_zero;
                                                        ImageButton imageButton13 = (ImageButton) view.findViewById(R.id.gm_btn_call_zero);
                                                        if (imageButton13 != null) {
                                                            i = R.id.gm_btn_del_num;
                                                            ImageButton imageButton14 = (ImageButton) view.findViewById(R.id.gm_btn_del_num);
                                                            if (imageButton14 != null) {
                                                                i = R.id.gm_btn_hung;
                                                                ImageButton imageButton15 = (ImageButton) view.findViewById(R.id.gm_btn_hung);
                                                                if (imageButton15 != null) {
                                                                    i = R.id.gm_btn_net;
                                                                    Button button = (Button) view.findViewById(R.id.gm_btn_net);
                                                                    if (button != null) {
                                                                        i = R.id.gm_tv_name;
                                                                        TextView textView = (TextView) view.findViewById(R.id.gm_tv_name);
                                                                        if (textView != null) {
                                                                            i = R.id.gm_tv_pwd;
                                                                            TextView textView2 = (TextView) view.findViewById(R.id.gm_tv_pwd);
                                                                            if (textView2 != null) {
                                                                                i = R.id.gm_tv_type;
                                                                                TextView textView3 = (TextView) view.findViewById(R.id.gm_tv_type);
                                                                                if (textView3 != null) {
                                                                                    i = R.id.text_call_info;
                                                                                    AutoText autoText = (AutoText) view.findViewById(R.id.text_call_info);
                                                                                    if (autoText != null) {
                                                                                        return new GmSpOnStarBinding((LinearLayout) view, imageButton, imageButton2, imageButton3, imageButton4, imageButton5, imageButton6, imageButton7, imageButton8, imageButton9, imageButton10, imageButton11, imageButton12, imageButton13, imageButton14, imageButton15, button, textView, textView2, textView3, autoText);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
