package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class HondaSpAdCarSetBinding implements ViewBinding {
    public final TextView btnHondaLeftSet1;
    public final TextView btnHondaLeftSet10;
    public final TextView btnHondaLeftSet11;
    public final TextView btnHondaLeftSet15;
    public final TextView btnHondaLeftSet18;
    public final TextView btnHondaLeftSet19;
    public final TextView btnHondaLeftSet2;
    public final TextView btnHondaLeftSet20;
    public final TextView btnHondaLeftSet3;
    public final TextView btnHondaLeftSet4;
    public final TextView btnHondaLeftSet5;
    public final TextView btnHondaLeftSet6;
    public final TextView btnHondaLeftSet7;
    public final TextView btnHondaLeftSet8;
    public final TextView btnHondaLeftSet9;
    public final TextView btnHondaRightSet21;
    public final TextView btnHondaRightSet22;
    public final CheckBox checkboxHondaSet1;
    public final CheckBox checkboxHondaSet2;
    public final CheckBox checkboxHondaSet3;
    public final CheckBox checkboxHondaSet4;
    public final CheckBox checkboxHondaSet5;
    public final RelativeLayout layout1;
    public final RelativeLayout layout10;
    public final RelativeLayout layout11;
    public final RelativeLayout layout12;
    public final RelativeLayout layout13;
    public final RelativeLayout layout14;
    public final RelativeLayout layout15;
    public final RelativeLayout layout2;
    public final RelativeLayout layout24;
    public final RelativeLayout layout3;
    public final RelativeLayout layout31;
    public final RelativeLayout layout32;
    public final RelativeLayout layout33;
    public final RelativeLayout layout34;
    public final RelativeLayout layout35;
    public final RelativeLayout layout36;
    public final RelativeLayout layout4;
    public final RelativeLayout layout5;
    public final RelativeLayout layout6;
    public final RelativeLayout layout7;
    public final RelativeLayout layout8;
    public final RelativeLayout layout9;
    private final ScrollView rootView;
    public final TextView tvHondaSet1;
    public final TextView tvHondaSet10;
    public final TextView tvHondaSet11;
    public final TextView tvHondaSet15;
    public final TextView tvHondaSet18;
    public final TextView tvHondaSet19;
    public final TextView tvHondaSet2;
    public final TextView tvHondaSet20;
    public final TextView tvHondaSet3;
    public final TextView tvHondaSet4;
    public final TextView tvHondaSet5;
    public final TextView tvHondaSet6;
    public final TextView tvHondaSet7;
    public final TextView tvHondaSet8;
    public final TextView tvHondaSet9;

    private HondaSpAdCarSetBinding(ScrollView scrollView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, TextView textView16, TextView textView17, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, RelativeLayout relativeLayout10, RelativeLayout relativeLayout11, RelativeLayout relativeLayout12, RelativeLayout relativeLayout13, RelativeLayout relativeLayout14, RelativeLayout relativeLayout15, RelativeLayout relativeLayout16, RelativeLayout relativeLayout17, RelativeLayout relativeLayout18, RelativeLayout relativeLayout19, RelativeLayout relativeLayout20, RelativeLayout relativeLayout21, RelativeLayout relativeLayout22, TextView textView18, TextView textView19, TextView textView20, TextView textView21, TextView textView22, TextView textView23, TextView textView24, TextView textView25, TextView textView26, TextView textView27, TextView textView28, TextView textView29, TextView textView30, TextView textView31, TextView textView32) {
        this.rootView = scrollView;
        this.btnHondaLeftSet1 = textView;
        this.btnHondaLeftSet10 = textView2;
        this.btnHondaLeftSet11 = textView3;
        this.btnHondaLeftSet15 = textView4;
        this.btnHondaLeftSet18 = textView5;
        this.btnHondaLeftSet19 = textView6;
        this.btnHondaLeftSet2 = textView7;
        this.btnHondaLeftSet20 = textView8;
        this.btnHondaLeftSet3 = textView9;
        this.btnHondaLeftSet4 = textView10;
        this.btnHondaLeftSet5 = textView11;
        this.btnHondaLeftSet6 = textView12;
        this.btnHondaLeftSet7 = textView13;
        this.btnHondaLeftSet8 = textView14;
        this.btnHondaLeftSet9 = textView15;
        this.btnHondaRightSet21 = textView16;
        this.btnHondaRightSet22 = textView17;
        this.checkboxHondaSet1 = checkBox;
        this.checkboxHondaSet2 = checkBox2;
        this.checkboxHondaSet3 = checkBox3;
        this.checkboxHondaSet4 = checkBox4;
        this.checkboxHondaSet5 = checkBox5;
        this.layout1 = relativeLayout;
        this.layout10 = relativeLayout2;
        this.layout11 = relativeLayout3;
        this.layout12 = relativeLayout4;
        this.layout13 = relativeLayout5;
        this.layout14 = relativeLayout6;
        this.layout15 = relativeLayout7;
        this.layout2 = relativeLayout8;
        this.layout24 = relativeLayout9;
        this.layout3 = relativeLayout10;
        this.layout31 = relativeLayout11;
        this.layout32 = relativeLayout12;
        this.layout33 = relativeLayout13;
        this.layout34 = relativeLayout14;
        this.layout35 = relativeLayout15;
        this.layout36 = relativeLayout16;
        this.layout4 = relativeLayout17;
        this.layout5 = relativeLayout18;
        this.layout6 = relativeLayout19;
        this.layout7 = relativeLayout20;
        this.layout8 = relativeLayout21;
        this.layout9 = relativeLayout22;
        this.tvHondaSet1 = textView18;
        this.tvHondaSet10 = textView19;
        this.tvHondaSet11 = textView20;
        this.tvHondaSet15 = textView21;
        this.tvHondaSet18 = textView22;
        this.tvHondaSet19 = textView23;
        this.tvHondaSet2 = textView24;
        this.tvHondaSet20 = textView25;
        this.tvHondaSet3 = textView26;
        this.tvHondaSet4 = textView27;
        this.tvHondaSet5 = textView28;
        this.tvHondaSet6 = textView29;
        this.tvHondaSet7 = textView30;
        this.tvHondaSet8 = textView31;
        this.tvHondaSet9 = textView32;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static HondaSpAdCarSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HondaSpAdCarSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.honda_sp_ad_car_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HondaSpAdCarSetBinding bind(View view) {
        int i = R.id.btn_honda_left_set1;
        TextView textView = (TextView) view.findViewById(R.id.btn_honda_left_set1);
        if (textView != null) {
            i = R.id.btn_honda_left_set10;
            TextView textView2 = (TextView) view.findViewById(R.id.btn_honda_left_set10);
            if (textView2 != null) {
                i = R.id.btn_honda_left_set11;
                TextView textView3 = (TextView) view.findViewById(R.id.btn_honda_left_set11);
                if (textView3 != null) {
                    i = R.id.btn_honda_left_set15;
                    TextView textView4 = (TextView) view.findViewById(R.id.btn_honda_left_set15);
                    if (textView4 != null) {
                        i = R.id.btn_honda_left_set18;
                        TextView textView5 = (TextView) view.findViewById(R.id.btn_honda_left_set18);
                        if (textView5 != null) {
                            i = R.id.btn_honda_left_set19;
                            TextView textView6 = (TextView) view.findViewById(R.id.btn_honda_left_set19);
                            if (textView6 != null) {
                                i = R.id.btn_honda_left_set2;
                                TextView textView7 = (TextView) view.findViewById(R.id.btn_honda_left_set2);
                                if (textView7 != null) {
                                    i = R.id.btn_honda_left_set20;
                                    TextView textView8 = (TextView) view.findViewById(R.id.btn_honda_left_set20);
                                    if (textView8 != null) {
                                        i = R.id.btn_honda_left_set3;
                                        TextView textView9 = (TextView) view.findViewById(R.id.btn_honda_left_set3);
                                        if (textView9 != null) {
                                            i = R.id.btn_honda_left_set4;
                                            TextView textView10 = (TextView) view.findViewById(R.id.btn_honda_left_set4);
                                            if (textView10 != null) {
                                                i = R.id.btn_honda_left_set5;
                                                TextView textView11 = (TextView) view.findViewById(R.id.btn_honda_left_set5);
                                                if (textView11 != null) {
                                                    i = R.id.btn_honda_left_set6;
                                                    TextView textView12 = (TextView) view.findViewById(R.id.btn_honda_left_set6);
                                                    if (textView12 != null) {
                                                        i = R.id.btn_honda_left_set7;
                                                        TextView textView13 = (TextView) view.findViewById(R.id.btn_honda_left_set7);
                                                        if (textView13 != null) {
                                                            i = R.id.btn_honda_left_set8;
                                                            TextView textView14 = (TextView) view.findViewById(R.id.btn_honda_left_set8);
                                                            if (textView14 != null) {
                                                                i = R.id.btn_honda_left_set9;
                                                                TextView textView15 = (TextView) view.findViewById(R.id.btn_honda_left_set9);
                                                                if (textView15 != null) {
                                                                    i = R.id.btn_honda_right_set21;
                                                                    TextView textView16 = (TextView) view.findViewById(R.id.btn_honda_right_set21);
                                                                    if (textView16 != null) {
                                                                        i = R.id.btn_honda_right_set22;
                                                                        TextView textView17 = (TextView) view.findViewById(R.id.btn_honda_right_set22);
                                                                        if (textView17 != null) {
                                                                            i = R.id.checkbox_honda_set1;
                                                                            CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkbox_honda_set1);
                                                                            if (checkBox != null) {
                                                                                i = R.id.checkbox_honda_set2;
                                                                                CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.checkbox_honda_set2);
                                                                                if (checkBox2 != null) {
                                                                                    i = R.id.checkbox_honda_set3;
                                                                                    CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.checkbox_honda_set3);
                                                                                    if (checkBox3 != null) {
                                                                                        i = R.id.checkbox_honda_set4;
                                                                                        CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.checkbox_honda_set4);
                                                                                        if (checkBox4 != null) {
                                                                                            i = R.id.checkbox_honda_set5;
                                                                                            CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.checkbox_honda_set5);
                                                                                            if (checkBox5 != null) {
                                                                                                i = R.id.layout_1;
                                                                                                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.layout_1);
                                                                                                if (relativeLayout != null) {
                                                                                                    i = R.id.layout_10;
                                                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.layout_10);
                                                                                                    if (relativeLayout2 != null) {
                                                                                                        i = R.id.layout_11;
                                                                                                        RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.layout_11);
                                                                                                        if (relativeLayout3 != null) {
                                                                                                            i = R.id.layout_12;
                                                                                                            RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.layout_12);
                                                                                                            if (relativeLayout4 != null) {
                                                                                                                i = R.id.layout_13;
                                                                                                                RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.layout_13);
                                                                                                                if (relativeLayout5 != null) {
                                                                                                                    i = R.id.layout_14;
                                                                                                                    RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.layout_14);
                                                                                                                    if (relativeLayout6 != null) {
                                                                                                                        i = R.id.layout_15;
                                                                                                                        RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.layout_15);
                                                                                                                        if (relativeLayout7 != null) {
                                                                                                                            i = R.id.layout_2;
                                                                                                                            RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.layout_2);
                                                                                                                            if (relativeLayout8 != null) {
                                                                                                                                i = R.id.layout_24;
                                                                                                                                RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.layout_24);
                                                                                                                                if (relativeLayout9 != null) {
                                                                                                                                    i = R.id.layout_3;
                                                                                                                                    RelativeLayout relativeLayout10 = (RelativeLayout) view.findViewById(R.id.layout_3);
                                                                                                                                    if (relativeLayout10 != null) {
                                                                                                                                        i = R.id.layout_31;
                                                                                                                                        RelativeLayout relativeLayout11 = (RelativeLayout) view.findViewById(R.id.layout_31);
                                                                                                                                        if (relativeLayout11 != null) {
                                                                                                                                            i = R.id.layout_32;
                                                                                                                                            RelativeLayout relativeLayout12 = (RelativeLayout) view.findViewById(R.id.layout_32);
                                                                                                                                            if (relativeLayout12 != null) {
                                                                                                                                                i = R.id.layout_33;
                                                                                                                                                RelativeLayout relativeLayout13 = (RelativeLayout) view.findViewById(R.id.layout_33);
                                                                                                                                                if (relativeLayout13 != null) {
                                                                                                                                                    i = R.id.layout_34;
                                                                                                                                                    RelativeLayout relativeLayout14 = (RelativeLayout) view.findViewById(R.id.layout_34);
                                                                                                                                                    if (relativeLayout14 != null) {
                                                                                                                                                        i = R.id.layout_35;
                                                                                                                                                        RelativeLayout relativeLayout15 = (RelativeLayout) view.findViewById(R.id.layout_35);
                                                                                                                                                        if (relativeLayout15 != null) {
                                                                                                                                                            i = R.id.layout_36;
                                                                                                                                                            RelativeLayout relativeLayout16 = (RelativeLayout) view.findViewById(R.id.layout_36);
                                                                                                                                                            if (relativeLayout16 != null) {
                                                                                                                                                                i = R.id.layout_4;
                                                                                                                                                                RelativeLayout relativeLayout17 = (RelativeLayout) view.findViewById(R.id.layout_4);
                                                                                                                                                                if (relativeLayout17 != null) {
                                                                                                                                                                    i = R.id.layout_5;
                                                                                                                                                                    RelativeLayout relativeLayout18 = (RelativeLayout) view.findViewById(R.id.layout_5);
                                                                                                                                                                    if (relativeLayout18 != null) {
                                                                                                                                                                        i = R.id.layout_6;
                                                                                                                                                                        RelativeLayout relativeLayout19 = (RelativeLayout) view.findViewById(R.id.layout_6);
                                                                                                                                                                        if (relativeLayout19 != null) {
                                                                                                                                                                            i = R.id.layout_7;
                                                                                                                                                                            RelativeLayout relativeLayout20 = (RelativeLayout) view.findViewById(R.id.layout_7);
                                                                                                                                                                            if (relativeLayout20 != null) {
                                                                                                                                                                                i = R.id.layout_8;
                                                                                                                                                                                RelativeLayout relativeLayout21 = (RelativeLayout) view.findViewById(R.id.layout_8);
                                                                                                                                                                                if (relativeLayout21 != null) {
                                                                                                                                                                                    i = R.id.layout_9;
                                                                                                                                                                                    RelativeLayout relativeLayout22 = (RelativeLayout) view.findViewById(R.id.layout_9);
                                                                                                                                                                                    if (relativeLayout22 != null) {
                                                                                                                                                                                        i = R.id.tv_honda_set1;
                                                                                                                                                                                        TextView textView18 = (TextView) view.findViewById(R.id.tv_honda_set1);
                                                                                                                                                                                        if (textView18 != null) {
                                                                                                                                                                                            i = R.id.tv_honda_set10;
                                                                                                                                                                                            TextView textView19 = (TextView) view.findViewById(R.id.tv_honda_set10);
                                                                                                                                                                                            if (textView19 != null) {
                                                                                                                                                                                                i = R.id.tv_honda_set11;
                                                                                                                                                                                                TextView textView20 = (TextView) view.findViewById(R.id.tv_honda_set11);
                                                                                                                                                                                                if (textView20 != null) {
                                                                                                                                                                                                    i = R.id.tv_honda_set15;
                                                                                                                                                                                                    TextView textView21 = (TextView) view.findViewById(R.id.tv_honda_set15);
                                                                                                                                                                                                    if (textView21 != null) {
                                                                                                                                                                                                        i = R.id.tv_honda_set18;
                                                                                                                                                                                                        TextView textView22 = (TextView) view.findViewById(R.id.tv_honda_set18);
                                                                                                                                                                                                        if (textView22 != null) {
                                                                                                                                                                                                            i = R.id.tv_honda_set19;
                                                                                                                                                                                                            TextView textView23 = (TextView) view.findViewById(R.id.tv_honda_set19);
                                                                                                                                                                                                            if (textView23 != null) {
                                                                                                                                                                                                                i = R.id.tv_honda_set2;
                                                                                                                                                                                                                TextView textView24 = (TextView) view.findViewById(R.id.tv_honda_set2);
                                                                                                                                                                                                                if (textView24 != null) {
                                                                                                                                                                                                                    i = R.id.tv_honda_set20;
                                                                                                                                                                                                                    TextView textView25 = (TextView) view.findViewById(R.id.tv_honda_set20);
                                                                                                                                                                                                                    if (textView25 != null) {
                                                                                                                                                                                                                        i = R.id.tv_honda_set3;
                                                                                                                                                                                                                        TextView textView26 = (TextView) view.findViewById(R.id.tv_honda_set3);
                                                                                                                                                                                                                        if (textView26 != null) {
                                                                                                                                                                                                                            i = R.id.tv_honda_set4;
                                                                                                                                                                                                                            TextView textView27 = (TextView) view.findViewById(R.id.tv_honda_set4);
                                                                                                                                                                                                                            if (textView27 != null) {
                                                                                                                                                                                                                                i = R.id.tv_honda_set5;
                                                                                                                                                                                                                                TextView textView28 = (TextView) view.findViewById(R.id.tv_honda_set5);
                                                                                                                                                                                                                                if (textView28 != null) {
                                                                                                                                                                                                                                    i = R.id.tv_honda_set6;
                                                                                                                                                                                                                                    TextView textView29 = (TextView) view.findViewById(R.id.tv_honda_set6);
                                                                                                                                                                                                                                    if (textView29 != null) {
                                                                                                                                                                                                                                        i = R.id.tv_honda_set7;
                                                                                                                                                                                                                                        TextView textView30 = (TextView) view.findViewById(R.id.tv_honda_set7);
                                                                                                                                                                                                                                        if (textView30 != null) {
                                                                                                                                                                                                                                            i = R.id.tv_honda_set8;
                                                                                                                                                                                                                                            TextView textView31 = (TextView) view.findViewById(R.id.tv_honda_set8);
                                                                                                                                                                                                                                            if (textView31 != null) {
                                                                                                                                                                                                                                                i = R.id.tv_honda_set9;
                                                                                                                                                                                                                                                TextView textView32 = (TextView) view.findViewById(R.id.tv_honda_set9);
                                                                                                                                                                                                                                                if (textView32 != null) {
                                                                                                                                                                                                                                                    return new HondaSpAdCarSetBinding((ScrollView) view, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, relativeLayout10, relativeLayout11, relativeLayout12, relativeLayout13, relativeLayout14, relativeLayout15, relativeLayout16, relativeLayout17, relativeLayout18, relativeLayout19, relativeLayout20, relativeLayout21, relativeLayout22, textView18, textView19, textView20, textView21, textView22, textView23, textView24, textView25, textView26, textView27, textView28, textView29, textView30, textView31, textView32);
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
