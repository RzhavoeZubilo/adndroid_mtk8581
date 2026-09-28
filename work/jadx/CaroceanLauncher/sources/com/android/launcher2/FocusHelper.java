package com.android.launcher2;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TabHost;
import android.widget.TabWidget;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class FocusHelper {
    private static final String TAG = "FocusHelper";

    private static TabHost findTabHostParent(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof TabHost)) {
            parent = parent.getParent();
        }
        return (TabHost) parent;
    }

    static boolean handleAppsCustomizeTabKeyEvent(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1) {
        }
        return i != 20 && i == 22;
    }

    private static ViewGroup getAppsCustomizePage(ViewGroup viewGroup, int i) {
        ViewGroup viewGroup2 = (ViewGroup) ((PagedView) viewGroup).getPageAt(i);
        return viewGroup2 instanceof PagedViewCellLayout ? (ViewGroup) viewGroup2.getChildAt(0) : viewGroup2;
    }

    /* JADX WARN: Code duplicated, block: B:78:0x015a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x015c  */
    /* JADX WARN: Multi-variable type inference failed */
    static boolean handlePagedViewGridLayoutWidgetKeyEvent(PagedViewWidget pagedViewWidget, int i, KeyEvent keyEvent) {
        View childAt;
        View childAt2;
        ViewGroup appsCustomizePage;
        View childAt3;
        ViewGroup appsCustomizePage2;
        View childAt4;
        if (L.DEBUG_KEY) {
            L.d(TAG, "handlePagedViewGridLayoutWidgetKeyEvent: w = " + pagedViewWidget + ", keyCode = " + i + ", event = " + keyEvent);
        }
        PagedViewGridLayout pagedViewGridLayout = (PagedViewGridLayout) pagedViewWidget.getParent();
        PagedView pagedView = (PagedView) pagedViewGridLayout.getParent();
        TabWidget tabWidget = findTabHostParent(pagedView).getTabWidget();
        int iIndexOfChild = pagedViewGridLayout.indexOfChild(pagedViewWidget);
        int childCount = pagedViewGridLayout.getChildCount();
        int iIndexToPage = pagedView.indexToPage(pagedView.indexOfChild(pagedViewGridLayout));
        int childCount2 = pagedView.getChildCount();
        int cellCountX = pagedViewGridLayout.getCellCountX();
        int cellCountY = pagedViewGridLayout.getCellCountY();
        int i2 = iIndexOfChild % cellCountX;
        int i3 = iIndexOfChild / cellCountX;
        boolean z = keyEvent.getAction() != 1;
        View childAt5 = null;
        if (i == 66) {
            if (z) {
                ((View.OnClickListener) pagedView).onClick(pagedViewWidget);
            }
        } else if (i != 92) {
            if (i != 93) {
                if (i != 122) {
                    if (i != 123) {
                        switch (i) {
                            case 19:
                                if (z) {
                                    if (i3 > 0) {
                                        View childAt6 = pagedViewGridLayout.getChildAt(((i3 - 1) * cellCountX) + i2);
                                        if (childAt6 != null) {
                                            childAt6.requestFocus();
                                        }
                                    } else {
                                        tabWidget.requestFocus();
                                    }
                                }
                                break;
                            case 20:
                                if (z && i3 < cellCountY - 1 && (childAt2 = pagedViewGridLayout.getChildAt(Math.min(childCount - 1, ((i3 + 1) * cellCountX) + i2))) != null) {
                                    childAt2.requestFocus();
                                }
                                break;
                            case 21:
                                if (z) {
                                    if (iIndexOfChild > 0) {
                                        pagedViewGridLayout.getChildAt(iIndexOfChild - 1).requestFocus();
                                    } else if (iIndexToPage > 0 && (appsCustomizePage = getAppsCustomizePage(pagedView, iIndexToPage - 1)) != null && (childAt3 = appsCustomizePage.getChildAt(appsCustomizePage.getChildCount() - 1)) != null) {
                                        childAt3.requestFocus();
                                    }
                                }
                                break;
                            case 22:
                                if (z) {
                                    if (iIndexOfChild < childCount - 1) {
                                        pagedViewGridLayout.getChildAt(iIndexOfChild + 1).requestFocus();
                                    } else if (iIndexToPage < childCount2 - 1 && (appsCustomizePage2 = getAppsCustomizePage(pagedView, iIndexToPage + 1)) != null && (childAt4 = appsCustomizePage2.getChildAt(0)) != null) {
                                        childAt4.requestFocus();
                                    }
                                }
                                break;
                            case 23:
                                if (z) {
                                    ((View.OnClickListener) pagedView).onClick(pagedViewWidget);
                                }
                                break;
                            default:
                                return false;
                        }
                    } else if (z) {
                        pagedViewGridLayout.getChildAt(childCount - 1).requestFocus();
                    }
                } else if (z && (childAt = pagedViewGridLayout.getChildAt(0)) != null) {
                    childAt.requestFocus();
                }
            } else if (z) {
                if (iIndexToPage < childCount2 - 1) {
                    ViewGroup appsCustomizePage3 = getAppsCustomizePage(pagedView, iIndexToPage + 1);
                    if (appsCustomizePage3 != null) {
                        childAt5 = appsCustomizePage3.getChildAt(0);
                    }
                } else {
                    childAt5 = pagedViewGridLayout.getChildAt(childCount - 1);
                }
                if (childAt5 != null) {
                    childAt5.requestFocus();
                }
            }
        } else if (z) {
            if (iIndexToPage > 0) {
                ViewGroup appsCustomizePage4 = getAppsCustomizePage(pagedView, iIndexToPage - 1);
                if (appsCustomizePage4 != null) {
                    childAt5 = appsCustomizePage4.getChildAt(0);
                }
            } else {
                childAt5 = pagedViewGridLayout.getChildAt(0);
            }
            if (childAt5 != null) {
                childAt5.requestFocus();
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:83:0x01aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x01ac  */
    /* JADX WARN: Multi-variable type inference failed */
    static boolean handleAppsCustomizeKeyEvent(View view, int i, KeyEvent keyEvent) {
        ViewGroup viewGroup;
        int cellCountX;
        int cellCountY;
        ViewGroup viewGroup2;
        int i2;
        ViewGroup appsCustomizePage;
        int i3;
        ViewGroup appsCustomizePage2;
        if (L.DEBUG_KEY) {
            L.d(TAG, "handleAppsCustomizeKeyEvent: v = " + view + ", keyCode = " + i + ", event = " + keyEvent + ", parent = " + view.getParent());
        }
        if (view.getParent() instanceof PagedViewCellLayoutChildren) {
            viewGroup = (ViewGroup) view.getParent();
            viewGroup2 = (ViewGroup) viewGroup.getParent();
            PagedViewCellLayout pagedViewCellLayout = (PagedViewCellLayout) viewGroup2;
            cellCountX = pagedViewCellLayout.getCellCountX();
            cellCountY = pagedViewCellLayout.getCellCountY();
        } else {
            viewGroup = (ViewGroup) view.getParent();
            PagedViewGridLayout pagedViewGridLayout = (PagedViewGridLayout) viewGroup;
            cellCountX = pagedViewGridLayout.getCellCountX();
            cellCountY = pagedViewGridLayout.getCellCountY();
            viewGroup2 = viewGroup;
        }
        PagedView pagedView = (PagedView) viewGroup2.getParent();
        int iIndexOfChild = viewGroup.indexOfChild(view);
        int childCount = viewGroup.getChildCount();
        int iIndexToPage = pagedView.indexToPage(pagedView.indexOfChild(viewGroup2));
        int childCount2 = pagedView.getChildCount();
        int i4 = iIndexOfChild % cellCountX;
        int i5 = iIndexOfChild / cellCountX;
        boolean z = keyEvent.getAction() != 1;
        if (i == 66) {
            if (z) {
                ((View.OnClickListener) pagedView).onClick(view);
            }
        } else if (i != 92) {
            if (i != 93) {
                if (i != 122) {
                    if (i != 123) {
                        switch (i) {
                            case 19:
                                if (z && i5 > 0 && !viewGroup.getChildAt(((i5 - 1) * cellCountX) + i4).requestFocus()) {
                                    L.d(TAG, "handleAppsCustomizeKeyEvent requestFocus 3 failed.");
                                }
                                break;
                            case 20:
                                if (z && i5 < cellCountY - 1 && !viewGroup.getChildAt(Math.min(childCount - 1, ((i5 + 1) * cellCountX) + i4)).requestFocus()) {
                                    L.d(TAG, "handleAppsCustomizeKeyEvent requestFocus 4 failed.");
                                }
                                break;
                            case 21:
                                if (z) {
                                    if (iIndexOfChild > 0) {
                                        viewGroup.getChildAt(iIndexOfChild - 1).requestFocus();
                                    } else if (iIndexToPage > 0 && (appsCustomizePage = getAppsCustomizePage(pagedView, (i2 = iIndexToPage - 1))) != null) {
                                        pagedView.snapToPage(i2);
                                        View childAt = appsCustomizePage.getChildAt(appsCustomizePage.getChildCount() - 1);
                                        if (childAt != null && !childAt.requestFocus()) {
                                            L.d(TAG, "handleAppsCustomizeKeyEvent requestFocus 1 failed.");
                                        }
                                    }
                                }
                                break;
                            case 22:
                                if (z) {
                                    if (iIndexOfChild < childCount - 1) {
                                        viewGroup.getChildAt(iIndexOfChild + 1).requestFocus();
                                    } else if (iIndexToPage < childCount2 - 1 && (appsCustomizePage2 = getAppsCustomizePage(pagedView, (i3 = iIndexToPage + 1))) != null) {
                                        pagedView.snapToPage(i3);
                                        View childAt2 = appsCustomizePage2.getChildAt(0);
                                        if (childAt2 != null && !childAt2.requestFocus()) {
                                            L.d(TAG, "handleAppsCustomizeKeyEvent requestFocus 2 failed.");
                                        }
                                    }
                                }
                                break;
                            case 23:
                                if (z) {
                                    ((View.OnClickListener) pagedView).onClick(view);
                                }
                                break;
                            default:
                                return false;
                        }
                    } else if (z) {
                        viewGroup.getChildAt(childCount - 1).requestFocus();
                    }
                } else if (z) {
                    viewGroup.getChildAt(0).requestFocus();
                }
            } else if (z) {
                if (iIndexToPage < childCount2 - 1) {
                    int i6 = iIndexToPage + 1;
                    ViewGroup appsCustomizePage3 = getAppsCustomizePage(pagedView, i6);
                    if (appsCustomizePage3 != null) {
                        pagedView.snapToPage(i6);
                        View childAt3 = appsCustomizePage3.getChildAt(0);
                        if (childAt3 != null) {
                            childAt3.requestFocus();
                        }
                    }
                } else {
                    viewGroup.getChildAt(childCount - 1).requestFocus();
                }
            }
        } else if (z) {
            if (iIndexToPage > 0) {
                int i7 = iIndexToPage - 1;
                ViewGroup appsCustomizePage4 = getAppsCustomizePage(pagedView, i7);
                if (appsCustomizePage4 != null) {
                    pagedView.snapToPage(i7);
                    View childAt4 = appsCustomizePage4.getChildAt(0);
                    if (childAt4 != null) {
                        childAt4.requestFocus();
                    }
                }
            } else {
                viewGroup.getChildAt(0).requestFocus();
            }
        }
        return true;
    }

    static boolean handleTabKeyEvent(AccessibleTabView accessibleTabView, int i, KeyEvent keyEvent) {
        if (!LauncherApplication.isScreenLarge()) {
            return false;
        }
        keyEvent.getAction();
        switch (i) {
            case 19:
            case 20:
            case 21:
            case 22:
                return true;
            default:
                return false;
        }
    }

    static boolean handleHotseatButtonKeyEvent(View view, int i, KeyEvent keyEvent, int i2) {
        if (L.DEBUG_KEY) {
            L.d(TAG, "handleHotseatButtonKeyEvent: v = " + view + ", tag = " + view.getTag() + ", event = " + keyEvent + ", orientation = " + i2);
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        Workspace workspace = (Workspace) ((ViewGroup) viewGroup.getParent()).findViewById(R.id.workspace);
        int iIndexOfChild = viewGroup.indexOfChild(view);
        int childCount = viewGroup.getChildCount();
        int currentPage = workspace.getCurrentPage();
        boolean z = keyEvent.getAction() != 1;
        switch (i) {
            case 19:
                if (z) {
                    CellLayout cellLayout = (CellLayout) workspace.getChildAt(currentPage);
                    View iconInDirection = getIconInDirection(cellLayout, cellLayout.getShortcutsAndWidgets(), -1, 1);
                    if (iconInDirection != null) {
                        iconInDirection.requestFocus();
                    } else {
                        workspace.requestFocus();
                    }
                }
                break;
            case 20:
                break;
            case 21:
                if (z) {
                    if (iIndexOfChild > 0) {
                        viewGroup.getChildAt(iIndexOfChild - 1).requestFocus();
                    } else {
                        workspace.snapToPage(currentPage - 1);
                    }
                }
                break;
            case 22:
                if (z) {
                    if (iIndexOfChild < childCount - 1) {
                        viewGroup.getChildAt(iIndexOfChild + 1).requestFocus();
                    } else {
                        workspace.snapToPage(currentPage + 1);
                    }
                }
                break;
            default:
                return false;
        }
        return true;
    }

    private static ShortcutAndWidgetContainer getCellLayoutChildrenForIndex(ViewGroup viewGroup, int i) {
        return (ShortcutAndWidgetContainer) ((ViewGroup) viewGroup.getChildAt(i)).getChildAt(0);
    }

    private static ArrayList<View> getCellLayoutChildrenSortedSpatially(CellLayout cellLayout, ViewGroup viewGroup) {
        final int countX = cellLayout.getCountX();
        int childCount = viewGroup.getChildCount();
        ArrayList<View> arrayList = new ArrayList<>();
        for (int i = 0; i < childCount; i++) {
            arrayList.add(viewGroup.getChildAt(i));
        }
        Collections.sort(arrayList, new Comparator<View>() { // from class: com.android.launcher2.FocusHelper.1
            @Override // java.util.Comparator
            public int compare(View view, View view2) {
                CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
                CellLayout.LayoutParams layoutParams2 = (CellLayout.LayoutParams) view2.getLayoutParams();
                return ((layoutParams.cellY * countX) + layoutParams.cellX) - ((layoutParams2.cellY * countX) + layoutParams2.cellX);
            }
        });
        return arrayList;
    }

    private static View findIndexOfIcon(ArrayList<View> arrayList, int i, int i2) {
        View view;
        int size = arrayList.size();
        do {
            i += i2;
            if (i >= 0 && i < size) {
                view = arrayList.get(i);
                if (view instanceof BubbleTextView) {
                    break;
                }
            } else {
                return null;
            }
        } while (!(view instanceof FolderIcon));
        return view;
    }

    private static View getIconInDirection(CellLayout cellLayout, ViewGroup viewGroup, int i, int i2) {
        return findIndexOfIcon(getCellLayoutChildrenSortedSpatially(cellLayout, viewGroup), i, i2);
    }

    private static View getIconInDirection(CellLayout cellLayout, ViewGroup viewGroup, View view, int i) {
        ArrayList<View> cellLayoutChildrenSortedSpatially = getCellLayoutChildrenSortedSpatially(cellLayout, viewGroup);
        return findIndexOfIcon(cellLayoutChildrenSortedSpatially, cellLayoutChildrenSortedSpatially.indexOf(view), i);
    }

    private static View getClosestIconOnLine(CellLayout cellLayout, ViewGroup viewGroup, View view, int i) {
        ArrayList<View> cellLayoutChildrenSortedSpatially = getCellLayoutChildrenSortedSpatially(cellLayout, viewGroup);
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        int countY = cellLayout.getCountY();
        int i2 = layoutParams.cellY;
        int i3 = i2 + i;
        if (i3 < 0 || i3 >= countY) {
            return null;
        }
        float f = Float.MAX_VALUE;
        int iIndexOf = cellLayoutChildrenSortedSpatially.indexOf(view);
        int size = i < 0 ? -1 : cellLayoutChildrenSortedSpatially.size();
        int i4 = -1;
        while (iIndexOf != size) {
            View view2 = cellLayoutChildrenSortedSpatially.get(iIndexOf);
            CellLayout.LayoutParams layoutParams2 = (CellLayout.LayoutParams) view2.getLayoutParams();
            boolean z = false;
            int i5 = layoutParams2.cellY;
            if (i >= 0 ? i5 > i2 : i5 < i2) {
                z = true;
            }
            if (z && ((view2 instanceof BubbleTextView) || (view2 instanceof FolderIcon))) {
                float fSqrt = (float) Math.sqrt(Math.pow(layoutParams2.cellX - layoutParams.cellX, 2.0d) + Math.pow(layoutParams2.cellY - layoutParams.cellY, 2.0d));
                if (fSqrt < f) {
                    i4 = iIndexOf;
                    f = fSqrt;
                }
            }
            iIndexOf = iIndexOf <= size ? iIndexOf + 1 : iIndexOf - 1;
        }
        if (i4 > -1) {
            return cellLayoutChildrenSortedSpatially.get(i4);
        }
        return null;
    }

    static boolean handleIconKeyEvent(View view, int i, KeyEvent keyEvent) {
        View iconInDirection;
        View iconInDirection2;
        if (L.DEBUG_KEY) {
            L.d(TAG, "handleIconKeyEvent: v = " + view + ", tag = " + view.getTag() + ", event = " + keyEvent);
        }
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer) view.getParent();
        CellLayout cellLayout = (CellLayout) shortcutAndWidgetContainer.getParent();
        Workspace workspace = (Workspace) cellLayout.getParent();
        ViewGroup viewGroup = (ViewGroup) workspace.getParent();
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.qsb_bar);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup.findViewById(R.id.hotseat);
        int iIndexOfChild = workspace.indexOfChild(cellLayout);
        int childCount = workspace.getChildCount();
        boolean z = keyEvent.getAction() != 1;
        if (i != 92) {
            if (i != 93) {
                if (i != 122) {
                    if (i != 123) {
                        switch (i) {
                            case 19:
                                if (!z) {
                                    return false;
                                }
                                View closestIconOnLine = getClosestIconOnLine(cellLayout, shortcutAndWidgetContainer, view, -1);
                                if (closestIconOnLine != null) {
                                    closestIconOnLine.requestFocus();
                                } else {
                                    viewGroup2.requestFocus();
                                    return false;
                                }
                                break;
                                break;
                            case 20:
                                if (!z) {
                                    return false;
                                }
                                View closestIconOnLine2 = getClosestIconOnLine(cellLayout, shortcutAndWidgetContainer, view, 1);
                                if (closestIconOnLine2 == null) {
                                    if (viewGroup3 == null) {
                                        return false;
                                    }
                                    viewGroup3.requestFocus();
                                    return false;
                                }
                                closestIconOnLine2.requestFocus();
                                break;
                                break;
                            case 21:
                                if (z) {
                                    View iconInDirection3 = getIconInDirection(cellLayout, shortcutAndWidgetContainer, view, -1);
                                    if (iconInDirection3 != null) {
                                        iconInDirection3.requestFocus();
                                    } else if (iIndexOfChild > 0) {
                                        int i2 = iIndexOfChild - 1;
                                        ShortcutAndWidgetContainer cellLayoutChildrenForIndex = getCellLayoutChildrenForIndex(workspace, i2);
                                        View iconInDirection4 = getIconInDirection(cellLayout, cellLayoutChildrenForIndex, cellLayoutChildrenForIndex.getChildCount(), -1);
                                        if (iconInDirection4 != null) {
                                            iconInDirection4.requestFocus();
                                        } else {
                                            workspace.snapToPage(i2);
                                        }
                                    }
                                }
                                break;
                            case 22:
                                if (z) {
                                    View iconInDirection5 = getIconInDirection(cellLayout, shortcutAndWidgetContainer, view, 1);
                                    if (iconInDirection5 != null) {
                                        iconInDirection5.requestFocus();
                                    } else if (iIndexOfChild < childCount - 1) {
                                        int i3 = iIndexOfChild + 1;
                                        View iconInDirection6 = getIconInDirection(cellLayout, getCellLayoutChildrenForIndex(workspace, i3), -1, 1);
                                        if (iconInDirection6 != null) {
                                            iconInDirection6.requestFocus();
                                        } else {
                                            workspace.snapToPage(i3);
                                        }
                                    }
                                }
                                break;
                            default:
                                return false;
                        }
                    } else if (z && (iconInDirection2 = getIconInDirection(cellLayout, shortcutAndWidgetContainer, shortcutAndWidgetContainer.getChildCount(), -1)) != null) {
                        iconInDirection2.requestFocus();
                    }
                } else if (z && (iconInDirection = getIconInDirection(cellLayout, shortcutAndWidgetContainer, -1, 1)) != null) {
                    iconInDirection.requestFocus();
                }
            } else if (z) {
                if (iIndexOfChild < childCount - 1) {
                    int i4 = iIndexOfChild + 1;
                    View iconInDirection7 = getIconInDirection(cellLayout, getCellLayoutChildrenForIndex(workspace, i4), -1, 1);
                    if (iconInDirection7 != null) {
                        iconInDirection7.requestFocus();
                    } else {
                        workspace.snapToPage(i4);
                    }
                } else {
                    View iconInDirection8 = getIconInDirection(cellLayout, shortcutAndWidgetContainer, shortcutAndWidgetContainer.getChildCount(), -1);
                    if (iconInDirection8 != null) {
                        iconInDirection8.requestFocus();
                    }
                }
            }
        } else if (z) {
            if (iIndexOfChild > 0) {
                int i5 = iIndexOfChild - 1;
                View iconInDirection9 = getIconInDirection(cellLayout, getCellLayoutChildrenForIndex(workspace, i5), -1, 1);
                if (iconInDirection9 != null) {
                    iconInDirection9.requestFocus();
                } else {
                    workspace.snapToPage(i5);
                }
            } else {
                View iconInDirection10 = getIconInDirection(cellLayout, shortcutAndWidgetContainer, -1, 1);
                if (iconInDirection10 != null) {
                    iconInDirection10.requestFocus();
                }
            }
        }
        return true;
    }

    static boolean handleFolderKeyEvent(View view, int i, KeyEvent keyEvent) {
        View iconInDirection;
        View iconInDirection2;
        View closestIconOnLine;
        View iconInDirection3;
        if (L.DEBUG_KEY) {
            L.d(TAG, "handleFolderKeyEvent: v = " + view + ", event = " + keyEvent);
        }
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer) view.getParent();
        CellLayout cellLayout = (CellLayout) shortcutAndWidgetContainer.getParent();
        FolderEditText folderEditText = ((Folder) cellLayout.getParent()).mFolderName;
        boolean z = keyEvent.getAction() != 1;
        if (i != 122) {
            if (i != 123) {
                switch (i) {
                    case 19:
                        if (z && (closestIconOnLine = getClosestIconOnLine(cellLayout, shortcutAndWidgetContainer, view, -1)) != null) {
                            closestIconOnLine.requestFocus();
                        }
                        break;
                    case 20:
                        if (z) {
                            View closestIconOnLine2 = getClosestIconOnLine(cellLayout, shortcutAndWidgetContainer, view, 1);
                            if (closestIconOnLine2 != null) {
                                closestIconOnLine2.requestFocus();
                            } else {
                                folderEditText.requestFocus();
                            }
                        }
                        break;
                    case 21:
                        if (z && (iconInDirection3 = getIconInDirection(cellLayout, shortcutAndWidgetContainer, view, -1)) != null) {
                            iconInDirection3.requestFocus();
                        }
                        break;
                    case 22:
                        if (z) {
                            View iconInDirection4 = getIconInDirection(cellLayout, shortcutAndWidgetContainer, view, 1);
                            if (iconInDirection4 != null) {
                                iconInDirection4.requestFocus();
                            } else {
                                folderEditText.requestFocus();
                            }
                        }
                        break;
                    default:
                        return false;
                }
            } else if (z && (iconInDirection2 = getIconInDirection(cellLayout, shortcutAndWidgetContainer, shortcutAndWidgetContainer.getChildCount(), -1)) != null) {
                iconInDirection2.requestFocus();
            }
        } else if (z && (iconInDirection = getIconInDirection(cellLayout, shortcutAndWidgetContainer, -1, 1)) != null) {
            iconInDirection.requestFocus();
        }
        return true;
    }
}
