package com.android.launcher2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Selection;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class Folder extends LinearLayout implements DragSource, View.OnClickListener, View.OnLongClickListener, DropTarget, FolderInfo.FolderListener, TextView.OnEditorActionListener, View.OnFocusChangeListener {
    private static final int ON_EXIT_CLOSE_DELAY = 800;
    private static final int REORDER_ANIMATION_DURATION = 230;
    static final int STATE_ANIMATING = 1;
    static final int STATE_NONE = -1;
    static final int STATE_OPEN = 2;
    static final int STATE_SMALL = 0;
    private static final String TAG = "Launcher.Folder";
    private static String sDefaultFolderName;
    private static String sHintText;
    private ActionMode.Callback mActionModeCallback;
    protected CellLayout mContent;
    private ShortcutInfo mCurrentDragInfo;
    private View mCurrentDragView;
    private boolean mDeleteFolderOnDropCompleted;
    private boolean mDestroyed;
    protected DragController mDragController;
    private boolean mDragInProgress;
    private int[] mEmptyCell;
    private int mExpandDuration;
    private FolderIcon mFolderIcon;
    private float mFolderIconPivotX;
    private float mFolderIconPivotY;
    FolderEditText mFolderName;
    private int mFolderNameHeight;
    private final IconCache mIconCache;
    private Drawable mIconDrawable;
    private final LayoutInflater mInflater;
    protected FolderInfo mInfo;
    private InputMethodManager mInputMethodManager;
    private boolean mIsEditingName;
    private boolean mItemAddedBackToSelfViaIcon;
    private ArrayList<View> mItemsInReadingOrder;
    boolean mItemsInvalidated;
    protected Launcher mLauncher;
    private int mMaxCountX;
    private int mMaxCountY;
    private int mMaxNumItems;
    private Alarm mOnExitAlarm;
    OnAlarmListener mOnExitAlarmListener;
    private ObjectAnimator mOpenCloseAnimator;
    private int[] mPreviousTargetCell;
    private boolean mRearrangeOnClose;
    private Alarm mReorderAlarm;
    OnAlarmListener mReorderAlarmListener;
    private int mState;
    private boolean mSuppressFolderDeletion;
    boolean mSuppressOnAdd;
    private int[] mTargetCell;
    private Rect mTempRect;

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // com.android.launcher2.DropTarget
    public DropTarget getDropTargetDelegate(DropTarget.DragObject dragObject) {
        return null;
    }

    @Override // com.android.launcher2.DropTarget
    public boolean isDropEnabled() {
        return true;
    }

    @Override // com.android.launcher2.DropTarget
    public void onFlingToDelete(DropTarget.DragObject dragObject, int i, int i2, PointF pointF) {
    }

    @Override // com.android.launcher2.DragSource
    public void onFlingToDeleteCompleted() {
    }

    @Override // com.android.launcher2.FolderInfo.FolderListener
    public void onTitleChanged(CharSequence charSequence) {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // com.android.launcher2.DragSource
    public boolean supportsFlingToDelete() {
        return true;
    }

    public Folder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mState = -1;
        this.mRearrangeOnClose = false;
        this.mItemsInReadingOrder = new ArrayList<>();
        this.mItemsInvalidated = false;
        this.mSuppressOnAdd = false;
        this.mTargetCell = new int[2];
        this.mPreviousTargetCell = new int[2];
        this.mEmptyCell = new int[2];
        this.mReorderAlarm = new Alarm();
        this.mOnExitAlarm = new Alarm();
        this.mTempRect = new Rect();
        this.mDragInProgress = false;
        this.mDeleteFolderOnDropCompleted = false;
        this.mSuppressFolderDeletion = false;
        this.mItemAddedBackToSelfViaIcon = false;
        this.mIsEditingName = false;
        this.mActionModeCallback = new ActionMode.Callback() { // from class: com.android.launcher2.Folder.1
            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }
        };
        this.mReorderAlarmListener = new OnAlarmListener() { // from class: com.android.launcher2.Folder.6
            @Override // com.android.launcher2.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                Folder folder = Folder.this;
                folder.realTimeReorder(folder.mEmptyCell, Folder.this.mTargetCell);
            }
        };
        this.mOnExitAlarmListener = new OnAlarmListener() { // from class: com.android.launcher2.Folder.7
            @Override // com.android.launcher2.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                Folder.this.completeDragExit();
            }
        };
        setAlwaysDrawnWithCacheEnabled(false);
        this.mInflater = LayoutInflater.from(context);
        this.mIconCache = ((LauncherApplication) context.getApplicationContext()).getIconCache();
        Resources resources = getResources();
        this.mMaxCountX = resources.getInteger(R.integer.folder_max_count_x);
        this.mMaxCountY = resources.getInteger(R.integer.folder_max_count_y);
        int integer = resources.getInteger(R.integer.folder_max_num_items);
        this.mMaxNumItems = integer;
        if (this.mMaxCountX < 0 || this.mMaxCountY < 0 || integer < 0) {
            this.mMaxCountX = LauncherModel.getCellCountX();
            int cellCountY = LauncherModel.getCellCountY();
            this.mMaxCountY = cellCountY;
            this.mMaxNumItems = this.mMaxCountX * cellCountY;
        }
        this.mInputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        this.mExpandDuration = resources.getInteger(R.integer.config_folderAnimDuration);
        if (sDefaultFolderName == null) {
            sDefaultFolderName = resources.getString(R.string.folder_name);
        }
        if (sHintText == null) {
            sHintText = resources.getString(R.string.folder_hint_text);
        }
        this.mLauncher = (Launcher) context;
        setFocusableInTouchMode(true);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        CellLayout cellLayout = (CellLayout) findViewById(R.id.folder_content);
        this.mContent = cellLayout;
        cellLayout.setGridSize(0, 0);
        this.mContent.getShortcutsAndWidgets().setMotionEventSplittingEnabled(false);
        FolderEditText folderEditText = (FolderEditText) findViewById(R.id.folder_name);
        this.mFolderName = folderEditText;
        folderEditText.setFolder(this);
        this.mFolderName.setOnFocusChangeListener(this);
        this.mFolderName.measure(0, 0);
        this.mFolderNameHeight = this.mFolderName.getMeasuredHeight();
        this.mFolderName.setCustomSelectionActionModeCallback(this.mActionModeCallback);
        this.mFolderName.setOnEditorActionListener(this);
        this.mFolderName.setSelectAllOnFocus(true);
        FolderEditText folderEditText2 = this.mFolderName;
        folderEditText2.setInputType(folderEditText2.getInputType() | 524288 | 8192);
        this.mFolderName.setTextColor(Launcher.getThemeColor(getContext().getResources(), R.color.folder_text_color));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (L.DEBUG) {
            L.d(TAG, "onClick: v = " + view + ", tag = " + tag);
        }
        if (tag instanceof ShortcutInfo) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) tag;
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            shortcutInfo.intent.setSourceBounds(new Rect(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight()));
            this.mLauncher.startActivitySafely(view, shortcutInfo.intent, shortcutInfo);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (!this.mLauncher.isDraggingEnabled()) {
            return true;
        }
        Object tag = view.getTag();
        if (L.DEBUG) {
            L.d(TAG, "onLongClick: v = " + view + ", tag = " + tag);
        }
        if (tag instanceof ShortcutInfo) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) tag;
            if (!view.isInTouchMode()) {
                return false;
            }
            this.mLauncher.dismissFolderCling(null);
            this.mLauncher.getWorkspace().onDragStartedWithItem(view);
            this.mLauncher.getWorkspace().beginDragShared(view, this);
            this.mIconDrawable = ((TextView) view).getCompoundDrawables()[1];
            this.mCurrentDragInfo = shortcutInfo;
            this.mEmptyCell[0] = shortcutInfo.cellX;
            this.mEmptyCell[1] = shortcutInfo.cellY;
            this.mCurrentDragView = view;
            this.mContent.removeView(view);
            this.mInfo.remove(this.mCurrentDragInfo);
            this.mDragInProgress = true;
            this.mItemAddedBackToSelfViaIcon = false;
        }
        return true;
    }

    public boolean isEditingName() {
        return this.mIsEditingName;
    }

    public void startEditingFolderName() {
        this.mFolderName.setHint("");
        this.mIsEditingName = true;
    }

    public void dismissEditingName() {
        this.mInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        doneEditingFolderName(true);
    }

    public void doneEditingFolderName(boolean z) {
        this.mFolderName.setHint(sHintText);
        String string = this.mFolderName.getText().toString();
        this.mInfo.setTitle(string);
        LauncherModel.updateItemInDatabase(this.mLauncher, this.mInfo);
        if (z) {
            sendCustomAccessibilityEvent(32, String.format(getContext().getString(R.string.folder_renamed), string));
        }
        requestFocus();
        Selection.setSelection(this.mFolderName.getText(), 0, 0);
        this.mIsEditingName = false;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        dismissEditingName();
        return true;
    }

    public View getEditTextRegion() {
        return this.mFolderName;
    }

    public Drawable getDragDrawable() {
        return this.mIconDrawable;
    }

    public void setDragController(DragController dragController) {
        this.mDragController = dragController;
    }

    void setFolderIcon(FolderIcon folderIcon) {
        this.mFolderIcon = folderIcon;
    }

    FolderInfo getInfo() {
        return this.mInfo;
    }

    private class GridComparator implements Comparator<ShortcutInfo> {
        int mNumCols;

        public GridComparator(int i) {
            this.mNumCols = i;
        }

        @Override // java.util.Comparator
        public int compare(ShortcutInfo shortcutInfo, ShortcutInfo shortcutInfo2) {
            return ((shortcutInfo.cellY * this.mNumCols) + shortcutInfo.cellX) - ((shortcutInfo2.cellY * this.mNumCols) + shortcutInfo2.cellX);
        }
    }

    private void placeInReadingOrder(ArrayList<ShortcutInfo> arrayList) {
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            ShortcutInfo shortcutInfo = arrayList.get(i2);
            if (shortcutInfo.cellX > i) {
                i = shortcutInfo.cellX;
            }
        }
        Collections.sort(arrayList, new GridComparator(i + 1));
        int countX = this.mContent.getCountX();
        for (int i3 = 0; i3 < size; i3++) {
            ShortcutInfo shortcutInfo2 = arrayList.get(i3);
            shortcutInfo2.cellX = i3 % countX;
            shortcutInfo2.cellY = i3 / countX;
        }
    }

    void bind(FolderInfo folderInfo) {
        this.mInfo = folderInfo;
        ArrayList<ShortcutInfo> arrayList = folderInfo.contents;
        ArrayList<ShortcutInfo> arrayList2 = new ArrayList();
        setupContentForNumItems(arrayList.size());
        placeInReadingOrder(arrayList);
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ShortcutInfo shortcutInfo = arrayList.get(i2);
            if (createAndAddShortcut(shortcutInfo)) {
                i++;
            } else {
                arrayList2.add(shortcutInfo);
            }
        }
        setupContentForNumItems(i);
        for (ShortcutInfo shortcutInfo2 : arrayList2) {
            this.mInfo.remove(shortcutInfo2);
            LauncherModel.deleteItemFromDatabase(this.mLauncher, shortcutInfo2);
        }
        this.mItemsInvalidated = true;
        updateTextViewFocus();
        this.mInfo.addListener(this);
        if (!sDefaultFolderName.contentEquals(this.mInfo.title)) {
            this.mFolderName.setText(this.mInfo.title);
        } else {
            this.mFolderName.setText("");
        }
        updateItemLocationsInDatabase();
    }

    static Folder fromXml(Context context) {
        return (Folder) LayoutInflater.from(context).inflate(R.layout.user_folder, (ViewGroup) null);
    }

    private void positionAndSizeAsIcon() {
        if (getParent() instanceof DragLayer) {
            setScaleX(0.8f);
            setScaleY(0.8f);
            setAlpha(0.0f);
            this.mState = 0;
        }
    }

    public void animateOpen() {
        positionAndSizeAsIcon();
        updateContentUnreadNum();
        if (getParent() instanceof DragLayer) {
            centerAboutIcon();
            final ObjectAnimator objectAnimatorOfPropertyValuesHolder = LauncherAnimUtils.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("alpha", 1.0f), PropertyValuesHolder.ofFloat("scaleX", 1.0f), PropertyValuesHolder.ofFloat("scaleY", 1.0f));
            this.mOpenCloseAnimator = objectAnimatorOfPropertyValuesHolder;
            objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.Folder.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    Folder folder = Folder.this;
                    folder.sendCustomAccessibilityEvent(32, String.format(folder.getContext().getString(R.string.folder_opened), Integer.valueOf(Folder.this.mContent.getCountX()), Integer.valueOf(Folder.this.mContent.getCountY())));
                    Folder.this.mState = 1;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Folder.this.mState = 2;
                    Folder.this.setLayerType(0, null);
                    Cling clingShowFirstRunFoldersCling = Folder.this.mLauncher.showFirstRunFoldersCling();
                    if (clingShowFirstRunFoldersCling != null) {
                        clingShowFirstRunFoldersCling.bringToFront();
                    }
                    Folder.this.setFocusOnFirstChild();
                }
            });
            objectAnimatorOfPropertyValuesHolder.setDuration(this.mExpandDuration);
            setLayerType(2, null);
            buildLayer();
            post(new Runnable() { // from class: com.android.launcher2.Folder.3
                @Override // java.lang.Runnable
                public void run() {
                    if (objectAnimatorOfPropertyValuesHolder != Folder.this.mOpenCloseAnimator) {
                        return;
                    }
                    objectAnimatorOfPropertyValuesHolder.start();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCustomAccessibilityEvent(int i, String str) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i);
            onInitializeAccessibilityEvent(accessibilityEventObtain);
            accessibilityEventObtain.getText().add(str);
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFocusOnFirstChild() {
        View childAt = this.mContent.getChildAt(0, 0);
        if (childAt != null) {
            childAt.requestFocus();
        }
    }

    public void animateClosed() {
        if (L.DEBUG) {
            L.d(TAG, "animateClosed: parent = " + getParent());
        }
        if (getParent() instanceof DragLayer) {
            final ObjectAnimator objectAnimatorOfPropertyValuesHolder = LauncherAnimUtils.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("alpha", 0.0f), PropertyValuesHolder.ofFloat("scaleX", 0.9f), PropertyValuesHolder.ofFloat("scaleY", 0.9f));
            this.mOpenCloseAnimator = objectAnimatorOfPropertyValuesHolder;
            objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.Folder.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Folder.this.setLayerType(0, null);
                    Folder.this.mState = 0;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    Folder folder = Folder.this;
                    folder.sendCustomAccessibilityEvent(32, folder.getContext().getString(R.string.folder_closed));
                    Folder.this.mState = 1;
                }
            });
            objectAnimatorOfPropertyValuesHolder.setDuration(this.mExpandDuration);
            setLayerType(2, null);
            buildLayer();
            post(new Runnable() { // from class: com.android.launcher2.Folder.5
                @Override // java.lang.Runnable
                public void run() {
                    if (objectAnimatorOfPropertyValuesHolder != Folder.this.mOpenCloseAnimator) {
                        return;
                    }
                    objectAnimatorOfPropertyValuesHolder.start();
                }
            });
            onCloseComplete();
        }
    }

    void notifyDataSetChanged() {
        this.mContent.removeAllViewsInLayout();
        this.mInfo.unreadNum = 0;
        bind(this.mInfo);
    }

    @Override // com.android.launcher2.DropTarget
    public boolean acceptDrop(DropTarget.DragObject dragObject) {
        if (L.DEBUG) {
            L.d(TAG, "acceptDrop: DragObject = " + dragObject);
        }
        int i = ((ItemInfo) dragObject.dragInfo).itemType;
        return (i == 0 || i == 1) && !isFull();
    }

    protected boolean findAndSetEmptyCells(ShortcutInfo shortcutInfo) {
        int[] iArr = new int[2];
        if (!this.mContent.findCellForSpan(iArr, shortcutInfo.spanX, shortcutInfo.spanY)) {
            return false;
        }
        shortcutInfo.cellX = iArr[0];
        shortcutInfo.cellY = iArr[1];
        return true;
    }

    protected boolean createAndAddShortcut(ShortcutInfo shortcutInfo) {
        TextView textView = (TextView) this.mInflater.inflate(R.layout.application, (ViewGroup) this, false);
        textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, new FastBitmapDrawable(shortcutInfo.getIcon(this.mIconCache)), (Drawable) null, (Drawable) null);
        textView.setText(shortcutInfo.title);
        textView.setTag(shortcutInfo);
        this.mFolderIcon.updateFolderUnreadNum(shortcutInfo.intent.getComponent(), shortcutInfo.unreadNum);
        textView.setOnClickListener(this);
        textView.setOnLongClickListener(this);
        if (this.mContent.getChildAt(shortcutInfo.cellX, shortcutInfo.cellY) != null || shortcutInfo.cellX < 0 || shortcutInfo.cellY < 0 || shortcutInfo.cellX >= this.mContent.getCountX() || shortcutInfo.cellY >= this.mContent.getCountY()) {
            L.e(TAG, "Folder order not properly persisted during bind");
            if (!findAndSetEmptyCells(shortcutInfo)) {
                return false;
            }
        }
        CellLayout.LayoutParams layoutParams = new CellLayout.LayoutParams(shortcutInfo.cellX, shortcutInfo.cellY, shortcutInfo.spanX, shortcutInfo.spanY);
        textView.setOnKeyListener(new FolderKeyEventListener());
        this.mContent.addViewToCellLayout(textView, -1, (int) shortcutInfo.id, layoutParams, true);
        return true;
    }

    @Override // com.android.launcher2.DropTarget
    public void onDragEnter(DropTarget.DragObject dragObject) {
        int[] iArr = this.mPreviousTargetCell;
        iArr[0] = -1;
        iArr[1] = -1;
        this.mOnExitAlarm.cancelAlarm();
    }

    boolean readingOrderGreaterThan(int[] iArr, int[] iArr2) {
        return iArr[1] > iArr2[1] || (iArr[1] == iArr2[1] && iArr[0] > iArr2[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void realTimeReorder(int[] iArr, int[] iArr2) {
        float f = 30.0f;
        if (readingOrderGreaterThan(iArr2, iArr)) {
            int i = iArr[0] >= this.mContent.getCountX() - 1 ? iArr[1] + 1 : iArr[1];
            int i2 = 0;
            while (i <= iArr2[1]) {
                int countX = i < iArr2[1] ? this.mContent.getCountX() - 1 : iArr2[0];
                for (int i3 = i == iArr[1] ? iArr[0] + 1 : 0; i3 <= countX; i3++) {
                    if (this.mContent.animateChildToPosition(this.mContent.getChildAt(i3, i), iArr[0], iArr[1], REORDER_ANIMATION_DURATION, i2, true, true)) {
                        iArr[0] = i3;
                        iArr[1] = i;
                        i2 = (int) (i2 + f);
                        f = (float) (((double) f) * 0.9d);
                    }
                }
                i++;
            }
            return;
        }
        int i4 = iArr[0] == 0 ? iArr[1] - 1 : iArr[1];
        int i5 = 0;
        while (i4 >= iArr2[1]) {
            int i6 = i4 > iArr2[1] ? 0 : iArr2[0];
            for (int countX2 = (i4 == iArr[1] ? iArr[0] : this.mContent.getCountX()) - 1; countX2 >= i6; countX2--) {
                if (this.mContent.animateChildToPosition(this.mContent.getChildAt(countX2, i4), iArr[0], iArr[1], REORDER_ANIMATION_DURATION, i5, true, true)) {
                    iArr[0] = countX2;
                    iArr[1] = i4;
                    i5 = (int) (i5 + f);
                    f = (float) (((double) f) * 0.9d);
                }
            }
            i4--;
        }
    }

    @Override // com.android.launcher2.DropTarget
    public void onDragOver(DropTarget.DragObject dragObject) {
        float[] dragViewVisualCenter = getDragViewVisualCenter(dragObject.x, dragObject.y, dragObject.xOffset, dragObject.yOffset, dragObject.dragView, null);
        int[] iArrFindNearestArea = this.mContent.findNearestArea((int) dragViewVisualCenter[0], (int) dragViewVisualCenter[1], 1, 1, this.mTargetCell);
        this.mTargetCell = iArrFindNearestArea;
        int i = iArrFindNearestArea[0];
        int[] iArr = this.mPreviousTargetCell;
        if (i == iArr[0] && iArrFindNearestArea[1] == iArr[1]) {
            return;
        }
        this.mReorderAlarm.cancelAlarm();
        this.mReorderAlarm.setOnAlarmListener(this.mReorderAlarmListener);
        this.mReorderAlarm.setAlarm(150L);
        int[] iArr2 = this.mPreviousTargetCell;
        int[] iArr3 = this.mTargetCell;
        iArr2[0] = iArr3[0];
        iArr2[1] = iArr3[1];
    }

    private float[] getDragViewVisualCenter(int i, int i2, int i3, int i4, DragView dragView, float[] fArr) {
        if (fArr == null) {
            fArr = new float[2];
        }
        fArr[0] = (i - i3) + (dragView.getDragRegion().width() / 2);
        fArr[1] = (i2 - i4) + (dragView.getDragRegion().height() / 2);
        return fArr;
    }

    public void completeDragExit() {
        this.mRearrangeOnClose = true;
        this.mLauncher.closeFolder();
        this.mCurrentDragInfo = null;
        this.mCurrentDragView = null;
        this.mSuppressOnAdd = false;
    }

    @Override // com.android.launcher2.DropTarget
    public void onDragExit(DropTarget.DragObject dragObject) {
        if (L.DEBUG) {
            L.d(TAG, "onDragExit: DragObject = " + dragObject);
        }
        if (!dragObject.dragComplete) {
            this.mOnExitAlarm.setOnAlarmListener(this.mOnExitAlarmListener);
            this.mOnExitAlarm.setAlarm(800L);
        }
        this.mReorderAlarm.cancelAlarm();
    }

    @Override // com.android.launcher2.DragSource
    public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z, boolean z2) {
        if (L.DEBUG) {
            L.d(TAG, "onDropCompleted: View = " + view + ", DragObject = " + dragObject + ", isFlingToDelete = " + z + ", success = " + z2);
        }
        if (z2) {
            if (this.mDeleteFolderOnDropCompleted && !this.mItemAddedBackToSelfViaIcon) {
                replaceFolderWithFinalItem();
            }
        } else {
            this.mFolderIcon.onDrop(dragObject);
            if (this.mOnExitAlarm.alarmPending()) {
                this.mSuppressFolderDeletion = true;
            }
        }
        this.mDragInProgress = false;
        this.mCurrentDragInfo = null;
        if (view != this && this.mOnExitAlarm.alarmPending()) {
            this.mOnExitAlarm.cancelAlarm();
            completeDragExit();
        }
        this.mDeleteFolderOnDropCompleted = false;
        this.mItemAddedBackToSelfViaIcon = false;
        this.mCurrentDragView = null;
        this.mSuppressOnAdd = false;
        updateItemLocationsInDatabase();
    }

    private void updateItemLocationsInDatabase() {
        ArrayList<View> itemsInReadingOrder = getItemsInReadingOrder();
        for (int i = 0; i < itemsInReadingOrder.size(); i++) {
            ItemInfo itemInfo = (ItemInfo) itemsInReadingOrder.get(i).getTag();
            LauncherModel.moveItemInDatabase(this.mLauncher, itemInfo, this.mInfo.id, 0, itemInfo.cellX, itemInfo.cellY);
        }
    }

    public void notifyDrop() {
        if (this.mDragInProgress) {
            this.mItemAddedBackToSelfViaIcon = true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0032  */
    private void setupContentDimensions(int i) {
        int iMax;
        int iMax2;
        ArrayList<View> itemsInReadingOrder = getItemsInReadingOrder();
        int countX = this.mContent.getCountX();
        int countY = this.mContent.getCountY();
        boolean z = false;
        while (!z) {
            if (countX * countY < i) {
                if ((countX <= countY || countY == this.mMaxCountY) && countX < this.mMaxCountX) {
                    iMax = countX + 1;
                } else {
                    if (countY < this.mMaxCountY) {
                        iMax2 = countY + 1;
                        iMax = countX;
                    } else {
                        iMax = countX;
                    }
                    if (iMax2 == 0) {
                        iMax2++;
                    }
                }
                iMax2 = countY;
                if (iMax2 == 0) {
                    iMax2++;
                }
            } else {
                int i2 = countY - 1;
                if (i2 * countX >= i && countY >= countX) {
                    iMax2 = Math.max(0, i2);
                    iMax = countX;
                } else {
                    int i3 = countX - 1;
                    iMax = i3 * countY >= i ? Math.max(0, i3) : countX;
                    iMax2 = countY;
                }
            }
            boolean z2 = iMax == countX && iMax2 == countY;
            countY = iMax2;
            z = z2;
            countX = iMax;
        }
        this.mContent.setGridSize(countX, countY);
        arrangeChildren(itemsInReadingOrder);
    }

    public boolean isFull() {
        return getItemCount() >= this.mMaxNumItems;
    }

    private void centerAboutIcon() {
        DragLayer.LayoutParams layoutParams = (DragLayer.LayoutParams) getLayoutParams();
        int paddingLeft = getPaddingLeft() + getPaddingRight() + this.mContent.getDesiredWidth();
        int paddingTop = getPaddingTop() + getPaddingBottom() + this.mContent.getDesiredHeight() + this.mFolderNameHeight;
        DragLayer dragLayer = (DragLayer) this.mLauncher.findViewById(R.id.drag_layer);
        float descendantRectRelativeToSelf = dragLayer.getDescendantRectRelativeToSelf(this.mFolderIcon, this.mTempRect);
        int i = paddingLeft / 2;
        int iWidth = ((int) (this.mTempRect.left + ((this.mTempRect.width() * descendantRectRelativeToSelf) / 2.0f))) - i;
        int i2 = paddingTop / 2;
        int iHeight = ((int) (this.mTempRect.top + ((this.mTempRect.height() * descendantRectRelativeToSelf) / 2.0f))) - i2;
        int currentPage = this.mLauncher.getWorkspace().getCurrentPage();
        this.mLauncher.getWorkspace().setFinalScrollForPageChange(currentPage);
        ShortcutAndWidgetContainer shortcutsAndWidgets = ((CellLayout) this.mLauncher.getWorkspace().getChildAt(currentPage)).getShortcutsAndWidgets();
        Rect rect = new Rect();
        dragLayer.getDescendantRectRelativeToSelf(shortcutsAndWidgets, rect);
        if (this.mLauncher.getWorkspace().isSmall()) {
            rect = this.mLauncher.getCurrentBounds();
        }
        this.mLauncher.getWorkspace().resetFinalScrollForPageChange(currentPage);
        int iMin = Math.min(Math.max(rect.left, iWidth), (rect.left + rect.width()) - paddingLeft);
        int iMin2 = Math.min(Math.max(rect.top, iHeight), (rect.top + rect.height()) - paddingTop);
        if (paddingLeft >= rect.width()) {
            iMin = rect.left + ((rect.width() - paddingLeft) / 2);
        }
        if (paddingTop >= rect.height()) {
            iMin2 = rect.top + ((rect.height() - paddingTop) / 2);
        }
        int i3 = i2 + (iHeight - iMin2);
        float f = i + (iWidth - iMin);
        setPivotX(f);
        float f2 = i3;
        setPivotY(f2);
        this.mFolderIconPivotX = (int) (this.mFolderIcon.getMeasuredWidth() * ((f * 1.0f) / paddingLeft));
        this.mFolderIconPivotY = (int) (this.mFolderIcon.getMeasuredHeight() * ((f2 * 1.0f) / paddingTop));
        layoutParams.width = paddingLeft;
        layoutParams.height = paddingTop;
        layoutParams.x = iMin;
        layoutParams.y = iMin2;
    }

    float getPivotXForIconAnimation() {
        return this.mFolderIconPivotX;
    }

    float getPivotYForIconAnimation() {
        return this.mFolderIconPivotY;
    }

    private void setupContentForNumItems(int i) {
        setupContentDimensions(i);
        if (((DragLayer.LayoutParams) getLayoutParams()) == null) {
            DragLayer.LayoutParams layoutParams = new DragLayer.LayoutParams(0, 0);
            layoutParams.customPosition = true;
            setLayoutParams(layoutParams);
        }
        centerAboutIcon();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int paddingLeft = getPaddingLeft() + getPaddingRight() + this.mContent.getDesiredWidth();
        int paddingTop = getPaddingTop() + getPaddingBottom() + this.mContent.getDesiredHeight() + this.mFolderNameHeight;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mContent.getDesiredWidth(), 1073741824);
        this.mContent.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(this.mContent.getDesiredHeight(), 1073741824));
        this.mFolderName.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(this.mFolderNameHeight, 1073741824));
        setMeasuredDimension(paddingLeft, paddingTop);
    }

    private void arrangeChildren(ArrayList<View> arrayList) {
        int[] iArr = new int[2];
        ArrayList<View> itemsInReadingOrder = arrayList == null ? getItemsInReadingOrder() : arrayList;
        this.mContent.removeAllViews();
        for (int i = 0; i < itemsInReadingOrder.size(); i++) {
            View view = itemsInReadingOrder.get(i);
            this.mContent.getVacantCell(iArr, 1, 1);
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
            layoutParams.cellX = iArr[0];
            layoutParams.cellY = iArr[1];
            ItemInfo itemInfo = (ItemInfo) view.getTag();
            if (itemInfo.cellX != iArr[0] || itemInfo.cellY != iArr[1]) {
                itemInfo.cellX = iArr[0];
                itemInfo.cellY = iArr[1];
                LauncherModel.addOrMoveItemInDatabase(this.mLauncher, itemInfo, this.mInfo.id, 0, itemInfo.cellX, itemInfo.cellY);
            }
            this.mContent.addViewToCellLayout(view, -1, (int) itemInfo.id, layoutParams, true);
        }
        this.mItemsInvalidated = true;
    }

    public int getItemCount() {
        return this.mContent.getShortcutsAndWidgets().getChildCount();
    }

    public View getItemAt(int i) {
        return this.mContent.getShortcutsAndWidgets().getChildAt(i);
    }

    private void onCloseComplete() {
        if (L.DEBUG) {
            L.d(TAG, "onCloseComplete: parent = " + getParent());
        }
        DragLayer dragLayer = (DragLayer) getParent();
        if (dragLayer != null) {
            dragLayer.removeView(this);
        }
        this.mDragController.removeDropTarget(this);
        clearFocus();
        this.mFolderIcon.requestFocus();
        if (this.mRearrangeOnClose) {
            setupContentForNumItems(getItemCount());
            this.mRearrangeOnClose = false;
        }
        if (getItemCount() <= 1) {
            boolean z = this.mDragInProgress;
            if (!z && !this.mSuppressFolderDeletion) {
                replaceFolderWithFinalItem();
            } else if (z) {
                this.mDeleteFolderOnDropCompleted = true;
            }
        }
        this.mSuppressFolderDeletion = false;
    }

    private void replaceFolderWithFinalItem() {
        Runnable runnable = new Runnable() { // from class: com.android.launcher2.Folder.8
            @Override // java.lang.Runnable
            public void run() {
                View viewCreateShortcut;
                CellLayout cellLayout = Folder.this.mLauncher.getCellLayout(Folder.this.mInfo.container, Folder.this.mInfo.screen);
                if (Folder.this.getItemCount() == 1) {
                    ShortcutInfo shortcutInfo = Folder.this.mInfo.contents.get(0);
                    viewCreateShortcut = Folder.this.mLauncher.createShortcut(R.layout.application, cellLayout, shortcutInfo);
                    LauncherModel.addOrMoveItemInDatabase(Folder.this.mLauncher, shortcutInfo, Folder.this.mInfo.container, Folder.this.mInfo.screen, Folder.this.mInfo.cellX, Folder.this.mInfo.cellY);
                } else {
                    viewCreateShortcut = null;
                }
                View view = viewCreateShortcut;
                if (Folder.this.getItemCount() <= 1) {
                    LauncherModel.deleteItemFromDatabase(Folder.this.mLauncher, Folder.this.mInfo);
                    cellLayout.removeView(Folder.this.mFolderIcon);
                    if (Folder.this.mFolderIcon instanceof DropTarget) {
                        Folder.this.mDragController.removeDropTarget((DropTarget) Folder.this.mFolderIcon);
                    }
                    Folder.this.mLauncher.removeFolder(Folder.this.mInfo);
                }
                if (view != null) {
                    Folder.this.mLauncher.getWorkspace().addInScreen(view, Folder.this.mInfo.container, Folder.this.mInfo.screen, Folder.this.mInfo.cellX, Folder.this.mInfo.cellY, Folder.this.mInfo.spanX, Folder.this.mInfo.spanY);
                }
                Folder.this.mContent.removeAllViews();
                Folder.this.mInfo.contents.clear();
                Folder.this.mItemsInReadingOrder.clear();
            }
        };
        View itemAt = getItemAt(0);
        if (itemAt != null) {
            this.mFolderIcon.performDestroyAnimation(itemAt, runnable);
        }
        this.mDestroyed = true;
    }

    boolean isDestroyed() {
        return this.mDestroyed;
    }

    private void updateTextViewFocus() {
        View itemAt = getItemAt(getItemCount() - 1);
        getItemAt(getItemCount() - 1);
        if (itemAt != null) {
            this.mFolderName.setNextFocusDownId(itemAt.getId());
            this.mFolderName.setNextFocusRightId(itemAt.getId());
            this.mFolderName.setNextFocusLeftId(itemAt.getId());
            this.mFolderName.setNextFocusUpId(itemAt.getId());
        }
    }

    @Override // com.android.launcher2.DropTarget
    public void onDrop(DropTarget.DragObject dragObject) {
        ShortcutInfo shortcutInfoMakeShortcut;
        if (L.DEBUG) {
            L.d(TAG, "onDrop: DragObject = " + dragObject);
        }
        if (dragObject.dragInfo instanceof ApplicationInfo) {
            shortcutInfoMakeShortcut = ((ApplicationInfo) dragObject.dragInfo).makeShortcut();
            shortcutInfoMakeShortcut.spanX = 1;
            shortcutInfoMakeShortcut.spanY = 1;
        } else {
            shortcutInfoMakeShortcut = (ShortcutInfo) dragObject.dragInfo;
        }
        if (shortcutInfoMakeShortcut == this.mCurrentDragInfo) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) this.mCurrentDragView.getTag();
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) this.mCurrentDragView.getLayoutParams();
            int i = this.mEmptyCell[0];
            layoutParams.cellX = i;
            shortcutInfo.cellX = i;
            int i2 = this.mEmptyCell[1];
            layoutParams.cellY = i2;
            shortcutInfo.cellX = i2;
            this.mContent.addViewToCellLayout(this.mCurrentDragView, -1, (int) shortcutInfoMakeShortcut.id, layoutParams, true);
            if (dragObject.dragView.hasDrawn()) {
                this.mLauncher.getDragLayer().animateViewIntoPosition(dragObject.dragView, this.mCurrentDragView);
            } else {
                dragObject.deferDragViewCleanupPostAnimation = false;
                this.mCurrentDragView.setVisibility(0);
            }
            this.mItemsInvalidated = true;
            setupContentDimensions(getItemCount());
            this.mSuppressOnAdd = true;
        }
        this.mInfo.add(shortcutInfoMakeShortcut);
    }

    @Override // com.android.launcher2.FolderInfo.FolderListener
    public void onAdd(ShortcutInfo shortcutInfo) {
        if (L.DEBUG) {
            L.d(TAG, "onAdd item = " + shortcutInfo);
        }
        this.mItemsInvalidated = true;
        if (this.mSuppressOnAdd) {
            return;
        }
        if (!findAndSetEmptyCells(shortcutInfo)) {
            setupContentForNumItems(getItemCount() + 1);
            findAndSetEmptyCells(shortcutInfo);
        }
        createAndAddShortcut(shortcutInfo);
        LauncherModel.addOrMoveItemInDatabase(this.mLauncher, shortcutInfo, this.mInfo.id, 0, shortcutInfo.cellX, shortcutInfo.cellY);
    }

    @Override // com.android.launcher2.FolderInfo.FolderListener
    public void onRemove(ShortcutInfo shortcutInfo) {
        if (L.DEBUG) {
            L.d(TAG, "onRemove item = " + shortcutInfo);
        }
        this.mItemsInvalidated = true;
        if (shortcutInfo == this.mCurrentDragInfo) {
            return;
        }
        this.mContent.removeView(getViewForInfo(shortcutInfo));
        if (this.mState == 1) {
            this.mRearrangeOnClose = true;
        } else {
            setupContentForNumItems(getItemCount());
        }
        boolean z = false;
        ShortcutInfo shortcutInfo2 = getItemCount() == 1 ? this.mInfo.contents.get(0) : null;
        if (shortcutInfo2 != null) {
            ComponentName component = shortcutInfo2.intent.getComponent();
            ComponentName component2 = shortcutInfo.intent.getComponent();
            if (component != null && component2 != null && component.getPackageName().equals(component2.getPackageName()) && component.getClassName().equals(component2.getClassName())) {
                z = true;
            }
        }
        if (getItemCount() > 1 || z) {
            return;
        }
        replaceFolderWithFinalItem();
    }

    private View getViewForInfo(ShortcutInfo shortcutInfo) {
        for (int i = 0; i < this.mContent.getCountY(); i++) {
            for (int i2 = 0; i2 < this.mContent.getCountX(); i2++) {
                View childAt = this.mContent.getChildAt(i2, i);
                if (childAt.getTag() == shortcutInfo) {
                    return childAt;
                }
            }
        }
        return null;
    }

    @Override // com.android.launcher2.FolderInfo.FolderListener
    public void onItemsChanged() {
        updateTextViewFocus();
    }

    public ArrayList<View> getItemsInReadingOrder() {
        return getItemsInReadingOrder(true);
    }

    public ArrayList<View> getItemsInReadingOrder(boolean z) {
        if (this.mItemsInvalidated) {
            this.mItemsInReadingOrder.clear();
            for (int i = 0; i < this.mContent.getCountY(); i++) {
                for (int i2 = 0; i2 < this.mContent.getCountX(); i2++) {
                    View childAt = this.mContent.getChildAt(i2, i);
                    if (childAt != null && (((ShortcutInfo) childAt.getTag()) != this.mCurrentDragInfo || z)) {
                        this.mItemsInReadingOrder.add(childAt);
                    }
                }
            }
            this.mItemsInvalidated = false;
        }
        return this.mItemsInReadingOrder;
    }

    @Override // com.android.launcher2.DropTarget
    public void getLocationInDragLayer(int[] iArr) {
        this.mLauncher.getDragLayer().getLocationInDragLayer(this, iArr);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (view == this.mFolderName && z) {
            startEditingFolderName();
        }
    }

    public void updateContentUnreadNum() {
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "Folder updateContentUnreadNum: mInfo = " + this.mInfo);
        }
        int countX = this.mContent.getCountX();
        int countY = this.mContent.getCountY();
        for (int i = 0; i < countY; i++) {
            for (int i2 = 0; i2 < countX; i2++) {
                BubbleTextView bubbleTextView = (BubbleTextView) this.mContent.getChildAt(i2, i);
                if (bubbleTextView != null) {
                    bubbleTextView.invalidate();
                }
            }
        }
    }
}
