package com.can.platforms;

import android.util.Log;
import android.util.Xml;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class AppConfigParser {
    public static final String ITEM_AIR_ICON = "CarAirIcon";
    public static final String ITEM_CANBOX = "CanBox";
    public static final String ITEM_CANBOX_UART_BAUDRATE = "CanBoxUartBaudRate";
    public static final String ITEM_CAR_CFG = "CarCfg";
    public static final String ITEM_CAR_ICON = "CarIcon";
    public static final String ITEM_CAR_MODE = "CarMode";
    public static final String ITEM_CAR_TYPE = "CarType";
    public static final String ITEM_TIP = "";
    public static final String PATH_APP_CONFIG = "k2config/factoryconfig.xml";
    public static final String TAG = "rwXMLFile";
    public static List<AppConfigInfo> mAppConfigInfos = new ArrayList();
    public static AppConfigParser mInstance;

    public AppConfigParser() {
        readConfigFile();
    }

    public static AppConfigParser getInstance() {
        if (mInstance == null) {
            mInstance = new AppConfigParser();
        }
        return mInstance;
    }

    public static int getAirIcon() {
        return getIntValue(mAppConfigInfos, ITEM_AIR_ICON, 0);
    }

    public static int getCarIcon() {
        return getIntValue(mAppConfigInfos, ITEM_CAR_ICON, 0);
    }

    public static int getCanBox() {
        return getIntValue(mAppConfigInfos, ITEM_CANBOX, 0);
    }

    public static int getCarMode() {
        return getIntValue(mAppConfigInfos, ITEM_CAR_MODE, 0);
    }

    public static int getCarType() {
        return getIntValue(mAppConfigInfos, ITEM_CAR_TYPE, 0);
    }

    public static int getCarCfg() {
        return getIntValue(mAppConfigInfos, ITEM_CAR_CFG, 0);
    }

    public static int getCanBoxUartBaudRate() {
        return getIntValue(mAppConfigInfos, ITEM_CANBOX_UART_BAUDRATE, 0);
    }

    public static void setAirIcon(int i) {
        setIntValue(mAppConfigInfos, ITEM_AIR_ICON, i);
    }

    public static void setCarIcon(int i) {
        setIntValue(mAppConfigInfos, ITEM_CAR_ICON, i);
    }

    public static void setCanBox(int i) {
        setIntValue(mAppConfigInfos, ITEM_CANBOX, i);
    }

    public static void setCarMode(int i) {
        setIntValue(mAppConfigInfos, ITEM_CAR_MODE, i);
    }

    public static void setCarType(int i) {
        setIntValue(mAppConfigInfos, ITEM_CAR_TYPE, i);
    }

    public static void setCarCfg(int i) {
        setIntValue(mAppConfigInfos, ITEM_CAR_CFG, i);
    }

    public static void setCanBoxUartBaudRate(int i) {
        setIntValue(mAppConfigInfos, ITEM_CANBOX_UART_BAUDRATE, i);
    }

    public static void readConfigFile() {
        Log.v(TAG, "load arm config");
        File file = new File(PATH_APP_CONFIG);
        if (file.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                mAppConfigInfos = parse(fileInputStream);
                fileInputStream.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void writeConfigFile() {
        Log.v(TAG, "save car config");
        try {
            File file = new File(PATH_APP_CONFIG);
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(serialize(mAppConfigInfos).getBytes());
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<AppConfigInfo> parse(InputStream inputStream) throws Exception {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setInput(inputStream, "UTF-8");
        ArrayList arrayList = null;
        AppConfigInfo appConfigInfo = null;
        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
            if (eventType == 0) {
                arrayList = new ArrayList();
            } else if (eventType == 2) {
                if (xmlPullParserNewPullParser.getName().equals("appinfo")) {
                    appConfigInfo = new AppConfigInfo();
                } else if (xmlPullParserNewPullParser.getName().equals("key")) {
                    xmlPullParserNewPullParser.next();
                    appConfigInfo.setKey(xmlPullParserNewPullParser.getText());
                } else if (xmlPullParserNewPullParser.getName().equals("value")) {
                    xmlPullParserNewPullParser.next();
                    appConfigInfo.setValue(xmlPullParserNewPullParser.getText());
                }
            } else if (eventType == 3 && xmlPullParserNewPullParser.getName().equals("appinfo")) {
                arrayList.add(appConfigInfo);
                appConfigInfo = null;
            }
        }
        return arrayList;
    }

    public static String serialize(List<AppConfigInfo> list) throws Exception {
        String property = System.getProperty("line.separator");
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        StringWriter stringWriter = new StringWriter();
        xmlSerializerNewSerializer.setOutput(stringWriter);
        xmlSerializerNewSerializer.startDocument("UTF-8", true);
        changeLine(xmlSerializerNewSerializer, property);
        xmlSerializerNewSerializer.startTag(ITEM_TIP, "resources");
        changeLine(xmlSerializerNewSerializer, property);
        for (AppConfigInfo appConfigInfo : list) {
            xmlSerializerNewSerializer.startTag(ITEM_TIP, "appinfo");
            changeLine(xmlSerializerNewSerializer, property);
            xmlSerializerNewSerializer.startTag(ITEM_TIP, "key");
            xmlSerializerNewSerializer.text(appConfigInfo.getKey());
            xmlSerializerNewSerializer.endTag(ITEM_TIP, "key");
            changeLine(xmlSerializerNewSerializer, property);
            xmlSerializerNewSerializer.startTag(ITEM_TIP, "value");
            xmlSerializerNewSerializer.text(appConfigInfo.getValue());
            xmlSerializerNewSerializer.endTag(ITEM_TIP, "value");
            changeLine(xmlSerializerNewSerializer, property);
            xmlSerializerNewSerializer.endTag(ITEM_TIP, "appinfo");
            changeLine(xmlSerializerNewSerializer, property);
        }
        xmlSerializerNewSerializer.endTag(ITEM_TIP, "resources");
        xmlSerializerNewSerializer.endDocument();
        return stringWriter.toString();
    }

    public static void changeLine(XmlSerializer xmlSerializer, String str) throws Exception {
        xmlSerializer.text(str);
    }

    private static String getStringValue(String str, List<AppConfigInfo> list) {
        if (list != null) {
            for (AppConfigInfo appConfigInfo : list) {
                if (appConfigInfo.getKey().equals(str)) {
                    return appConfigInfo.getValue();
                }
            }
        }
        return null;
    }

    private static void setStringValue(List<AppConfigInfo> list, String str, String str2) {
        if (list != null) {
            boolean z = false;
            for (AppConfigInfo appConfigInfo : list) {
                if (appConfigInfo.getKey().equals(str)) {
                    z = true;
                    appConfigInfo.setValue(str2);
                    break;
                }
            }
            if (z) {
                return;
            }
            AppConfigInfo appConfigInfo2 = new AppConfigInfo();
            appConfigInfo2.setKey(str);
            appConfigInfo2.setValue(str2);
            list.add(appConfigInfo2);
        }
    }

    public static void setIntValue(List<AppConfigInfo> list, String str, int i) {
        setStringValue(list, str, String.valueOf(i));
    }

    public static void setBooleanValue(List<AppConfigInfo> list, String str, boolean z) {
        setStringValue(list, str, String.valueOf(z));
    }

    public static String getStringValue(List<AppConfigInfo> list, String str, String str2) {
        String stringValue = getStringValue(str, list);
        return (stringValue == null || stringValue.isEmpty()) ? str2 : stringValue;
    }

    public static int getIntValue(List<AppConfigInfo> list, String str, int i) {
        String stringValue = getStringValue(str, list);
        return stringValue != null ? Integer.valueOf(stringValue).intValue() : i;
    }

    public static boolean getBooleanValue(List<AppConfigInfo> list, String str, boolean z) {
        String stringValue = getStringValue(str, list);
        return stringValue != null ? Boolean.valueOf(stringValue).booleanValue() : z;
    }
}
