package com.can.tool;

import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class DyncTrack implements TrackData {
    private static DyncTrack msInstance;
    private TrackData.TrackParam mTrackParam;

    public static DyncTrack getInstance() {
        if (msInstance == null) {
            msInstance = new DyncTrack();
        }
        return msInstance;
    }

    private DyncTrack() {
        this.mTrackParam = null;
        this.mTrackParam = new TrackData.TrackParam();
    }

    public boolean setParam(ArrayList<Float> arrayList) {
        if (arrayList == null || arrayList.size() > 13) {
            return false;
        }
        return this.mTrackParam.put(arrayList);
    }

    public boolean CreatePoint() {
        return this.mTrackParam.CreatePoint();
    }

    public void DrawTrack(Canvas canvas, Paint paint, double d) {
        this.mTrackParam.DrawTrack(canvas, paint, d);
    }
}
