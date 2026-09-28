package com.carocean.mcuserver;

import android.content.Context;
import android.support.v4.view.InputDeviceCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class McuDataShowAdapter extends BaseAdapter {
    private static final String TAG = McuDataShowAdapter.class.getSimpleName();
    private ArrayList<String> dataList;
    private Context mContext;

    public static final class ViewHolder {
        public TextView title;
    }

    public McuDataShowAdapter(Context context, ArrayList<String> data) {
        this.mContext = context;
        this.dataList = data;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<String> arrayList = this.dataList;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        ArrayList<String> arrayList = this.dataList;
        if (arrayList == null) {
            return null;
        }
        return arrayList.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder;
        if (convertView == null) {
            holder = new ViewHolder();
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.list_item, (ViewGroup) null);
            holder.title = (TextView) convertView.findViewById(R.id.item_title);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        String datastr = this.dataList.get(position);
        String[] tmp = datastr.split(",");
        if (tmp.length == 2) {
            if (Integer.parseInt(tmp[0]) == McuDataShowHandler.DataDirection.SEND.getValue()) {
                holder.title.setTextColor(-16711936);
            } else {
                holder.title.setTextColor(InputDeviceCompat.SOURCE_ANY);
            }
            holder.title.setText(tmp[1]);
        }
        return convertView;
    }
}
