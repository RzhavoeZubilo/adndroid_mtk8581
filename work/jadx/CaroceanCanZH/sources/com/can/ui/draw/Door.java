package com.can.ui.draw;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.can.activity.R;
import com.can.parser.DDef;

/* JADX INFO: loaded from: classes.dex */
public class Door implements View.OnTouchListener {
    Runnable DoorAutoClose;
    private boolean isPopup;
    private Context mContext;
    private ImageView mDoorFb;
    private ImageView mDoorLf;
    private ImageView mDoorLr;
    private ImageView mDoorRf;
    private ImageView mDoorRr;
    private ImageView mDoorTb;
    private View mDoorView;
    private Handler mHandler;
    private PopWind mPopWind;
    private boolean mbDoorAutoCloseFlag;
    private long mlshowDoorTime;

    private int GetVisibSate(byte b) {
        return b == 1 ? 0 : 4;
    }

    public Door(LayoutInflater layoutInflater, Context context, Handler handler) {
        this.mContext = null;
        this.mHandler = null;
        this.mPopWind = null;
        this.mDoorLf = null;
        this.mDoorRf = null;
        this.mDoorLr = null;
        this.mDoorRr = null;
        this.mDoorTb = null;
        this.mDoorFb = null;
        this.mDoorView = null;
        this.mlshowDoorTime = 0L;
        this.mbDoorAutoCloseFlag = false;
        this.isPopup = true;
        this.DoorAutoClose = new Runnable() { // from class: com.can.ui.draw.Door.1
            @Override // java.lang.Runnable
            public void run() {
                if (System.currentTimeMillis() - Door.this.mlshowDoorTime >= 3000) {
                    Door.this.Hide();
                    Door.this.mbDoorAutoCloseFlag = false;
                }
                if (!Door.this.mbDoorAutoCloseFlag || Door.this.mHandler == null) {
                    return;
                }
                Door.this.mHandler.postDelayed(Door.this.DoorAutoClose, 500L);
            }
        };
        this.mContext = context;
        this.mHandler = handler;
        this.mPopWind = new PopWind(0, 0);
        this.mDoorView = layoutInflater.inflate(R.layout.door, (ViewGroup) null);
        initViews();
    }

    public Door(View view, Context context, Handler handler) {
        this.mContext = null;
        this.mHandler = null;
        this.mPopWind = null;
        this.mDoorLf = null;
        this.mDoorRf = null;
        this.mDoorLr = null;
        this.mDoorRr = null;
        this.mDoorTb = null;
        this.mDoorFb = null;
        this.mDoorView = null;
        this.mlshowDoorTime = 0L;
        this.mbDoorAutoCloseFlag = false;
        this.isPopup = true;
        this.DoorAutoClose = new Runnable() { // from class: com.can.ui.draw.Door.1
            @Override // java.lang.Runnable
            public void run() {
                if (System.currentTimeMillis() - Door.this.mlshowDoorTime >= 3000) {
                    Door.this.Hide();
                    Door.this.mbDoorAutoCloseFlag = false;
                }
                if (!Door.this.mbDoorAutoCloseFlag || Door.this.mHandler == null) {
                    return;
                }
                Door.this.mHandler.postDelayed(Door.this.DoorAutoClose, 500L);
            }
        };
        this.isPopup = false;
        this.mContext = context;
        this.mHandler = handler;
        this.mPopWind = new PopWind(0, 0);
        this.mDoorView = view;
        initViews();
    }

    public void initViews(View view) {
        this.mDoorView = view;
        initViews();
    }

    private void initViews() {
        this.mDoorLf = (ImageView) this.mDoorView.findViewById(R.id.iv_left_front_door);
        this.mDoorRf = (ImageView) this.mDoorView.findViewById(R.id.iv_right_front_door);
        this.mDoorLr = (ImageView) this.mDoorView.findViewById(R.id.iv_left_back_door);
        this.mDoorRr = (ImageView) this.mDoorView.findViewById(R.id.iv_right_back_door);
        this.mDoorTb = (ImageView) this.mDoorView.findViewById(R.id.iv_rear_door_open);
        this.mDoorFb = (ImageView) this.mDoorView.findViewById(R.id.iv_front_cover_open);
        this.mDoorView.setOnTouchListener(this);
    }

    public boolean IsShow() {
        if (this.isPopup) {
            return this.mPopWind.IsVisable();
        }
        return true;
    }

    public void updateView(byte b) {
        this.mDoorLf.setVisibility(GetVisibSate((byte) ((b >> 7) & 1)));
        this.mDoorRf.setVisibility(GetVisibSate((byte) ((b >> 6) & 1)));
        this.mDoorLr.setVisibility(GetVisibSate((byte) ((b >> 5) & 1)));
        this.mDoorRr.setVisibility(GetVisibSate((byte) ((b >> 4) & 1)));
        ImageView imageView = this.mDoorTb;
        if (imageView != null) {
            imageView.setVisibility(GetVisibSate((byte) ((b >> 3) & 1)));
        }
        ImageView imageView2 = this.mDoorFb;
        if (imageView2 != null) {
            imageView2.setVisibility(GetVisibSate((byte) ((b >> 2) & 1)));
        }
    }

    public void show(DDef.BaseInfo baseInfo, boolean z) {
        if (baseInfo != null) {
            this.mDoorLf.setVisibility(GetVisibSate(baseInfo.mLeftFrontDoor));
            this.mDoorRf.setVisibility(GetVisibSate(baseInfo.mRightFrontDoor));
            this.mDoorLr.setVisibility(GetVisibSate(baseInfo.mLeftBackDoor));
            this.mDoorRr.setVisibility(GetVisibSate(baseInfo.mRightBackDoor));
            ImageView imageView = this.mDoorTb;
            if (imageView != null) {
                imageView.setVisibility(GetVisibSate(baseInfo.mTailBoxDoor));
            }
            ImageView imageView2 = this.mDoorFb;
            if (imageView2 != null) {
                imageView2.setVisibility(GetVisibSate(baseInfo.mFrontBoxDoor));
            }
            if (baseInfo.mbDoorValid && z && this.mPopWind != null) {
                if (getDoorShow(baseInfo)) {
                    this.mlshowDoorTime = this.mPopWind.show(this.mContext, this.mDoorView);
                    this.mbDoorAutoCloseFlag = true;
                } else {
                    this.mbDoorAutoCloseFlag = false;
                    Hide();
                }
            }
        }
    }

    public void Hide() {
        PopWind popWind = this.mPopWind;
        if (popWind != null) {
            popWind.hide(this.mDoorView);
        }
    }

    private boolean getDoorShow(DDef.BaseInfo baseInfo) {
        return (baseInfo.mLeftFrontDoor == 0 && baseInfo.mRightFrontDoor == 0 && baseInfo.mLeftBackDoor == 0 && baseInfo.mRightBackDoor == 0 && baseInfo.mTailBoxDoor == 0 && baseInfo.mFrontBoxDoor == 0) ? false : true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!IsShow()) {
            return false;
        }
        Hide();
        return false;
    }
}
