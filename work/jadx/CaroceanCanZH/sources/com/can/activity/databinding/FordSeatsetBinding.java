package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.HeaderLayout;

/* JADX INFO: loaded from: classes.dex */
public final class FordSeatsetBinding implements ViewBinding {
    public final HeaderLayout copBackSet;
    public final HeaderLayout copHipBothSet;
    public final HeaderLayout copHipMsg;
    public final HeaderLayout copHipSet;
    public final HeaderLayout copWaistBothSet;
    public final HeaderLayout copWaistMsg;
    public final HeaderLayout copWaistSet;
    public final HeaderLayout mainBackSet;
    public final HeaderLayout mainHipBothSet;
    public final HeaderLayout mainHipMsg;
    public final HeaderLayout mainHipSet;
    public final HeaderLayout mainWaistBothSet;
    public final HeaderLayout mainWaistMsg;
    public final HeaderLayout mainWaistSet;
    private final ScrollView rootView;

    private FordSeatsetBinding(ScrollView scrollView, HeaderLayout headerLayout, HeaderLayout headerLayout2, HeaderLayout headerLayout3, HeaderLayout headerLayout4, HeaderLayout headerLayout5, HeaderLayout headerLayout6, HeaderLayout headerLayout7, HeaderLayout headerLayout8, HeaderLayout headerLayout9, HeaderLayout headerLayout10, HeaderLayout headerLayout11, HeaderLayout headerLayout12, HeaderLayout headerLayout13, HeaderLayout headerLayout14) {
        this.rootView = scrollView;
        this.copBackSet = headerLayout;
        this.copHipBothSet = headerLayout2;
        this.copHipMsg = headerLayout3;
        this.copHipSet = headerLayout4;
        this.copWaistBothSet = headerLayout5;
        this.copWaistMsg = headerLayout6;
        this.copWaistSet = headerLayout7;
        this.mainBackSet = headerLayout8;
        this.mainHipBothSet = headerLayout9;
        this.mainHipMsg = headerLayout10;
        this.mainHipSet = headerLayout11;
        this.mainWaistBothSet = headerLayout12;
        this.mainWaistMsg = headerLayout13;
        this.mainWaistSet = headerLayout14;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static FordSeatsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FordSeatsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.ford_seatset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FordSeatsetBinding bind(View view) {
        int i = R.id.cop_back_set;
        HeaderLayout headerLayout = (HeaderLayout) view.findViewById(R.id.cop_back_set);
        if (headerLayout != null) {
            i = R.id.cop_hip_both_set;
            HeaderLayout headerLayout2 = (HeaderLayout) view.findViewById(R.id.cop_hip_both_set);
            if (headerLayout2 != null) {
                i = R.id.cop_hip_msg;
                HeaderLayout headerLayout3 = (HeaderLayout) view.findViewById(R.id.cop_hip_msg);
                if (headerLayout3 != null) {
                    i = R.id.cop_hip_set;
                    HeaderLayout headerLayout4 = (HeaderLayout) view.findViewById(R.id.cop_hip_set);
                    if (headerLayout4 != null) {
                        i = R.id.cop_waist_both_set;
                        HeaderLayout headerLayout5 = (HeaderLayout) view.findViewById(R.id.cop_waist_both_set);
                        if (headerLayout5 != null) {
                            i = R.id.cop_waist_msg;
                            HeaderLayout headerLayout6 = (HeaderLayout) view.findViewById(R.id.cop_waist_msg);
                            if (headerLayout6 != null) {
                                i = R.id.cop_waist_set;
                                HeaderLayout headerLayout7 = (HeaderLayout) view.findViewById(R.id.cop_waist_set);
                                if (headerLayout7 != null) {
                                    i = R.id.main_back_set;
                                    HeaderLayout headerLayout8 = (HeaderLayout) view.findViewById(R.id.main_back_set);
                                    if (headerLayout8 != null) {
                                        i = R.id.main_hip_both_set;
                                        HeaderLayout headerLayout9 = (HeaderLayout) view.findViewById(R.id.main_hip_both_set);
                                        if (headerLayout9 != null) {
                                            i = R.id.main_hip_msg;
                                            HeaderLayout headerLayout10 = (HeaderLayout) view.findViewById(R.id.main_hip_msg);
                                            if (headerLayout10 != null) {
                                                i = R.id.main_hip_set;
                                                HeaderLayout headerLayout11 = (HeaderLayout) view.findViewById(R.id.main_hip_set);
                                                if (headerLayout11 != null) {
                                                    i = R.id.main_waist_both_set;
                                                    HeaderLayout headerLayout12 = (HeaderLayout) view.findViewById(R.id.main_waist_both_set);
                                                    if (headerLayout12 != null) {
                                                        i = R.id.main_waist_msg;
                                                        HeaderLayout headerLayout13 = (HeaderLayout) view.findViewById(R.id.main_waist_msg);
                                                        if (headerLayout13 != null) {
                                                            i = R.id.main_waist_set;
                                                            HeaderLayout headerLayout14 = (HeaderLayout) view.findViewById(R.id.main_waist_set);
                                                            if (headerLayout14 != null) {
                                                                return new FordSeatsetBinding((ScrollView) view, headerLayout, headerLayout2, headerLayout3, headerLayout4, headerLayout5, headerLayout6, headerLayout7, headerLayout8, headerLayout9, headerLayout10, headerLayout11, headerLayout12, headerLayout13, headerLayout14);
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
