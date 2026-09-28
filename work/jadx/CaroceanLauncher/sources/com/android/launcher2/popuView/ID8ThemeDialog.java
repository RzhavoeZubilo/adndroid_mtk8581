package com.android.launcher2.popuView;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.carocean.navicar.MMIKeyHelper;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class ID8ThemeDialog extends Dialog implements View.OnClickListener {
    private static final String TAG = "ID8ThemeDialog";
    private TextView effieicntEnabledTv;
    private Context mContext;
    private int[] mIconsId;
    public MMIKeyHelper mMMIKeyHelper;
    private TextView personalEnabledTv;
    private TextView sportEnabledTv;

    public ID8ThemeDialog(Context context) {
        super(context, R.style.dialog_car_flag);
        this.mIconsId = new int[]{R.id.main_theme_personal, R.id.main_theme_sport, R.id.main_theme_effieicnt};
        this.mContext = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.layout_id8_theme);
        initViews();
    }

    private void initViews() {
        int i = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, getContext().getContentResolver(), Navi.Status.SYS_THEME, 1);
        this.personalEnabledTv = (TextView) findViewById(R.id.main_theme_personal_enabled);
        this.sportEnabledTv = (TextView) findViewById(R.id.main_theme_sport_enabled);
        this.effieicntEnabledTv = (TextView) findViewById(R.id.main_theme_effieicnt_enabled);
        this.personalEnabledTv.setVisibility(i == 1 ? 0 : 8);
        this.sportEnabledTv.setVisibility(i == 2 ? 0 : 8);
        this.effieicntEnabledTv.setVisibility(i == 3 ? 0 : 8);
        this.mMMIKeyHelper = new MMIKeyHelper(1);
        int i2 = 0;
        while (true) {
            int[] iArr = this.mIconsId;
            if (i2 < iArr.length) {
                View viewFindViewById = findViewById(iArr[i2]);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(this);
                    this.mMMIKeyHelper.addView(viewFindViewById, 5, 0);
                }
                i2++;
            } else {
                this.mMMIKeyHelper.setSelected(0, i - 1);
                this.mMMIKeyHelper.setCustomCallback(new MMIKeyHelper.CallbackEx() { // from class: com.android.launcher2.popuView.ID8ThemeDialog.1
                    @Override // com.carocean.navicar.MMIKeyHelper.Callback
                    public void onFocused(View view, boolean z) {
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                    public void onMenuUp(int i3, int i4) {
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.Callback
                    public void onMenuUpEnd() {
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.Callback
                    public void onSelectChanged(View view, boolean z) {
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.Callback
                    public void onTurnning(View view, boolean z) {
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                    public void onMenuDown(int i3, int i4) {
                        ID8ThemeDialog.this.dismiss();
                    }

                    @Override // com.carocean.navicar.MMIKeyHelper.Callback
                    public void onEnter(View view) {
                        ID8ThemeDialog.this.onClick(view);
                    }
                });
                setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.android.launcher2.popuView.ID8ThemeDialog.2
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i3, KeyEvent keyEvent) {
                        Log.i(ID8ThemeDialog.TAG, "onKey:" + keyEvent.getKeyCode() + "  action:" + keyEvent.getAction());
                        return ID8ThemeDialog.this.mMMIKeyHelper.handlerMMIKeys(keyEvent);
                    }
                });
                return;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.main_theme_personal) {
            NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, getContext().getContentResolver(), Navi.Status.SYS_THEME, 1);
        } else if (view.getId() == R.id.main_theme_sport) {
            NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, getContext().getContentResolver(), Navi.Status.SYS_THEME, 2);
        } else if (view.getId() == R.id.main_theme_effieicnt) {
            NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, getContext().getContentResolver(), Navi.Status.SYS_THEME, 3);
        }
        dismiss();
    }
}
