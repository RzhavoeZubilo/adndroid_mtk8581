package com.can.ui.draw;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.can.activity.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Spiner extends PopupWindow implements AdapterView.OnItemClickListener {
    private AbstractSpinerAdapter mAdapter;
    private Context mContext;
    private ListView mListView;
    private OnSpinerClickListener mSpinerClickListener;
    private int miIndex;

    public interface OnSpinerClickListener {
        void onSelPos(int i, int i2);
    }

    public Spiner(Context context) {
        super(context);
        this.miIndex = 0;
        this.mSpinerClickListener = null;
        this.mContext = context;
        init();
    }

    private void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.drawable.spiner_window_layout, (ViewGroup) null);
        setContentView(viewInflate);
        setWidth(-2);
        setHeight(-2);
        setFocusable(true);
        setBackgroundDrawable(new ColorDrawable(0));
        this.mListView = (ListView) viewInflate.findViewById(R.id.listview);
        AbstractSpinerAdapter abstractSpinerAdapter = new AbstractSpinerAdapter(this.mContext);
        this.mAdapter = abstractSpinerAdapter;
        this.mListView.setAdapter((ListAdapter) abstractSpinerAdapter);
        this.mListView.setOnItemClickListener(this);
    }

    public void refreshData(List<String> list, int i, int i2) {
        if (list != null && i != -1) {
            this.mAdapter.refreshData(list, i);
        }
        this.miIndex = i2;
        if (this.mAdapter.getCount() < 5) {
            setHeight(this.mAdapter.getCount() * 51);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        dismiss();
        OnSpinerClickListener onSpinerClickListener = this.mSpinerClickListener;
        if (onSpinerClickListener != null) {
            onSpinerClickListener.onSelPos(i, this.miIndex);
        }
    }

    public void setSpinerListener(OnSpinerClickListener onSpinerClickListener) {
        this.mSpinerClickListener = onSpinerClickListener;
    }

    public class AbstractSpinerAdapter extends BaseAdapter {
        private LayoutInflater mInflater;
        private List<String> mList = new ArrayList();
        public int mSelectItem = 0;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public AbstractSpinerAdapter(Context context) {
            init(context);
        }

        public void refreshData(List<String> list, int i) {
            this.mList = list;
            if (i < 0) {
                i = 0;
            }
            if (i >= list.size()) {
                i = this.mList.size() - 1;
            }
            this.mSelectItem = i;
        }

        private void init(Context context) {
            Spiner.this.mContext = context;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.mList.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            if (view == null) {
                view = this.mInflater.inflate(R.drawable.spiner_item_layout, (ViewGroup) null);
                viewHolder = new ViewHolder();
                viewHolder.mTextView = (TextView) view.findViewById(R.id.textView);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            viewHolder.mTextView.setText((String) getItem(i));
            return view;
        }

        public class ViewHolder {
            public TextView mTextView;

            public ViewHolder() {
            }
        }
    }
}
