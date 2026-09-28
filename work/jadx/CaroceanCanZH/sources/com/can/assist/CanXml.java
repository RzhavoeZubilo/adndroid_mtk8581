package com.can.assist;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.util.Log;
import com.can.parser.DDef;
import com.can.parser.Parser;
import com.can.tool.DataConvert;
import com.can.tool.Xml;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class CanXml implements CanContant {
    private static final String TAG = "com.can.assist.CanXml";
    private static CanXml msInstance;
    private Xml.OnXmlListener XmlListener = new Xml.OnXmlListener() { // from class: com.can.assist.CanXml.1
        CanContant.CarType_Info ObjCarTypeInfo = null;
        ArrayList<CanContant.CarType_Info> list = null;

        @Override // com.can.tool.Xml.OnXmlListener
        public void Start(XmlPullParser xmlPullParser) {
            this.list = new ArrayList<>();
        }

        @Override // com.can.tool.Xml.OnXmlListener
        public void Tag(XmlPullParser xmlPullParser) {
            try {
                if ("Field".equals(xmlPullParser.getName())) {
                    this.ObjCarTypeInfo = new CanContant.CarType_Info();
                }
                if (this.ObjCarTypeInfo == null || !"Item".equals(xmlPullParser.getName())) {
                    return;
                }
                String attributeValue = xmlPullParser.getAttributeValue(0);
                if (attributeValue.equals("box")) {
                    this.ObjCarTypeInfo.strBoxName = xmlPullParser.nextText();
                    return;
                }
                if (attributeValue.equals("BoxId")) {
                    this.ObjCarTypeInfo.iBoxId = Integer.parseInt(xmlPullParser.nextText());
                    return;
                }
                if (attributeValue.equals("Baud")) {
                    this.ObjCarTypeInfo.iBoxBand = Integer.parseInt(xmlPullParser.nextText());
                    return;
                }
                if (attributeValue.equals("Series")) {
                    this.ObjCarTypeInfo.strSeriesName = xmlPullParser.nextText();
                    return;
                }
                if (attributeValue.equals("SeriesId")) {
                    this.ObjCarTypeInfo.iSeriesId = Integer.parseInt(xmlPullParser.nextText());
                    return;
                }
                if (attributeValue.equals("Type")) {
                    this.ObjCarTypeInfo.strTypeName = xmlPullParser.nextText();
                    return;
                }
                if (attributeValue.equals("TypeId")) {
                    this.ObjCarTypeInfo.iTypeId = Integer.parseInt(xmlPullParser.nextText());
                    return;
                }
                if (attributeValue.equals("Cfg")) {
                    this.ObjCarTypeInfo.strCfgName = xmlPullParser.nextText();
                    return;
                }
                if (attributeValue.equals("CfgId")) {
                    this.ObjCarTypeInfo.iCfgId = Integer.parseInt(xmlPullParser.nextText());
                    return;
                }
                if (attributeValue.equals("NeedIcon")) {
                    this.ObjCarTypeInfo.iNeedIcon = Integer.parseInt(xmlPullParser.nextText());
                    return;
                }
                if (attributeValue.equals("ProlClass")) {
                    this.ObjCarTypeInfo.strProClass = xmlPullParser.nextText();
                    return;
                }
                if (attributeValue.equals("UIClass")) {
                    this.ObjCarTypeInfo.strUIClass = xmlPullParser.nextText();
                    return;
                }
                if (attributeValue.equals("AudClass")) {
                    this.ObjCarTypeInfo.strAudioClass = xmlPullParser.nextText();
                    return;
                }
                if (attributeValue.equals("PopClass")) {
                    this.ObjCarTypeInfo.strPopClass = xmlPullParser.nextText();
                    return;
                }
                if (attributeValue.equals("AudioPort")) {
                    this.ObjCarTypeInfo.iAudioPort = Integer.parseInt(xmlPullParser.nextText());
                    return;
                }
                if (attributeValue.equals("strProVer")) {
                    this.ObjCarTypeInfo.strProVer = xmlPullParser.nextText();
                } else if (attributeValue.equals("AirClass")) {
                    this.ObjCarTypeInfo.strAirClass = xmlPullParser.nextText();
                } else if (attributeValue.equals("AirIcon")) {
                    this.ObjCarTypeInfo.iAirIcon = Integer.parseInt(xmlPullParser.nextText());
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (XmlPullParserException e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.can.tool.Xml.OnXmlListener
        public void End(XmlPullParser xmlPullParser) {
            if ("Field".equals(xmlPullParser.getName())) {
                this.list.add(this.ObjCarTypeInfo);
                this.ObjCarTypeInfo = null;
            }
        }

        @Override // com.can.tool.Xml.OnXmlListener
        public void Save() {
            CanXml.this.mCanParcel.setCarTypeInfos(this.list);
        }
    };
    private CanParcel mCanParcel;

    public void getCarType(Context context) {
    }

    public static CanXml getInstance(Context context) {
        if (msInstance == null) {
            msInstance = new CanXml(context);
        }
        return msInstance;
    }

    private CanXml(Context context) {
        this.mCanParcel = null;
        CanParcel canParcel = new CanParcel(context);
        this.mCanParcel = canParcel;
        try {
            canParcel.setPlatforms(Create(DataConvert.getPlatforms(context)));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public CanParcel getCanParcel() {
        return this.mCanParcel;
    }

    public CanProxy create(Handler handler, Context context, String str, DDef.E_CMD_TYPE e_cmd_type) {
        Parser parser = new Parser();
        parser.start(handler, context, str);
        parser.Init(e_cmd_type);
        return parser;
    }

    public Object Create(String str) {
        if (str.isEmpty()) {
            Log.i(TAG, "strClassName is empty!");
        } else {
            try {
                return Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (IllegalArgumentException e3) {
                e3.printStackTrace();
            } catch (InstantiationException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        return null;
    }

    public String getFrament() {
        return this.mCanParcel.getPageName(getCanDescribe());
    }

    public String getAudio() {
        return this.mCanParcel.getAudioPage(getCanDescribe());
    }

    public String getPopFrament() {
        return this.mCanParcel.getPopPage(getCanDescribe());
    }

    public String getAirFrament() {
        return this.mCanParcel.getAirPage(getCanDescribe());
    }

    public int getAudioProt() {
        return this.mCanParcel.getAudioProt(getCanDescribe());
    }

    public int getBand() {
        return this.mCanParcel.getBand(getCanDescribe());
    }

    public CanContant.CarType_Info getInfo(Context context) {
        return this.mCanParcel.getCarType_Info(getCanDescribe());
    }

    public ArrayList<String> getCanboxlist() {
        return this.mCanParcel.getCanboxlist();
    }

    public ArrayList<String> getCanSeries(String str) {
        return this.mCanParcel.getCanSeries(str);
    }

    public ArrayList<Integer> getCanSeriesEx(String str) {
        return this.mCanParcel.getCanSeriesEx(str);
    }

    public ArrayList<String> getCanType(String str, String str2) {
        return this.mCanParcel.getCanType(str, str2);
    }

    public ArrayList<String> getCanCfg(String str, String str2, String str3) {
        return this.mCanParcel.getCanCfg(str, str2, str3);
    }

    public CanContant.CAN_DESCRIBE getCanDescribe() {
        return this.mCanParcel.getCanDescribe();
    }

    public int getCarType() {
        return this.mCanParcel.getCarType();
    }

    public boolean IsGeneral(String str) {
        return this.mCanParcel.IsGeneral(str);
    }

    public boolean getAssistFun(String str) {
        return this.mCanParcel.getPlatformsXxx().getMediaInfo().getAssistFun(str);
    }

    public ArrayList<String> getProVer(String str) {
        return this.mCanParcel.getProVer(str);
    }

    public boolean setCanDescribe(CanContant.CarType_Info carType_Info) {
        return this.mCanParcel.setCanDescribe(carType_Info);
    }

    public CanContant.CarType_Info getAttr() {
        return this.mCanParcel.getCarType_Info(getCanDescribe());
    }

    public CanContant.CarType_Info getAttr(CanContant.CAN_DESCRIBE can_describe) {
        return this.mCanParcel.getCarType_Info(can_describe);
    }

    public CanContant.CarType_Info getAttr(CanContant.E_Update_Type e_Update_Type, String str, String str2, String str3) {
        return this.mCanParcel.getCarType_Info(e_Update_Type, str, str2, str3);
    }

    public CanContant.CarType_Info getAttr(String str, String str2, String str3, String str4) {
        return this.mCanParcel.getCarType_Info(str, str2, str3, str4);
    }

    public Platforms getPlatforms() {
        return this.mCanParcel.getPlatformsXxx();
    }

    public Platforms getPlatforms(Context context) {
        Platforms platformsXxx = this.mCanParcel.getPlatformsXxx();
        if (platformsXxx != null) {
            return platformsXxx;
        }
        try {
            Platforms platforms = (Platforms) Create(DataConvert.getPlatforms(context));
            try {
                this.mCanParcel.setPlatforms(platforms);
                return platforms;
            } catch (RemoteException e) {
                e = e;
                platformsXxx = platforms;
                e.printStackTrace();
                return platformsXxx;
            }
        } catch (RemoteException e2) {
            e = e2;
        }
    }
}
