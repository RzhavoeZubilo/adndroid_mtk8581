package com.can.ui.draw;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.can.activity.R;
import com.can.activity.databinding.LayoutRadioSystemBinding;
import com.can.tool.DataConvert;

/* JADX INFO: loaded from: classes.dex */
public class RadioSystemDialog extends Dialog implements View.OnClickListener {
    private LayoutRadioSystemBinding binding;

    public RadioSystemDialog(Context context) {
        this(context, R.style.dialog_style);
    }

    public RadioSystemDialog(Context context, int i) {
        super(context, i);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LayoutRadioSystemBinding layoutRadioSystemBindingInflate = LayoutRadioSystemBinding.inflate(getLayoutInflater());
        this.binding = layoutRadioSystemBindingInflate;
        setContentView(layoutRadioSystemBindingInflate.getRoot());
        initViews();
    }

    private void initViews() {
        this.binding.radioSystemChina.setOnClickListener(this);
        this.binding.radioSystemAmerica1.setOnClickListener(this);
        this.binding.radioSystemAmerica2.setOnClickListener(this);
        this.binding.radioSystemSouthAmerica.setOnClickListener(this);
        this.binding.radioSystemMiddleEast.setOnClickListener(this);
        setSelectViewByRadioSystemIndex(getRadioSystemIndex());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.radio_system_china) {
            putRadioSystemIndex(0);
            setSelectViewByRadioSystemIndex(0);
        } else if (view.getId() == R.id.radio_system_america1) {
            putRadioSystemIndex(1);
            setSelectViewByRadioSystemIndex(1);
        } else if (view.getId() == R.id.radio_system_america2) {
            putRadioSystemIndex(2);
            setSelectViewByRadioSystemIndex(2);
        } else if (view.getId() == R.id.radio_system_south_america) {
            putRadioSystemIndex(3);
            setSelectViewByRadioSystemIndex(3);
        } else if (view.getId() == R.id.radio_system_middle_east) {
            putRadioSystemIndex(4);
            setSelectViewByRadioSystemIndex(4);
        }
        dismiss();
    }

    private void setSelectViewByRadioSystemIndex(int i) {
        this.binding.radioSystemChina.setSelected(i == 0);
        this.binding.radioSystemAmerica1.setSelected(i == 1);
        this.binding.radioSystemAmerica2.setSelected(i == 2);
        this.binding.radioSystemSouthAmerica.setSelected(i == 3);
        this.binding.radioSystemMiddleEast.setSelected(i == 4);
    }

    private int getRadioSystemIndex() {
        try {
            return DataConvert.getIntEx(getContext(), "RadioSystemIndex", 0);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private void putRadioSystemIndex(int i) {
        try {
            DataConvert.putInt(getContext(), "RadioSystemIndex", i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
