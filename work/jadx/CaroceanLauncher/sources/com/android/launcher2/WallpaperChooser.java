package com.android.launcher2;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperChooser extends Activity {
    private static final String TAG = "WallpaperChooser";

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.wallpaper_chooser_base);
        Fragment fragmentFindFragmentById = getFragmentManager().findFragmentById(R.id.wallpaper_chooser_fragment);
        if (L.DEBUG) {
            L.d(TAG, "onCreate: fragmentView = " + fragmentFindFragmentById + ", this = " + this);
        }
        if (fragmentFindFragmentById == null) {
            WallpaperChooserDialogFragment.newInstance().show(getFragmentManager(), "dialog");
        }
    }
}
