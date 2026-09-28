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
public final class Dz6InfoBinding implements ViewBinding {
    public final ImageView ivFrontCoverOpen;
    public final ImageView ivFueling;
    public final ImageView ivLeftBackDoor;
    public final ImageView ivLeftFrontDoor;
    public final ImageView ivRearDoorOpen;
    public final ImageView ivRightBackDoor;
    public final ImageView ivRightFrontDoor;
    public final LinearLayout layoutCarInfo;
    private final LinearLayout rootView;
    public final TextView tvBatteryVoltage;
    public final TextView tvCleaningFluid;
    public final TextView tvDoorOpenWarning;
    public final TextView tvDrivenDistance;
    public final TextView tvEngineSpeed;
    public final TextView tvHandbrake;
    public final TextView tvOilLeft;
    public final TextView tvOutdoorTemp;
    public final TextView tvRearDoorOpen;
    public final TextView tvSeatBelts;
    public final TextView tvTravelingSpeed;

    private Dz6InfoBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11) {
        this.rootView = linearLayout;
        this.ivFrontCoverOpen = imageView;
        this.ivFueling = imageView2;
        this.ivLeftBackDoor = imageView3;
        this.ivLeftFrontDoor = imageView4;
        this.ivRearDoorOpen = imageView5;
        this.ivRightBackDoor = imageView6;
        this.ivRightFrontDoor = imageView7;
        this.layoutCarInfo = linearLayout2;
        this.tvBatteryVoltage = textView;
        this.tvCleaningFluid = textView2;
        this.tvDoorOpenWarning = textView3;
        this.tvDrivenDistance = textView4;
        this.tvEngineSpeed = textView5;
        this.tvHandbrake = textView6;
        this.tvOilLeft = textView7;
        this.tvOutdoorTemp = textView8;
        this.tvRearDoorOpen = textView9;
        this.tvSeatBelts = textView10;
        this.tvTravelingSpeed = textView11;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static Dz6InfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Dz6InfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dz6_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Dz6InfoBinding bind(View view) {
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
                                        i = R.id.tv_battery_voltage;
                                        TextView textView = (TextView) view.findViewById(R.id.tv_battery_voltage);
                                        if (textView != null) {
                                            i = R.id.tv_cleaning_fluid;
                                            TextView textView2 = (TextView) view.findViewById(R.id.tv_cleaning_fluid);
                                            if (textView2 != null) {
                                                i = R.id.tv_door_open_warning;
                                                TextView textView3 = (TextView) view.findViewById(R.id.tv_door_open_warning);
                                                if (textView3 != null) {
                                                    i = R.id.tv_driven_distance;
                                                    TextView textView4 = (TextView) view.findViewById(R.id.tv_driven_distance);
                                                    if (textView4 != null) {
                                                        i = R.id.tv_engine_speed;
                                                        TextView textView5 = (TextView) view.findViewById(R.id.tv_engine_speed);
                                                        if (textView5 != null) {
                                                            i = R.id.tv_handbrake;
                                                            TextView textView6 = (TextView) view.findViewById(R.id.tv_handbrake);
                                                            if (textView6 != null) {
                                                                i = R.id.tv_oil_left;
                                                                TextView textView7 = (TextView) view.findViewById(R.id.tv_oil_left);
                                                                if (textView7 != null) {
                                                                    i = R.id.tv_outdoor_temp;
                                                                    TextView textView8 = (TextView) view.findViewById(R.id.tv_outdoor_temp);
                                                                    if (textView8 != null) {
                                                                        i = R.id.tv_rear_door_open;
                                                                        TextView textView9 = (TextView) view.findViewById(R.id.tv_rear_door_open);
                                                                        if (textView9 != null) {
                                                                            i = R.id.tv_seat_belts;
                                                                            TextView textView10 = (TextView) view.findViewById(R.id.tv_seat_belts);
                                                                            if (textView10 != null) {
                                                                                i = R.id.tv_traveling_speed;
                                                                                TextView textView11 = (TextView) view.findViewById(R.id.tv_traveling_speed);
                                                                                if (textView11 != null) {
                                                                                    return new Dz6InfoBinding((LinearLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, linearLayout, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11);
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
