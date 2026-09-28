package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class LexusDoorBinding implements ViewBinding {
    public final FrameLayout doorLayout;
    public final ImageView ivFrontCoverOpen;
    public final ImageView ivFueling;
    public final ImageView ivLeftBackDoor;
    public final ImageView ivLeftFrontDoor;
    public final ImageView ivRearDoorOpen;
    public final ImageView ivRightBackDoor;
    public final ImageView ivRightFrontDoor;
    private final FrameLayout rootView;

    private LexusDoorBinding(FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7) {
        this.rootView = frameLayout;
        this.doorLayout = frameLayout2;
        this.ivFrontCoverOpen = imageView;
        this.ivFueling = imageView2;
        this.ivLeftBackDoor = imageView3;
        this.ivLeftFrontDoor = imageView4;
        this.ivRearDoorOpen = imageView5;
        this.ivRightBackDoor = imageView6;
        this.ivRightFrontDoor = imageView7;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LexusDoorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LexusDoorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.lexus_door, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LexusDoorBinding bind(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
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
                                    return new LexusDoorBinding(frameLayout, frameLayout, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7);
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
