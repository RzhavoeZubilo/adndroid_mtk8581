package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class ToyotaTripBinding implements ViewBinding {
    public final ImageView ivFrontCoverOpen;
    public final ImageView ivFueling;
    public final ImageView ivLeftBackDoor;
    public final ImageView ivLeftFrontDoor;
    public final ImageView ivRearDoorOpen;
    public final ImageView ivRightBackDoor;
    public final ImageView ivRightFrontDoor;
    public final LinearLayout layoutCarInfo;
    private final LinearLayout rootView;
    public final TextView toyatoAvgSpeed;
    public final TextView toyatoDrivenDisa;
    public final TextView toyatoDrivenDisb;
    public final TextView toyatoDrivenTdistance;
    public final TextView toyatoDrivenXdistance;
    public final TextView toyatoEngineSpeed;
    public final TextView toyatoHandbrake;
    public final TextView toyatoOutdoorTemp;
    public final TextView toyatoTravelingSpeed;

    private ToyotaTripBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9) {
        this.rootView = linearLayout;
        this.ivFrontCoverOpen = imageView;
        this.ivFueling = imageView2;
        this.ivLeftBackDoor = imageView3;
        this.ivLeftFrontDoor = imageView4;
        this.ivRearDoorOpen = imageView5;
        this.ivRightBackDoor = imageView6;
        this.ivRightFrontDoor = imageView7;
        this.layoutCarInfo = linearLayout2;
        this.toyatoAvgSpeed = textView;
        this.toyatoDrivenDisa = textView2;
        this.toyatoDrivenDisb = textView3;
        this.toyatoDrivenTdistance = textView4;
        this.toyatoDrivenXdistance = textView5;
        this.toyatoEngineSpeed = textView6;
        this.toyatoHandbrake = textView7;
        this.toyatoOutdoorTemp = textView8;
        this.toyatoTravelingSpeed = textView9;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ToyotaTripBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ToyotaTripBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toyota_trip, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToyotaTripBinding bind(View view) {
        int i = R.id.iv_front_cover_open;
        ImageView imageView = (ImageView) view.findViewById(R.id.iv_front_cover_open);
        if (imageView != null) {
            i = R.id.iv_fueling;
            ImageView imageView2 = (ImageView) view.findViewById(R.id.iv_fueling);
            if (imageView2 != null) {
                i = R.id.iv_left_back_door;
                ImageView imageView3 = (ImageView) view.findViewById(R.id.iv_left_back_door);
                if (imageView3 != null) {
                    i = R.id.iv_left_front_door;
                    ImageView imageView4 = (ImageView) view.findViewById(R.id.iv_left_front_door);
                    if (imageView4 != null) {
                        i = R.id.iv_rear_door_open;
                        ImageView imageView5 = (ImageView) view.findViewById(R.id.iv_rear_door_open);
                        if (imageView5 != null) {
                            i = R.id.iv_right_back_door;
                            ImageView imageView6 = (ImageView) view.findViewById(R.id.iv_right_back_door);
                            if (imageView6 != null) {
                                i = R.id.iv_right_front_door;
                                ImageView imageView7 = (ImageView) view.findViewById(R.id.iv_right_front_door);
                                if (imageView7 != null) {
                                    i = R.id.layout_car_info;
                                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.layout_car_info);
                                    if (linearLayout != null) {
                                        i = R.id.toyato_avg_speed;
                                        TextView textView = (TextView) view.findViewById(R.id.toyato_avg_speed);
                                        if (textView != null) {
                                            i = R.id.toyato_driven_disa;
                                            TextView textView2 = (TextView) view.findViewById(R.id.toyato_driven_disa);
                                            if (textView2 != null) {
                                                i = R.id.toyato_driven_disb;
                                                TextView textView3 = (TextView) view.findViewById(R.id.toyato_driven_disb);
                                                if (textView3 != null) {
                                                    i = R.id.toyato_driven_tdistance;
                                                    TextView textView4 = (TextView) view.findViewById(R.id.toyato_driven_tdistance);
                                                    if (textView4 != null) {
                                                        i = R.id.toyato_driven_xdistance;
                                                        TextView textView5 = (TextView) view.findViewById(R.id.toyato_driven_xdistance);
                                                        if (textView5 != null) {
                                                            i = R.id.toyato_engine_speed;
                                                            TextView textView6 = (TextView) view.findViewById(R.id.toyato_engine_speed);
                                                            if (textView6 != null) {
                                                                i = R.id.toyato_handbrake;
                                                                TextView textView7 = (TextView) view.findViewById(R.id.toyato_handbrake);
                                                                if (textView7 != null) {
                                                                    i = R.id.toyato_outdoor_temp;
                                                                    TextView textView8 = (TextView) view.findViewById(R.id.toyato_outdoor_temp);
                                                                    if (textView8 != null) {
                                                                        i = R.id.toyato_traveling_speed;
                                                                        TextView textView9 = (TextView) view.findViewById(R.id.toyato_traveling_speed);
                                                                        if (textView9 != null) {
                                                                            return new ToyotaTripBinding((LinearLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, linearLayout, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
