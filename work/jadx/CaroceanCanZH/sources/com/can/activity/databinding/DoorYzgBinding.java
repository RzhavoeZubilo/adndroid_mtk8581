package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class DoorYzgBinding implements ViewBinding {
    public final ImageView ivLeftBackDoor;
    public final ImageView ivLeftFrontDoor;
    public final ImageView ivRearDoorOpen;
    public final ImageView ivRightBackDoor;
    public final ImageView ivRightFrontDoor;
    private final RelativeLayout rootView;

    private DoorYzgBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5) {
        this.rootView = relativeLayout;
        this.ivLeftBackDoor = imageView;
        this.ivLeftFrontDoor = imageView2;
        this.ivRearDoorOpen = imageView3;
        this.ivRightBackDoor = imageView4;
        this.ivRightFrontDoor = imageView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DoorYzgBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DoorYzgBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.door_yzg, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DoorYzgBinding bind(View view) {
        int i = R.id.iv_left_back_door;
        ImageView imageView = (ImageView) view.findViewById(R.id.iv_left_back_door);
        if (imageView != null) {
            i = R.id.iv_left_front_door;
            ImageView imageView2 = (ImageView) view.findViewById(R.id.iv_left_front_door);
            if (imageView2 != null) {
                i = R.id.iv_rear_door_open;
                ImageView imageView3 = (ImageView) view.findViewById(R.id.iv_rear_door_open);
                if (imageView3 != null) {
                    i = R.id.iv_right_back_door;
                    ImageView imageView4 = (ImageView) view.findViewById(R.id.iv_right_back_door);
                    if (imageView4 != null) {
                        i = R.id.iv_right_front_door;
                        ImageView imageView5 = (ImageView) view.findViewById(R.id.iv_right_front_door);
                        if (imageView5 != null) {
                            return new DoorYzgBinding((RelativeLayout) view, imageView, imageView2, imageView3, imageView4, imageView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
