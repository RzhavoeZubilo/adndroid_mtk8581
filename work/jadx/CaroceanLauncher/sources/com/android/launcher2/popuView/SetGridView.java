package com.android.launcher2.popuView;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.IPowerManager;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.android.launcher2.uitl.L;
import com.carocean.navicar.YeconMediaStore;
import com.yecon.launcher1.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SetGridView extends GridView implements AdapterView.OnItemClickListener {
    public static final int BKL_HIGH = 0;
    public static final int BKL_LOW = 2;
    public static final int BKL_MID = 1;
    public static final int BKL_OFF = 3;
    public static final int BRIGHTNESS_LOW = 70;
    public static final int BRIGHTNESS_MID = 180;
    public static final int BRIGHTNESS_OFF = -1;
    private static final boolean DBG_BKL = true;
    public static final String SYSTEM_REBOOT_LAUNCHER = "system_reboot_launcher";
    public static final String TAG = "SetGridView";
    public static boolean mLastStateIsOff = false;
    public static int mResCnt;
    int[] fbox_image_array_top;
    private int[] fbox_name_array_top;
    private Context mContext;
    private ImageView mImageView;
    private RelativeLayout mParent;
    private TextView mTextView;
    private boolean mWifiAPOnOff;
    PowerManager pm;
    IPowerManager power;
    private SimpleAdapter simperAdapter;
    private WifiManager wifiManager;
    public static final int BRIGHTNESS_HIGH = 240;
    public static final int[] BRIGHT_TAB = {BRIGHTNESS_HIGH, 180, 70, -1};
    public static final int[] IMAGE_TAB = {R.drawable.fbox_light_hight_down, R.drawable.fbox_light_auto_down, R.drawable.fbox_light_low_down};
    public static final int[] STRING_TAB = {R.string.fbox_light_hight_tx, R.string.fbox_light_medium_tx, R.string.fbox_light_low_tx};

    public static class GridItem {
        public static final int ACCELERATE = 4;
        public static final int AP = 1;
        public static final int BKL = 0;
        public static final int DATA = 3;
        public static final int RESET = 5;
        public static final int SETTINGS = 6;
        public static final int WLAN = 2;
    }

    public boolean setWifiApEnabled() {
        return false;
    }

    public SetGridView(Context context) {
        super(context);
        this.fbox_name_array_top = new int[]{R.string.fbox_light, R.string.fbox_ap, R.string.fbox_wlan, R.string.fbox_date, R.string.fbox_accelerate, R.string.fbox_reset, R.string.fbox_system_settings};
        this.fbox_image_array_top = new int[]{R.drawable.fbox_light_low, R.drawable.fbox_ap, R.drawable.fbox_wlan, R.drawable.fbox_date, R.drawable.fbox_accelerate, R.drawable.fbox_reset, R.drawable.fbox_sys_settings};
        this.mWifiAPOnOff = false;
        setOnItemClickListener(this);
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
    }

    public SetGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.fbox_name_array_top = new int[]{R.string.fbox_light, R.string.fbox_ap, R.string.fbox_wlan, R.string.fbox_date, R.string.fbox_accelerate, R.string.fbox_reset, R.string.fbox_system_settings};
        this.fbox_image_array_top = new int[]{R.drawable.fbox_light_low, R.drawable.fbox_ap, R.drawable.fbox_wlan, R.drawable.fbox_date, R.drawable.fbox_accelerate, R.drawable.fbox_reset, R.drawable.fbox_sys_settings};
        this.mWifiAPOnOff = false;
        this.mContext = context;
        initData(context);
        setOnItemClickListener(this);
        setAdapter(getMenuAdapter(this.fbox_name_array_top, this.fbox_image_array_top));
    }

    public void ResetAdapter() {
        setWlanImageResource();
        setBrightnessImageResource();
        setAdapter(getMenuAdapter(this.fbox_name_array_top, this.fbox_image_array_top));
    }

    public SetGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.fbox_name_array_top = new int[]{R.string.fbox_light, R.string.fbox_ap, R.string.fbox_wlan, R.string.fbox_date, R.string.fbox_accelerate, R.string.fbox_reset, R.string.fbox_system_settings};
        this.fbox_image_array_top = new int[]{R.drawable.fbox_light_low, R.drawable.fbox_ap, R.drawable.fbox_wlan, R.drawable.fbox_date, R.drawable.fbox_accelerate, R.drawable.fbox_reset, R.drawable.fbox_sys_settings};
        this.mWifiAPOnOff = false;
        setOnItemClickListener(this);
    }

    public void initData(Context context) {
        this.wifiManager = (WifiManager) context.getSystemService("wifi");
        IPowerManager iPowerManagerAsInterface = IPowerManager.Stub.asInterface(ServiceManager.getService("power"));
        this.power = iPowerManagerAsInterface;
        if (iPowerManagerAsInterface != null) {
            this.pm = (PowerManager) this.mContext.getSystemService("power");
        }
        setBrightnessImageResource();
        setBrightnessImageResource();
        setWlanImageResource();
    }

    private void setWlanImageResource() {
        if (this.wifiManager.isWifiEnabled()) {
            int[] iArr = this.fbox_image_array_top;
            iArr[1] = R.drawable.fbox_ap_normal;
            iArr[2] = R.drawable.fbox_wlan_down;
        } else {
            if (this.wifiManager.isWifiEnabled()) {
                return;
            }
            this.fbox_image_array_top[2] = R.drawable.fbox_wlan_normal;
        }
    }

    private void setBrightnessImageResource() {
        int iGetBacklightLevel = GetBacklightLevel();
        int[] iArr = {0, 100, YeconMediaStore.FileType.FILE_TYPE_MP2PS};
        if (iGetBacklightLevel >= iArr[0] && iGetBacklightLevel < iArr[1]) {
            this.fbox_name_array_top[0] = R.string.fbox_light;
            this.fbox_image_array_top[0] = R.drawable.fbox_light_low_down;
            mResCnt = 2;
        } else if (iGetBacklightLevel >= iArr[1] && iGetBacklightLevel < iArr[2]) {
            this.fbox_name_array_top[0] = R.string.fbox_light_medium_tx;
            this.fbox_image_array_top[0] = R.drawable.fbox_light_auto_down;
            mResCnt = 1;
        } else if (iGetBacklightLevel >= iArr[2]) {
            this.fbox_name_array_top[0] = R.string.fbox_light_hight_tx;
            this.fbox_image_array_top[0] = R.drawable.fbox_light_hight_down;
            mResCnt = 0;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        super.setOnItemClickListener(onItemClickListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 2) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean RebootSystem() {
        try {
            this.power.reboot(true, "", false);
            return true;
        } catch (RemoteException e) {
            L.e(TAG, "RemoteException when RebootSystem: ", e);
            return false;
        }
    }

    public int GetBacklightLevel() {
        return Settings.System.getInt(this.mContext.getContentResolver(), "screen_brightness", 55);
    }

    public int SetBacklightMode() {
        int iGetBacklightLevel = GetBacklightLevel();
        if (mLastStateIsOff) {
            mLastStateIsOff = false;
            mResCnt = 1;
            L.d(TAG, "Last state is OFF,so change to MID...");
            iGetBacklightLevel = 181;
        } else if (iGetBacklightLevel == 181) {
            mResCnt = 0;
            iGetBacklightLevel = BRIGHT_TAB[0];
            L.d(TAG, "Re-loop,set to HIGH...");
        } else {
            int i = mResCnt;
            if (i == 0) {
                mResCnt = 1;
                iGetBacklightLevel = BRIGHT_TAB[1];
            } else if (i == 1) {
                mResCnt = 2;
                iGetBacklightLevel = BRIGHT_TAB[2];
            } else if (i == 2) {
                mResCnt = 3;
                iGetBacklightLevel = BRIGHT_TAB[3];
            }
        }
        if (mResCnt >= 3) {
            mResCnt = 2;
        }
        if (iGetBacklightLevel < 0) {
            Settings.System.putInt(this.mContext.getContentResolver(), "screen_brightness", 70);
            mLastStateIsOff = true;
            L.d(TAG, "Jade, turn OFF BKL by Driver...");
        } else {
            Settings.System.putInt(this.mContext.getContentResolver(), "screen_brightness", iGetBacklightLevel);
        }
        return mResCnt;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        L.v("hede", view + "   this position is " + view.getId() + "&&&&" + i);
        RelativeLayout relativeLayout = (RelativeLayout) adapterView.getChildAt(i);
        this.mParent = relativeLayout;
        this.mImageView = (ImageView) relativeLayout.getChildAt(0);
        this.mTextView = (TextView) this.mParent.getChildAt(1);
        if (i == 0) {
            int iSetBacklightMode = SetBacklightMode();
            ImageView imageView = this.mImageView;
            int[] iArr = IMAGE_TAB;
            imageView.setImageResource(iArr[iSetBacklightMode]);
            TextView textView = this.mTextView;
            int[] iArr2 = STRING_TAB;
            textView.setText(iArr2[iSetBacklightMode]);
            this.fbox_name_array_top[0] = iArr2[iSetBacklightMode];
            this.fbox_image_array_top[0] = iArr[iSetBacklightMode];
            return;
        }
        if (i == 1) {
            if (setWifiApEnabled()) {
                int[] iArr3 = this.fbox_image_array_top;
                iArr3[1] = R.drawable.fbox_ap_down;
                iArr3[2] = R.drawable.fbox_wlan_normal;
            } else {
                this.fbox_image_array_top[1] = R.drawable.fbox_ap_normal;
            }
            setAdapter(getMenuAdapter(this.fbox_name_array_top, this.fbox_image_array_top));
            this.simperAdapter.notifyDataSetChanged();
            return;
        }
        if (i != 2) {
            if (i == 4) {
                clearMemory();
                return;
            }
            if (i == 5) {
                RebootSystem();
                return;
            } else {
                if (i != 6) {
                    return;
                }
                this.mContext.startActivity(new Intent("android.settings.SETTINGS"));
                return;
            }
        }
        L.v(this.wifiManager.getWifiState() + "&&&&&" + this.wifiManager.isWifiEnabled());
        int wifiState = this.wifiManager.getWifiState();
        WifiManager wifiManager = this.wifiManager;
        if (wifiState != 2) {
            int wifiState2 = wifiManager.getWifiState();
            WifiManager wifiManager2 = this.wifiManager;
            if (wifiState2 == 0) {
                return;
            }
            int wifiState3 = wifiManager2.getWifiState();
            WifiManager wifiManager3 = this.wifiManager;
            if (wifiState3 == 3) {
                wifiManager3.setWifiEnabled(false);
                this.mImageView.setImageResource(R.drawable.fbox_wlan_normal);
                this.fbox_image_array_top[2] = R.drawable.fbox_wlan_normal;
            } else {
                int wifiState4 = wifiManager3.getWifiState();
                WifiManager wifiManager4 = this.wifiManager;
                if (wifiState4 == 1 || wifiManager4.getWifiState() == 4) {
                    this.wifiManager.setWifiEnabled(true);
                    this.mImageView.setImageResource(R.drawable.fbox_wlan_down);
                    int[] iArr4 = this.fbox_image_array_top;
                    iArr4[2] = R.drawable.fbox_wlan_down;
                    iArr4[1] = R.drawable.fbox_ap_normal;
                    this.mWifiAPOnOff = false;
                }
            }
            setAdapter(getMenuAdapter(this.fbox_name_array_top, this.fbox_image_array_top));
            this.simperAdapter.notifyDataSetChanged();
        }
    }

    private ListAdapter getMenuAdapter(int[] iArr, int[] iArr2) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iArr.length; i++) {
            HashMap map = new HashMap();
            map.put("itemImage", Integer.valueOf(iArr2[i]));
            map.put("itemText", this.mContext.getResources().getString(iArr[i]));
            arrayList.add(map);
        }
        SimpleAdapter simpleAdapter = new SimpleAdapter(this.mContext, arrayList, R.layout.fbox_menu, new String[]{"itemImage", "itemText"}, new int[]{R.id.item_image, R.id.item_text});
        this.simperAdapter = simpleAdapter;
        return simpleAdapter;
    }

    private void clear(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (int i = 0; i < runningAppProcesses.size(); i++) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = runningAppProcesses.get(i);
                System.out.println("pid---->>>>>>>" + runningAppProcessInfo.pid);
                System.out.println("processName->> " + runningAppProcessInfo.processName);
                System.out.println("importance-->>" + runningAppProcessInfo.importance);
                String[] strArr = runningAppProcessInfo.pkgList;
                if (runningAppProcessInfo.importance > 300) {
                    for (String str : strArr) {
                        activityManager.killBackgroundProcesses(str);
                    }
                }
            }
        }
    }

    private void clearMemory() {
        int i;
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        activityManager.getRunningServices(100);
        long availMemory = getAvailMemory(this.mContext);
        String str = SystemProperties.get("persist.sys.maps", "nothing");
        if (str.equals("nothing")) {
            str = "$$$$$$$$$$$$$$$$#$$$$$$$$$$$$";
        }
        if (runningAppProcesses != null) {
            i = 0;
            for (int i2 = 0; i2 < runningAppProcesses.size(); i2++) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = runningAppProcesses.get(i2);
                if (runningAppProcessInfo.importance > 200) {
                    String[] strArr = runningAppProcessInfo.pkgList;
                    for (int i3 = 0; i3 < strArr.length; i3++) {
                        if (strArr[i3].indexOf(str.split("#")[0]) == -1) {
                            activityManager.killBackgroundProcesses(strArr[i3]);
                            i++;
                        }
                    }
                }
            }
        } else {
            i = 0;
        }
        Toast.makeText(this.mContext, getResources().getString(R.string.fbox_clear_memorry, Integer.valueOf(i), Long.valueOf(getAvailMemory(this.mContext) - availMemory)), 1).show();
    }

    private long getAvailMemory(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.availMem / 1048576;
    }
}
