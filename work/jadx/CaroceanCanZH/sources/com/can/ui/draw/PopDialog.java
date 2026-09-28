package com.can.ui.draw;

import android.app.DialogFragment;
import android.content.Context;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.can.activity.R;
import com.can.platforms.AppConfigParser;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class PopDialog extends DialogFragment implements View.OnClickListener, AdapterView.OnItemClickListener, SeekBar.OnSeekBarChangeListener {
    private onCancelListener mCancelListener;
    private OnConfirmListener mConfirmListener;
    private String mStrTitle;
    private E_POPDIALOG_TYPE mePopDialogType;
    private int mIndexImage = 0;
    private String mStrText = AppConfigParser.ITEM_TIP;
    private ImageView mObjImageViewContent = null;
    private TextView mObjTextViewContent = null;
    private TextView mObjTextViewTips = null;
    private TextView mObjTextViewSure = null;
    private TextView mObjTextViewCancel = null;
    private ListView mObjListInfo = null;
    private listAdapter mObjlistAdapter = null;
    private SeekBar mObjSeekBar = null;
    private TextView mObjSeekBarText = null;
    private int misel = 0;
    private int miSeekbarStep = 0;
    private int miSeekOffset = 0;
    private int miSeekbarMax = 0;
    private int miSeekbarPos = 0;
    private String mStrseekbar = AppConfigParser.ITEM_TIP;
    private ArrayList<String> mArrayList = new ArrayList<>();

    public enum E_POPDIALOG_TYPE {
        ePopDialog_choose,
        ePopDialog_carset_list,
        ePopDialog_carset_seekbar,
        ePopDialog_carset_text
    }

    public interface OnConfirmListener {
        void onConfirm();

        void onSeekVal(int i);

        void onSelPos(int i);
    }

    public interface onCancelListener {
        void onCancel();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    public PopDialog(String str, E_POPDIALOG_TYPE e_popdialog_type) {
        this.mStrTitle = AppConfigParser.ITEM_TIP;
        this.mStrTitle = str;
        this.mePopDialogType = e_popdialog_type;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        setStyle(2, R.style.popdialogtheme);
        super.onCreate(bundle);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.mePopDialogType == E_POPDIALOG_TYPE.ePopDialog_choose) {
            View viewInflate = layoutInflater.inflate(R.layout.pop_dialog, viewGroup, false);
            this.mObjTextViewTips = (TextView) viewInflate.findViewById(R.id.textview_title);
            TextView textView = (TextView) viewInflate.findViewById(R.id.textview_yes);
            this.mObjTextViewSure = textView;
            textView.setOnClickListener(this);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.textview_no);
            this.mObjTextViewCancel = textView2;
            textView2.setOnClickListener(this);
            this.mObjTextViewTips.setText(this.mStrTitle);
            this.mObjTextViewTips.setMovementMethod(ScrollingMovementMethod.getInstance());
            return viewInflate;
        }
        if (this.mePopDialogType == E_POPDIALOG_TYPE.ePopDialog_carset_list) {
            View viewInflate2 = layoutInflater.inflate(R.layout.pop_dailog_v1, viewGroup, false);
            TextView textView3 = (TextView) viewInflate2.findViewById(R.id.pop_dailog_title);
            this.mObjTextViewTips = textView3;
            textView3.setText(this.mStrTitle);
            this.mObjlistAdapter = new listAdapter(getActivity());
            ListView listView = (ListView) viewInflate2.findViewById(R.id.pop_dailog_list_info);
            this.mObjListInfo = listView;
            listView.setAdapter((ListAdapter) this.mObjlistAdapter);
            this.mObjListInfo.setOnItemClickListener(this);
            return viewInflate2;
        }
        if (this.mePopDialogType == E_POPDIALOG_TYPE.ePopDialog_carset_seekbar) {
            View viewInflate3 = layoutInflater.inflate(R.layout.pop_dailog_v2, viewGroup, false);
            TextView textView4 = (TextView) viewInflate3.findViewById(R.id.pop_dailog_v2_title);
            this.mObjTextViewTips = textView4;
            textView4.setText(this.mStrTitle);
            this.mObjSeekBar = (SeekBar) viewInflate3.findViewById(R.id.pop_dailog_seekbar);
            this.mObjSeekBarText = (TextView) viewInflate3.findViewById(R.id.pop_dailog_seekbar_val);
            this.mObjSeekBar.setOnSeekBarChangeListener(this);
            SeekBar seekBar = this.mObjSeekBar;
            if (seekBar == null || this.mObjSeekBarText == null) {
                return viewInflate3;
            }
            seekBar.setMax(this.miSeekbarMax);
            this.mObjSeekBar.setProgress(this.miSeekbarPos);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append((this.miSeekbarPos * this.miSeekbarStep) + this.miSeekOffset);
            stringBuffer.append(this.mStrseekbar);
            this.mObjSeekBarText.setText(stringBuffer.toString());
            return viewInflate3;
        }
        if (this.mePopDialogType != E_POPDIALOG_TYPE.ePopDialog_carset_text) {
            return null;
        }
        View viewInflate4 = layoutInflater.inflate(R.layout.pop_dailog_v3, viewGroup, false);
        TextView textView5 = (TextView) viewInflate4.findViewById(R.id.pop_dailog_v3_title);
        this.mObjTextViewTips = textView5;
        textView5.setText(this.mStrTitle);
        TextView textView6 = (TextView) viewInflate4.findViewById(R.id.pop_dailog_text);
        this.mObjTextViewContent = textView6;
        textView6.setText(this.mStrText);
        this.mObjImageViewContent = (ImageView) viewInflate4.findViewById(R.id.pop_dailog_image);
        int identifier = getResources().getIdentifier("direction_" + this.mIndexImage, "drawable", "com.can.activity");
        if (identifier != -1) {
            this.mObjImageViewContent.setBackgroundResource(identifier);
            this.mObjImageViewContent.setVisibility(0);
            return viewInflate4;
        }
        this.mObjImageViewContent.setVisibility(4);
        return viewInflate4;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    public void putdata(ArrayList<String> arrayList, int i) {
        this.misel = i;
        this.mArrayList = arrayList;
    }

    public void setTextImageIndex(String str, int i) {
        this.mStrText = str;
        this.mIndexImage = i;
    }

    public void setSeekbarVal(int i, int i2, int i3, int i4, String str) {
        this.miSeekbarMax = i;
        this.miSeekbarPos = i2;
        this.miSeekOffset = i4;
        this.mStrseekbar = str;
        this.miSeekbarStep = i3;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        OnConfirmListener onConfirmListener;
        int id = view.getId();
        if (id == R.id.textview_no) {
            onCancelListener oncancellistener = this.mCancelListener;
            if (oncancellistener != null) {
                oncancellistener.onCancel();
            }
            dismiss();
            return;
        }
        if (id == R.id.textview_yes && (onConfirmListener = this.mConfirmListener) != null) {
            onConfirmListener.onConfirm();
            dismiss();
        }
    }

    public void updateData() {
        SeekBar seekBar;
        if (this.mePopDialogType == E_POPDIALOG_TYPE.ePopDialog_carset_text) {
            TextView textView = this.mObjTextViewContent;
            if (textView != null) {
                textView.setText(this.mStrText);
            }
            if (this.mObjImageViewContent != null) {
                int identifier = getResources().getIdentifier("direction_" + this.mIndexImage, "drawable", "com.can.activity");
                if (identifier != -1) {
                    this.mObjImageViewContent.setBackgroundResource(identifier);
                    this.mObjImageViewContent.setVisibility(0);
                    return;
                } else {
                    this.mObjImageViewContent.setVisibility(4);
                    return;
                }
            }
            return;
        }
        if (this.mePopDialogType == E_POPDIALOG_TYPE.ePopDialog_carset_list) {
            listAdapter listadapter = this.mObjlistAdapter;
            if (listadapter != null) {
                listadapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        if (this.mePopDialogType != E_POPDIALOG_TYPE.ePopDialog_carset_seekbar || (seekBar = this.mObjSeekBar) == null || this.mObjSeekBarText == null) {
            return;
        }
        seekBar.setMax(this.miSeekbarMax);
        this.mObjSeekBar.setProgress(this.miSeekbarPos);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((this.miSeekbarPos * this.miSeekbarStep) + this.miSeekOffset);
        stringBuffer.append(this.mStrseekbar);
        this.mObjSeekBarText.setText(stringBuffer.toString());
    }

    public class listAdapter extends BaseAdapter {
        private Context mObjContext;
        private LayoutInflater mObjInflater;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public listAdapter(Context context) {
            this.mObjContext = context;
            this.mObjInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return PopDialog.this.mArrayList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return PopDialog.this.mArrayList.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView;
            if (view == null) {
                view = this.mObjInflater.inflate(R.layout.pop_dailog_list, (ViewGroup) null);
                textView = (TextView) view.findViewById(R.id.pop_dailog_list_tx);
                view.setTag(textView);
            } else {
                textView = (TextView) view.getTag();
            }
            if (textView != null) {
                textView.setText((CharSequence) PopDialog.this.mArrayList.get(i));
                if (PopDialog.this.misel == i) {
                    textView.setBackgroundResource(R.drawable.list_info_s);
                } else {
                    textView.setBackgroundResource(R.drawable.list_info_n);
                }
            }
            return view;
        }
    }

    public void setOnConfirmListener(OnConfirmListener onConfirmListener) {
        this.mConfirmListener = onConfirmListener;
    }

    public void setonCancelListener(onCancelListener oncancellistener) {
        this.mCancelListener = oncancellistener;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.mConfirmListener != null) {
            this.misel = i;
            this.mObjlistAdapter.notifyDataSetChanged();
            this.mConfirmListener.onSelPos(i);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            if (this.mObjSeekBarText != null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append((this.miSeekbarStep * i) + this.miSeekOffset);
                stringBuffer.append(this.mStrseekbar);
                this.mObjSeekBarText.setText(stringBuffer.toString());
            }
            OnConfirmListener onConfirmListener = this.mConfirmListener;
            if (onConfirmListener != null) {
                onConfirmListener.onSeekVal((i * this.miSeekbarStep) + this.miSeekOffset);
            }
        }
    }
}
