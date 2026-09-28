package com.can.assist;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.can.platforms.AppConfigParser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CanParcel implements Parcelable, CanContant {
    public static final Parcelable.Creator<CanParcel> CREATOR = new Parcelable.Creator<CanParcel>() { // from class: com.can.assist.CanParcel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CanParcel createFromParcel(Parcel parcel) {
            return new CanParcel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CanParcel[] newArray(int i) {
            return new CanParcel[i];
        }
    };
    private final String TAG;
    private ArrayList<CanContant.CarType_Info> mArrayList;
    private Platforms mCanPlatformsXxx;
    public Context mContext;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CanParcel(Context context) {
        this.mContext = null;
        this.mCanPlatformsXxx = null;
        this.mArrayList = null;
        this.TAG = getClass().getName();
        this.mContext = context;
    }

    public CanParcel(Parcel parcel) {
        this.mContext = null;
        this.mCanPlatformsXxx = null;
        this.mArrayList = null;
        this.TAG = getClass().getName();
        this.mArrayList = parcel.readArrayList(List.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.mArrayList);
    }

    public void setCarTypeInfos(ArrayList<CanContant.CarType_Info> arrayList) {
        this.mArrayList = arrayList;
    }

    public ArrayList<CanContant.CarType_Info> getCarTypeInfos() {
        return this.mArrayList;
    }

    public String getProtocol(CanContant.CAN_DESCRIBE can_describe) {
        CanContant.CarType_Info carType_Info = getCarType_Info(can_describe);
        return carType_Info != null ? carType_Info.strProClass : AppConfigParser.ITEM_TIP;
    }

    public int getAudioProt(CanContant.CAN_DESCRIBE can_describe) {
        CanContant.CarType_Info carType_Info = getCarType_Info(can_describe);
        if (carType_Info != null) {
            return carType_Info.iAudioPort;
        }
        return 3;
    }

    public int getBand(CanContant.CAN_DESCRIBE can_describe) {
        CanContant.CarType_Info carType_Info = getCarType_Info(can_describe);
        if (carType_Info != null) {
            return carType_Info.iBoxBand;
        }
        return 38400;
    }

    public String getPageName(CanContant.CAN_DESCRIBE can_describe) {
        CanContant.CarType_Info carType_Info = getCarType_Info(can_describe);
        return carType_Info != null ? carType_Info.strUIClass : AppConfigParser.ITEM_TIP;
    }

    public String getAudioPage(CanContant.CAN_DESCRIBE can_describe) {
        CanContant.CarType_Info carType_Info = getCarType_Info(can_describe);
        return carType_Info != null ? carType_Info.strAudioClass : AppConfigParser.ITEM_TIP;
    }

    public String getPopPage(CanContant.CAN_DESCRIBE can_describe) {
        CanContant.CarType_Info carType_Info = getCarType_Info(can_describe);
        return carType_Info != null ? carType_Info.strPopClass : AppConfigParser.ITEM_TIP;
    }

    public String getAirPage(CanContant.CAN_DESCRIBE can_describe) {
        CanContant.CarType_Info carType_Info = getCarType_Info(can_describe);
        return carType_Info != null ? carType_Info.strAirClass : AppConfigParser.ITEM_TIP;
    }

    public void setPlatforms(Object obj) {
        Platforms platforms = (Platforms) obj;
        this.mCanPlatformsXxx = platforms;
        try {
            platforms.Init(this.mContext);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public Platforms getPlatformsXxx() {
        return this.mCanPlatformsXxx;
    }

    public boolean setCanDescribe(CanContant.CarType_Info carType_Info) {
        try {
            return this.mCanPlatformsXxx.setCanDescribe(carType_Info);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public CanContant.CAN_DESCRIBE getCanDescribe() {
        try {
            return this.mCanPlatformsXxx.getCanDescribe();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getCarType() {
        try {
            return this.mCanPlatformsXxx.getCarType();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public CanContant.CarType_Info getCarType_Info(CanContant.CAN_DESCRIBE can_describe) {
        CanContant.CarType_Info carType_Info = null;
        if (IsVaild()) {
            Log.e(this.TAG, "CarTypeInfo Arraylist is empty!");
        } else {
            for (CanContant.CarType_Info carType_Info2 : this.mArrayList) {
                if (carType_Info2.iBoxId == can_describe.iBoxID && carType_Info2.iSeriesId == can_describe.iSeriesID && carType_Info2.iTypeId == can_describe.iCarTypeID && carType_Info2.iCfgId == can_describe.iConfigID) {
                    carType_Info = carType_Info2;
                }
            }
        }
        return carType_Info;
    }

    public ArrayList<String> getCanboxlist() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (IsVaild()) {
            Log.e(this.TAG, "CarTypeInfo Arraylist is empty!");
        } else {
            for (CanContant.CarType_Info carType_Info : this.mArrayList) {
                if (arrayList.isEmpty()) {
                    arrayList.add(carType_Info.strBoxName);
                } else {
                    boolean z = false;
                    Iterator<String> it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (it.next().equals(carType_Info.strBoxName)) {
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        arrayList.add(carType_Info.strBoxName);
                    }
                }
            }
        }
        return arrayList;
    }

    public ArrayList<String> getCanSeries(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (IsVaild()) {
            Log.e(this.TAG, "CarTypeInfo Arraylist is empty!");
        } else {
            for (CanContant.CarType_Info carType_Info : this.mArrayList) {
                if (carType_Info.strBoxName.equals(str)) {
                    if (arrayList.isEmpty()) {
                        arrayList.add(carType_Info.strSeriesName);
                    } else {
                        boolean zEquals = false;
                        Iterator<String> it = arrayList.iterator();
                        while (it.hasNext() && !(zEquals = it.next().equals(carType_Info.strSeriesName))) {
                        }
                        if (!zEquals) {
                            arrayList.add(carType_Info.strSeriesName);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public ArrayList<Integer> getCanSeriesEx(String str) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        if (IsVaild()) {
            Log.e(this.TAG, "CarTypeInfo Arraylist is empty!");
        } else {
            for (CanContant.CarType_Info carType_Info : this.mArrayList) {
                if (carType_Info.strBoxName.equals(str)) {
                    if (arrayList.isEmpty()) {
                        arrayList.add(Integer.valueOf(carType_Info.iSeriesId));
                    } else {
                        Iterator<Integer> it = arrayList.iterator();
                        boolean z = false;
                        while (it.hasNext()) {
                            z = it.next().intValue() == carType_Info.iSeriesId;
                            if (z) {
                                break;
                            }
                        }
                        if (!z) {
                            arrayList.add(Integer.valueOf(carType_Info.iSeriesId));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public ArrayList<String> getCanType(String str, String str2) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (IsVaild()) {
            Log.e(this.TAG, "CarTypeInfo Arraylist is empty!");
        } else {
            for (CanContant.CarType_Info carType_Info : this.mArrayList) {
                boolean zEquals = carType_Info.strSeriesName.equals(str2);
                if (carType_Info.strBoxName.equals(str) && zEquals) {
                    if (arrayList.isEmpty()) {
                        arrayList.add(carType_Info.strTypeName);
                    } else {
                        boolean zEquals2 = false;
                        Iterator<String> it = arrayList.iterator();
                        while (it.hasNext() && !(zEquals2 = it.next().equals(carType_Info.strTypeName))) {
                        }
                        if (!zEquals2) {
                            arrayList.add(carType_Info.strTypeName);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public ArrayList<String> getCanCfg(String str, String str2, String str3) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (IsVaild()) {
            Log.e(this.TAG, "CarTypeInfo Arraylist is empty!");
        } else {
            for (CanContant.CarType_Info carType_Info : this.mArrayList) {
                if (carType_Info.strBoxName.equals(str) && carType_Info.strSeriesName.equals(str2) && carType_Info.strTypeName.equals(str3)) {
                    if (arrayList.isEmpty()) {
                        arrayList.add(carType_Info.strCfgName);
                    } else {
                        boolean zEquals = false;
                        Iterator<String> it = arrayList.iterator();
                        while (it.hasNext() && !(zEquals = it.next().equals(carType_Info.strCfgName))) {
                        }
                        if (!zEquals) {
                            arrayList.add(carType_Info.strCfgName);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public ArrayList<String> getProVer(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (IsVaild()) {
            Log.e(this.TAG, "CarTypeInfo Arraylist is empty!");
        } else {
            for (CanContant.CarType_Info carType_Info : this.mArrayList) {
                if (carType_Info.strBoxName.equals(str)) {
                    if (arrayList.isEmpty()) {
                        arrayList.add(carType_Info.strProVer);
                    } else {
                        boolean zEquals = false;
                        Iterator<String> it = arrayList.iterator();
                        while (it.hasNext()) {
                            zEquals = it.next().equals(carType_Info.strProVer);
                        }
                        if (!zEquals) {
                            arrayList.add(carType_Info.strProVer);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public CanContant.CarType_Info getCarType_Info(CanContant.E_Update_Type e_Update_Type, String str, String str2, String str3) {
        CanContant.CarType_Info carType_Info = new CanContant.CarType_Info();
        if (IsVaild()) {
            Log.e(this.TAG, "CarTypeInfo Arraylist is empty!");
            return carType_Info;
        }
        for (CanContant.CarType_Info carType_Info2 : this.mArrayList) {
            if (e_Update_Type == CanContant.E_Update_Type.eUpdate_Type_CanBox) {
                if (str != null && carType_Info2.strBoxName.equals(str)) {
                    return carType_Info2;
                }
            } else if (e_Update_Type == CanContant.E_Update_Type.eUpdate_Type_CanSeries) {
                if (str != null && str2 != null && carType_Info2.strBoxName.equals(str) && carType_Info2.strSeriesName.equals(str2)) {
                    return carType_Info2;
                }
            } else if (e_Update_Type == CanContant.E_Update_Type.eUpdate_Type_CanType && str != null && str2 != null && str3 != null && carType_Info2.strBoxName.equals(str) && carType_Info2.strSeriesName.equals(str2) && carType_Info2.strTypeName.equals(str3)) {
                return carType_Info2;
            }
        }
        return carType_Info;
    }

    public CanContant.CarType_Info getCarType_Info(String str, String str2, String str3, String str4) {
        CanContant.CarType_Info carType_Info = null;
        if (IsVaild()) {
            Log.e(this.TAG, "CarTypeInfo Arraylist is empty!");
        } else {
            for (CanContant.CarType_Info carType_Info2 : this.mArrayList) {
                if (carType_Info2.strBoxName.equals(str) && carType_Info2.strSeriesName.equals(str2) && carType_Info2.strTypeName.equals(str3) && carType_Info2.strCfgName.equals(str4)) {
                    carType_Info = carType_Info2;
                }
            }
        }
        return carType_Info;
    }

    public boolean IsGeneral(String str) {
        CanContant.CarType_Info carType_Info = null;
        if (IsVaild()) {
            Log.e(this.TAG, "CarTypeInfo Arraylist is empty!");
        } else {
            for (CanContant.CarType_Info carType_Info2 : this.mArrayList) {
                if (carType_Info2.strBoxName.equals(str)) {
                    carType_Info = carType_Info2;
                }
            }
        }
        return carType_Info != null && carType_Info.iBoxId == 0;
    }

    private boolean IsVaild() {
        ArrayList<CanContant.CarType_Info> arrayList = this.mArrayList;
        return arrayList == null || arrayList.isEmpty();
    }
}
