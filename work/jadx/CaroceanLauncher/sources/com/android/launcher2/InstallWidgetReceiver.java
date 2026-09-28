package com.android.launcher2;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.yecon.launcher1.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class InstallWidgetReceiver {
    public static final String ACTION_INSTALL_WIDGET = "com.android.launcher.action.INSTALL_WIDGET";
    public static final String ACTION_SUPPORTS_CLIPDATA_MIMETYPE = "com.android.launcher.action.SUPPORTS_CLIPDATA_MIMETYPE";
    public static final String EXTRA_APPWIDGET_COMPONENT = "com.android.launcher.extra.widget.COMPONENT";
    public static final String EXTRA_APPWIDGET_CONFIGURATION_DATA = "com.android.launcher.extra.widget.CONFIGURATION_DATA";
    public static final String EXTRA_APPWIDGET_CONFIGURATION_DATA_MIME_TYPE = "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE";

    public static class WidgetMimeTypeHandlerData {
        public ResolveInfo resolveInfo;
        public AppWidgetProviderInfo widgetInfo;

        public WidgetMimeTypeHandlerData(ResolveInfo resolveInfo, AppWidgetProviderInfo appWidgetProviderInfo) {
            this.resolveInfo = resolveInfo;
            this.widgetInfo = appWidgetProviderInfo;
        }
    }

    public static class WidgetListAdapter implements ListAdapter, DialogInterface.OnClickListener {
        private List<WidgetMimeTypeHandlerData> mActivities;
        private ClipData mClipData;
        private LayoutInflater mInflater;
        private Launcher mLauncher;
        private String mMimeType;
        private CellLayout mTargetLayout;
        private int[] mTargetLayoutPos;
        private int mTargetLayoutScreen;

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        }

        public WidgetListAdapter(Launcher launcher, String str, ClipData clipData, List<WidgetMimeTypeHandlerData> list, CellLayout cellLayout, int i, int[] iArr) {
            this.mLauncher = launcher;
            this.mMimeType = str;
            this.mClipData = clipData;
            this.mActivities = list;
            this.mTargetLayout = cellLayout;
            this.mTargetLayoutScreen = i;
            this.mTargetLayoutPos = iArr;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mActivities.size();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Context context = viewGroup.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (this.mInflater == null) {
                this.mInflater = LayoutInflater.from(context);
            }
            if (view == null) {
                view = this.mInflater.inflate(R.layout.external_widget_drop_list_item, viewGroup, false);
            }
            WidgetMimeTypeHandlerData widgetMimeTypeHandlerData = this.mActivities.get(i);
            ResolveInfo resolveInfo = widgetMimeTypeHandlerData.resolveInfo;
            AppWidgetProviderInfo appWidgetProviderInfo = widgetMimeTypeHandlerData.widgetInfo;
            ((ImageView) view.findViewById(R.id.provider_icon)).setImageDrawable(resolveInfo.loadIcon(packageManager));
            CharSequence charSequenceLoadLabel = resolveInfo.loadLabel(packageManager);
            int[] iArr = new int[2];
            this.mTargetLayout.rectToCell(appWidgetProviderInfo.minWidth, appWidgetProviderInfo.minHeight, iArr);
            ((TextView) view.findViewById(R.id.provider)).setText(context.getString(R.string.external_drop_widget_pick_format, charSequenceLoadLabel, Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1])));
            return view;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return this.mActivities.isEmpty();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.mLauncher.addAppWidgetFromDrop(new PendingAddWidgetInfo(this.mActivities.get(i).widgetInfo, this.mMimeType, this.mClipData), -100L, this.mTargetLayoutScreen, null, null, this.mTargetLayoutPos);
        }
    }
}
