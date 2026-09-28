package com.android.launcher2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Parcelable;
import android.widget.Toast;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class InstallShortcutReceiver extends BroadcastReceiver {
    public static final String ACTION_INSTALL_SHORTCUT = "com.android.launcher.action.INSTALL_SHORTCUT";
    private static final String EXTRA_SHORTCUT_ICON_ARRAY = "com.android.launcher2.extra.shortcut.array.ICON";
    private static final String EXTRA_SHORTCUT_ICON_RESOURCE_ARRAY = "com.android.launcher2.extra.shortcut.array.ICON_RESOURCE";
    private static final String EXTRA_SHORTCUT_INTENT_ARRAY = "com.android.launcher2.extra.shortcut.array.INTENT";
    private static final String EXTRA_SHORTCUT_NAME_ARRAY = "com.android.launcher2.extra.shortcut.array.NAME";
    private static final String EXTRA_SHORTCUT_STEP_NUMBER = "com.android.launcher2.extra.shortcut.stepnumber";
    private static final String EXTRA_SHORTCUT_TOTAL_NUMBER = "com.android.launcher2.extra.shortcut.totalnumber";
    private static final int INSTALL_SHORTCUT_ADD_FAIL = -3;
    private static final int INSTALL_SHORTCUT_IS_DUPLICATE = -1;
    private static final int INSTALL_SHORTCUT_NO_SPACE = -2;
    private static final int INSTALL_SHORTCUT_SUCCESSFUL = 0;
    public static final String NEW_APPS_LIST_KEY = "apps.new.list";
    public static final String NEW_APPS_PAGE_KEY = "apps.new.page";
    public static final int NEW_SHORTCUT_BOUNCE_DURATION = 450;
    public static final int NEW_SHORTCUT_STAGGER_DELAY = 75;
    public static final String SHORTCUT_MIMETYPE = "com.android.launcher/shortcut";
    private static final String TAG = "InstallShortcutReceiver";
    private static ArrayList<PendingInstallShortcutInfo> mInstallQueue = new ArrayList<>();
    private static boolean mUseInstallQueue = false;
    private static Map<String, Integer> sName2TotalNumberMap = new HashMap();
    private static Map<String, Integer> sName2StepNumberMap = new HashMap();
    private static Map<String, Intent[]> sName2IntentArrayMap = new HashMap();
    private static ArrayList<ItemInfo> sItemsAddingToDatabase = new ArrayList<>();

    private static class PendingInstallShortcutInfo {
        Intent data;
        Intent launchIntent;
        String name;

        public PendingInstallShortcutInfo(Intent intent, String str, Intent intent2) {
            this.data = intent;
            this.name = str;
            this.launchIntent = intent2;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (L.DEBUG) {
            L.d(TAG, "onReceive: received intent action: " + intent.getAction());
        }
        if (ACTION_INSTALL_SHORTCUT.equals(intent.getAction())) {
            sItemsAddingToDatabase.clear();
            Parcelable[] parcelableArrayExtra = intent.getParcelableArrayExtra(EXTRA_SHORTCUT_INTENT_ARRAY);
            if (parcelableArrayExtra == null || parcelableArrayExtra.length == 0) {
                if (intent.getIntExtra(EXTRA_SHORTCUT_TOTAL_NUMBER, 0) < 1) {
                    installShortcutSingle(context, intent);
                    return;
                } else {
                    installShortcutStep(context, intent);
                    return;
                }
            }
            installShortcutArray(context, intent);
        }
    }

    private static void installShortcutSingle(Context context, Intent intent) {
        Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        if (intent2 == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        if (stringExtra == null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                stringExtra = packageManager.getActivityInfo(intent2.getComponent(), 0).loadLabel(packageManager).toString();
            } catch (PackageManager.NameNotFoundException unused) {
                return;
            }
        }
        if (L.DEBUG) {
            L.d(TAG, "installShortcutSingle: data = " + intent + ", name = " + stringExtra + ", intent = " + intent2);
        }
        boolean z = LauncherModel.getCellCountX() <= 0 || LauncherModel.getCellCountY() <= 0;
        PendingInstallShortcutInfo pendingInstallShortcutInfo = new PendingInstallShortcutInfo(intent, stringExtra, intent2);
        if (mUseInstallQueue || z) {
            mInstallQueue.add(pendingInstallShortcutInfo);
            if (L.DEBUG) {
                L.d(TAG, "installShortcutSingle: Add the install process into queue " + mInstallQueue.size());
                return;
            }
            return;
        }
        InstallShortcutHelper.increaseInstallingCount(1);
        processInstallShortcut(context, pendingInstallShortcutInfo);
    }

    private static void installShortcutStep(Context context, Intent intent) {
        Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        if (intent2 == null) {
            L.e(TAG, "installShortcutStep: Intent is null!");
            return;
        }
        int intExtra = intent.getIntExtra(EXTRA_SHORTCUT_TOTAL_NUMBER, 0);
        boolean z = true;
        if (intExtra < 1) {
            L.e(TAG, "installShortcutStep: total number is smaller than 1!");
            return;
        }
        int intExtra2 = intent.getIntExtra(EXTRA_SHORTCUT_STEP_NUMBER, 0);
        if (intExtra2 < 1 || intExtra2 > intExtra) {
            L.e(TAG, "installShortcutStep: Step number is wrong!");
            return;
        }
        String encodedSchemeSpecificPart = null;
        Uri data = intent.getData();
        if (data != null && (encodedSchemeSpecificPart = data.getEncodedSchemeSpecificPart()) == null) {
            if (L.DEBUG) {
                L.d(TAG, "installShortcutStep: Package name is null!");
                return;
            }
            return;
        }
        if (sName2TotalNumberMap.containsKey(encodedSchemeSpecificPart) && sName2TotalNumberMap.get(encodedSchemeSpecificPart).intValue() != intExtra) {
            sName2IntentArrayMap.put(encodedSchemeSpecificPart, new Intent[intExtra]);
            sName2StepNumberMap.put(encodedSchemeSpecificPart, 0);
        }
        sName2TotalNumberMap.put(encodedSchemeSpecificPart, Integer.valueOf(intExtra));
        if (!sName2IntentArrayMap.containsKey(encodedSchemeSpecificPart)) {
            sName2IntentArrayMap.put(encodedSchemeSpecificPart, new Intent[intExtra]);
            sName2StepNumberMap.put(encodedSchemeSpecificPart, 0);
        }
        sName2IntentArrayMap.get(encodedSchemeSpecificPart)[intExtra2 - 1] = intent;
        sName2StepNumberMap.put(encodedSchemeSpecificPart, Integer.valueOf(intExtra2));
        if (L.DEBUG) {
            L.d(TAG, "installShortcutStep: data = " + intent + ", name = " + encodedSchemeSpecificPart + ", intent = " + intent2 + ", total number = " + intExtra + ", step = " + intExtra2);
        }
        if (LauncherModel.getCellCountX() > 0 && LauncherModel.getCellCountY() > 0) {
            z = false;
        }
        if (mUseInstallQueue || z) {
            String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
            if (stringExtra == null) {
                try {
                    PackageManager packageManager = context.getPackageManager();
                    stringExtra = packageManager.getActivityInfo(intent2.getComponent(), 0).loadLabel(packageManager).toString();
                } catch (PackageManager.NameNotFoundException unused) {
                    if (L.DEBUG) {
                        L.d(TAG, "installShortcutStep: Activity name is not found!");
                        return;
                    }
                    return;
                }
            }
            mInstallQueue.add(new PendingInstallShortcutInfo(intent, stringExtra, intent2));
            return;
        }
        if (intExtra2 == intExtra) {
            if (L.DEBUG) {
                L.d(TAG, "installShortcutStep: Hit the total and start to install shortcut array!");
            }
            Intent[] intentArr = sName2IntentArrayMap.get(encodedSchemeSpecificPart);
            for (Intent intent3 : intentArr) {
                if (intent3 == null) {
                    L.e(TAG, "installShortcutStep: IntentArray has null intent!");
                    clearMaps(encodedSchemeSpecificPart);
                    return;
                }
            }
            InstallShortcutHelper.increaseInstallingCount(intentArr.length);
            processInstallShortcutArray(context, intentArr);
            clearMaps(encodedSchemeSpecificPart);
        }
    }

    private static void clearMaps(String str) {
        sName2TotalNumberMap.remove(str);
        sName2IntentArrayMap.remove(str);
        sName2StepNumberMap.remove(str);
    }

    private static void installShortcutArray(Context context, Intent intent) {
        Parcelable[] parcelableArrayExtra = intent.getParcelableArrayExtra(EXTRA_SHORTCUT_INTENT_ARRAY);
        String[] stringArrayExtra = intent.getStringArrayExtra(EXTRA_SHORTCUT_NAME_ARRAY);
        Parcelable[] parcelableArrayExtra2 = intent.getParcelableArrayExtra(EXTRA_SHORTCUT_ICON_ARRAY);
        Parcelable[] parcelableArrayExtra3 = intent.getParcelableArrayExtra(EXTRA_SHORTCUT_ICON_RESOURCE_ARRAY);
        int length = parcelableArrayExtra.length;
        if (stringArrayExtra.length != length) {
            if (L.DEBUG) {
                L.e(TAG, "installShortcutArray: intent array and name array have different size!");
                return;
            }
            return;
        }
        for (int i = 0; i < length; i++) {
            if (((Intent) parcelableArrayExtra[i]) == null) {
                if (L.DEBUG) {
                    L.e(TAG, "installShortcutArray: intent is null with " + i);
                    return;
                }
                return;
            } else {
                if (stringArrayExtra[i] == null) {
                    try {
                        PackageManager packageManager = context.getPackageManager();
                        stringArrayExtra[i] = packageManager.getActivityInfo(((Intent) parcelableArrayExtra[i]).getComponent(), 0).loadLabel(packageManager).toString();
                    } catch (PackageManager.NameNotFoundException unused) {
                        return;
                    }
                }
            }
        }
        if (parcelableArrayExtra2 != null && parcelableArrayExtra2.length != length) {
            if (L.DEBUG) {
                L.e(TAG, "installShortcutArray: icon array is not null but the size not match!");
                return;
            }
            return;
        }
        if (parcelableArrayExtra3 != null && parcelableArrayExtra3.length != length) {
            if (L.DEBUG) {
                L.e(TAG, "installShortcutArray: icon resource array is not null but the size not match!");
                return;
            }
            return;
        }
        boolean z = LauncherModel.getCellCountX() <= 0 || LauncherModel.getCellCountY() <= 0;
        Intent[] intentArr = new Intent[length];
        for (int i2 = 0; i2 < length; i2++) {
            String str = stringArrayExtra[i2];
            Intent intent2 = new Intent();
            intent2.putExtra("android.intent.extra.shortcut.NAME", str);
            intent2.putExtra("android.intent.extra.shortcut.INTENT", parcelableArrayExtra[i2]);
            if (parcelableArrayExtra2 != null) {
                intent2.putExtra("android.intent.extra.shortcut.ICON", parcelableArrayExtra2[i2]);
            }
            if (parcelableArrayExtra3 != null) {
                intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", parcelableArrayExtra3[i2]);
            }
            if (mUseInstallQueue || z) {
                if (L.DEBUG) {
                    L.d(TAG, "installShortcutArray: Add into Install Queue!");
                }
                mInstallQueue.add(new PendingInstallShortcutInfo(intent2, str, (Intent) parcelableArrayExtra[i2]));
            }
            intentArr[i2] = intent2;
        }
        if (mUseInstallQueue || z) {
            return;
        }
        InstallShortcutHelper.increaseInstallingCount(length);
        processInstallShortcutArray(context, intentArr);
    }

    static void enableInstallQueue() {
        mUseInstallQueue = true;
    }

    static void disableAndFlushInstallQueue(Context context) {
        mUseInstallQueue = false;
        flushInstallQueue(context);
    }

    static void flushInstallQueue(Context context) {
        mInstallQueue.iterator();
        if (mInstallQueue.size() > 0) {
            InstallShortcutHelper.increaseInstallingCount(mInstallQueue.size());
        }
        sItemsAddingToDatabase.clear();
        for (int i = 0; i < mInstallQueue.size(); i++) {
            if (!processInstallShortcut(context, mInstallQueue.get(i))) {
                if (L.DEBUG) {
                    L.d(TAG, "flushInstallQueue: there is no space for shortcut. Stop right now.");
                }
                InstallShortcutHelper.decreaseInstallingCount(context, (mInstallQueue.size() - 1) - i);
                break;
            }
        }
        mInstallQueue.clear();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:54:? A[RETURN, SYNTHETIC] */
    private static boolean processInstallShortcut(Context context, PendingInstallShortcutInfo pendingInstallShortcutInfo) {
        int[] iArr;
        int i;
        boolean z;
        SharedPreferences sharedPreferences = context.getSharedPreferences(LauncherApplication.getSharedPreferencesKey(), 0);
        Intent intent = pendingInstallShortcutInfo.data;
        Intent intent2 = pendingInstallShortcutInfo.launchIntent;
        String str = pendingInstallShortcutInfo.name;
        if (L.DEBUG) {
            L.d(TAG, "processInstallShortcut pendingInfo = " + pendingInstallShortcutInfo + ", data = " + intent + ", intent = " + intent2 + ", name = " + str);
        }
        int i2 = 1;
        int[] iArr2 = {0};
        synchronized (((LauncherApplication) context.getApplicationContext())) {
            ArrayList<ItemInfo> itemsInLocalCoordinates = LauncherModel.getItemsInLocalCoordinates(context);
            boolean zShortcutExists = LauncherModel.shortcutExists(context, str, intent2);
            boolean zInstallShortcut = false;
            int i3 = 0;
            while (true) {
                if (i3 >= 5 || zInstallShortcut) {
                    iArr = iArr2;
                    break;
                }
                int i4 = (((int) ((i3 / 2.0f) + 0.5f)) * (i3 % 2 == i2 ? i2 : -1)) + 0;
                if (i4 < 0 || i4 >= 2) {
                    iArr = iArr2;
                } else {
                    iArr = iArr2;
                    zInstallShortcut = installShortcut(context, intent, itemsInLocalCoordinates, str, intent2, i4, zShortcutExists, sharedPreferences, iArr);
                    if (zInstallShortcut) {
                        break;
                    }
                }
                i3++;
                iArr2 = iArr;
                i2 = 1;
            }
        }
        if (iArr[0] == -2) {
            Toast.makeText(context, context.getString(R.string.completely_out_of_space), 0).show();
            i = -1;
        } else {
            i = -1;
            if (iArr[0] == -1) {
                z = true;
                Toast.makeText(context, context.getString(R.string.shortcut_duplicate, str), 0).show();
            }
            if (iArr[0] != -2 || iArr[0] == i || iArr[0] == -3) {
                InstallShortcutHelper.decreaseInstallingCount(context, false);
            }
            if (iArr[0] != -2) {
                return z;
            }
            return false;
        }
        z = true;
        if (iArr[0] != -2) {
            InstallShortcutHelper.decreaseInstallingCount(context, false);
        } else {
            InstallShortcutHelper.decreaseInstallingCount(context, false);
        }
        if (iArr[0] != -2) {
            return z;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:77:0x0237  */
    /* JADX WARN: Code duplicated, block: B:78:0x0276  */
    /* JADX WARN: Code duplicated, block: B:80:0x0279  */
    /* JADX WARN: Code duplicated, block: B:98:? A[RETURN, SYNTHETIC] */
    private static void processInstallShortcutArray(Context context, Intent[] intentArr) {
        int i;
        ArrayList arrayList;
        Intent[] intentArr2;
        ArrayList arrayList2;
        ArrayList arrayList3;
        int length;
        int i2;
        int iIntValue;
        int iIntValue2;
        String stringExtra;
        int i3;
        SharedPreferences sharedPreferences;
        ArrayList arrayList4;
        char c;
        String str;
        Intent intent;
        Intent[] intentArr3 = intentArr;
        SharedPreferences sharedPreferences2 = context.getSharedPreferences(LauncherApplication.getSharedPreferencesKey(), 0);
        LauncherApplication launcherApplication = (LauncherApplication) context.getApplicationContext();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList<ItemInfo> itemsInLocalCoordinates = LauncherModel.getItemsInLocalCoordinates(context);
        int i4 = 0;
        while (true) {
            if (i4 >= intentArr3.length) {
                i = 1;
                arrayList = arrayList7;
                intentArr2 = intentArr3;
                arrayList2 = arrayList6;
                arrayList3 = arrayList8;
                length = 0;
                break;
            }
            Intent intent2 = intentArr3[i4];
            Intent intent3 = (Intent) intentArr3[i4].getParcelableExtra("android.intent.extra.shortcut.INTENT");
            String stringExtra2 = intentArr3[i4].getStringExtra("android.intent.extra.shortcut.NAME");
            if (L.DEBUG) {
                L.d(TAG, "processInstallShortcutArray: data = " + intent2 + ", intent = " + intent3 + ", name = " + stringExtra2);
            }
            int[] iArr = {0};
            synchronized (launcherApplication) {
                boolean zShortcutExists = !intent2.getBooleanExtra("duplicate", true) ? LauncherModel.shortcutExists(context, stringExtra2, intent3) : false;
                boolean zInstallShortcut = false;
                int i5 = 0;
                while (true) {
                    if (i5 >= 5 || zInstallShortcut) {
                        i3 = i4;
                        sharedPreferences = sharedPreferences2;
                        arrayList4 = arrayList6;
                        arrayList3 = arrayList8;
                        arrayList = arrayList7;
                        break;
                    }
                    i3 = i4;
                    int i6 = (((int) ((i5 / 2.0f) + 0.5f)) * (i5 % 2 == 1 ? 1 : -1)) + 0;
                    if (i6 < 0 || i6 >= 2) {
                        str = stringExtra2;
                        intent = intent3;
                        sharedPreferences = sharedPreferences2;
                        arrayList4 = arrayList6;
                        arrayList3 = arrayList8;
                        arrayList = arrayList7;
                    } else {
                        str = stringExtra2;
                        intent = intent3;
                        arrayList4 = arrayList6;
                        arrayList3 = arrayList8;
                        SharedPreferences sharedPreferences3 = sharedPreferences2;
                        sharedPreferences = sharedPreferences2;
                        arrayList = arrayList7;
                        zInstallShortcut = installShortcut(context, intent2, itemsInLocalCoordinates, str, intent, i6, zShortcutExists, sharedPreferences3, iArr);
                        if (zInstallShortcut) {
                            break;
                        }
                    }
                    i5++;
                    arrayList7 = arrayList;
                    arrayList8 = arrayList3;
                    stringExtra2 = str;
                    i4 = i3;
                    intent3 = intent;
                    intent2 = intent2;
                    arrayList6 = arrayList4;
                    sharedPreferences2 = sharedPreferences;
                }
            }
            int i7 = iArr[0];
            if (i7 != -3) {
                if (i7 == -2) {
                    c = 0;
                    arrayList.add(Integer.valueOf(i3));
                    InstallShortcutHelper.decreaseInstallingCount(context, false);
                } else if (i7 != -1) {
                    if (i7 == 0) {
                        arrayList5.add(Integer.valueOf(i3));
                    }
                    arrayList2 = arrayList4;
                    c = 0;
                } else {
                    arrayList3.add(Integer.valueOf(i3));
                    c = 0;
                    InstallShortcutHelper.decreaseInstallingCount(context, false);
                }
                arrayList2 = arrayList4;
            } else {
                c = 0;
                arrayList2 = arrayList4;
                arrayList2.add(Integer.valueOf(i3));
                InstallShortcutHelper.decreaseInstallingCount(context, false);
            }
            if (L.DEBUG) {
                L.d(TAG, "processInstallShortcutArray: result is " + iArr[c]);
            }
            if (iArr[c] == -2) {
                if (L.DEBUG) {
                    L.d(TAG, "processInstallShortcutArray: there is no space for shortcut. Stop right now.");
                }
                intentArr2 = intentArr;
                i = 1;
                length = (intentArr2.length - 1) - i3;
                InstallShortcutHelper.decreaseInstallingCount(context, length);
                break;
            }
            i4 = i3 + 1;
            intentArr3 = intentArr;
            arrayList7 = arrayList;
            arrayList8 = arrayList3;
            sharedPreferences2 = sharedPreferences;
            arrayList6 = arrayList2;
        }
        int size = arrayList5.size();
        int size2 = arrayList2.size();
        int size3 = arrayList.size() + length;
        int size4 = arrayList3.size();
        if (size == i) {
            StringBuilder sb = new StringBuilder();
            i2 = 0;
            String stringExtra3 = intentArr2[((Integer) arrayList5.get(0)).intValue()].getStringExtra("android.intent.extra.shortcut.NAME");
            String string = context.getString(R.string.shortcut_installed);
            Object[] objArr = new Object[i];
            objArr[0] = stringExtra3;
            sb.append(String.format(string, objArr));
            Toast.makeText(context, sb.toString(), 0).show();
        } else {
            i2 = 0;
            if (size > i) {
                StringBuilder sb2 = new StringBuilder();
                String string2 = context.getString(R.string.shortcut_array_installed);
                Object[] objArr2 = new Object[i];
                objArr2[0] = Integer.valueOf(size);
                sb2.append(String.format(string2, objArr2));
                Toast.makeText(context, sb2.toString(), 0).show();
            }
        }
        if (size4 + size2 + size3 != i) {
            if (size4 + size3 > i) {
                if (size3 != 0) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(context.getString(R.string.out_of_space) + "\n");
                    String string3 = context.getString(R.string.shortcut_array_install_failed);
                    Object[] objArr3 = new Object[i];
                    objArr3[0] = Integer.valueOf(size3);
                    sb3.append(String.format(string3, objArr3));
                    Toast.makeText(context, sb3.toString(), 0).show();
                }
                if (size4 != 0) {
                    StringBuilder sb4 = new StringBuilder();
                    StringBuilder sb5 = new StringBuilder();
                    String string4 = context.getString(R.string.shortcut_array_duplicate);
                    Object[] objArr4 = new Object[i];
                    objArr4[0] = Integer.valueOf(size4);
                    sb4.append(sb5.append(String.format(string4, objArr4)).append("\n").toString());
                    Toast.makeText(context, sb4.toString(), 0).show();
                    return;
                }
                return;
            }
            return;
        }
        if (size3 == i) {
            iIntValue2 = ((Integer) arrayList.get(i2)).intValue();
        } else {
            if (size4 == i) {
                iIntValue2 = ((Integer) arrayList3.get(i2)).intValue();
            } else {
                iIntValue = size2 == i ? ((Integer) arrayList2.get(i2)).intValue() : 0;
            }
            stringExtra = intentArr2[iIntValue].getStringExtra("android.intent.extra.shortcut.NAME");
            if (size3 == i) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append(context.getString(R.string.out_of_space) + "\n");
                String string5 = context.getString(R.string.shortcut_install_failed);
                Object[] objArr5 = new Object[i];
                objArr5[0] = stringExtra;
                sb6.append(String.format(string5, objArr5));
                Toast.makeText(context, sb6.toString(), 0).show();
                return;
            }
            if (size4 == i) {
                StringBuilder sb7 = new StringBuilder();
                String string6 = context.getString(R.string.shortcut_duplicate);
                Object[] objArr6 = new Object[i];
                objArr6[0] = stringExtra;
                sb7.append(String.format(string6, objArr6));
                Toast.makeText(context, sb7.toString(), 0).show();
            }
        }
        iIntValue = iIntValue2;
        stringExtra = intentArr2[iIntValue].getStringExtra("android.intent.extra.shortcut.NAME");
        if (size3 == i) {
            StringBuilder sb8 = new StringBuilder();
            sb8.append(context.getString(R.string.out_of_space) + "\n");
            String string7 = context.getString(R.string.shortcut_install_failed);
            Object[] objArr7 = new Object[i];
            objArr7[0] = stringExtra;
            sb8.append(String.format(string7, objArr7));
            Toast.makeText(context, sb8.toString(), 0).show();
            return;
        }
        if (size4 == i) {
            StringBuilder sb9 = new StringBuilder();
            String string8 = context.getString(R.string.shortcut_duplicate);
            Object[] objArr8 = new Object[i];
            objArr8[0] = stringExtra;
            sb9.append(String.format(string8, objArr8));
            Toast.makeText(context, sb9.toString(), 0).show();
        }
    }

    /* JADX WARN: Type inference failed for: r1v16, types: [com.android.launcher2.InstallShortcutReceiver$1] */
    private static boolean installShortcut(Context context, Intent intent, ArrayList<ItemInfo> arrayList, String str, Intent intent2, final int i, boolean z, final SharedPreferences sharedPreferences, int[] iArr) {
        if (L.DEBUG) {
            L.d(TAG, "installShortcut data = " + intent + ", items = " + arrayList + ", name = " + str + ", intent = " + intent2 + ", screen = " + i + ", shortcutExists = " + z);
        }
        int[] iArr2 = new int[2];
        if (!findEmptyCell(context, arrayList, iArr2, i)) {
            L.w(TAG, "InstallShortcut Failed: No Space!");
            iArr[0] = -2;
        } else if (intent2 != null) {
            if (intent2.getAction() == null) {
                intent2.setAction("android.intent.action.VIEW");
            } else if (intent2.getAction().equals("android.intent.action.MAIN") && intent2.getCategories() != null && intent2.getCategories().contains("android.intent.category.LAUNCHER")) {
                intent2.addFlags(270532608);
            }
            if (intent.getBooleanExtra("duplicate", true) || !z) {
                int i2 = sharedPreferences.getInt(NEW_APPS_PAGE_KEY, i);
                final Set<String> hashSet = new HashSet<>();
                if (i2 == i) {
                    hashSet = sharedPreferences.getStringSet(NEW_APPS_LIST_KEY, hashSet);
                }
                synchronized (hashSet) {
                    hashSet.add(intent2.toUri(0).toString());
                }
                new Thread("setNewAppsThread") { // from class: com.android.launcher2.InstallShortcutReceiver.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        synchronized (hashSet) {
                            sharedPreferences.edit().putInt(InstallShortcutReceiver.NEW_APPS_PAGE_KEY, i).putStringSet(InstallShortcutReceiver.NEW_APPS_LIST_KEY, hashSet).commit();
                        }
                    }
                }.start();
                ShortcutInfo shortcutInfoAddShortcut = ((LauncherApplication) context.getApplicationContext()).getModel().addShortcut(context, intent, -100L, i, iArr2[0], iArr2[1], true);
                if (shortcutInfoAddShortcut == null) {
                    iArr[0] = -3;
                    L.w(TAG, "InstallShortcut Failed: Due to ShortcutInfo is null");
                    return false;
                }
                sItemsAddingToDatabase.add(shortcutInfoAddShortcut);
                iArr[0] = 0;
                if (L.DEBUG) {
                    L.d(TAG, "InstallShortcut Successfully: Install the " + ((Object) shortcutInfoAddShortcut.title));
                }
            } else {
                L.w(TAG, "InstallShortcut Failed: Already Exist!");
                iArr[0] = -1;
            }
            return true;
        }
        return false;
    }

    private static boolean findEmptyCell(Context context, ArrayList<ItemInfo> arrayList, int[] iArr, int i) {
        int cellCountX = LauncherModel.getCellCountX();
        int cellCountY = LauncherModel.getCellCountY();
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) boolean.class, cellCountX, cellCountY);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ItemInfo itemInfo = arrayList.get(i2);
            if (itemInfo.container == -100 && itemInfo.screen == i) {
                int i3 = itemInfo.cellX;
                int i4 = itemInfo.cellY;
                int i5 = itemInfo.spanX;
                int i6 = itemInfo.spanY;
                for (int i7 = i3; i7 >= 0 && i7 < i3 + i5 && i7 < cellCountX; i7++) {
                    for (int i8 = i4; i8 >= 0 && i8 < i4 + i6 && i8 < cellCountY; i8++) {
                        zArr[i7][i8] = true;
                    }
                }
            }
        }
        for (int i9 = 0; i9 < sItemsAddingToDatabase.size(); i9++) {
            ItemInfo itemInfo2 = sItemsAddingToDatabase.get(i9);
            if (itemInfo2.container == -100 && itemInfo2.screen == i) {
                int i10 = itemInfo2.cellX;
                int i11 = itemInfo2.cellY;
                int i12 = itemInfo2.spanX;
                int i13 = itemInfo2.spanY;
                for (int i14 = i10; i14 >= 0 && i14 < i10 + i12 && i14 < cellCountX; i14++) {
                    for (int i15 = i11; i15 >= 0 && i15 < i11 + i13 && i15 < cellCountY; i15++) {
                        zArr[i14][i15] = true;
                    }
                }
            }
        }
        return CellLayout.findVacantCell(iArr, 1, 1, cellCountX, cellCountY, zArr);
    }
}
