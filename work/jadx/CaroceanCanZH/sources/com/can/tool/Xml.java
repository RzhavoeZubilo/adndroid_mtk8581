package com.can.tool;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public class Xml {
    private static Xml msInstance;
    private OnXmlListener mXmlListener = null;

    public interface OnXmlListener {
        void End(XmlPullParser xmlPullParser);

        void Save();

        void Start(XmlPullParser xmlPullParser);

        void Tag(XmlPullParser xmlPullParser);
    }

    public static Xml getInstance() {
        if (msInstance == null) {
            msInstance = new Xml();
        }
        return msInstance;
    }

    private Xml() {
    }

    public void setOnXmlListener(OnXmlListener onXmlListener) {
        this.mXmlListener = onXmlListener;
    }

    public boolean parser(Context context, String str, boolean z) {
        OnXmlListener onXmlListener;
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
            XmlPullParser xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
            xmlPullParserNewPullParser.setInput(context.getAssets().open(str), "utf-8");
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                if (eventType == 0) {
                    OnXmlListener onXmlListener2 = this.mXmlListener;
                    if (onXmlListener2 != null) {
                        onXmlListener2.Start(xmlPullParserNewPullParser);
                    }
                } else if (eventType == 2) {
                    OnXmlListener onXmlListener3 = this.mXmlListener;
                    if (onXmlListener3 != null) {
                        onXmlListener3.Tag(xmlPullParserNewPullParser);
                    }
                } else if (eventType == 3 && (onXmlListener = this.mXmlListener) != null) {
                    onXmlListener.End(xmlPullParserNewPullParser);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
        OnXmlListener onXmlListener4 = this.mXmlListener;
        if (onXmlListener4 == null || !z) {
            return false;
        }
        onXmlListener4.Save();
        return false;
    }

    public HashMap<String, String> parseXml(InputStream inputStream) throws Exception {
        HashMap<String, String> map = new HashMap<>();
        NodeList childNodes = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream).getDocumentElement().getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem.getNodeType() == 1) {
                Element element = (Element) nodeItem;
                if ("version".equals(element.getNodeName())) {
                    map.put("version", element.getFirstChild().getNodeValue());
                } else if ("name".equals(element.getNodeName())) {
                    map.put("name", element.getFirstChild().getNodeValue());
                } else if ("url".equals(element.getNodeName())) {
                    map.put("url", element.getFirstChild().getNodeValue());
                }
            }
        }
        return map;
    }
}
