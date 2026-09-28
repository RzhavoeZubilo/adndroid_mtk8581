package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class LexusActivityCarmediaBinding implements ViewBinding {
    public final LinearLayout carmediaLayout;
    public final TextView carmediaSt;
    public final TextView carmediaText1;
    public final TextView carmediaText2;
    public final TextView carmediaText3;
    public final FrameLayout carmenuLayout;
    public final TextView carmenuText;
    public final ImageView disc1;
    public final ImageView disc2;
    public final ImageView disc3;
    public final ImageView disc4;
    public final ImageView disc5;
    public final ImageView disc6;
    public final LinearLayout discLayout;
    public final ImageView operationAcs;
    public final ImageView operationAls;
    public final ImageView operationAm;
    public final ImageView operationAudio;
    public final ImageView operationChPlus;
    public final ImageView operationChReduce;
    public final ImageView operationFm;
    public final ImageView operationMedia;
    public final ImageView operationMute;
    public final ImageView operationNext;
    public final ImageView operationNum1;
    public final ImageView operationNum2;
    public final ImageView operationNum3;
    public final ImageView operationNum4;
    public final ImageView operationNum5;
    public final ImageView operationNum6;
    public final ImageView operationPrev;
    public final ImageView operationRand;
    public final ImageView operationRepeat;
    public final ImageView operationScan;
    public final ImageView operationSet;
    public final ImageView rightIcon;
    private final FrameLayout rootView;

    private LexusActivityCarmediaBinding(FrameLayout frameLayout, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, FrameLayout frameLayout2, TextView textView5, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, LinearLayout linearLayout2, ImageView imageView7, ImageView imageView8, ImageView imageView9, ImageView imageView10, ImageView imageView11, ImageView imageView12, ImageView imageView13, ImageView imageView14, ImageView imageView15, ImageView imageView16, ImageView imageView17, ImageView imageView18, ImageView imageView19, ImageView imageView20, ImageView imageView21, ImageView imageView22, ImageView imageView23, ImageView imageView24, ImageView imageView25, ImageView imageView26, ImageView imageView27, ImageView imageView28) {
        this.rootView = frameLayout;
        this.carmediaLayout = linearLayout;
        this.carmediaSt = textView;
        this.carmediaText1 = textView2;
        this.carmediaText2 = textView3;
        this.carmediaText3 = textView4;
        this.carmenuLayout = frameLayout2;
        this.carmenuText = textView5;
        this.disc1 = imageView;
        this.disc2 = imageView2;
        this.disc3 = imageView3;
        this.disc4 = imageView4;
        this.disc5 = imageView5;
        this.disc6 = imageView6;
        this.discLayout = linearLayout2;
        this.operationAcs = imageView7;
        this.operationAls = imageView8;
        this.operationAm = imageView9;
        this.operationAudio = imageView10;
        this.operationChPlus = imageView11;
        this.operationChReduce = imageView12;
        this.operationFm = imageView13;
        this.operationMedia = imageView14;
        this.operationMute = imageView15;
        this.operationNext = imageView16;
        this.operationNum1 = imageView17;
        this.operationNum2 = imageView18;
        this.operationNum3 = imageView19;
        this.operationNum4 = imageView20;
        this.operationNum5 = imageView21;
        this.operationNum6 = imageView22;
        this.operationPrev = imageView23;
        this.operationRand = imageView24;
        this.operationRepeat = imageView25;
        this.operationScan = imageView26;
        this.operationSet = imageView27;
        this.rightIcon = imageView28;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LexusActivityCarmediaBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LexusActivityCarmediaBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.lexus_activity_carmedia, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LexusActivityCarmediaBinding bind(View view) {
        int i = R.id.carmedia_layout;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.carmedia_layout);
        if (linearLayout != null) {
            i = R.id.carmedia_st;
            TextView textView = (TextView) view.findViewById(R.id.carmedia_st);
            if (textView != null) {
                i = R.id.carmedia_text1;
                TextView textView2 = (TextView) view.findViewById(R.id.carmedia_text1);
                if (textView2 != null) {
                    i = R.id.carmedia_text2;
                    TextView textView3 = (TextView) view.findViewById(R.id.carmedia_text2);
                    if (textView3 != null) {
                        i = R.id.carmedia_text3;
                        TextView textView4 = (TextView) view.findViewById(R.id.carmedia_text3);
                        if (textView4 != null) {
                            i = R.id.carmenu_layout;
                            FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.carmenu_layout);
                            if (frameLayout != null) {
                                i = R.id.carmenu_text;
                                TextView textView5 = (TextView) view.findViewById(R.id.carmenu_text);
                                if (textView5 != null) {
                                    i = R.id.disc_1;
                                    ImageView imageView = (ImageView) view.findViewById(R.id.disc_1);
                                    if (imageView != null) {
                                        i = R.id.disc_2;
                                        ImageView imageView2 = (ImageView) view.findViewById(R.id.disc_2);
                                        if (imageView2 != null) {
                                            i = R.id.disc_3;
                                            ImageView imageView3 = (ImageView) view.findViewById(R.id.disc_3);
                                            if (imageView3 != null) {
                                                i = R.id.disc_4;
                                                ImageView imageView4 = (ImageView) view.findViewById(R.id.disc_4);
                                                if (imageView4 != null) {
                                                    i = R.id.disc_5;
                                                    ImageView imageView5 = (ImageView) view.findViewById(R.id.disc_5);
                                                    if (imageView5 != null) {
                                                        i = R.id.disc_6;
                                                        ImageView imageView6 = (ImageView) view.findViewById(R.id.disc_6);
                                                        if (imageView6 != null) {
                                                            i = R.id.disc_layout;
                                                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.disc_layout);
                                                            if (linearLayout2 != null) {
                                                                i = R.id.operation_acs;
                                                                ImageView imageView7 = (ImageView) view.findViewById(R.id.operation_acs);
                                                                if (imageView7 != null) {
                                                                    i = R.id.operation_als;
                                                                    ImageView imageView8 = (ImageView) view.findViewById(R.id.operation_als);
                                                                    if (imageView8 != null) {
                                                                        i = R.id.operation_am;
                                                                        ImageView imageView9 = (ImageView) view.findViewById(R.id.operation_am);
                                                                        if (imageView9 != null) {
                                                                            i = R.id.operation_audio;
                                                                            ImageView imageView10 = (ImageView) view.findViewById(R.id.operation_audio);
                                                                            if (imageView10 != null) {
                                                                                i = R.id.operation_ch_plus;
                                                                                ImageView imageView11 = (ImageView) view.findViewById(R.id.operation_ch_plus);
                                                                                if (imageView11 != null) {
                                                                                    i = R.id.operation_ch_reduce;
                                                                                    ImageView imageView12 = (ImageView) view.findViewById(R.id.operation_ch_reduce);
                                                                                    if (imageView12 != null) {
                                                                                        i = R.id.operation_fm;
                                                                                        ImageView imageView13 = (ImageView) view.findViewById(R.id.operation_fm);
                                                                                        if (imageView13 != null) {
                                                                                            i = R.id.operation_media;
                                                                                            ImageView imageView14 = (ImageView) view.findViewById(R.id.operation_media);
                                                                                            if (imageView14 != null) {
                                                                                                i = R.id.operation_mute;
                                                                                                ImageView imageView15 = (ImageView) view.findViewById(R.id.operation_mute);
                                                                                                if (imageView15 != null) {
                                                                                                    i = R.id.operation_next;
                                                                                                    ImageView imageView16 = (ImageView) view.findViewById(R.id.operation_next);
                                                                                                    if (imageView16 != null) {
                                                                                                        i = R.id.operation_num_1;
                                                                                                        ImageView imageView17 = (ImageView) view.findViewById(R.id.operation_num_1);
                                                                                                        if (imageView17 != null) {
                                                                                                            i = R.id.operation_num_2;
                                                                                                            ImageView imageView18 = (ImageView) view.findViewById(R.id.operation_num_2);
                                                                                                            if (imageView18 != null) {
                                                                                                                i = R.id.operation_num_3;
                                                                                                                ImageView imageView19 = (ImageView) view.findViewById(R.id.operation_num_3);
                                                                                                                if (imageView19 != null) {
                                                                                                                    i = R.id.operation_num_4;
                                                                                                                    ImageView imageView20 = (ImageView) view.findViewById(R.id.operation_num_4);
                                                                                                                    if (imageView20 != null) {
                                                                                                                        i = R.id.operation_num_5;
                                                                                                                        ImageView imageView21 = (ImageView) view.findViewById(R.id.operation_num_5);
                                                                                                                        if (imageView21 != null) {
                                                                                                                            i = R.id.operation_num_6;
                                                                                                                            ImageView imageView22 = (ImageView) view.findViewById(R.id.operation_num_6);
                                                                                                                            if (imageView22 != null) {
                                                                                                                                i = R.id.operation_prev;
                                                                                                                                ImageView imageView23 = (ImageView) view.findViewById(R.id.operation_prev);
                                                                                                                                if (imageView23 != null) {
                                                                                                                                    i = R.id.operation_rand;
                                                                                                                                    ImageView imageView24 = (ImageView) view.findViewById(R.id.operation_rand);
                                                                                                                                    if (imageView24 != null) {
                                                                                                                                        i = R.id.operation_repeat;
                                                                                                                                        ImageView imageView25 = (ImageView) view.findViewById(R.id.operation_repeat);
                                                                                                                                        if (imageView25 != null) {
                                                                                                                                            i = R.id.operation_scan;
                                                                                                                                            ImageView imageView26 = (ImageView) view.findViewById(R.id.operation_scan);
                                                                                                                                            if (imageView26 != null) {
                                                                                                                                                ImageView imageView27 = (ImageView) view.findViewById(R.id.operation_set);
                                                                                                                                                i = R.id.right_icon;
                                                                                                                                                ImageView imageView28 = (ImageView) view.findViewById(R.id.right_icon);
                                                                                                                                                if (imageView28 != null) {
                                                                                                                                                    return new LexusActivityCarmediaBinding((FrameLayout) view, linearLayout, textView, textView2, textView3, textView4, frameLayout, textView5, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, linearLayout2, imageView7, imageView8, imageView9, imageView10, imageView11, imageView12, imageView13, imageView14, imageView15, imageView16, imageView17, imageView18, imageView19, imageView20, imageView21, imageView22, imageView23, imageView24, imageView25, imageView26, imageView27, imageView28);
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
