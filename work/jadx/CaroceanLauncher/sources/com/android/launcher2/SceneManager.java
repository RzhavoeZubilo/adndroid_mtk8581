package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.util.Xml;
import com.android.internal.util.XmlUtils;
import com.yecon.launcher1.R;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class SceneManager {
    public static final String DEFAULT_ICON_SCALE = "1.0";
    public static final String DEFAULT_INNER_ICON_SCALE = "1.0";
    public static final String DEFAULT_WALLPAPER = "default_wallpaper";
    public static final int DEFAULT_WORKSPACE_RES_ID = 2131689474;
    public static final String TAG_FAVORITES = "favorites";
    public static final String TAG_SCALE = "scale";
    public static final String TAG_SCENE = "scene";
    public static final String TAG_SCENES = "scenes";
    public static final String TAG_WALLPAPER = "wallpaper";
    public static final String DEFAULT_SCENE = SystemProperties.get("ro.custom.scene", "default");
    public static final int DEFAULT_SCENE_POS = Integer.parseInt(SystemProperties.get("ro.custom.scenepos", "0"));
    private static final HashMap<String, SceneInfo> mSceneMap = new HashMap<>();

    private static int getRealIntegerValue(int i, int i2) {
        return i > 0 ? i : i2;
    }

    public static boolean contains(String str) {
        return mSceneMap.containsKey(str);
    }

    public static void addSceneInfo(String str, SceneInfo sceneInfo) {
        if (str == null || "".equals(str) || sceneInfo == null) {
            return;
        }
        mSceneMap.put(str, sceneInfo);
    }

    public static SceneInfo getSceneInfo(String str) {
        if (str == null || "".equals(str)) {
            return null;
        }
        HashMap<String, SceneInfo> map = mSceneMap;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        return null;
    }

    public static SceneInfo getNewSceneInfo(Context context, String str) {
        loadSceneInfo(context);
        if (str == null || "".equals(str)) {
            return null;
        }
        HashMap<String, SceneInfo> map = mSceneMap;
        if (map.containsKey(str)) {
            return map.get(str).m4clone();
        }
        return null;
    }

    public static SceneInfo getNewCurrentSceneInfo(Context context) {
        return getNewSceneInfo(context, Launcher.getCurrentScene());
    }

    private static int getWorkspaceResId(Context context, String str) {
        loadSceneInfo(context);
        return contains(str) ? mSceneMap.get(str).getWorkspaceResId() : R.xml.default_workspace;
    }

    public static int getDefaultWorkspaceResId(Context context) {
        return getWorkspaceResId(context, DEFAULT_SCENE);
    }

    public static void loadSceneInfo(Context context) {
        String realValue;
        if (!mSceneMap.isEmpty()) {
            return;
        }
        try {
            XmlResourceParser xml = context.getResources().getXml(R.xml.default_scenes);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            XmlUtils.beginDocument(xml, TAG_SCENES);
            int depth = xml.getDepth();
            Resources resources = context.getResources();
            while (true) {
                int next = xml.next();
                if ((next == 3 && xml.getDepth() <= depth) || next == 1) {
                    return;
                }
                if (next == 2) {
                    SceneInfo sceneInfo = new SceneInfo();
                    TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSetAsAttributeSet, R.styleable.Scene);
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(3, -1);
                    if (resourceId != 0) {
                        realValue = getRealValue(resources.getString(resourceId), DEFAULT_SCENE);
                    } else {
                        realValue = DEFAULT_SCENE;
                    }
                    sceneInfo.setScene(realValue);
                    sceneInfo.setIconScale(getRealValue(typedArrayObtainStyledAttributes.getString(0), "1.0"));
                    sceneInfo.setInnerIconScale(getRealValue(typedArrayObtainStyledAttributes.getString(1), "1.0"));
                    sceneInfo.setWorkspaceResId(getRealIntegerValue(typedArrayObtainStyledAttributes.getResourceId(7, -1), R.xml.default_workspace));
                    addSceneInfo(realValue, sceneInfo);
                    typedArrayObtainStyledAttributes.recycle();
                }
            }
        } catch (IOException | XmlPullParserException unused) {
        }
    }

    private static String getRealValue(String str, String str2) {
        String strTrim = str != null ? str.trim() : "";
        return (strTrim == null || strTrim.equals("")) ? str2 : strTrim;
    }
}
