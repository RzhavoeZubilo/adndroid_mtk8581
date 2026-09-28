package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.Windlv;

/* JADX INFO: loaded from: classes.dex */
public final class AirBinding implements ViewBinding {
    public final ImageView ivAcMax;
    public final TextView ivAutoWind;
    public final ImageView ivBlowFeetL;
    public final ImageView ivBlowFeetR;
    public final ImageView ivBlowHandsL;
    public final ImageView ivBlowHandsR;
    public final ImageView ivBlowHeadL;
    public final ImageView ivBlowHeadR;
    public final ImageView ivFrontGlass;
    public final ImageView ivHeatSeatL;
    public final ImageView ivHeatSeatR;
    public final ImageView ivInnerAqs;
    public final ImageView ivInnerLoop;
    public final ImageView ivMaxFront;
    public final ImageView ivPeopleL;
    public final ImageView ivPeopleR;
    public final ImageView ivRearGlass;
    public final ImageView ivRearLock;
    public final ImageView ivWindL;
    public final Windlv ivWindLv;
    public final ImageView ivWindR;
    public final LinearLayout llAirWind;
    private final LinearLayout rootView;
    public final ImageView tvAc;
    public final ImageView tvAutoWind;
    public final ImageView tvAutoWind2;
    public final ImageView tvDual;
    public final ImageView tvIon;
    public final TextView tvTempL;
    public final TextView tvTempR;
    public final TextView txAirClear;
    public final TextView txAirEco;
    public final TextView txAirHeat;
    public final TextView txAirOuttemp;
    public final TextView txAirProfile;
    public final TextView txAirRear;
    public final TextView txAirReartemp;
    public final TextView txAirSync;
    public final TextView txAirWindStrength;

    private AirBinding(LinearLayout linearLayout, ImageView imageView, TextView textView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, ImageView imageView8, ImageView imageView9, ImageView imageView10, ImageView imageView11, ImageView imageView12, ImageView imageView13, ImageView imageView14, ImageView imageView15, ImageView imageView16, ImageView imageView17, ImageView imageView18, Windlv windlv, ImageView imageView19, LinearLayout linearLayout2, ImageView imageView20, ImageView imageView21, ImageView imageView22, ImageView imageView23, ImageView imageView24, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12) {
        this.rootView = linearLayout;
        this.ivAcMax = imageView;
        this.ivAutoWind = textView;
        this.ivBlowFeetL = imageView2;
        this.ivBlowFeetR = imageView3;
        this.ivBlowHandsL = imageView4;
        this.ivBlowHandsR = imageView5;
        this.ivBlowHeadL = imageView6;
        this.ivBlowHeadR = imageView7;
        this.ivFrontGlass = imageView8;
        this.ivHeatSeatL = imageView9;
        this.ivHeatSeatR = imageView10;
        this.ivInnerAqs = imageView11;
        this.ivInnerLoop = imageView12;
        this.ivMaxFront = imageView13;
        this.ivPeopleL = imageView14;
        this.ivPeopleR = imageView15;
        this.ivRearGlass = imageView16;
        this.ivRearLock = imageView17;
        this.ivWindL = imageView18;
        this.ivWindLv = windlv;
        this.ivWindR = imageView19;
        this.llAirWind = linearLayout2;
        this.tvAc = imageView20;
        this.tvAutoWind = imageView21;
        this.tvAutoWind2 = imageView22;
        this.tvDual = imageView23;
        this.tvIon = imageView24;
        this.tvTempL = textView2;
        this.tvTempR = textView3;
        this.txAirClear = textView4;
        this.txAirEco = textView5;
        this.txAirHeat = textView6;
        this.txAirOuttemp = textView7;
        this.txAirProfile = textView8;
        this.txAirRear = textView9;
        this.txAirReartemp = textView10;
        this.txAirSync = textView11;
        this.txAirWindStrength = textView12;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static AirBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AirBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.air, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AirBinding bind(View view) {
        int i = R.id.iv_ac_max;
        ImageView imageView = (ImageView) view.findViewById(R.id.iv_ac_max);
        if (imageView != null) {
            i = R.id.iv_auto_wind;
            TextView textView = (TextView) view.findViewById(R.id.iv_auto_wind);
            if (textView != null) {
                i = R.id.iv_blow_feet_l;
                ImageView imageView2 = (ImageView) view.findViewById(R.id.iv_blow_feet_l);
                if (imageView2 != null) {
                    i = R.id.iv_blow_feet_r;
                    ImageView imageView3 = (ImageView) view.findViewById(R.id.iv_blow_feet_r);
                    if (imageView3 != null) {
                        i = R.id.iv_blow_hands_l;
                        ImageView imageView4 = (ImageView) view.findViewById(R.id.iv_blow_hands_l);
                        if (imageView4 != null) {
                            i = R.id.iv_blow_hands_r;
                            ImageView imageView5 = (ImageView) view.findViewById(R.id.iv_blow_hands_r);
                            if (imageView5 != null) {
                                i = R.id.iv_blow_head_l;
                                ImageView imageView6 = (ImageView) view.findViewById(R.id.iv_blow_head_l);
                                if (imageView6 != null) {
                                    i = R.id.iv_blow_head_r;
                                    ImageView imageView7 = (ImageView) view.findViewById(R.id.iv_blow_head_r);
                                    if (imageView7 != null) {
                                        i = R.id.iv_front_glass;
                                        ImageView imageView8 = (ImageView) view.findViewById(R.id.iv_front_glass);
                                        if (imageView8 != null) {
                                            i = R.id.iv_heat_seat_l;
                                            ImageView imageView9 = (ImageView) view.findViewById(R.id.iv_heat_seat_l);
                                            if (imageView9 != null) {
                                                i = R.id.iv_heat_seat_r;
                                                ImageView imageView10 = (ImageView) view.findViewById(R.id.iv_heat_seat_r);
                                                if (imageView10 != null) {
                                                    i = R.id.iv_inner_aqs;
                                                    ImageView imageView11 = (ImageView) view.findViewById(R.id.iv_inner_aqs);
                                                    if (imageView11 != null) {
                                                        i = R.id.iv_inner_loop;
                                                        ImageView imageView12 = (ImageView) view.findViewById(R.id.iv_inner_loop);
                                                        if (imageView12 != null) {
                                                            i = R.id.iv_max_front;
                                                            ImageView imageView13 = (ImageView) view.findViewById(R.id.iv_max_front);
                                                            if (imageView13 != null) {
                                                                i = R.id.iv_people_l;
                                                                ImageView imageView14 = (ImageView) view.findViewById(R.id.iv_people_l);
                                                                if (imageView14 != null) {
                                                                    i = R.id.iv_people_r;
                                                                    ImageView imageView15 = (ImageView) view.findViewById(R.id.iv_people_r);
                                                                    if (imageView15 != null) {
                                                                        i = R.id.iv_rear_glass;
                                                                        ImageView imageView16 = (ImageView) view.findViewById(R.id.iv_rear_glass);
                                                                        if (imageView16 != null) {
                                                                            i = R.id.iv_rear_lock;
                                                                            ImageView imageView17 = (ImageView) view.findViewById(R.id.iv_rear_lock);
                                                                            if (imageView17 != null) {
                                                                                i = R.id.iv_wind_l;
                                                                                ImageView imageView18 = (ImageView) view.findViewById(R.id.iv_wind_l);
                                                                                if (imageView18 != null) {
                                                                                    i = R.id.iv_wind_lv;
                                                                                    Windlv windlv = (Windlv) view.findViewById(R.id.iv_wind_lv);
                                                                                    if (windlv != null) {
                                                                                        i = R.id.iv_wind_r;
                                                                                        ImageView imageView19 = (ImageView) view.findViewById(R.id.iv_wind_r);
                                                                                        if (imageView19 != null) {
                                                                                            i = R.id.ll_air_wind;
                                                                                            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_air_wind);
                                                                                            if (linearLayout != null) {
                                                                                                i = R.id.tv_ac;
                                                                                                ImageView imageView20 = (ImageView) view.findViewById(R.id.tv_ac);
                                                                                                if (imageView20 != null) {
                                                                                                    i = R.id.tv_auto_wind;
                                                                                                    ImageView imageView21 = (ImageView) view.findViewById(R.id.tv_auto_wind);
                                                                                                    if (imageView21 != null) {
                                                                                                        i = R.id.tv_auto_wind2;
                                                                                                        ImageView imageView22 = (ImageView) view.findViewById(R.id.tv_auto_wind2);
                                                                                                        if (imageView22 != null) {
                                                                                                            i = R.id.tv_dual;
                                                                                                            ImageView imageView23 = (ImageView) view.findViewById(R.id.tv_dual);
                                                                                                            if (imageView23 != null) {
                                                                                                                i = R.id.tv_ion;
                                                                                                                ImageView imageView24 = (ImageView) view.findViewById(R.id.tv_ion);
                                                                                                                if (imageView24 != null) {
                                                                                                                    i = R.id.tv_temp_l;
                                                                                                                    TextView textView2 = (TextView) view.findViewById(R.id.tv_temp_l);
                                                                                                                    if (textView2 != null) {
                                                                                                                        i = R.id.tv_temp_r;
                                                                                                                        TextView textView3 = (TextView) view.findViewById(R.id.tv_temp_r);
                                                                                                                        if (textView3 != null) {
                                                                                                                            i = R.id.tx_air_clear;
                                                                                                                            TextView textView4 = (TextView) view.findViewById(R.id.tx_air_clear);
                                                                                                                            if (textView4 != null) {
                                                                                                                                i = R.id.tx_air_eco;
                                                                                                                                TextView textView5 = (TextView) view.findViewById(R.id.tx_air_eco);
                                                                                                                                if (textView5 != null) {
                                                                                                                                    i = R.id.tx_air_heat;
                                                                                                                                    TextView textView6 = (TextView) view.findViewById(R.id.tx_air_heat);
                                                                                                                                    if (textView6 != null) {
                                                                                                                                        i = R.id.tx_air_outtemp;
                                                                                                                                        TextView textView7 = (TextView) view.findViewById(R.id.tx_air_outtemp);
                                                                                                                                        if (textView7 != null) {
                                                                                                                                            i = R.id.tx_air_profile;
                                                                                                                                            TextView textView8 = (TextView) view.findViewById(R.id.tx_air_profile);
                                                                                                                                            if (textView8 != null) {
                                                                                                                                                i = R.id.tx_air_rear;
                                                                                                                                                TextView textView9 = (TextView) view.findViewById(R.id.tx_air_rear);
                                                                                                                                                if (textView9 != null) {
                                                                                                                                                    i = R.id.tx_air_reartemp;
                                                                                                                                                    TextView textView10 = (TextView) view.findViewById(R.id.tx_air_reartemp);
                                                                                                                                                    if (textView10 != null) {
                                                                                                                                                        i = R.id.tx_air_sync;
                                                                                                                                                        TextView textView11 = (TextView) view.findViewById(R.id.tx_air_sync);
                                                                                                                                                        if (textView11 != null) {
                                                                                                                                                            i = R.id.tx_air_wind_strength;
                                                                                                                                                            TextView textView12 = (TextView) view.findViewById(R.id.tx_air_wind_strength);
                                                                                                                                                            if (textView12 != null) {
                                                                                                                                                                return new AirBinding((LinearLayout) view, imageView, textView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11, imageView12, imageView13, imageView14, imageView15, imageView16, imageView17, imageView18, windlv, imageView19, linearLayout, imageView20, imageView21, imageView22, imageView23, imageView24, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12);
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
