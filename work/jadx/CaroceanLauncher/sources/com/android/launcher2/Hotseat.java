package com.android.launcher2;

import android.R;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher2.popuView.FboxPopuWindow;
import com.android.launcher2.uitl.Function;
import com.android.launcher2.uitl.L;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Hotseat extends FrameLayout implements DragController.DragListener, FboxPopuWindow.OnPopuWindowListen {
    private static final String TAG = "Hotseat";
    private static String[] className;
    public static View mAllAppBt;
    private static ArrayList<ApplicationInfo> mApps;
    public static TextView mBluetoothBt;
    public static TextView mDvdBt;
    public static TextView mFboxBt;
    public static TextView mGpsBt;
    public static TextView mPlayerBt;
    public static TextView mRadioBt;
    private static String[] packageName;
    public final int ICON_POSITION_ALL;
    public final int ICON_POSITION_BLUETOOTH;
    public final int ICON_POSITION_DVD;
    public final int ICON_POSITION_FBOX;
    public final int ICON_POSITION_GPS;
    public final int ICON_POSITION_MUSIC;
    public final int ICON_POSITION_RADIO;
    private final String NORMAL_ALLAPPS_ICON_SUFFIX;
    private final String PRESSED_ALLAPPS_ICON_SUFFIX;
    private String[] iconName;
    private int mAllAppsButtonRank;
    private int mCellCountX;
    private int mCellCountY;
    private CellLayout mContent;
    public FboxPopuWindow mFboxPopu;
    private boolean mIsLandscape;
    private Launcher mLauncher;
    private boolean mTransposeLayoutWithOrientation;
    private String[] mapName;
    private int[] positionName;
    private String[] titleName;
    private Context xContext;
    public static final int[] STATE_FOCUSED = {R.attr.state_enabled, R.attr.state_focused};
    public static final int[] STATE_PRESSED = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] STATE_NORMAL = new int[0];

    @Override // com.android.launcher2.popuView.FboxPopuWindow.OnPopuWindowListen
    public void getIsDismiss() {
    }

    @Override // com.android.launcher2.DragController.DragListener
    public void onDragEnd() {
    }

    @Override // com.android.launcher2.DragController.DragListener
    public void onDragStart(DragSource dragSource, Object obj, int i) {
    }

    public void showHomeIcon(boolean z) {
    }

    @Override // com.android.launcher2.popuView.FboxPopuWindow.OnPopuWindowListen
    public void showPopuWindow() {
    }

    public Hotseat(Context context) {
        this(context, null);
    }

    public Hotseat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Hotseat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFboxPopu = null;
        this.ICON_POSITION_GPS = 0;
        this.ICON_POSITION_MUSIC = 1;
        this.ICON_POSITION_ALL = 2;
        this.ICON_POSITION_BLUETOOTH = 3;
        this.ICON_POSITION_RADIO = 4;
        this.ICON_POSITION_DVD = -1;
        this.ICON_POSITION_FBOX = -1;
        this.PRESSED_ALLAPPS_ICON_SUFFIX = "_ic_allapps_pressed";
        this.NORMAL_ALLAPPS_ICON_SUFFIX = "_ic_allapps";
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.yecon.launcher1.R.styleable.Hotseat, i, 0);
        Resources resources = context.getResources();
        this.mCellCountX = typedArrayObtainStyledAttributes.getInt(0, -1);
        this.mCellCountY = typedArrayObtainStyledAttributes.getInt(1, -1);
        this.mAllAppsButtonRank = resources.getInteger(com.yecon.launcher1.R.integer.hotseat_all_apps_index);
        this.mTransposeLayoutWithOrientation = resources.getBoolean(com.yecon.launcher1.R.bool.hotseat_transpose_layout_with_orientation);
        this.mIsLandscape = context.getResources().getConfiguration().orientation == 2;
        setPackageIcon(context);
        this.xContext = context;
        FboxPopuWindow fboxPopuWindow = new FboxPopuWindow(this.xContext);
        this.mFboxPopu = fboxPopuWindow;
        fboxPopuWindow.setListen(this);
        mApps = new ArrayList<>();
        this.mapName = context.getResources().getStringArray(com.yecon.launcher1.R.array.map_name);
    }

    public void setup(Launcher launcher) {
        this.mLauncher = launcher;
        setOnKeyListener(new HotseatIconKeyEventListener());
        this.mLauncher.getDragController().addDragListener(this);
    }

    CellLayout getLayout() {
        return this.mContent;
    }

    private boolean hasVerticalHotseat() {
        return this.mIsLandscape && this.mTransposeLayoutWithOrientation;
    }

    int getOrderInHotseat(int i, int i2) {
        return hasVerticalHotseat() ? (this.mContent.getCountY() - i2) - 1 : i;
    }

    int getCellXFromOrder(int i) {
        if (hasVerticalHotseat()) {
            return 0;
        }
        return i;
    }

    int getCellYFromOrder(int i) {
        if (hasVerticalHotseat()) {
            return this.mContent.getCountY() - (i + 1);
        }
        return 0;
    }

    public boolean isAllAppsButtonRank(int i) {
        return i == this.mAllAppsButtonRank;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.mCellCountX < 0) {
            this.mCellCountX = LauncherModel.getCellCountX();
        }
        if (this.mCellCountY < 0) {
            this.mCellCountY = LauncherModel.getCellCountY();
        }
        CellLayout cellLayout = (CellLayout) findViewById(com.yecon.launcher1.R.id.layout);
        this.mContent = cellLayout;
        cellLayout.setGridSize(this.mCellCountX, this.mCellCountY);
        this.mContent.setIsHotseat(true);
        L.v("hede", this.mCellCountX + "%%%%" + this.mCellCountY);
        resetLayout();
    }

    private Drawable getAllappsButtonIcon(Drawable drawable) {
        String currentScene = Launcher.getCurrentScene();
        if (currentScene.equals("default") || !(drawable instanceof StateListDrawable)) {
            return drawable;
        }
        Resources resources = getContext().getResources();
        String packageName2 = getContext().getPackageName();
        int identifier = resources.getIdentifier(currentScene + "_ic_allapps_pressed", "drawable", packageName2);
        int identifier2 = resources.getIdentifier(currentScene + "_ic_allapps", "drawable", packageName2);
        if (identifier <= 0) {
            identifier = com.yecon.launcher1.R.drawable.ic_allapps_pressed;
        }
        Drawable drawable2 = resources.getDrawable(identifier);
        if (identifier2 <= 0) {
            identifier2 = com.yecon.launcher1.R.drawable.ic_allapps;
        }
        Drawable drawable3 = resources.getDrawable(identifier2);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(STATE_FOCUSED, drawable2);
        stateListDrawable.addState(STATE_PRESSED, drawable2);
        stateListDrawable.addState(STATE_NORMAL, drawable3);
        return stateListDrawable;
    }

    void resetLayout() {
        this.mContent.removeAllViewsInLayout();
        for (int i : this.positionName) {
            addHostView(i);
        }
    }

    private void setPackageIcon(Context context) {
        packageName = context.getResources().getStringArray(com.yecon.launcher1.R.array.hotseat_package_name);
        className = context.getResources().getStringArray(com.yecon.launcher1.R.array.hotseat_class_name);
        this.iconName = context.getResources().getStringArray(com.yecon.launcher1.R.array.icon_name);
        this.positionName = context.getResources().getIntArray(com.yecon.launcher1.R.array.position_name);
        this.titleName = context.getResources().getStringArray(com.yecon.launcher1.R.array.hotseat_app_name);
    }

    private void addHostView(final int i) {
        View view;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        getContext().getResources().getIdentifier(this.iconName[i], "drawable", "com.android.launcher");
        if (i == this.mAllAppsButtonRank) {
            view = (ImageView) layoutInflaterFrom.inflate(com.yecon.launcher1.R.layout.application_hotseat_all, (ViewGroup) this.mContent, false);
        } else {
            view = (TextView) layoutInflaterFrom.inflate(com.yecon.launcher1.R.layout.application_hotseat, (ViewGroup) this.mContent, false);
            ((TextView) view).setText(this.titleName[i]);
        }
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.launcher2.Hotseat.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (Hotseat.this.mLauncher == null || (motionEvent.getAction() & 255) != 0 || i != 2 || Hotseat.this.mLauncher == null) {
                    return false;
                }
                Hotseat.this.mLauncher.onClickAllAppsButton(view2);
                return false;
            }
        });
        view.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher2.Hotseat.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int i2 = i;
                if (i2 == 0) {
                    Function.onNavigation(Hotseat.this.getContext());
                    return;
                }
                if (i2 == 2) {
                    if (Hotseat.this.mLauncher != null) {
                        Hotseat.this.mLauncher.onTouchDownAllAppsButton(view2);
                    }
                } else if (i2 == 4) {
                    Function.onRadio(Hotseat.this.getContext());
                } else if (i2 == 1) {
                    Function.onMusic(Hotseat.this.getContext());
                } else if (i2 == 3) {
                    Function.onBT(Hotseat.this.getContext());
                }
            }
        });
        CellLayout.LayoutParams layoutParams = new CellLayout.LayoutParams(getCellXFromOrder(i), getCellYFromOrder(0), 1, 1);
        layoutParams.canReorder = true;
        this.mContent.addViewToCellLayout(view, -1, 0, layoutParams, false);
        if (i == 2) {
            mAllAppBt = view;
        }
    }

    private void openFbox() {
        this.mFboxPopu.setContentView(com.yecon.launcher1.R.layout.gridview_pop);
        this.mFboxPopu.showPopu(findViewById(com.yecon.launcher1.R.id.hotseat));
    }

    public void getMapComName(ApplicationInfo applicationInfo) {
        L.v("hede", applicationInfo.getPackageName() + "&&getMapComName&&&");
        mApps.add(applicationInfo);
    }

    public void testInsert(ApplicationInfo applicationInfo, String str) throws Throwable {
        ContentResolver contentResolver = getContext().getContentResolver();
        Uri uri = Uri.parse("content://com.androidcar.provider.CarProvider/carsetting");
        ContentValues contentValues = new ContentValues();
        contentValues.put("mapName", applicationInfo.getPackageName());
        contentValues.put("mapClass", applicationInfo.componentName.getClassName());
        L.i(TAG, contentResolver.insert(uri, contentValues).toString());
    }

    public void testUpdate(ApplicationInfo applicationInfo) throws Throwable {
        ContentResolver contentResolver = getContext().getContentResolver();
        Uri uri = Uri.parse("content://com.androidcar.provider.CarProvider/carsetting/1");
        ContentValues contentValues = new ContentValues();
        contentValues.put("mapClass", "xxx");
        contentResolver.update(uri, contentValues, null, null);
    }

    public void testFind() throws Throwable {
        Cursor cursorQuery = getContext().getContentResolver().query(Uri.parse("content://com.androidcar.provider.CarProvider/carsetting/"), null, null, null, "carid desc");
        while (cursorQuery.moveToNext()) {
            cursorQuery.getInt(cursorQuery.getColumnIndex("carid"));
        }
    }

    public static String[] getAllClassName() {
        return className;
    }
}
