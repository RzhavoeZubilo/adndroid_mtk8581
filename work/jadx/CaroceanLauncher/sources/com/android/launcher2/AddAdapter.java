package com.android.launcher2;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.yecon.launcher1.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AddAdapter extends BaseAdapter {
    public static final int ITEM_APPLICATION = 2;
    public static final int ITEM_APPWIDGET = 1;
    public static final int ITEM_SHORTCUT = 0;
    public static final int ITEM_WALLPAPER = 3;
    private final LayoutInflater mInflater;
    private final ArrayList<ListItem> mItems;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public class ListItem {
        public final int actionTag;
        public final Drawable image;
        public final CharSequence text;

        public ListItem(Resources resources, int i, int i2, int i3) {
            this.text = resources.getString(i);
            if (i2 != -1) {
                this.image = resources.getDrawable(i2);
            } else {
                this.image = null;
            }
            this.actionTag = i3;
        }
    }

    public AddAdapter(Launcher launcher) {
        ArrayList<ListItem> arrayList = new ArrayList<>();
        this.mItems = arrayList;
        this.mInflater = (LayoutInflater) launcher.getSystemService("layout_inflater");
        arrayList.add(new ListItem(launcher.getResources(), R.string.group_wallpapers, R.mipmap.ic_launcher_wallpaper, 3));
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ListItem listItem = (ListItem) getItem(i);
        if (view == null) {
            view = this.mInflater.inflate(R.layout.add_list_item, viewGroup, false);
        }
        TextView textView = (TextView) view;
        textView.setTag(listItem);
        textView.setText(listItem.text);
        textView.setCompoundDrawablesWithIntrinsicBounds(listItem.image, (Drawable) null, (Drawable) null, (Drawable) null);
        return view;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mItems.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.mItems.get(i);
    }
}
