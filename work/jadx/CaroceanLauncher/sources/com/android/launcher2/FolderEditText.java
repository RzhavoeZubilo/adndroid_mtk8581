package com.android.launcher2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
public class FolderEditText extends EditText {
    private Folder mFolder;

    public FolderEditText(Context context) {
        super(context);
    }

    public FolderEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FolderEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setFolder(Folder folder) {
        this.mFolder = folder;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            this.mFolder.doneEditingFolderName(true);
        }
        return super.onKeyPreIme(i, keyEvent);
    }
}
