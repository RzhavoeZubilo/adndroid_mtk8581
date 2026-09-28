package com.android.launcher2;

import android.app.Activity;
import android.app.WallpaperManager;
import android.content.SharedPreferences;
import android.os.SystemProperties;
import com.yecon.launcher1.R;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ThemeManager {
    private static final int DEFAULT_THEME = 0;
    private static final String LOCAL_THEME = "LOCAL_THEME";
    public static final String PERSIST_SYS_UI_THEME = "persist.sys.ui_theme";
    private static int theme;

    ThemeManager() {
    }

    public static boolean initTeme(Activity activity) {
        int i = SystemProperties.getInt("persist.sys.ui_changed", 1);
        theme = SystemProperties.getInt("persist.sys.ui_theme", 0);
        SharedPreferences sharedPreferences = activity.getSharedPreferences("yeconhome", 0);
        int i2 = sharedPreferences.getInt(LOCAL_THEME, -1);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putInt(LOCAL_THEME, theme);
        editorEdit.commit();
        if (i2 != theme || i != 0) {
            try {
                ((WallpaperManager) activity.getSystemService(SceneManager.TAG_WALLPAPER)).setResource(R.drawable.wallpaper_custom01);
            } catch (IOException e) {
                e.printStackTrace();
            }
            SystemProperties.set("persist.sys.ui_changed", "0");
        }
        return (i2 == theme && i == 0) ? false : true;
    }

    public static int getTheme() {
        return theme;
    }
}
