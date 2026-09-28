package com.android.launcher2;

import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.yecon.launcher1.R;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class UserInitializeReceiver extends BroadcastReceiver {
    private static final String BOOT_COMPLETED = "android.intent.action.BOOT_COMPLETED";
    private static final String initUser = "android.intent.action.USER_INITIALIZE";
    public static onBootCompleteListener mListener;

    public interface onBootCompleteListener {
        void onCompleteListener();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(BOOT_COMPLETED)) {
            onBootCompleteListener onbootcompletelistener = mListener;
            if (onbootcompletelistener != null) {
                onbootcompletelistener.onCompleteListener();
                return;
            }
            return;
        }
        if (intent.getAction().equals(initUser)) {
            Resources resources = context.getResources();
            String resourcePackageName = resources.getResourcePackageName(R.array.wallpapers);
            ArrayList<Integer> arrayList = new ArrayList<>();
            addWallpapers(resources, resourcePackageName, R.array.wallpapers, arrayList);
            addWallpapers(resources, resourcePackageName, R.array.extra_wallpapers, arrayList);
            WallpaperManager wallpaperManager = (WallpaperManager) context.getSystemService(SceneManager.TAG_WALLPAPER);
            for (int i = 1; i < arrayList.size(); i++) {
                int iIntValue = arrayList.get(i).intValue();
                if (!wallpaperManager.hasResourceWallpaper(iIntValue)) {
                    try {
                        wallpaperManager.setResource(iIntValue);
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                }
            }
        }
    }

    private void addWallpapers(Resources resources, String str, int i, ArrayList<Integer> arrayList) {
        for (String str2 : resources.getStringArray(i)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0) {
                arrayList.add(Integer.valueOf(identifier));
            }
        }
    }

    public static void setCompleteListener(onBootCompleteListener onbootcompletelistener) {
        mListener = onbootcompletelistener;
    }
}
