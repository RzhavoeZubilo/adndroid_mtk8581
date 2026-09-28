package com.android.launcher2.popuView;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.Button;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class AboutDialog extends Dialog {
    private int layoutId;
    private Context mContext;
    private Button mDissButton;

    public AboutDialog(Context context, int i) {
        super(context);
        this.layoutId = i;
        requestWindowFeature(1);
        setContentView(this.layoutId);
        initView();
    }

    private void initView() {
        setCanceledOnTouchOutside(false);
        Button button = (Button) findViewById(R.id.cling_first_button);
        this.mDissButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher2.popuView.AboutDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                L.v("&&&&&&&&&onClick&&&&&&&&&&");
                AboutDialog.this.dismiss();
            }
        });
    }

    public void setButtonEable(boolean z) {
        Button button = this.mDissButton;
        if (button != null) {
            button.setEnabled(z);
        }
    }

    public void setButtonColor(int i) {
        Button button = this.mDissButton;
        if (button != null) {
            button.setTextColor(i);
        }
    }

    private void initData() {
        L.v(Build.MODEL + "&&&");
    }
}
