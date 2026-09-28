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
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class CarFlagDialog extends Dialog {
    private static final String TAG = "CarFlagDialog";
    private ListAdapter listAdapter;
    private Context mContext;
    private AdapterView.OnItemClickListener mFileClick;
    private ListView mFileListView;
    private int[] mResId;
    private OnCarFlagChangedListener onCarFlagChangedListener;

    public interface OnCarFlagChangedListener {
        void onCarFlagChanged(int i);
    }

    public CarFlagDialog(Context context, int[] iArr) {
        super(context, R.style.dialog_car_flag);
        this.mFileListView = null;
        this.mFileClick = new AdapterView.OnItemClickListener() { // from class: com.android.launcher2.popuView.CarFlagDialog.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (CarFlagDialog.this.onCarFlagChangedListener != null) {
                    CarFlagDialog.this.onCarFlagChangedListener.onCarFlagChanged(i);
                }
                CarFlagDialog.this.dismiss();
            }
        };
        this.mContext = context;
        this.mResId = iArr;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setType(2003);
        setContentView(R.layout.layout_car_flag);
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

    public void setOnCarFlagChangedListener(OnCarFlagChangedListener onCarFlagChangedListener) {
        this.onCarFlagChangedListener = onCarFlagChangedListener;
    }

    private class ListAdapter extends BaseAdapter {
        private ViewHolder holder;

        private ListAdapter() {
            this.holder = null;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (CarFlagDialog.this.mResId != null) {
                return CarFlagDialog.this.mResId.length;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (CarFlagDialog.this.mResId != null) {
                return Integer.valueOf(CarFlagDialog.this.mResId[i]);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            if (CarFlagDialog.this.mResId != null) {
                return i;
            }
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                this.holder = new ViewHolder();
                view = LayoutInflater.from(CarFlagDialog.this.mContext).inflate(R.layout.layout_car_flag_item, (ViewGroup) null);
                this.holder.item_image = (ImageView) view.findViewById(R.id.item_image);
                view.setTag(this.holder);
            } else {
                this.holder = (ViewHolder) view.getTag();
            }
            if (CarFlagDialog.this.mResId != null && i >= 0 && i < CarFlagDialog.this.mResId.length) {
                this.holder.item_image.setImageResource(CarFlagDialog.this.mResId[i]);
            }
            return view;
        }

        private class ViewHolder {
            ImageView item_image;

            private ViewHolder() {
            }
        }
    }
}
