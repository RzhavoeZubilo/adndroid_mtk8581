package com.android.launcher2.popuView;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.SimpleAdapter;
import com.android.launcher2.uitl.Function;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MenuGridView extends GridView implements AdapterView.OnItemClickListener {
    int[] fbox_image_array_bottom;
    private int[] fbox_name_array_bottom;
    private Context mContext;

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        super.setOnItemClickListener(onItemClickListener);
    }

    public MenuGridView(Context context) {
        super(context);
        this.fbox_name_array_bottom = new int[]{R.string.fbox_car_settings, R.string.fbox_aux1, R.string.fbox_ipod};
        this.fbox_image_array_bottom = new int[]{R.drawable.fbox_car_settings, R.drawable.fbox_aux, R.drawable.fbox_ipod};
        setOnItemClickListener(this);
    }

    public MenuGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.fbox_name_array_bottom = new int[]{R.string.fbox_car_settings, R.string.fbox_aux1, R.string.fbox_ipod};
        this.fbox_image_array_bottom = new int[]{R.drawable.fbox_car_settings, R.drawable.fbox_aux, R.drawable.fbox_ipod};
        this.mContext = context;
        setOnItemClickListener(this);
        setAdapter(getMenuAdapter(this.fbox_name_array_bottom, this.fbox_image_array_bottom));
    }

    public MenuGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.fbox_name_array_bottom = new int[]{R.string.fbox_car_settings, R.string.fbox_aux1, R.string.fbox_ipod};
        this.fbox_image_array_bottom = new int[]{R.drawable.fbox_car_settings, R.drawable.fbox_aux, R.drawable.fbox_ipod};
        setOnItemClickListener(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 2) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        L.v("hede", view + "   this position is " + view.getId() + "&&&&" + i);
        if (i == 0) {
            L.v("hede", "this position is " + i);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setComponent(new ComponentName(Function.EASYLINK_PROXY_PACKAGE_NAME, "com.yecon.carsetting.FragmentTabAcitivity"));
            this.mContext.startActivity(intent);
            return;
        }
        if (i == 1) {
            L.v("hede", "menu this position is " + i);
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.addFlags(268435456);
            intent2.setComponent(new ComponentName("com.yecon.avin", "com.yecon.avin.AVInActivity"));
            this.mContext.startActivity(intent2);
            return;
        }
        if (i != 2) {
            return;
        }
        Intent intent3 = new Intent("android.intent.action.VIEW");
        intent3.addFlags(268435456);
        intent3.setComponent(new ComponentName("com.yecon.ipodplayer", "com.yecon.ipodplayer.MainActivity"));
        this.mContext.startActivity(intent3);
    }

    private ListAdapter getMenuAdapter(int[] iArr, int[] iArr2) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iArr.length; i++) {
            HashMap map = new HashMap();
            map.put("itemImage", Integer.valueOf(iArr2[i]));
            map.put("itemText", this.mContext.getResources().getString(iArr[i]));
            arrayList.add(map);
        }
        return new SimpleAdapter(this.mContext, arrayList, R.layout.fbox_menu, new String[]{"itemImage", "itemText"}, new int[]{R.id.item_image, R.id.item_text});
    }
}
