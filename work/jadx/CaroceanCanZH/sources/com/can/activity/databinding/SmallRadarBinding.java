package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.RadarSurface;
import com.can.ui.draw.TouchLayout;
import com.can.ui.draw.Track;

/* JADX INFO: loaded from: classes.dex */
public final class SmallRadarBinding implements ViewBinding {
    public final Button btnCenterBottom;
    public final Button btnForward;
    public final Button btnForwardAll;
    public final Button btnForwardRight;
    public final Button btnHorizontalAll;
    public final Button btnLeft;
    public final Button btnLeftBottom;
    public final Button btnLeftTop;
    public final ImageButton btnRadarLeftHide;
    public final ImageButton btnRadarLeftShow;
    public final ImageButton btnRadarRightMagnify;
    public final ImageButton btnRadarRightPark;
    public final ImageButton btnRadarRightShow;
    public final ImageButton btnRadarRightVolume;
    public final ImageButton btnRadarRigthHide;
    public final Button btnRear;
    public final Button btnRearAll;
    public final Button btnRight;
    public final Button btnRightBottom;
    public final Button btnRightTop;
    public final Button btnVerticalAll;
    public final RadioButton btnVideoDepresangle;
    public final RadioButton btnVideoStandardview;
    public final RadioButton btnVideoWideangle;
    public final RadioGroup buttonAvm;
    public final LinearLayout buttonGroup;
    public final Button hdToyotaView1;
    public final TextView hdToyotaView2;
    public final Button hdToyotaView3;
    public final Button hdToyotaView4;
    public final LinearLayout layoutHdToyota;
    public final FrameLayout layoutPanoramic;
    public final LinearLayout layoutSurface1;
    public final LinearLayout layoutT70Video;
    public final FrameLayout layoutTrack;
    public final RelativeLayout layoutVideoSwitch;
    public final RelativeLayout layoutVideoSwitch1;
    public final FrameLayout leftLayout;
    public final RadarSurface radarSurfaceview;
    public final TouchLayout radarlayout;
    public final LinearLayout rightLayout;
    private final TouchLayout rootView;
    public final ImageView staticTrackLine;
    public final Button t70VideoAll;
    public final Button t70VideoForward;
    public final Button t70VideoLeft;
    public final Button t70VideoRear;
    public final Button t70VideoRight;
    public final Button t70VideoRigthHide;
    public final LinearLayout theRadarlayout;
    public final RelativeLayout topLayout;
    public final Track trackLine;

    private SmallRadarBinding(TouchLayout touchLayout, Button button, Button button2, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, ImageButton imageButton, ImageButton imageButton2, ImageButton imageButton3, ImageButton imageButton4, ImageButton imageButton5, ImageButton imageButton6, ImageButton imageButton7, Button button9, Button button10, Button button11, Button button12, Button button13, Button button14, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, RadioGroup radioGroup, LinearLayout linearLayout, Button button15, TextView textView, Button button16, Button button17, LinearLayout linearLayout2, FrameLayout frameLayout, LinearLayout linearLayout3, LinearLayout linearLayout4, FrameLayout frameLayout2, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, FrameLayout frameLayout3, RadarSurface radarSurface, TouchLayout touchLayout2, LinearLayout linearLayout5, ImageView imageView, Button button18, Button button19, Button button20, Button button21, Button button22, Button button23, LinearLayout linearLayout6, RelativeLayout relativeLayout3, Track track) {
        this.rootView = touchLayout;
        this.btnCenterBottom = button;
        this.btnForward = button2;
        this.btnForwardAll = button3;
        this.btnForwardRight = button4;
        this.btnHorizontalAll = button5;
        this.btnLeft = button6;
        this.btnLeftBottom = button7;
        this.btnLeftTop = button8;
        this.btnRadarLeftHide = imageButton;
        this.btnRadarLeftShow = imageButton2;
        this.btnRadarRightMagnify = imageButton3;
        this.btnRadarRightPark = imageButton4;
        this.btnRadarRightShow = imageButton5;
        this.btnRadarRightVolume = imageButton6;
        this.btnRadarRigthHide = imageButton7;
        this.btnRear = button9;
        this.btnRearAll = button10;
        this.btnRight = button11;
        this.btnRightBottom = button12;
        this.btnRightTop = button13;
        this.btnVerticalAll = button14;
        this.btnVideoDepresangle = radioButton;
        this.btnVideoStandardview = radioButton2;
        this.btnVideoWideangle = radioButton3;
        this.buttonAvm = radioGroup;
        this.buttonGroup = linearLayout;
        this.hdToyotaView1 = button15;
        this.hdToyotaView2 = textView;
        this.hdToyotaView3 = button16;
        this.hdToyotaView4 = button17;
        this.layoutHdToyota = linearLayout2;
        this.layoutPanoramic = frameLayout;
        this.layoutSurface1 = linearLayout3;
        this.layoutT70Video = linearLayout4;
        this.layoutTrack = frameLayout2;
        this.layoutVideoSwitch = relativeLayout;
        this.layoutVideoSwitch1 = relativeLayout2;
        this.leftLayout = frameLayout3;
        this.radarSurfaceview = radarSurface;
        this.radarlayout = touchLayout2;
        this.rightLayout = linearLayout5;
        this.staticTrackLine = imageView;
        this.t70VideoAll = button18;
        this.t70VideoForward = button19;
        this.t70VideoLeft = button20;
        this.t70VideoRear = button21;
        this.t70VideoRight = button22;
        this.t70VideoRigthHide = button23;
        this.theRadarlayout = linearLayout6;
        this.topLayout = relativeLayout3;
        this.trackLine = track;
    }

    @Override // androidx.viewbinding.ViewBinding
    public TouchLayout getRoot() {
        return this.rootView;
    }

    public static SmallRadarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SmallRadarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.small_radar, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SmallRadarBinding bind(View view) {
        int i = R.id.btn_center_bottom;
        Button button = (Button) view.findViewById(R.id.btn_center_bottom);
        if (button != null) {
            i = R.id.btn_forward;
            Button button2 = (Button) view.findViewById(R.id.btn_forward);
            if (button2 != null) {
                i = R.id.btn_forward_all;
                Button button3 = (Button) view.findViewById(R.id.btn_forward_all);
                if (button3 != null) {
                    i = R.id.btn_forward_right;
                    Button button4 = (Button) view.findViewById(R.id.btn_forward_right);
                    if (button4 != null) {
                        i = R.id.btn_horizontal_all;
                        Button button5 = (Button) view.findViewById(R.id.btn_horizontal_all);
                        if (button5 != null) {
                            i = R.id.btn_left;
                            Button button6 = (Button) view.findViewById(R.id.btn_left);
                            if (button6 != null) {
                                i = R.id.btn_left_bottom;
                                Button button7 = (Button) view.findViewById(R.id.btn_left_bottom);
                                if (button7 != null) {
                                    i = R.id.btn_left_top;
                                    Button button8 = (Button) view.findViewById(R.id.btn_left_top);
                                    if (button8 != null) {
                                        i = R.id.btn_radar_left_hide;
                                        ImageButton imageButton = (ImageButton) view.findViewById(R.id.btn_radar_left_hide);
                                        if (imageButton != null) {
                                            i = R.id.btn_radar_left_show;
                                            ImageButton imageButton2 = (ImageButton) view.findViewById(R.id.btn_radar_left_show);
                                            if (imageButton2 != null) {
                                                i = R.id.btn_radar_right_magnify;
                                                ImageButton imageButton3 = (ImageButton) view.findViewById(R.id.btn_radar_right_magnify);
                                                if (imageButton3 != null) {
                                                    i = R.id.btn_radar_right_park;
                                                    ImageButton imageButton4 = (ImageButton) view.findViewById(R.id.btn_radar_right_park);
                                                    if (imageButton4 != null) {
                                                        i = R.id.btn_radar_right_show;
                                                        ImageButton imageButton5 = (ImageButton) view.findViewById(R.id.btn_radar_right_show);
                                                        if (imageButton5 != null) {
                                                            i = R.id.btn_radar_right_volume;
                                                            ImageButton imageButton6 = (ImageButton) view.findViewById(R.id.btn_radar_right_volume);
                                                            if (imageButton6 != null) {
                                                                i = R.id.btn_radar_rigth_hide;
                                                                ImageButton imageButton7 = (ImageButton) view.findViewById(R.id.btn_radar_rigth_hide);
                                                                if (imageButton7 != null) {
                                                                    i = R.id.btn_rear;
                                                                    Button button9 = (Button) view.findViewById(R.id.btn_rear);
                                                                    if (button9 != null) {
                                                                        i = R.id.btn_rear_all;
                                                                        Button button10 = (Button) view.findViewById(R.id.btn_rear_all);
                                                                        if (button10 != null) {
                                                                            i = R.id.btn_right;
                                                                            Button button11 = (Button) view.findViewById(R.id.btn_right);
                                                                            if (button11 != null) {
                                                                                i = R.id.btn_right_bottom;
                                                                                Button button12 = (Button) view.findViewById(R.id.btn_right_bottom);
                                                                                if (button12 != null) {
                                                                                    i = R.id.btn_right_top;
                                                                                    Button button13 = (Button) view.findViewById(R.id.btn_right_top);
                                                                                    if (button13 != null) {
                                                                                        i = R.id.btn_vertical_all;
                                                                                        Button button14 = (Button) view.findViewById(R.id.btn_vertical_all);
                                                                                        if (button14 != null) {
                                                                                            i = R.id.btn_video_depresangle;
                                                                                            RadioButton radioButton = (RadioButton) view.findViewById(R.id.btn_video_depresangle);
                                                                                            if (radioButton != null) {
                                                                                                i = R.id.btn_video_standardview;
                                                                                                RadioButton radioButton2 = (RadioButton) view.findViewById(R.id.btn_video_standardview);
                                                                                                if (radioButton2 != null) {
                                                                                                    i = R.id.btn_video_wideangle;
                                                                                                    RadioButton radioButton3 = (RadioButton) view.findViewById(R.id.btn_video_wideangle);
                                                                                                    if (radioButton3 != null) {
                                                                                                        i = R.id.button_avm;
                                                                                                        RadioGroup radioGroup = (RadioGroup) view.findViewById(R.id.button_avm);
                                                                                                        if (radioGroup != null) {
                                                                                                            i = R.id.button_group;
                                                                                                            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.button_group);
                                                                                                            if (linearLayout != null) {
                                                                                                                i = R.id.hd_toyota_view1;
                                                                                                                Button button15 = (Button) view.findViewById(R.id.hd_toyota_view1);
                                                                                                                if (button15 != null) {
                                                                                                                    i = R.id.hd_toyota_view2;
                                                                                                                    TextView textView = (TextView) view.findViewById(R.id.hd_toyota_view2);
                                                                                                                    if (textView != null) {
                                                                                                                        i = R.id.hd_toyota_view3;
                                                                                                                        Button button16 = (Button) view.findViewById(R.id.hd_toyota_view3);
                                                                                                                        if (button16 != null) {
                                                                                                                            i = R.id.hd_toyota_view4;
                                                                                                                            Button button17 = (Button) view.findViewById(R.id.hd_toyota_view4);
                                                                                                                            if (button17 != null) {
                                                                                                                                i = R.id.layout_hd_toyota;
                                                                                                                                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.layout_hd_toyota);
                                                                                                                                if (linearLayout2 != null) {
                                                                                                                                    i = R.id.layout_panoramic;
                                                                                                                                    FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.layout_panoramic);
                                                                                                                                    if (frameLayout != null) {
                                                                                                                                        i = R.id.layout_surface_1;
                                                                                                                                        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.layout_surface_1);
                                                                                                                                        if (linearLayout3 != null) {
                                                                                                                                            i = R.id.layout_t70_video;
                                                                                                                                            LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.layout_t70_video);
                                                                                                                                            if (linearLayout4 != null) {
                                                                                                                                                i = R.id.layout_track;
                                                                                                                                                FrameLayout frameLayout2 = (FrameLayout) view.findViewById(R.id.layout_track);
                                                                                                                                                if (frameLayout2 != null) {
                                                                                                                                                    i = R.id.layout_video_switch;
                                                                                                                                                    RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.layout_video_switch);
                                                                                                                                                    if (relativeLayout != null) {
                                                                                                                                                        i = R.id.layout_video_switch1;
                                                                                                                                                        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.layout_video_switch1);
                                                                                                                                                        if (relativeLayout2 != null) {
                                                                                                                                                            i = R.id.left_layout;
                                                                                                                                                            FrameLayout frameLayout3 = (FrameLayout) view.findViewById(R.id.left_layout);
                                                                                                                                                            if (frameLayout3 != null) {
                                                                                                                                                                i = R.id.radar_surfaceview;
                                                                                                                                                                RadarSurface radarSurface = (RadarSurface) view.findViewById(R.id.radar_surfaceview);
                                                                                                                                                                if (radarSurface != null) {
                                                                                                                                                                    TouchLayout touchLayout = (TouchLayout) view;
                                                                                                                                                                    i = R.id.right_layout;
                                                                                                                                                                    LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.right_layout);
                                                                                                                                                                    if (linearLayout5 != null) {
                                                                                                                                                                        i = R.id.static_track_line;
                                                                                                                                                                        ImageView imageView = (ImageView) view.findViewById(R.id.static_track_line);
                                                                                                                                                                        if (imageView != null) {
                                                                                                                                                                            i = R.id.t70_video_all;
                                                                                                                                                                            Button button18 = (Button) view.findViewById(R.id.t70_video_all);
                                                                                                                                                                            if (button18 != null) {
                                                                                                                                                                                i = R.id.t70_video_forward;
                                                                                                                                                                                Button button19 = (Button) view.findViewById(R.id.t70_video_forward);
                                                                                                                                                                                if (button19 != null) {
                                                                                                                                                                                    i = R.id.t70_video_left;
                                                                                                                                                                                    Button button20 = (Button) view.findViewById(R.id.t70_video_left);
                                                                                                                                                                                    if (button20 != null) {
                                                                                                                                                                                        i = R.id.t70_video_rear;
                                                                                                                                                                                        Button button21 = (Button) view.findViewById(R.id.t70_video_rear);
                                                                                                                                                                                        if (button21 != null) {
                                                                                                                                                                                            i = R.id.t70_video_right;
                                                                                                                                                                                            Button button22 = (Button) view.findViewById(R.id.t70_video_right);
                                                                                                                                                                                            if (button22 != null) {
                                                                                                                                                                                                i = R.id.t70_video_rigth_hide;
                                                                                                                                                                                                Button button23 = (Button) view.findViewById(R.id.t70_video_rigth_hide);
                                                                                                                                                                                                if (button23 != null) {
                                                                                                                                                                                                    i = R.id.the_radarlayout;
                                                                                                                                                                                                    LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.the_radarlayout);
                                                                                                                                                                                                    if (linearLayout6 != null) {
                                                                                                                                                                                                        i = R.id.top_layout;
                                                                                                                                                                                                        RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.top_layout);
                                                                                                                                                                                                        if (relativeLayout3 != null) {
                                                                                                                                                                                                            i = R.id.track_line;
                                                                                                                                                                                                            Track track = (Track) view.findViewById(R.id.track_line);
                                                                                                                                                                                                            if (track != null) {
                                                                                                                                                                                                                return new SmallRadarBinding(touchLayout, button, button2, button3, button4, button5, button6, button7, button8, imageButton, imageButton2, imageButton3, imageButton4, imageButton5, imageButton6, imageButton7, button9, button10, button11, button12, button13, button14, radioButton, radioButton2, radioButton3, radioGroup, linearLayout, button15, textView, button16, button17, linearLayout2, frameLayout, linearLayout3, linearLayout4, frameLayout2, relativeLayout, relativeLayout2, frameLayout3, radarSurface, touchLayout, linearLayout5, imageView, button18, button19, button20, button21, button22, button23, linearLayout6, relativeLayout3, track);
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
