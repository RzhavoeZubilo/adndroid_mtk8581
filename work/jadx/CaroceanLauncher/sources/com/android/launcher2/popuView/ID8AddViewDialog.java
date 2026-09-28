package com.android.launcher2.popuView;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.android.launcher2.ApplicationInfo;
import com.yecon.launcher1.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ID8AddViewDialog extends Dialog {
    private static final String TAG = "ID8AddViewDialog";
    private ListAdapter listAdapter;
    private ArrayList<ApplicationInfo> mApps;
    private Context mContext;
    private AdapterView.OnItemClickListener mFileClick;
    private ListView mFileListView;
    private OnAppSelectedChangedListener onAppSelecteChangedListener;
    private int viewID;

    public interface OnAppSelectedChangedListener {
        void onAppSelectedChanged(int i, ApplicationInfo applicationInfo);
    }

    public ID8AddViewDialog(Context context, ArrayList<ApplicationInfo> arrayList) {
        super(context, R.style.dialog_car_flag);
        this.mFileListView = null;
        this.mFileClick = new AdapterView.OnItemClickListener() { // from class: com.android.launcher2.popuView.ID8AddViewDialog.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (ID8AddViewDialog.this.onAppSelecteChangedListener != null) {
                    ID8AddViewDialog.this.onAppSelecteChangedListener.onAppSelectedChanged(ID8AddViewDialog.this.viewID, (ApplicationInfo) ID8AddViewDialog.this.mApps.get(i));
                }
                ID8AddViewDialog.this.dismiss();
            }
        };
        this.mContext = context;
        this.mApps = arrayList;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.layout_id8_add_view);
        initViews();
    }

    private void initViews() {
        ListView listView = (ListView) findViewById(R.id.file_lv_list);
        this.mFileListView = listView;
        listView.setOnItemClickListener(this.mFileClick);
        ListAdapter listAdapter = new ListAdapter();
        this.listAdapter = listAdapter;
        this.mFileListView.setAdapter((android.widget.ListAdapter) listAdapter);
    }

    public void setViewID(int i) {
        this.viewID = i;
    }

    public void setOnAppSelecteChangedListener(OnAppSelectedChangedListener onAppSelectedChangedListener) {
        this.onAppSelecteChangedListener = onAppSelectedChangedListener;
    }

    private class ListAdapter extends BaseAdapter {
        private ViewHolder holder;

        private ListAdapter() {
            this.holder = null;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (ID8AddViewDialog.this.mApps != null) {
                return ID8AddViewDialog.this.mApps.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (ID8AddViewDialog.this.mApps != null) {
                return ID8AddViewDialog.this.mApps.get(i);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            if (ID8AddViewDialog.this.mApps != null) {
                return i;
            }
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                this.holder = new ViewHolder();
                view = LayoutInflater.from(ID8AddViewDialog.this.mContext).inflate(R.layout.layout_id8_add_view_item, (ViewGroup) null);
                this.holder.item_image = (ImageView) view.findViewById(R.id.item_image);
                this.holder.item_title = (TextView) view.findViewById(R.id.item_title);
                view.setTag(this.holder);
            } else {
                this.holder = (ViewHolder) view.getTag();
            }
            if (ID8AddViewDialog.this.mApps != null && i >= 0 && i < ID8AddViewDialog.this.mApps.size()) {
                this.holder.item_image.setImageBitmap(((ApplicationInfo) ID8AddViewDialog.this.mApps.get(i)).iconBitmap);
                this.holder.item_title.setText(((ApplicationInfo) ID8AddViewDialog.this.mApps.get(i)).title);
            }
            return view;
        }

        private class ViewHolder {
            ImageView item_image;
            TextView item_title;

            private ViewHolder() {
            }
        }
    }
}
