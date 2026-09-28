package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.FuelSeekBar;

/* JADX INFO: loaded from: classes.dex */
public final class HondaUsbIpodBinding implements ViewBinding {
    private final RelativeLayout rootView;
    public final TextView usbIpodBtnFNext;
    public final TextView usbIpodBtnFPre;
    public final TextView usbIpodBtnNext;
    public final TextView usbIpodBtnPause;
    public final TextView usbIpodBtnPlay;
    public final TextView usbIpodBtnPre;
    public final TextView usbIpodCurTime;
    public final TextView usbIpodFolderIndex;
    public final LinearLayout usbIpodLlBtm;
    public final LinearLayout usbIpodLlProgress;
    public final FuelSeekBar usbIpodProcess;
    public final TextView usbIpodState;
    public final TextView usbIpodTrack;
    public final TextView usbIpodTvIpod;
    public final TextView usbIpodTvUsb;

    private HondaUsbIpodBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, LinearLayout linearLayout, LinearLayout linearLayout2, FuelSeekBar fuelSeekBar, TextView textView9, TextView textView10, TextView textView11, TextView textView12) {
        this.rootView = relativeLayout;
        this.usbIpodBtnFNext = textView;
        this.usbIpodBtnFPre = textView2;
        this.usbIpodBtnNext = textView3;
        this.usbIpodBtnPause = textView4;
        this.usbIpodBtnPlay = textView5;
        this.usbIpodBtnPre = textView6;
        this.usbIpodCurTime = textView7;
        this.usbIpodFolderIndex = textView8;
        this.usbIpodLlBtm = linearLayout;
        this.usbIpodLlProgress = linearLayout2;
        this.usbIpodProcess = fuelSeekBar;
        this.usbIpodState = textView9;
        this.usbIpodTrack = textView10;
        this.usbIpodTvIpod = textView11;
        this.usbIpodTvUsb = textView12;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static HondaUsbIpodBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HondaUsbIpodBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.honda_usb_ipod, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HondaUsbIpodBinding bind(View view) {
        int i = R.id.usb_ipod_btn_f_next;
        TextView textView = (TextView) view.findViewById(R.id.usb_ipod_btn_f_next);
        if (textView != null) {
            i = R.id.usb_ipod_btn_f_pre;
            TextView textView2 = (TextView) view.findViewById(R.id.usb_ipod_btn_f_pre);
            if (textView2 != null) {
                i = R.id.usb_ipod_btn_next;
                TextView textView3 = (TextView) view.findViewById(R.id.usb_ipod_btn_next);
                if (textView3 != null) {
                    i = R.id.usb_ipod_btn_pause;
                    TextView textView4 = (TextView) view.findViewById(R.id.usb_ipod_btn_pause);
                    if (textView4 != null) {
                        i = R.id.usb_ipod_btn_play;
                        TextView textView5 = (TextView) view.findViewById(R.id.usb_ipod_btn_play);
                        if (textView5 != null) {
                            i = R.id.usb_ipod_btn_pre;
                            TextView textView6 = (TextView) view.findViewById(R.id.usb_ipod_btn_pre);
                            if (textView6 != null) {
                                i = R.id.usb_ipod_cur_time;
                                TextView textView7 = (TextView) view.findViewById(R.id.usb_ipod_cur_time);
                                if (textView7 != null) {
                                    i = R.id.usb_ipod_folder_index;
                                    TextView textView8 = (TextView) view.findViewById(R.id.usb_ipod_folder_index);
                                    if (textView8 != null) {
                                        i = R.id.usb_ipod_ll_btm;
                                        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.usb_ipod_ll_btm);
                                        if (linearLayout != null) {
                                            i = R.id.usb_ipod_ll_progress;
                                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.usb_ipod_ll_progress);
                                            if (linearLayout2 != null) {
                                                i = R.id.usb_ipod_process;
                                                FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.usb_ipod_process);
                                                if (fuelSeekBar != null) {
                                                    i = R.id.usb_ipod_state;
                                                    TextView textView9 = (TextView) view.findViewById(R.id.usb_ipod_state);
                                                    if (textView9 != null) {
                                                        i = R.id.usb_ipod_track;
                                                        TextView textView10 = (TextView) view.findViewById(R.id.usb_ipod_track);
                                                        if (textView10 != null) {
                                                            i = R.id.usb_ipod_tv_ipod;
                                                            TextView textView11 = (TextView) view.findViewById(R.id.usb_ipod_tv_ipod);
                                                            if (textView11 != null) {
                                                                i = R.id.usb_ipod_tv_usb;
                                                                TextView textView12 = (TextView) view.findViewById(R.id.usb_ipod_tv_usb);
                                                                if (textView12 != null) {
                                                                    return new HondaUsbIpodBinding((RelativeLayout) view, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, linearLayout, linearLayout2, fuelSeekBar, textView9, textView10, textView11, textView12);
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
