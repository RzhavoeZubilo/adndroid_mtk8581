package com.can.ui;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.can.activity.R;
import com.can.assist.CanContant;
import com.can.assist.CanXml;
import com.can.platforms.CanApp;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class CanActivity extends Activity implements CanContant {
    public static String mStrFragment = "";
    protected final String TAG = getClass().getName();

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_can);
        if (CanApp.sIsFirstStart) {
            boolean z = false;
            CanApp.sIsFirstStart = false;
            Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) getSystemService("activity")).getRunningServices(100).iterator();
            while (it.hasNext()) {
                if (it.next().service.getClassName().equals(CanContant.CAN_SERVICE_CLASS_NAME)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                startService(new Intent(CanContant.ACTION_CAN_SERVICE));
            }
        }
        mStrFragment = CanXml.getInstance(getApplicationContext()).getFrament();
        Fragment fragment = (Fragment) CanXml.getInstance(this).Create(mStrFragment);
        if (fragment != null) {
            ShowPage(fragment, fragment.getClass().getName());
        } else {
            Log.i(this.TAG, "get page is empty!");
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    private void ShowPage(Fragment fragment, String str) {
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.add(R.id.fragment_container, fragment, str);
        fragmentTransactionBeginTransaction.commit();
    }
}
