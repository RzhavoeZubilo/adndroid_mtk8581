package com.can.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.media.AudioManager;
import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.can.activity.R;
import com.can.platforms.AppConfigParser;
import com.can.tool.DataConvert;
import com.can.ui.draw.RadioSystemDialog;
import com.carocean.navicar.McuServiceManager;
import com.carocean.navicar.Navi;
import com.carocean.navicar.util.McuUtils;

/* JADX INFO: loaded from: classes.dex */
public class CarMedia extends Activity implements View.OnClickListener {
    static final String TAG = "CarAux";
    private View mDiscLayout;
    private View mMediaLayout;
    private MediaSession mMediaSession;
    private View mMenuLayout;
    private TextView mMenuText;
    private ImageView mOperationACS;
    private ImageView mOperationALS;
    private ImageView mOperationAM;
    private ImageView mOperationAUDIO;
    private ImageView mOperationCHPlus;
    private ImageView mOperationCHReduce;
    private ImageView mOperationFM;
    private ImageView mOperationMUTE;
    private ImageView mOperationMedia;
    private ImageView mOperationNext;
    private ImageView mOperationNum1;
    private ImageView mOperationNum2;
    private ImageView mOperationNum3;
    private ImageView mOperationNum4;
    private ImageView mOperationNum5;
    private ImageView mOperationNum6;
    private ImageView mOperationPrev;
    private ImageView mOperationRand;
    private ImageView mOperationRepeat;
    private ImageView mOperationSCAN;
    private ImageView mOperationSet;
    private ImageView mRightIcon;
    private TextView mSTText;
    private StringBuilder mSbMenuString;
    private Messenger mServiceMessenger;
    private TextView mText1;
    private TextView mText2;
    private TextView mText3;
    AudioManager manager = null;
    private float mTestFm = 87.5f;
    private int mTestTmp = 1;
    private int mMenuStatus = 0;
    private int mCarMediaMode = -1;
    private ImageView[] mDisc = new ImageView[6];
    private int mEnterMode = -1;
    private McuServiceManager mcuServiceManager = McuServiceManager.getInstance();
    private int mRadioSystemIndex = 0;
    private McuServiceManager.DataListener dataListener = new McuServiceManager.DataListener() { // from class: com.can.ui.CarMedia.1
        @Override // com.carocean.navicar.McuServiceManager.DataListener
        public void onReceive(int i, byte[] bArr) {
            if (i == 30) {
                if (bArr.length >= 6) {
                    CarMedia.this.mCarMediaMode = bArr[0] & 255;
                    CarMedia.this.updateTitleAndRightIcon();
                    if (CarMedia.this.mMenuStatus == 0) {
                        if (CarMedia.this.mEnterMode < 0 || CarMedia.this.mCarMediaMode != 17) {
                            CarMedia.this.updateCarMediaView(bArr, true);
                            return;
                        } else {
                            CarMedia.this.finish();
                            return;
                        }
                    }
                    CarMedia.this.updateCarMediaView(bArr, false);
                    return;
                }
                return;
            }
            if (i == 31 && bArr.length >= 13) {
                CarMedia.this.mMenuStatus = bArr[0] & 255;
                if (CarMedia.this.mMenuStatus == 1) {
                    CarMedia.this.updateCarMenuView(bArr);
                }
            }
        }
    };
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.can.ui.CarMedia.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            if (Navi.Action.ACTION_QUIT_APK.equals(intent.getAction()) && (stringExtra = intent.getStringExtra("func")) != null && "carmedia".equals(stringExtra)) {
                CarMedia.this.finish();
            }
        }
    };
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.can.ui.CarMedia.3
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            CarMedia.this.mServiceMessenger = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.i(CarMedia.TAG, "onServiceConnected");
            CarMedia.this.mServiceMessenger = new Messenger(iBinder);
        }
    };
    View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.can.ui.-$$Lambda$CarMedia$XqWei3UC08CMCZahUSt4i3XpzO8
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return CarMedia.lambda$new$0(view, motionEvent);
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (Build.VERSION.SDK_INT >= 21) {
            window.clearFlags(67108864);
            window.getDecorView().setSystemUiVisibility(1280);
            window.addFlags(Integer.MIN_VALUE);
        } else if (Build.VERSION.SDK_INT >= 19) {
            window.addFlags(67108864);
            window.addFlags(134217728);
        }
        setContentView(R.layout.lexus_activity_carmedia);
        Intent intent = getIntent();
        if (intent != null) {
            this.mEnterMode = intent.getIntExtra("mode", -1);
        }
        this.mSbMenuString = new StringBuilder();
        setupViews();
        initMcu();
        this.mServiceMessenger = null;
        bindService(new Intent(this, (Class<?>) CanPopWind.class), this.mConnection, 1);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Navi.Action.ACTION_QUIT_APK);
        registerReceiver(this.mReceiver, intentFilter);
        registerMediaButton();
    }

    private void initMcu() {
        this.mcuServiceManager.regCallback(new int[]{30, 31}, this.dataListener);
        this.mcuServiceManager.isServiceConnected();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    private void setupViews() {
        this.mMediaLayout = findViewById(R.id.carmedia_layout);
        this.mMenuLayout = findViewById(R.id.carmenu_layout);
        this.mMenuText = (TextView) findViewById(R.id.carmenu_text);
        View viewFindViewById = findViewById(R.id.disc_layout);
        this.mDiscLayout = viewFindViewById;
        viewFindViewById.setVisibility(4);
        this.mRightIcon = (ImageView) findViewById(R.id.right_icon);
        this.mDisc[0] = (ImageView) findViewById(R.id.disc_1);
        this.mDisc[1] = (ImageView) findViewById(R.id.disc_2);
        this.mDisc[2] = (ImageView) findViewById(R.id.disc_3);
        this.mDisc[3] = (ImageView) findViewById(R.id.disc_4);
        this.mDisc[4] = (ImageView) findViewById(R.id.disc_5);
        this.mDisc[5] = (ImageView) findViewById(R.id.disc_6);
        this.mText1 = (TextView) findViewById(R.id.carmedia_text1);
        this.mText2 = (TextView) findViewById(R.id.carmedia_text2);
        this.mText3 = (TextView) findViewById(R.id.carmedia_text3);
        ImageView imageView = (ImageView) findViewById(R.id.operation_fm);
        this.mOperationFM = imageView;
        imageView.setOnClickListener(this);
        this.mOperationFM.setOnTouchListener(this.onTouchListener);
        ImageView imageView2 = (ImageView) findViewById(R.id.operation_am);
        this.mOperationAM = imageView2;
        imageView2.setOnClickListener(this);
        this.mOperationAM.setOnTouchListener(this.onTouchListener);
        ImageView imageView3 = (ImageView) findViewById(R.id.operation_media);
        this.mOperationMedia = imageView3;
        imageView3.setOnClickListener(this);
        this.mOperationMedia.setOnTouchListener(this.onTouchListener);
        ImageView imageView4 = (ImageView) findViewById(R.id.operation_prev);
        this.mOperationPrev = imageView4;
        imageView4.setOnClickListener(this);
        this.mOperationPrev.setOnTouchListener(this.onTouchListener);
        ImageView imageView5 = (ImageView) findViewById(R.id.operation_next);
        this.mOperationNext = imageView5;
        imageView5.setOnClickListener(this);
        this.mOperationNext.setOnTouchListener(this.onTouchListener);
        ImageView imageView6 = (ImageView) findViewById(R.id.operation_ch_reduce);
        this.mOperationCHReduce = imageView6;
        imageView6.setOnClickListener(this);
        this.mOperationCHReduce.setOnTouchListener(this.onTouchListener);
        ImageView imageView7 = (ImageView) findViewById(R.id.operation_ch_plus);
        this.mOperationCHPlus = imageView7;
        imageView7.setOnClickListener(this);
        this.mOperationCHPlus.setOnTouchListener(this.onTouchListener);
        this.mSTText = (TextView) findViewById(R.id.carmedia_st);
        this.mOperationRepeat = (ImageView) findViewById(R.id.operation_repeat);
        this.mOperationRand = (ImageView) findViewById(R.id.operation_rand);
        ImageView imageView8 = (ImageView) findViewById(R.id.operation_num_1);
        this.mOperationNum1 = imageView8;
        imageView8.setOnClickListener(this);
        this.mOperationNum1.setOnTouchListener(this.onTouchListener);
        ImageView imageView9 = (ImageView) findViewById(R.id.operation_num_2);
        this.mOperationNum2 = imageView9;
        imageView9.setOnClickListener(this);
        this.mOperationNum2.setOnTouchListener(this.onTouchListener);
        ImageView imageView10 = (ImageView) findViewById(R.id.operation_num_3);
        this.mOperationNum3 = imageView10;
        imageView10.setOnClickListener(this);
        this.mOperationNum3.setOnTouchListener(this.onTouchListener);
        ImageView imageView11 = (ImageView) findViewById(R.id.operation_num_4);
        this.mOperationNum4 = imageView11;
        imageView11.setOnClickListener(this);
        this.mOperationNum4.setOnTouchListener(this.onTouchListener);
        ImageView imageView12 = (ImageView) findViewById(R.id.operation_num_5);
        this.mOperationNum5 = imageView12;
        imageView12.setOnClickListener(this);
        this.mOperationNum5.setOnTouchListener(this.onTouchListener);
        ImageView imageView13 = (ImageView) findViewById(R.id.operation_num_6);
        this.mOperationNum6 = imageView13;
        imageView13.setOnClickListener(this);
        this.mOperationNum6.setOnTouchListener(this.onTouchListener);
        ImageView imageView14 = (ImageView) findViewById(R.id.operation_als);
        this.mOperationALS = imageView14;
        imageView14.setOnClickListener(this);
        this.mOperationALS.setOnTouchListener(this.onTouchListener);
        ImageView imageView15 = (ImageView) findViewById(R.id.operation_acs);
        this.mOperationACS = imageView15;
        imageView15.setOnClickListener(this);
        this.mOperationACS.setOnTouchListener(this.onTouchListener);
        ImageView imageView16 = (ImageView) findViewById(R.id.operation_audio);
        this.mOperationAUDIO = imageView16;
        imageView16.setOnClickListener(this);
        this.mOperationAUDIO.setOnTouchListener(this.onTouchListener);
        ImageView imageView17 = (ImageView) findViewById(R.id.operation_mute);
        this.mOperationMUTE = imageView17;
        imageView17.setOnClickListener(this);
        this.mOperationMUTE.setOnTouchListener(this.onTouchListener);
        ImageView imageView18 = (ImageView) findViewById(R.id.operation_scan);
        this.mOperationSCAN = imageView18;
        imageView18.setOnClickListener(this);
        this.mOperationSCAN.setOnTouchListener(this.onTouchListener);
        ImageView imageView19 = (ImageView) findViewById(R.id.operation_set);
        this.mOperationSet = imageView19;
        imageView19.setOnClickListener(this);
        this.mOperationSet.setOnTouchListener(this.onTouchListener);
        this.mRadioSystemIndex = getRadioSystemIndex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCarMenuView(byte[] bArr) {
        this.mMediaLayout.setVisibility(4);
        this.mMenuLayout.setVisibility(0);
        this.mSbMenuString.setLength(0);
        for (int i = 1; i < bArr.length; i++) {
            this.mSbMenuString.append((char) bArr[i]);
            if (((char) bArr[i]) == 0) {
                break;
            }
        }
        this.mMenuText.setText(this.mSbMenuString.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitleAndRightIcon() {
        int i = this.mCarMediaMode;
        if (17 == i) {
            this.mRightIcon.setImageResource(R.drawable.lexus_carmedia_aux);
            return;
        }
        if (i == 0 || 1 == i || 2 == i) {
            this.mRightIcon.setImageResource(R.drawable.lexus_carmedia_radio);
            return;
        }
        if (15 == i) {
            this.mRightIcon.setImageResource(R.drawable.lexus_carmedia_cdc);
            return;
        }
        if (16 == i) {
            this.mRightIcon.setImageResource(R.drawable.lexus_carmedia_cd);
            return;
        }
        if (18 == i) {
            this.mRightIcon.setImageResource(R.drawable.lexus_carmedia_usb);
        } else if (19 == i) {
            this.mRightIcon.setImageResource(R.drawable.lexus_carmedia_phone);
        } else if (20 == i) {
            this.mRightIcon.setImageResource(R.drawable.lexus_carmedia_bt);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCarMediaView(byte[] bArr, boolean z) {
        float f;
        float f2;
        int i = 0;
        if (z) {
            this.mMediaLayout.setVisibility(0);
            this.mMenuLayout.setVisibility(4);
        }
        int i2 = bArr[0] & 255;
        if (17 == i2) {
            this.mText1.setText("AUX");
            this.mText2.setText(AppConfigParser.ITEM_TIP);
            this.mText3.setText(AppConfigParser.ITEM_TIP);
            this.mSTText.setVisibility(8);
            this.mOperationRepeat.setVisibility(8);
            this.mOperationRand.setVisibility(8);
            this.mDiscLayout.setVisibility(4);
            return;
        }
        float f3 = 0.1f;
        if (i2 == 0) {
            this.mText1.setText("FM1");
            int i3 = (((bArr[2] & 255) << 8) | (bArr[3] & 255)) - 1;
            int i4 = this.mRadioSystemIndex;
            if (i4 == 1 || i4 == 4) {
                f2 = 87.5f;
            } else if (i4 == 2) {
                f3 = 0.2f;
                f2 = 87.5f;
            } else if (i4 == 3) {
                f2 = 87.7f;
            } else {
                f2 = 87.5f;
                f3 = 0.05f;
            }
            if (i3 >= 0) {
                this.mText3.setText(String.format("%.2f", Float.valueOf(f2 + (i3 * f3))) + " MHZ");
            }
            int i5 = bArr[4] & 255;
            if (i5 >= 1 && i5 <= 6) {
                this.mText2.setText("CH" + String.valueOf(i5));
            } else {
                this.mText2.setText(AppConfigParser.ITEM_TIP);
            }
            this.mSTText.setVisibility((bArr[5] & 1) != 1 ? 8 : 0);
            this.mOperationRepeat.setVisibility(8);
            this.mOperationRand.setVisibility(8);
            this.mDiscLayout.setVisibility(4);
            return;
        }
        if (1 == i2) {
            this.mText1.setText("FM2");
            int i6 = (((bArr[2] & 255) << 8) | (bArr[3] & 255)) - 1;
            int i7 = this.mRadioSystemIndex;
            if (i7 == 1 || i7 == 4) {
                f = 87.5f;
            } else if (i7 == 2) {
                f3 = 0.2f;
                f = 87.5f;
            } else if (i7 == 3) {
                f = 87.7f;
            } else {
                f = 87.5f;
                f3 = 0.05f;
            }
            if (i6 >= 0) {
                this.mText3.setText(String.format("%.2f", Float.valueOf(f + (i6 * f3))) + " MHZ");
            }
            int i8 = bArr[4] & 255;
            if (i8 >= 1 && i8 <= 6) {
                this.mText2.setText("CH" + String.valueOf(i8));
            } else {
                this.mText2.setText(AppConfigParser.ITEM_TIP);
            }
            this.mSTText.setVisibility((bArr[5] & 1) != 1 ? 8 : 0);
            this.mOperationRepeat.setVisibility(8);
            this.mOperationRand.setVisibility(8);
            this.mDiscLayout.setVisibility(4);
            return;
        }
        if (2 == i2) {
            this.mText1.setText("AM");
            int i9 = (((bArr[2] & 255) << 8) | (bArr[3] & 255)) - 1;
            int i10 = 531;
            int i11 = 9;
            int i12 = this.mRadioSystemIndex;
            if (i12 == 2 || i12 == 3) {
                i10 = 530;
                i11 = 10;
            }
            if (i9 >= 0) {
                this.mText3.setText(String.valueOf(i10 + (i9 * i11)) + " KHZ");
            }
            int i13 = bArr[4] & 255;
            if (i13 >= 1 && i13 <= 6) {
                this.mText2.setText("CH" + String.valueOf(i13));
            } else {
                this.mText2.setText(AppConfigParser.ITEM_TIP);
            }
            this.mSTText.setVisibility(8);
            this.mOperationRepeat.setVisibility(8);
            this.mOperationRand.setVisibility(8);
            this.mDiscLayout.setVisibility(4);
            return;
        }
        int i14 = R.drawable.media_repeat_on;
        if (15 != i2) {
            if (16 == i2) {
                this.mText1.setText("CD");
                this.mText3.setText(String.format("%02d:%02d", Integer.valueOf(bArr[2] & 255), Integer.valueOf(bArr[3] & 255)));
                this.mText2.setText(String.format("T%02d", Integer.valueOf(bArr[4] & 255)));
                this.mSTText.setVisibility(8);
                ImageView imageView = this.mOperationRepeat;
                if ((bArr[5] & 1) != 1) {
                    i14 = R.drawable.media_repeat_off;
                }
                imageView.setBackgroundResource(i14);
                this.mOperationRepeat.setVisibility(0);
                this.mOperationRand.setBackgroundResource(((bArr[5] >> 1) & 1) == 1 ? R.drawable.media_rand_on : R.drawable.media_rand_off);
                this.mOperationRand.setVisibility(0);
                this.mDiscLayout.setVisibility(4);
                return;
            }
            if (18 == i2) {
                this.mText1.setText("USB");
                this.mText3.setText(String.format("%02d:%02d", Integer.valueOf(bArr[2] & 255), Integer.valueOf(bArr[3] & 255)));
                this.mText2.setText(String.format("T%02d", Integer.valueOf(bArr[4] & 255)));
                this.mSTText.setVisibility(8);
                ImageView imageView2 = this.mOperationRepeat;
                if ((bArr[5] & 1) != 1) {
                    i14 = R.drawable.media_repeat_off;
                }
                imageView2.setBackgroundResource(i14);
                this.mOperationRepeat.setVisibility(0);
                this.mOperationRand.setBackgroundResource(((bArr[5] >> 1) & 1) == 1 ? R.drawable.media_rand_on : R.drawable.media_rand_off);
                this.mOperationRand.setVisibility(0);
                this.mDiscLayout.setVisibility(4);
                return;
            }
            if (19 == i2) {
                this.mText1.setText("PHONE");
                this.mText2.setText(AppConfigParser.ITEM_TIP);
                this.mText3.setText(AppConfigParser.ITEM_TIP);
                this.mSTText.setVisibility(8);
                this.mOperationRepeat.setVisibility(8);
                this.mOperationRand.setVisibility(8);
                this.mDiscLayout.setVisibility(4);
                return;
            }
            if (20 == i2) {
                this.mText1.setText("BT");
                this.mText2.setText(AppConfigParser.ITEM_TIP);
                this.mText3.setText(String.format("%02d:%02d", Integer.valueOf(bArr[2] & 255), Integer.valueOf(bArr[3] & 255)));
                this.mSTText.setVisibility(8);
                this.mOperationRepeat.setVisibility(8);
                this.mOperationRand.setVisibility(8);
                this.mDiscLayout.setVisibility(4);
                return;
            }
            return;
        }
        int i15 = bArr[6] & 255;
        if (i15 >= 1 && i15 <= 6) {
            this.mText1.setText(String.format("CD%d", Integer.valueOf(i15)));
        } else {
            this.mText1.setText("CDC");
        }
        this.mText3.setText(String.format("%02d:%02d", Integer.valueOf(bArr[2] & 255), Integer.valueOf(bArr[3] & 255)));
        this.mText2.setText(String.format("T%02d", Integer.valueOf(bArr[4] & 255)));
        this.mSTText.setVisibility(8);
        ImageView imageView3 = this.mOperationRepeat;
        if ((bArr[5] & 1) != 1) {
            i14 = R.drawable.media_repeat_off;
        }
        imageView3.setBackgroundResource(i14);
        this.mOperationRepeat.setVisibility(0);
        this.mOperationRand.setBackgroundResource(((bArr[5] >> 1) & 1) == 1 ? R.drawable.media_rand_on : R.drawable.media_rand_off);
        this.mOperationRand.setVisibility(0);
        this.mDiscLayout.setVisibility(0);
        int i16 = bArr[5] >> 2;
        while (true) {
            ImageView[] imageViewArr = this.mDisc;
            if (i >= imageViewArr.length) {
                return;
            }
            if (((1 << i) & i16) == 0) {
                imageViewArr[i].setImageResource(R.drawable.media_disc_no);
            } else if (i15 == i + 1) {
                imageViewArr[i].setImageResource(R.drawable.media_disc_cur);
            } else {
                imageViewArr[i].setImageResource(R.drawable.media_disc_in);
            }
            i++;
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.mcuServiceManager.unregCallback(this.dataListener);
        try {
            unbindService(this.mConnection);
            unregisterReceiver(this.mReceiver);
        } catch (Exception e) {
            e.printStackTrace();
        }
        unregisterMediaButton();
        super.onDestroy();
        McuUtils.getInstance().sendOriginalVehicleStata(0);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        Messenger messenger = this.mServiceMessenger;
        if (messenger != null && this.mCarMediaMode != 17) {
            try {
                messenger.send(Message.obtain(null, 8, 1));
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        super.onResume();
        McuUtils.getInstance().sendOriginalVehicleStata(1);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 21 && keyCode != 22 && keyCode != 66) {
            if (keyCode != 71) {
                if (keyCode != 72 && keyCode != 296 && keyCode != 297) {
                    return super.dispatchKeyEvent(keyEvent);
                }
            } else if (keyEvent.getAction() == 1) {
                onBackPressed();
            }
        }
        return true;
    }

    private void registerMediaButton() {
        MediaSession mediaSession = new MediaSession(getApplicationContext(), getPackageName());
        this.mMediaSession = mediaSession;
        if (mediaSession == null) {
            return;
        }
        mediaSession.setFlags(65539);
        this.mMediaSession.setActive(true);
        this.mMediaSession.setCallback(new MediaSession.Callback() { // from class: com.can.ui.CarMedia.4
            @Override // android.media.session.MediaSession.Callback
            public boolean onMediaButtonEvent(Intent intent) {
                KeyEvent keyEvent;
                String action = intent.getAction();
                Log.d(CarMedia.TAG, "onMediaButtonEvent:" + action);
                if (action.equals("android.intent.action.MEDIA_BUTTON") && (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) != null) {
                    keyEvent.getKeyCode();
                    keyEvent.getAction();
                    keyEvent.getEventTime();
                    return true;
                }
                return super.onMediaButtonEvent(intent);
            }
        });
    }

    private void unregisterMediaButton() {
        MediaSession mediaSession = this.mMediaSession;
        if (mediaSession != null) {
            mediaSession.setCallback(null);
            this.mMediaSession.release();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.operation_set) {
            showRadioSystemList();
        }
    }

    static /* synthetic */ boolean lambda$new$0(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (view.getId() == R.id.operation_fm) {
                McuUtils.getInstance().sendCrownKeyCmd(16);
            } else if (view.getId() == R.id.operation_am) {
                McuUtils.getInstance().sendCrownKeyCmd(15);
            } else if (view.getId() == R.id.operation_media) {
                McuUtils.getInstance().sendCrownKeyCmd(17);
            } else if (view.getId() == R.id.operation_prev) {
                McuUtils.getInstance().sendCrownKeyCmd(19);
            } else if (view.getId() == R.id.operation_next) {
                McuUtils.getInstance().sendCrownKeyCmd(20);
            } else if (view.getId() == R.id.operation_ch_reduce) {
                McuUtils.getInstance().sendCrownKeyCmd(21);
            } else if (view.getId() == R.id.operation_ch_plus) {
                McuUtils.getInstance().sendCrownKeyCmd(22);
            } else if (view.getId() == R.id.operation_scan) {
                McuUtils.getInstance().sendCrownKeyCmd(23);
            } else if (view.getId() == R.id.operation_als) {
                McuUtils.getInstance().sendCrownKeyCmd(24);
            } else if (view.getId() == R.id.operation_acs) {
                McuUtils.getInstance().sendCrownKeyCmd(25);
            } else if (view.getId() == R.id.operation_mute) {
                McuUtils.getInstance().sendCrownKeyCmd(26);
            } else if (view.getId() == R.id.operation_audio) {
                McuUtils.getInstance().sendCrownKeyCmd(27);
            } else if (view.getId() == R.id.operation_num_1) {
                McuUtils.getInstance().sendCrownKeyCmd(31);
            } else if (view.getId() == R.id.operation_num_2) {
                McuUtils.getInstance().sendCrownKeyCmd(32);
            } else if (view.getId() == R.id.operation_num_3) {
                McuUtils.getInstance().sendCrownKeyCmd(33);
            } else if (view.getId() == R.id.operation_num_4) {
                McuUtils.getInstance().sendCrownKeyCmd(34);
            } else if (view.getId() == R.id.operation_num_5) {
                McuUtils.getInstance().sendCrownKeyCmd(35);
            } else if (view.getId() == R.id.operation_num_6) {
                McuUtils.getInstance().sendCrownKeyCmd(36);
            }
        } else if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && (view.getId() == R.id.operation_fm || view.getId() == R.id.operation_am || view.getId() == R.id.operation_media || view.getId() == R.id.operation_prev || view.getId() == R.id.operation_next || view.getId() == R.id.operation_ch_reduce || view.getId() == R.id.operation_ch_plus || view.getId() == R.id.operation_scan || view.getId() == R.id.operation_als || view.getId() == R.id.operation_acs || view.getId() == R.id.operation_mute || view.getId() == R.id.operation_audio || view.getId() == R.id.operation_num_1 || view.getId() == R.id.operation_num_2 || view.getId() == R.id.operation_num_3 || view.getId() == R.id.operation_num_4 || view.getId() == R.id.operation_num_5 || view.getId() == R.id.operation_num_6)) {
            McuUtils.getInstance().sendCrownKeyCmd(0);
        }
        return false;
    }

    private void showRadioSystemList() {
        RadioSystemDialog radioSystemDialog = new RadioSystemDialog(this);
        radioSystemDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.can.ui.CarMedia.5
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                CarMedia carMedia = CarMedia.this;
                carMedia.mRadioSystemIndex = carMedia.getRadioSystemIndex();
                McuUtils.getInstance().sendQueryCmd(30, 0);
            }
        });
        radioSystemDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRadioSystemIndex() {
        try {
            return DataConvert.getIntEx(this, "RadioSystemIndex", 0);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }
}
