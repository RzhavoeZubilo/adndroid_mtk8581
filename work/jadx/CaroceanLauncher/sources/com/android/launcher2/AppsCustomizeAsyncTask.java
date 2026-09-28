package com.android.launcher2;

import android.os.AsyncTask;
import android.os.Process;

/* JADX INFO: compiled from: AppsCustomizePagedView.java */
/* JADX INFO: loaded from: classes.dex */
class AppsCustomizeAsyncTask extends AsyncTask<AsyncTaskPageData, Void, AsyncTaskPageData> {
    AsyncTaskPageData.Type dataType;
    int page;
    int threadPriority = 0;

    AppsCustomizeAsyncTask(int i, AsyncTaskPageData.Type type) {
        this.page = i;
        this.dataType = type;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public AsyncTaskPageData doInBackground(AsyncTaskPageData... asyncTaskPageDataArr) {
        if (asyncTaskPageDataArr.length != 1) {
            return null;
        }
        asyncTaskPageDataArr[0].doInBackgroundCallback.run(this, asyncTaskPageDataArr[0]);
        return asyncTaskPageDataArr[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(AsyncTaskPageData asyncTaskPageData) {
        asyncTaskPageData.postExecuteCallback.run(this, asyncTaskPageData);
    }

    void setThreadPriority(int i) {
        this.threadPriority = i;
    }

    void syncThreadPriority() {
        Process.setThreadPriority(this.threadPriority);
    }
}
