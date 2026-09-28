package com.carocean.mcuserver;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.carocean.navicar.HandlerWeakReference;
import com.carocean.navicar.NaviUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class McuDataShowService extends Service {
    private static final int MSG_ID_DATA_PARSE = 10001;
    private static final int MSG_ID_START = 10000;
    private static final String TAG = "McuDataShowService";
    private McuDataShowAdapter adapter;
    private View floatView;
    private ListView mListView;
    private WindowManager mWindowManager;
    private WindowManager.LayoutParams wmParams;
    private ServiceHandler serviceHandler = new ServiceHandler(this);
    final Messenger mMessenger = new Messenger(this.serviceHandler);
    private long m_tiemcheck = System.currentTimeMillis();
    private int lastX = 0;
    private int lastY = 0;
    private int paramX = 0;
    private int paramY = 0;
    private ArrayList<String> dataList = new ArrayList<>();
    McuDataShowHandler.McuDataShowCallBack callBack = new McuDataShowHandler.McuDataShowCallBack() { // from class: com.carocean.mcuserver.McuDataShowService.3
        @Override // com.carocean.mcuserver.McuDataShowHandler.McuDataShowCallBack
        public void onDataReceived(McuDataShowHandler.DataDirection dataDirection, byte[] data) {
            Message msg = Message.obtain((Handler) null, McuDataShowService.MSG_ID_DATA_PARSE);
            String datastr = dataDirection.getValue() + "," + McuDataShowService.this.getTimeStr() + " ---> " + NaviUtil.HexUtils.bytesToHexString(data, 0, data.length, true);
            Bundle bundle = new Bundle();
            bundle.putString("data", datastr);
            msg.setData(bundle);
            if (McuDataShowService.this.serviceHandler != null) {
                McuDataShowService.this.serviceHandler.sendMessageDelayed(msg, 0L);
            }
        }
    };

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        createFloatView();
        McuDataShowHandler.getInstance().regCallback(this.callBack);
        McuDataShowHandler.getInstance().setMcuDataShow(true);
        Log.i(TAG, "onCreate");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        McuDataShowHandler.getInstance().setMcuDataShow(false);
        McuDataShowHandler.getInstance().unregCallback(this.callBack);
        ServiceHandler serviceHandler = this.serviceHandler;
        if (serviceHandler != null) {
            serviceHandler.removeMessages(MSG_ID_DATA_PARSE);
        }
        Log.i(TAG, "onDestroy");
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mMessenger.getBinder();
    }

    private void createFloatView() {
        this.mWindowManager = (WindowManager) getApplication().getSystemService("window");
        initWindowParams();
        LayoutInflater inflater = LayoutInflater.from(getApplication());
        View viewInflate = inflater.inflate(R.layout.mcu_data_show, (ViewGroup) null);
        this.floatView = viewInflate;
        this.mWindowManager.addView(viewInflate, this.wmParams);
        this.floatView.setOnTouchListener(new View.OnTouchListener() { // from class: com.carocean.mcuserver.McuDataShowService.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                int action = event.getAction();
                if (action == 0) {
                    McuDataShowService.this.lastX = (int) event.getRawX();
                    McuDataShowService.this.lastY = (int) event.getRawY();
                    McuDataShowService mcuDataShowService = McuDataShowService.this;
                    mcuDataShowService.paramX = mcuDataShowService.wmParams.x;
                    McuDataShowService mcuDataShowService2 = McuDataShowService.this;
                    mcuDataShowService2.paramY = mcuDataShowService2.wmParams.y;
                    McuDataShowService.this.m_tiemcheck = System.currentTimeMillis();
                    return false;
                }
                if (action == 1) {
                    System.currentTimeMillis();
                    long unused = McuDataShowService.this.m_tiemcheck;
                    return false;
                }
                if (action == 2) {
                    int dx = ((int) event.getRawX()) - McuDataShowService.this.lastX;
                    int dy = ((int) event.getRawY()) - McuDataShowService.this.lastY;
                    McuDataShowService.this.wmParams.x = McuDataShowService.this.paramX + dx;
                    McuDataShowService.this.wmParams.y = McuDataShowService.this.paramY + dy;
                    McuDataShowService.this.mWindowManager.updateViewLayout(McuDataShowService.this.floatView, McuDataShowService.this.wmParams);
                    return false;
                }
                return false;
            }
        });
        this.mListView = (ListView) this.floatView.findViewById(R.id.id_listView);
        McuDataShowAdapter mcuDataShowAdapter = new McuDataShowAdapter(this, this.dataList);
        this.adapter = mcuDataShowAdapter;
        this.mListView.setAdapter((ListAdapter) mcuDataShowAdapter);
        ImageView closeimg = (ImageView) this.floatView.findViewById(R.id.temperature_close);
        if (closeimg != null) {
            closeimg.setOnClickListener(new View.OnClickListener() { // from class: com.carocean.mcuserver.McuDataShowService.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    McuDataShowService.this.mWindowManager.removeView(McuDataShowService.this.floatView);
                    McuDataShowService.this.stopSelf();
                }
            });
        }
    }

    private void initWindowParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.wmParams = layoutParams;
        layoutParams.type = 2003;
        this.wmParams.format = 1;
        this.wmParams.flags = 8;
        this.wmParams.gravity = 51;
        this.wmParams.x = 30;
        this.wmParams.y = 0;
        this.wmParams.width = 720;
        this.wmParams.height = 480;
    }

    public String getTimeStr() {
        SimpleDateFormat mTimeFormat = new SimpleDateFormat("HH-mm-ss");
        Date date = new Date(System.currentTimeMillis());
        return mTimeFormat.format(date);
    }

    private static class ServiceHandler extends HandlerWeakReference<McuDataShowService> {
        public ServiceHandler(McuDataShowService object) {
            super(object);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Bundle bundle;
            McuDataShowService obj = (McuDataShowService) this.mWeakReference.get();
            if (obj != null && msg.what == McuDataShowService.MSG_ID_DATA_PARSE && (bundle = msg.getData()) != null) {
                String datastr = bundle.getString("data");
                if (obj.dataList.size() >= 7) {
                    obj.dataList.remove(0);
                }
                obj.dataList.add(datastr);
                obj.adapter.notifyDataSetChanged();
            }
        }
    }
}
