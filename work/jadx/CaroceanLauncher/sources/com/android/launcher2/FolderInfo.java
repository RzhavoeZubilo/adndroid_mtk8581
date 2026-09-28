package com.android.launcher2;

import android.content.ContentValues;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class FolderInfo extends ItemInfo {
    ArrayList<ShortcutInfo> contents = new ArrayList<>();
    ArrayList<FolderListener> listeners = new ArrayList<>();
    boolean opened;

    interface FolderListener {
        void onAdd(ShortcutInfo shortcutInfo);

        void onItemsChanged();

        void onRemove(ShortcutInfo shortcutInfo);

        void onTitleChanged(CharSequence charSequence);
    }

    FolderInfo() {
        this.itemType = 2;
    }

    public void add(ShortcutInfo shortcutInfo) {
        this.contents.add(shortcutInfo);
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onAdd(shortcutInfo);
        }
        itemsChanged();
    }

    public void remove(ShortcutInfo shortcutInfo) {
        this.contents.remove(shortcutInfo);
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onRemove(shortcutInfo);
        }
        itemsChanged();
    }

    public void setTitle(CharSequence charSequence) {
        this.title = charSequence;
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onTitleChanged(charSequence);
        }
    }

    @Override // com.android.launcher2.ItemInfo
    void onAddToDatabase(ContentValues contentValues) {
        super.onAddToDatabase(contentValues);
        contentValues.put("title", this.title.toString());
    }

    void addListener(FolderListener folderListener) {
        this.listeners.add(folderListener);
    }

    void removeListener(FolderListener folderListener) {
        if (this.listeners.contains(folderListener)) {
            this.listeners.remove(folderListener);
        }
    }

    void itemsChanged() {
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onItemsChanged();
        }
    }

    @Override // com.android.launcher2.ItemInfo
    void unbind() {
        super.unbind();
        this.listeners.clear();
    }
}
