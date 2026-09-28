package com.android.launcher2;

/* JADX INFO: loaded from: classes.dex */
public class SceneInfo implements Cloneable {
    public static final int TYPE_APPWIDGET = 14;
    public static final int TYPE_HOTSEATICON = 15;
    public static final int TYPE_ICON = 12;
    public static final int TYPE_SHORTCUT = 13;
    private final String ICON_BG_SUFFIX;
    private final String ICON_HOTSEAT;
    private final String ICON_MASK_SUFFIX;
    private final String ICON_SHORTCUT_SUFFIX;
    private boolean findCustomizedIcon;
    private float iconScale;
    private float innerIconScale;
    private String scene;
    private int type;
    private String wallpaper;
    private int workspaceResId;

    public SceneInfo() {
        this.ICON_BG_SUFFIX = "_icon_bg";
        this.ICON_SHORTCUT_SUFFIX = "_icon_shortcut";
        this.ICON_MASK_SUFFIX = "_icon_mask";
        this.ICON_HOTSEAT = "_icon_hotsaet";
        this.iconScale = 1.0f;
        this.innerIconScale = 1.0f;
        this.type = 12;
    }

    public SceneInfo(String str, boolean z) {
        this.ICON_BG_SUFFIX = "_icon_bg";
        this.ICON_SHORTCUT_SUFFIX = "_icon_shortcut";
        this.ICON_MASK_SUFFIX = "_icon_mask";
        this.ICON_HOTSEAT = "_icon_hotsaet";
        this.iconScale = 1.0f;
        this.innerIconScale = 1.0f;
        this.type = 12;
        this.scene = str;
        this.findCustomizedIcon = z;
    }

    public SceneInfo(String str, int i) {
        this.ICON_BG_SUFFIX = "_icon_bg";
        this.ICON_SHORTCUT_SUFFIX = "_icon_shortcut";
        this.ICON_MASK_SUFFIX = "_icon_mask";
        this.ICON_HOTSEAT = "_icon_hotsaet";
        this.iconScale = 1.0f;
        this.innerIconScale = 1.0f;
        this.type = 12;
        this.scene = str;
        this.type = i;
    }

    public String getScene() {
        return this.scene;
    }

    public void setScene(String str) {
        this.scene = str;
    }

    public int getWorkspaceResId() {
        return this.workspaceResId;
    }

    public void setWorkspaceResId(int i) {
        this.workspaceResId = i;
    }

    public float getIconScale() {
        return this.iconScale;
    }

    public void setIconScale(float f) {
        this.iconScale = f;
    }

    public void setIconScale(String str) {
        this.iconScale = Float.parseFloat(str);
    }

    public float getInnerIconScale() {
        return this.innerIconScale;
    }

    public void setInnerIconScale(float f) {
        this.innerIconScale = f;
    }

    public void setInnerIconScale(String str) {
        this.innerIconScale = Float.parseFloat(str);
    }

    public String getWallpaper() {
        return this.wallpaper;
    }

    public void setWallpaper(String str) {
        this.wallpaper = str;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public boolean isFindCustomizedIcon() {
        return this.findCustomizedIcon;
    }

    public void setFindCustomizedIcon(boolean z) {
        this.findCustomizedIcon = z;
    }

    public void setShortcut() {
        this.type = 13;
    }

    public boolean isShortcut() {
        return this.type == 13;
    }

    public void setHotseat(int i) {
        this.type = i;
    }

    public boolean isHotseat() {
        return this.type == 15;
    }

    public boolean isDefault() {
        return "default".equals(this.scene);
    }

    public boolean needCustomizedIcon() {
        return (isDefault() || isFindCustomizedIcon() || isShortcut()) ? false : true;
    }

    public String getIconBgResName() {
        return this.scene + "_icon_bg";
    }

    public String getIconShortcutResName() {
        return this.scene + "_icon_shortcut";
    }

    public String getIconMaskResName() {
        return this.scene + "_icon_mask";
    }

    public String getIconHotSeatResName() {
        return this.scene + "_icon_hotsaet";
    }

    public String toString() {
        return "scene = " + this.scene + " , type = " + this.type + " , findCustomizedIcon = " + this.findCustomizedIcon;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SceneInfo m4clone() {
        try {
            return (SceneInfo) super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }
}
