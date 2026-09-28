package com.can.ui.draw;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.view.LayoutInflater;
import android.view.MotionEvent;
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
import com.can.activity.R;
import com.can.assist.CanContant;
import com.can.assist.CanXml;
import com.can.parser.DDef;

/* JADX INFO: loaded from: classes.dex */
public class Radar implements View.OnClickListener, RadioGroup.OnCheckedChangeListener, View.OnTouchListener {
    private static final String PERSYS_BACKCAR_DYNAMIC_TRACE = "persist.sys.dyntrace_enable";
    private static final String PERSYS_BACKCAR_RADAR = "persist.sys.radar_enable";
    private static final String PERSYS_BACKCAR_TRACE = "persist.sys.trace_enable";
    private LinearLayout mBigRadarLayout;
    private RadarSurface mBigRadarSurface;
    private ImageButton mBtnBigRadar2Video;
    private ImageButton mBtnBigRadarMute;
    private ImageButton mBtnLeftHide;
    private ImageButton mBtnLeftShow;
    private ImageButton mBtnRightHide;
    private ImageButton mBtnRightShow;
    private ImageButton mBtnSmRadar2Big;
    private ImageButton mBtnSmRadarMute;
    private ImageButton mBtnSmRadarPark;
    private Button mBtnT70Hide;
    private Context mContext;
    private Track mDyncTrack;
    private FrameLayout mFrameLayout2;
    private Handler mHandler;
    private LinearLayout mHdToyotaRav4;
    private FrameLayout mRadarleftlayout;
    private TouchLayout mSmRadarLayout;
    private LinearLayout mSmRadarRLayout;
    private LinearLayout mSmRadarRState;
    private RadarSurface mSmRadarSurface;
    private RadioGroup mSmRadarVideoGroup;
    private ImageView mStaticTrack;
    private int[] mT70Id;
    private LinearLayout mT70Layout;
    private TextView[] mT70View;
    private PopWind mbPopWind;
    private PopWind msPopWind;
    private OnRadarlistener mRadarlistener = null;
    private boolean mbRadarMute = false;
    private boolean mbParkType = false;
    private boolean mbReverse = false;
    private boolean mbPanoramic = false;
    private final int BACKCAR_STATE = 5;
    private int[] mToyotoId = {R.id.btn_left_top, R.id.btn_right_top, R.id.btn_left_bottom, R.id.btn_right_bottom, R.id.btn_center_bottom};
    private int[] mHdToyotaId = {R.id.hd_toyota_view1, R.id.hd_toyota_view3, R.id.hd_toyota_view4};
    private int[] mGs4Id = {R.id.btn_forward, R.id.btn_rear, R.id.btn_left, R.id.btn_right};
    private int[] mGs5Id = {R.id.btn_forward_all, R.id.btn_forward_right, R.id.btn_rear_all, R.id.btn_horizontal_all, R.id.btn_vertical_all};

    public interface OnRadarlistener {
        boolean IsPanoramic();

        boolean IsSuportRadar();

        boolean IsVaild();

        void Panoramic(byte b, byte b2);

        int attr();

        byte getRadarState();

        void mute(boolean z);

        void park(boolean z);

        void remove();

        void saveRadarState(byte b);

        void video(int i);

        int videoType();
    }

    public Radar(LayoutInflater layoutInflater, Context context, Handler handler) {
        this.mBtnLeftShow = null;
        this.mBtnLeftHide = null;
        this.mBtnRightShow = null;
        this.mBtnRightHide = null;
        this.mBtnSmRadarMute = null;
        this.mBtnSmRadarPark = null;
        this.mBtnSmRadar2Big = null;
        this.mBtnBigRadarMute = null;
        this.mBtnBigRadar2Video = null;
        this.mBtnT70Hide = null;
        this.mFrameLayout2 = null;
        this.mT70Layout = null;
        this.mHdToyotaRav4 = null;
        this.mSmRadarLayout = null;
        this.mSmRadarSurface = null;
        this.mBigRadarSurface = null;
        this.mSmRadarRLayout = null;
        this.mSmRadarRState = null;
        this.mBigRadarLayout = null;
        this.mRadarleftlayout = null;
        this.mSmRadarVideoGroup = null;
        this.mStaticTrack = null;
        int i = 0;
        this.msPopWind = null;
        this.mbPopWind = null;
        this.mDyncTrack = null;
        this.mContext = null;
        int[] iArr = {R.id.t70_video_all, R.id.t70_video_right, R.id.t70_video_left, R.id.t70_video_rear, R.id.t70_video_forward};
        this.mT70Id = iArr;
        this.mT70View = new TextView[iArr.length];
        this.mHandler = new Handler() { // from class: com.can.ui.draw.Radar.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 5) {
                    Radar.this.doReverse(Boolean.valueOf(message.arg1 == 1));
                } else {
                    super.handleMessage(message);
                }
            }
        };
        this.mContext = context;
        this.msPopWind = new PopWind(0, 0);
        this.mbPopWind = new PopWind(0, 0);
        this.mSmRadarLayout = (TouchLayout) layoutInflater.inflate(R.layout.small_radar, (ViewGroup) null);
        this.mBigRadarLayout = (LinearLayout) layoutInflater.inflate(R.layout.big_radar, (ViewGroup) null);
        RelativeLayout relativeLayout = (RelativeLayout) this.mSmRadarLayout.findViewById(R.id.the_radarlayout).findViewById(R.id.top_layout);
        FrameLayout frameLayout = (FrameLayout) relativeLayout.findViewById(R.id.left_layout);
        this.mRadarleftlayout = frameLayout;
        LinearLayout linearLayout = (LinearLayout) frameLayout.findViewById(R.id.layout_surface_1);
        this.mSmRadarSurface = (RadarSurface) linearLayout.findViewById(R.id.radar_surfaceview);
        this.mBtnLeftShow = (ImageButton) this.mRadarleftlayout.findViewById(R.id.btn_radar_left_show);
        this.mBtnLeftHide = (ImageButton) linearLayout.findViewById(R.id.btn_radar_left_hide);
        this.mBtnLeftShow.setOnClickListener(this);
        this.mBtnLeftHide.setOnClickListener(this);
        this.mSmRadarSurface.setlayoutId(R.layout.small_radar);
        LinearLayout linearLayout2 = (LinearLayout) relativeLayout.findViewById(R.id.right_layout);
        this.mSmRadarRState = linearLayout2;
        this.mSmRadarRLayout = (LinearLayout) linearLayout2.findViewById(R.id.button_group);
        this.mSmRadarVideoGroup = (RadioGroup) this.mSmRadarRState.findViewById(R.id.button_avm);
        this.mBtnRightShow = (ImageButton) this.mSmRadarRState.findViewById(R.id.btn_radar_right_show);
        this.mBtnRightHide = (ImageButton) this.mSmRadarRState.findViewById(R.id.btn_radar_rigth_hide);
        this.mBtnSmRadarMute = (ImageButton) this.mSmRadarRLayout.findViewById(R.id.btn_radar_right_volume);
        this.mBtnSmRadarPark = (ImageButton) this.mSmRadarRLayout.findViewById(R.id.btn_radar_right_park);
        this.mBtnSmRadar2Big = (ImageButton) this.mSmRadarRLayout.findViewById(R.id.btn_radar_right_magnify);
        this.mSmRadarVideoGroup.setOnCheckedChangeListener(this);
        this.mBtnRightShow.setOnClickListener(this);
        this.mBtnRightHide.setOnClickListener(this);
        this.mBtnSmRadarMute.setOnClickListener(this);
        this.mBtnSmRadarPark.setOnClickListener(this);
        this.mBtnSmRadar2Big.setOnClickListener(this);
        RelativeLayout relativeLayout2 = (RelativeLayout) this.mBigRadarLayout.findViewById(R.id.radar_bottom_layout).findViewById(R.id.radar_botton_group);
        this.mBigRadarSurface = (RadarSurface) this.mBigRadarLayout.findViewById(R.id.big_radar_surfaceview);
        this.mBtnBigRadar2Video = (ImageButton) relativeLayout2.findViewById(R.id.btn_radar_video);
        this.mBtnBigRadarMute = (ImageButton) relativeLayout2.findViewById(R.id.big_radar_mute);
        this.mBtnBigRadar2Video.setOnClickListener(this);
        this.mBtnBigRadarMute.setOnClickListener(this);
        this.mBigRadarSurface.setlayoutId(R.layout.big_radar);
        FrameLayout frameLayout2 = (FrameLayout) this.mSmRadarLayout.findViewById(R.id.layout_track);
        this.mDyncTrack = (Track) frameLayout2.findViewById(R.id.track_line);
        this.mStaticTrack = (ImageView) frameLayout2.findViewById(R.id.static_track_line);
        this.mT70Layout = (LinearLayout) this.mSmRadarLayout.findViewById(R.id.layout_t70_video);
        this.mBtnT70Hide = (Button) this.mSmRadarLayout.findViewById(R.id.t70_video_rigth_hide);
        this.mFrameLayout2 = (FrameLayout) this.mSmRadarLayout.findViewById(R.id.layout_panoramic);
        this.mHdToyotaRav4 = (LinearLayout) this.mSmRadarLayout.findViewById(R.id.layout_hd_toyota);
        RelativeLayout relativeLayout3 = (RelativeLayout) this.mSmRadarLayout.findViewById(R.id.layout_video_switch);
        RelativeLayout relativeLayout4 = (RelativeLayout) this.mSmRadarLayout.findViewById(R.id.layout_video_switch1);
        CanContant.CAN_DESCRIBE canDescribe = CanXml.getInstance(this.mContext).getCanDescribe();
        if (canDescribe.iSeriesID == 4 && canDescribe.iCarTypeID == 2) {
            if (canDescribe.iBoxID == 2) {
                this.mHdToyotaRav4.setVisibility(0);
                int[] iArr2 = this.mHdToyotaId;
                int length = iArr2.length;
                while (i < length) {
                    this.mHdToyotaRav4.findViewById(iArr2[i]).setOnTouchListener(this);
                    i++;
                }
                return;
            }
            this.mFrameLayout2.setVisibility(0);
            int[] iArr3 = this.mToyotoId;
            int length2 = iArr3.length;
            while (i < length2) {
                this.mFrameLayout2.findViewById(iArr3[i]).setOnClickListener(this);
                i++;
            }
            return;
        }
        if ((canDescribe.iSeriesID == 22 && canDescribe.iCarTypeID == 1) || ((canDescribe.iSeriesID == 19 && canDescribe.iCarTypeID == 2) || (canDescribe.iBoxID == 1 && canDescribe.iSeriesID == 30 && canDescribe.iCarTypeID == 5))) {
            relativeLayout3.setVisibility(0);
            int[] iArr4 = this.mGs4Id;
            int length3 = iArr4.length;
            while (i < length3) {
                relativeLayout3.findViewById(iArr4[i]).setOnClickListener(this);
                i++;
            }
            return;
        }
        if (canDescribe.iSeriesID == 22 && canDescribe.iCarTypeID == 2) {
            relativeLayout4.setVisibility(0);
            int[] iArr5 = this.mGs5Id;
            int length4 = iArr5.length;
            while (i < length4) {
                relativeLayout4.findViewById(iArr5[i]).setOnClickListener(this);
                i++;
            }
            return;
        }
        if (canDescribe.iSeriesID != 32 || canDescribe.iCarTypeID != 0) {
            return;
        }
        this.mBtnT70Hide.setVisibility(0);
        this.mBtnT70Hide.setOnClickListener(this);
        while (true) {
            int[] iArr6 = this.mT70Id;
            if (i >= iArr6.length) {
                return;
            }
            this.mT70View[i] = (TextView) this.mT70Layout.findViewById(iArr6[i]);
            TextView[] textViewArr = this.mT70View;
            if (textViewArr[i] != null) {
                textViewArr[i].setOnClickListener(this);
            }
            i++;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x0094  */
    /* JADX WARN: Code duplicated, block: B:29:0x009c  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ac  */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        switch (id) {
            case R.id.big_radar_mute /* 2131230823 */:
                muteRadar();
                break;
            case R.id.btn_center_bottom /* 2131230828 */:
                setPanoramic(view.getId());
                break;
            case R.id.btn_horizontal_all /* 2131231017 */:
            case R.id.btn_vertical_all /* 2131231139 */:
                setPanoramic(view.getId());
                break;
            default:
                switch (id) {
                    case R.id.btn_forward /* 2131230975 */:
                        setPanoramic(view.getId());
                        break;
                    case R.id.btn_forward_all /* 2131230976 */:
                    case R.id.btn_forward_right /* 2131230977 */:
                        setPanoramic(view.getId());
                        break;
                    default:
                        switch (id) {
                            case R.id.btn_left /* 2131231063 */:
                                setPanoramic(view.getId());
                                break;
                            case R.id.btn_left_bottom /* 2131231064 */:
                            case R.id.btn_left_top /* 2131231065 */:
                                setPanoramic(view.getId());
                                break;
                            default:
                                switch (id) {
                                    case R.id.btn_radar_left_hide /* 2131231094 */:
                                        this.mSmRadarSurface.stopThread();
                                        this.mBtnLeftShow.setVisibility(0);
                                        this.mSmRadarSurface.setVisibility(8);
                                        this.mBtnLeftHide.setVisibility(8);
                                        OnRadarlistener onRadarlistener = this.mRadarlistener;
                                        if (onRadarlistener != null) {
                                            onRadarlistener.saveRadarState((byte) 0);
                                        }
                                        break;
                                    case R.id.btn_radar_left_show /* 2131231095 */:
                                        this.mBtnLeftShow.setVisibility(8);
                                        this.mBtnLeftHide.setVisibility(0);
                                        this.mSmRadarSurface.setVisibility(0);
                                        OnRadarlistener onRadarlistener2 = this.mRadarlistener;
                                        if (onRadarlistener2 != null) {
                                            onRadarlistener2.saveRadarState((byte) 1);
                                        }
                                        break;
                                    case R.id.btn_radar_right_magnify /* 2131231096 */:
                                        switchRadar(true);
                                        break;
                                    case R.id.btn_radar_right_park /* 2131231097 */:
                                        parkType();
                                        break;
                                    case R.id.btn_radar_right_show /* 2131231098 */:
                                        this.mBtnRightShow.setVisibility(8);
                                        this.mSmRadarRLayout.setVisibility(0);
                                        this.mBtnRightHide.setVisibility(0);
                                        break;
                                    case R.id.btn_radar_right_volume /* 2131231099 */:
                                        muteRadar();
                                        break;
                                    case R.id.btn_radar_rigth_hide /* 2131231100 */:
                                        this.mBtnRightShow.setVisibility(0);
                                        this.mSmRadarRLayout.setVisibility(8);
                                        this.mBtnRightHide.setVisibility(8);
                                        break;
                                    case R.id.btn_radar_video /* 2131231101 */:
                                        switchRadar(false);
                                        break;
                                    case R.id.btn_rear /* 2131231102 */:
                                        setPanoramic(view.getId());
                                        break;
                                    case R.id.btn_rear_all /* 2131231103 */:
                                        setPanoramic(view.getId());
                                        break;
                                    default:
                                        switch (id) {
                                            case R.id.btn_right /* 2131231116 */:
                                                setPanoramic(view.getId());
                                                break;
                                            case R.id.btn_right_bottom /* 2131231117 */:
                                            case R.id.btn_right_top /* 2131231118 */:
                                                setPanoramic(view.getId());
                                                break;
                                            default:
                                                switch (id) {
                                                    case R.id.t70_video_all /* 2131232603 */:
                                                    case R.id.t70_video_forward /* 2131232604 */:
                                                    case R.id.t70_video_left /* 2131232605 */:
                                                    case R.id.t70_video_rear /* 2131232606 */:
                                                    case R.id.t70_video_right /* 2131232607 */:
                                                        setPanoramic(view.getId());
                                                        break;
                                                    case R.id.t70_video_rigth_hide /* 2131232608 */:
                                                        LinearLayout linearLayout = this.mT70Layout;
                                                        linearLayout.setVisibility(linearLayout.getVisibility() != 0 ? 0 : 8);
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public void show() {
        PopWind popWind = this.msPopWind;
        if (popWind != null) {
            popWind.showEx(this.mContext, this.mSmRadarLayout);
        }
    }

    public boolean IsShow() {
        return this.msPopWind.IsVisable();
    }

    public void hide() {
        PopWind popWind = this.msPopWind;
        if (popWind != null) {
            popWind.hide(this.mSmRadarLayout);
        }
    }

    public void showAssist() {
        PopWind popWind = this.mbPopWind;
        if (popWind != null) {
            popWind.show(this.mContext, this.mBigRadarLayout);
        }
    }

    public boolean IsAssistShow() {
        return this.mbPopWind.IsVisable();
    }

    public void hideAssist() {
        PopWind popWind = this.mbPopWind;
        if (popWind != null) {
            popWind.hide(this.mBigRadarLayout);
        }
    }

    public void setPanoramicState(boolean z) {
        this.mbPanoramic = z;
    }

    private void switchRadar(boolean z) {
        if (z) {
            this.mSmRadarSurface.stopThread();
            hide();
            this.mBtnBigRadar2Video.setVisibility(0);
            showAssist();
            return;
        }
        this.mBigRadarSurface.stopThread();
        hideAssist();
        show();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0018  */
    /* JADX WARN: Code duplicated, block: B:15:0x001f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0021  */
    /* JADX WARN: Code duplicated, block: B:5:0x000c  */
    private void setPanoramic(int i) {
        byte b = 7;
        switch (i) {
            case R.id.btn_center_bottom /* 2131230828 */:
            case R.id.btn_left /* 2131231063 */:
                break;
            case R.id.btn_forward /* 2131230975 */:
            case R.id.btn_forward_all /* 2131230976 */:
            case R.id.btn_left_top /* 2131231065 */:
                b = 1;
                break;
            case R.id.btn_forward_right /* 2131230977 */:
            case R.id.btn_rear /* 2131231102 */:
            case R.id.t70_video_all /* 2131232603 */:
                b = 2;
                break;
            case R.id.btn_horizontal_all /* 2131231017 */:
            case R.id.t70_video_left /* 2131232605 */:
                b = 4;
                break;
            case R.id.btn_left_bottom /* 2131231064 */:
                if (!this.mbPanoramic) {
                    b = 4;
                } else {
                    b = 2;
                }
                break;
            case R.id.btn_rear_all /* 2131231103 */:
            case R.id.t70_video_right /* 2131232607 */:
                b = 3;
                break;
            case R.id.btn_right /* 2131231116 */:
                b = 8;
                break;
            case R.id.btn_right_bottom /* 2131231117 */:
                if (!this.mbPanoramic) {
                    b = 5;
                } else {
                    b = 3;
                }
                break;
            case R.id.btn_right_top /* 2131231118 */:
                b = 6;
                break;
            case R.id.btn_vertical_all /* 2131231139 */:
            case R.id.t70_video_forward /* 2131232604 */:
            case R.id.t70_video_rear /* 2131232606 */:
                b = 5;
                break;
            default:
                b = 0;
                break;
        }
        OnRadarlistener onRadarlistener = this.mRadarlistener;
        if (onRadarlistener != null) {
            onRadarlistener.Panoramic(b, (byte) 0);
        }
    }

    private void muteRadar() {
        boolean z = !this.mbRadarMute;
        this.mbRadarMute = z;
        int i = z ? R.drawable.radar_rbtn_mute : R.drawable.radar_rbtn_unmute;
        this.mBtnSmRadarMute.setImageResource(i);
        this.mBtnBigRadarMute.setImageResource(i);
        OnRadarlistener onRadarlistener = this.mRadarlistener;
        if (onRadarlistener != null) {
            onRadarlistener.mute(this.mbRadarMute);
        }
    }

    private void parkType() {
        boolean z = !this.mbParkType;
        this.mbParkType = z;
        this.mBtnSmRadarPark.setImageResource(z ? R.drawable.radar_rbtn_park2 : R.drawable.radar_rbtn_park1);
        OnRadarlistener onRadarlistener = this.mRadarlistener;
        if (onRadarlistener != null) {
            onRadarlistener.park(this.mbParkType);
        }
    }

    public void setReverse(boolean z) {
        if (this.mbReverse != z) {
            this.mbReverse = z;
            Message messageObtainMessage = this.mHandler.obtainMessage();
            messageObtainMessage.what = 5;
            messageObtainMessage.arg1 = z ? 1 : 0;
            if (z) {
                this.mHandler.sendMessageDelayed(messageObtainMessage, 1000L);
                return;
            }
            if (this.mHandler.hasMessages(messageObtainMessage.what)) {
                this.mHandler.removeMessages(messageObtainMessage.what);
            }
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    public void setRadar(DDef.RadarInfo radarInfo) {
        RadarSurface.setRadarInfo(radarInfo);
        if (this.mSmRadarRState != null) {
            byte b = radarInfo.mbyRightShowType;
            if (b == 0) {
                this.mSmRadarRState.setVisibility(4);
            } else {
                if (b != 1) {
                    return;
                }
                this.mSmRadarRState.setVisibility(0);
            }
        }
    }

    public void setParkAttr(DDef.ParkAssistInfo parkAssistInfo) {
        int i = parkAssistInfo.mRadarSoundState == 0 ? R.drawable.radar_rbtn_mute : R.drawable.radar_rbtn_unmute;
        this.mBtnSmRadarMute.setImageResource(i);
        this.mBtnBigRadarMute.setImageResource(i);
        if (IsShow()) {
            return;
        }
        if (parkAssistInfo.mParkSystemState == 1) {
            if (IsAssistShow()) {
                return;
            }
            this.mBtnBigRadar2Video.setVisibility(4);
            showAssist();
            return;
        }
        if (IsAssistShow()) {
            this.mBigRadarSurface.stopThread();
            hideAssist();
        }
    }

    private void setReverseAttr() {
        OnRadarlistener onRadarlistener = this.mRadarlistener;
        int i = 0;
        if (onRadarlistener != null) {
            int i2 = 1;
            if (onRadarlistener.IsVaild() && SystemProperties.getBoolean("persist.sys.radar_enable", false)) {
                setGone();
                int iAttr = this.mRadarlistener.attr();
                if (iAttr == 3) {
                    this.mSmRadarVideoGroup.setVisibility(0);
                    setVideoType(this.mRadarlistener.videoType());
                } else if (iAttr == 4) {
                    setRadarUI();
                    this.mSmRadarVideoGroup.setVisibility(0);
                    setVideoType(this.mRadarlistener.videoType());
                } else if (iAttr == 5) {
                    setRadarUI();
                    this.mBtnRightShow.setVisibility(0);
                } else if (this.mRadarlistener.IsSuportRadar()) {
                    setRadarUI();
                }
                i2 = 0;
            }
            FrameLayout frameLayout = this.mFrameLayout2;
            if (frameLayout != null) {
                frameLayout.setVisibility(this.mRadarlistener.IsPanoramic() ? 0 : 8);
            }
            i = i2;
        }
        if (i != 0) {
            setGone();
        }
    }

    private void setRadarUI() {
        OnRadarlistener onRadarlistener = this.mRadarlistener;
        if (onRadarlistener != null) {
            byte radarState = onRadarlistener.getRadarState();
            if (radarState == 0) {
                this.mSmRadarSurface.setVisibility(4);
                this.mBtnLeftHide.setVisibility(4);
                this.mBtnLeftShow.setVisibility(0);
            } else if (radarState == 1) {
                this.mSmRadarSurface.setVisibility(0);
                this.mBtnLeftHide.setVisibility(0);
            } else {
                this.mSmRadarSurface.setVisibility(0);
                this.mBtnLeftHide.setVisibility(0);
            }
        }
    }

    private void setGone() {
        this.mBtnLeftShow.setVisibility(8);
        this.mSmRadarSurface.setVisibility(8);
        this.mBtnLeftHide.setVisibility(8);
        this.mBtnRightShow.setVisibility(8);
        this.mSmRadarRLayout.setVisibility(8);
        this.mBtnRightHide.setVisibility(8);
        this.mSmRadarVideoGroup.setVisibility(8);
    }

    public void setAvmInfo(DDef.AvmInfo avmInfo) {
        int i = avmInfo.mVideoState;
        for (TextView textView : this.mT70View) {
            if (textView == null) {
                return;
            }
            textView.setSelected(false);
        }
        if (i == 3 || i == 7) {
            this.mT70View[0].setSelected(true);
            return;
        }
        if (i == 4 || i == 8) {
            this.mT70View[1].setSelected(true);
            return;
        }
        if (i == 5 || i == 9) {
            this.mT70View[2].setSelected(true);
            return;
        }
        if (i == 6) {
            this.mT70View[4].setVisibility(0);
            this.mT70View[4].setSelected(true);
            this.mT70View[3].setVisibility(4);
        } else if (i == 10) {
            this.mT70View[3].setVisibility(0);
            this.mT70View[3].setSelected(true);
            this.mT70View[4].setVisibility(4);
        }
    }

    private void setVideoType(int i) {
        if (i <= 2) {
            ((RadioButton) this.mSmRadarVideoGroup.getChildAt(i)).setChecked(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doReverse(Boolean bool) {
        if (bool.booleanValue()) {
            if (IsAssistShow()) {
                this.mBigRadarSurface.stopThread();
                hideAssist();
            }
            Track track = this.mDyncTrack;
            if (track != null) {
                track.setVisibility(SystemProperties.getBoolean("persist.sys.dyntrace_enable", false) ? 0 : 4);
            }
            ImageView imageView = this.mStaticTrack;
            if (imageView != null) {
                imageView.setVisibility(SystemProperties.getBoolean("persist.sys.trace_enable", false) ? 0 : 4);
            }
            OnRadarlistener onRadarlistener = this.mRadarlistener;
            if (onRadarlistener != null) {
                onRadarlistener.remove();
            }
            setReverseAttr();
            show();
            return;
        }
        this.mSmRadarSurface.stopThread();
        this.mSmRadarLayout.OverReverse();
        hide();
        if (IsAssistShow()) {
            this.mBigRadarSurface.stopThread();
            hideAssist();
        }
    }

    public void doDyncTrack(DDef.WheelInfo wheelInfo) {
        Track track = this.mDyncTrack;
        if (track != null) {
            track.DrawTrack(wheelInfo.mEps);
        }
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        int i2 = 0;
        switch (i) {
            case R.id.btn_video_depresangle /* 2131231140 */:
                i2 = 2;
                break;
            case R.id.btn_video_standardview /* 2131231141 */:
                i2 = 1;
                break;
        }
        OnRadarlistener onRadarlistener = this.mRadarlistener;
        if (onRadarlistener != null) {
            onRadarlistener.video(i2);
        }
    }

    public void setOnRadarlistener(OnRadarlistener onRadarlistener) {
        this.mRadarlistener = onRadarlistener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x002b  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        byte b = 4;
        byte b2 = 0;
        if (motionEvent.getAction() == 0) {
            switch (view.getId()) {
                case R.id.hd_toyota_view1 /* 2131231845 */:
                    b = 1;
                    b2 = 1;
                    break;
                case R.id.hd_toyota_view2 /* 2131231846 */:
                default:
                    b = 0;
                    b2 = 1;
                    break;
                case R.id.hd_toyota_view3 /* 2131231847 */:
                    b = 3;
                    b2 = 1;
                    break;
                case R.id.hd_toyota_view4 /* 2131231848 */:
                    b2 = 1;
                    break;
            }
        } else if (motionEvent.getAction() == 1) {
            switch (view.getId()) {
                case R.id.hd_toyota_view1 /* 2131231845 */:
                    b = 1;
                    break;
                case R.id.hd_toyota_view2 /* 2131231846 */:
                default:
                    b = 0;
                    break;
                case R.id.hd_toyota_view3 /* 2131231847 */:
                    b = 3;
                    break;
                case R.id.hd_toyota_view4 /* 2131231848 */:
                    break;
            }
        } else {
            b = 0;
        }
        OnRadarlistener onRadarlistener = this.mRadarlistener;
        if (onRadarlistener != null && b != 0) {
            onRadarlistener.Panoramic(b, b2);
        }
        return true;
    }
}
