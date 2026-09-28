package com.android.launcher2.uitl;

import android.graphics.drawable.Drawable;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes.dex */
public class Weather {
    public String cityname;
    public int code;
    public String condition;
    public String currentTemp;
    public String highTemp;
    public Drawable imageDrawable;
    public String lowTemp;
    public String pm25;
    public String quality;
    public String unit;

    public void setHighTempF(String str) {
        this.highTemp = new DecimalFormat(".0").format(((Float.parseFloat(str) - 32.0f) * 5.0f) / 9.0f);
    }

    public void setHighTempC(String str) {
        this.highTemp = str;
    }

    public void setLowTempF(String str) {
        this.lowTemp = new DecimalFormat(".0").format(((Float.parseFloat(str) - 32.0f) * 5.0f) / 9.0f);
    }

    public void setLowTempC(String str) {
        this.lowTemp = str;
    }

    public void setCurrentTempC(String str) {
        this.currentTemp = str;
    }

    public void setCurrentTempF(String str) {
        this.currentTemp = new DecimalFormat(".0").format(((Float.parseFloat(str) - 32.0f) * 5.0f) / 9.0f);
    }

    public void setPM25(String str) {
        this.pm25 = str;
    }

    public void setQuality(String str) {
        this.quality = str;
    }

    public Weather() {
        this.code = -1;
    }

    public Weather(String str) {
        this.code = -1;
        this.highTemp = str;
        this.lowTemp = str;
        this.currentTemp = str;
        this.condition = str;
        this.cityname = str;
        this.code = -1;
        this.pm25 = str;
        this.quality = str;
    }

    public void wClone(Weather weather) {
        this.code = weather.code;
        this.condition = weather.condition;
        this.currentTemp = weather.currentTemp;
        this.highTemp = weather.highTemp;
        this.lowTemp = weather.lowTemp;
        this.imageDrawable = weather.imageDrawable;
        this.unit = weather.unit;
        this.cityname = weather.cityname;
        this.pm25 = weather.pm25;
        this.quality = weather.quality;
    }
}
