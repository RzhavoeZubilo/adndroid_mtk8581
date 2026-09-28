package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PsaCarInfoBinding implements ViewBinding {
    public final RelativeLayout psaRelativeAirSet;
    public final RelativeLayout psaRelativeCarSet;
    public final RelativeLayout psaRelativeCruSpeed;
    public final RelativeLayout psaRelativeDiogInfo;
    public final RelativeLayout psaRelativeFuncInfo;
    public final RelativeLayout psaRelativeMemSpeed;
    public final RelativeLayout psaRelativeSetInfo;
    public final RelativeLayout psaRelativeTripCom;
    public final RelativeLayout psaRelativeWarnInfo;
    private final ScrollView rootView;
    public final TextView tvPsaAirSet;
    public final TextView tvPsaCarSet;
    public final TextView tvPsaCruSpeed;
    public final TextView tvPsaDiogInfo;
    public final TextView tvPsaFuncInfo;
    public final TextView tvPsaMemSpeed;
    public final TextView tvPsaSetInfo;
    public final TextView tvPsaTripCom;
    public final TextView tvPsaWarnInfo;

    private PsaCarInfoBinding(ScrollView scrollView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9) {
        this.rootView = scrollView;
        this.psaRelativeAirSet = relativeLayout;
        this.psaRelativeCarSet = relativeLayout2;
        this.psaRelativeCruSpeed = relativeLayout3;
        this.psaRelativeDiogInfo = relativeLayout4;
        this.psaRelativeFuncInfo = relativeLayout5;
        this.psaRelativeMemSpeed = relativeLayout6;
        this.psaRelativeSetInfo = relativeLayout7;
        this.psaRelativeTripCom = relativeLayout8;
        this.psaRelativeWarnInfo = relativeLayout9;
        this.tvPsaAirSet = textView;
        this.tvPsaCarSet = textView2;
        this.tvPsaCruSpeed = textView3;
        this.tvPsaDiogInfo = textView4;
        this.tvPsaFuncInfo = textView5;
        this.tvPsaMemSpeed = textView6;
        this.tvPsaSetInfo = textView7;
        this.tvPsaTripCom = textView8;
        this.tvPsaWarnInfo = textView9;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static PsaCarInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaCarInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_car_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaCarInfoBinding bind(View view) {
        int i = R.id.psa_relative_air_set;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.psa_relative_air_set);
        if (relativeLayout != null) {
            i = R.id.psa_relative_car_set;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.psa_relative_car_set);
            if (relativeLayout2 != null) {
                i = R.id.psa_relative_cru_speed;
                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.psa_relative_cru_speed);
                if (relativeLayout3 != null) {
                    i = R.id.psa_relative_diog_info;
                    RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.psa_relative_diog_info);
                    if (relativeLayout4 != null) {
                        i = R.id.psa_relative_func_info;
                        RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.psa_relative_func_info);
                        if (relativeLayout5 != null) {
                            i = R.id.psa_relative_mem_speed;
                            RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(R.id.psa_relative_mem_speed);
                            if (relativeLayout6 != null) {
                                i = R.id.psa_relative_set_info;
                                RelativeLayout relativeLayout7 = (RelativeLayout) view.findViewById(R.id.psa_relative_set_info);
                                if (relativeLayout7 != null) {
                                    i = R.id.psa_relative_trip_com;
                                    RelativeLayout relativeLayout8 = (RelativeLayout) view.findViewById(R.id.psa_relative_trip_com);
                                    if (relativeLayout8 != null) {
                                        i = R.id.psa_relative_warn_info;
                                        RelativeLayout relativeLayout9 = (RelativeLayout) view.findViewById(R.id.psa_relative_warn_info);
                                        if (relativeLayout9 != null) {
                                            i = R.id.tv_psa_air_set;
                                            TextView textView = (TextView) view.findViewById(R.id.tv_psa_air_set);
                                            if (textView != null) {
                                                i = R.id.tv_psa_car_set;
                                                TextView textView2 = (TextView) view.findViewById(R.id.tv_psa_car_set);
                                                if (textView2 != null) {
                                                    i = R.id.tv_psa_cru_speed;
                                                    TextView textView3 = (TextView) view.findViewById(R.id.tv_psa_cru_speed);
                                                    if (textView3 != null) {
                                                        i = R.id.tv_psa_diog_info;
                                                        TextView textView4 = (TextView) view.findViewById(R.id.tv_psa_diog_info);
                                                        if (textView4 != null) {
                                                            i = R.id.tv_psa_func_info;
                                                            TextView textView5 = (TextView) view.findViewById(R.id.tv_psa_func_info);
                                                            if (textView5 != null) {
                                                                i = R.id.tv_psa_mem_speed;
                                                                TextView textView6 = (TextView) view.findViewById(R.id.tv_psa_mem_speed);
                                                                if (textView6 != null) {
                                                                    i = R.id.tv_psa_set_info;
                                                                    TextView textView7 = (TextView) view.findViewById(R.id.tv_psa_set_info);
                                                                    if (textView7 != null) {
                                                                        i = R.id.tv_psa_trip_com;
                                                                        TextView textView8 = (TextView) view.findViewById(R.id.tv_psa_trip_com);
                                                                        if (textView8 != null) {
                                                                            i = R.id.tv_psa_warn_info;
                                                                            TextView textView9 = (TextView) view.findViewById(R.id.tv_psa_warn_info);
                                                                            if (textView9 != null) {
                                                                                return new PsaCarInfoBinding((ScrollView) view, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
