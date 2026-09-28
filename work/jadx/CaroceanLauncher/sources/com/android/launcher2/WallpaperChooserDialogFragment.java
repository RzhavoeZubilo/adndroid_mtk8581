package com.android.launcher2;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.WallpaperManager;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperChooserDialogFragment extends DialogFragment implements AdapterView.OnItemSelectedListener, AdapterView.OnItemClickListener {
    private static final String EMBEDDED_KEY = "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY";
    private static final String TAG = "WallpaperChooserDialogFragment";
    private boolean mEmbedded;
    private ArrayList<Integer> mImages;
    private WallpaperLoader mLoader;
    private ArrayList<Integer> mThumbs;
    private Bitmap mBitmap = null;
    private WallpaperDrawable mWallpaperDrawable = new WallpaperDrawable();

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public static WallpaperChooserDialogFragment newInstance() {
        WallpaperChooserDialogFragment wallpaperChooserDialogFragment = new WallpaperChooserDialogFragment();
        wallpaperChooserDialogFragment.setCancelable(true);
        return wallpaperChooserDialogFragment;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null && bundle.containsKey(EMBEDDED_KEY)) {
            this.mEmbedded = bundle.getBoolean(EMBEDDED_KEY);
        } else {
            this.mEmbedded = isInLayout();
        }
        if (L.DEBUG) {
            L.d(TAG, "onCreate: savedInstanceState = " + bundle + ", mEmbedded = " + this.mEmbedded + ", this = " + this);
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(EMBEDDED_KEY, this.mEmbedded);
        if (L.DEBUG) {
            L.d(TAG, "onSaveInstanceState: outState = " + bundle + ", mEmbedded = " + this.mEmbedded);
        }
    }

    private void cancelLoader() {
        WallpaperLoader wallpaperLoader = this.mLoader;
        if (wallpaperLoader == null || wallpaperLoader.getStatus() == AsyncTask.Status.FINISHED) {
            return;
        }
        this.mLoader.cancel(true);
        this.mLoader = null;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (L.DEBUG) {
            L.d(TAG, "onDetach.");
        }
        cancelLoader();
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (L.DEBUG) {
            L.d(TAG, "onDestroy: mLoader = " + this.mLoader + ", this = " + this);
        }
        cancelLoader();
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        Activity activity = getActivity();
        if (L.DEBUG) {
            L.d(TAG, "onDismiss: activity = " + activity + ", dialog = " + dialogInterface);
        }
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (L.DEBUG) {
            L.d(TAG, "onCreateDialog: savedInstanceState = " + bundle);
        }
        findWallpapers();
        return null;
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (L.DEBUG) {
            L.d(TAG, "onCreateView: mEmbedded = " + this.mEmbedded + ", container = " + viewGroup);
        }
        findWallpapers();
        if (!this.mEmbedded) {
            return null;
        }
        View viewInflate = layoutInflater.inflate(R.layout.wallpaper_chooser, viewGroup, false);
        viewInflate.setBackground(this.mWallpaperDrawable);
        final Gallery gallery = (Gallery) viewInflate.findViewById(R.id.gallery);
        gallery.setCallbackDuringFling(false);
        gallery.setOnItemSelectedListener(this);
        gallery.setAdapter((SpinnerAdapter) new ImageAdapter(getActivity()));
        viewInflate.findViewById(R.id.set).setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher2.WallpaperChooserDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WallpaperChooserDialogFragment.this.selectWallpaper(gallery.getSelectedItemPosition());
            }
        });
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectWallpaper(int i) {
        if (L.DEBUG) {
            L.d(TAG, "selectWallpaper: position = " + i + ", this = " + this);
        }
        try {
            ((WallpaperManager) getActivity().getSystemService(SceneManager.TAG_WALLPAPER)).setResource(this.mImages.get(i).intValue());
            Activity activity = getActivity();
            activity.setResult(-1);
            activity.finish();
        } catch (IOException e) {
            L.e(TAG, "Failed to set wallpaper: " + e);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        selectWallpaper(i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        WallpaperLoader wallpaperLoader = this.mLoader;
        if (wallpaperLoader != null && wallpaperLoader.getStatus() != AsyncTask.Status.FINISHED) {
            this.mLoader.cancel();
        }
        this.mLoader = (WallpaperLoader) new WallpaperLoader().execute(Integer.valueOf(i));
    }

    private void findWallpapers() {
        this.mThumbs = new ArrayList<>(24);
        this.mImages = new ArrayList<>(24);
        Resources resources = getResources();
        String resourcePackageName = resources.getResourcePackageName(R.array.wallpapers);
        addWallpapers(resources, resourcePackageName, R.array.wallpapers);
        addWallpapers(resources, resourcePackageName, R.array.extra_wallpapers);
    }

    private void addWallpapers(Resources resources, String str, int i) {
        int identifier;
        for (String str2 : resources.getStringArray(i)) {
            int identifier2 = resources.getIdentifier(str2, "drawable", str);
            if (identifier2 != 0 && (identifier = resources.getIdentifier(str2 + "_small", "drawable", str)) != 0) {
                this.mThumbs.add(Integer.valueOf(identifier));
                this.mImages.add(Integer.valueOf(identifier2));
            }
        }
    }

    private class ImageAdapter extends BaseAdapter implements ListAdapter, SpinnerAdapter {
        private LayoutInflater mLayoutInflater;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        ImageAdapter(Activity activity) {
            this.mLayoutInflater = activity.getLayoutInflater();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return WallpaperChooserDialogFragment.this.mThumbs.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.mLayoutInflater.inflate(R.layout.wallpaper_item, viewGroup, false);
            }
            ImageView imageView = (ImageView) view.findViewById(R.id.wallpaper_image);
            int iIntValue = ((Integer) WallpaperChooserDialogFragment.this.mThumbs.get(i)).intValue();
            imageView.setImageResource(iIntValue);
            Drawable drawable = imageView.getDrawable();
            if (drawable != null) {
                drawable.setDither(true);
            } else {
                L.e(WallpaperChooserDialogFragment.TAG, "Error decoding thumbnail resId=" + iIntValue + " for wallpaper #" + i);
            }
            return view;
        }
    }

    class WallpaperLoader extends AsyncTask<Integer, Void, Bitmap> {
        BitmapFactory.Options mOptions;

        WallpaperLoader() {
            BitmapFactory.Options options = new BitmapFactory.Options();
            this.mOptions = options;
            options.inDither = false;
            this.mOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Integer... numArr) {
            if (isCancelled()) {
                return null;
            }
            try {
                return BitmapFactory.decodeResource(WallpaperChooserDialogFragment.this.getResources(), ((Integer) WallpaperChooserDialogFragment.this.mImages.get(numArr[0].intValue())).intValue(), this.mOptions);
            } catch (OutOfMemoryError e) {
                L.e(WallpaperChooserDialogFragment.TAG, "WallpaperLoader decode resource out of memory " + e.getMessage());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            if (bitmap == null) {
                return;
            }
            if (!isCancelled() && !this.mOptions.mCancel) {
                if (WallpaperChooserDialogFragment.this.mBitmap != null) {
                    WallpaperChooserDialogFragment.this.mBitmap.recycle();
                }
                View view = WallpaperChooserDialogFragment.this.getView();
                if (view != null) {
                    WallpaperChooserDialogFragment.this.mBitmap = bitmap;
                    WallpaperChooserDialogFragment.this.mWallpaperDrawable.setBitmap(bitmap);
                    view.postInvalidate();
                } else {
                    WallpaperChooserDialogFragment.this.mBitmap = null;
                    WallpaperChooserDialogFragment.this.mWallpaperDrawable.setBitmap(null);
                }
                WallpaperChooserDialogFragment.this.mLoader = null;
                return;
            }
            bitmap.recycle();
        }

        void cancel() {
            this.mOptions.requestCancelDecode();
            super.cancel(true);
        }
    }

    static class WallpaperDrawable extends Drawable {
        Bitmap mBitmap;
        int mIntrinsicHeight;
        int mIntrinsicWidth;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        WallpaperDrawable() {
        }

        void setBitmap(Bitmap bitmap) {
            this.mBitmap = bitmap;
            if (bitmap == null) {
                return;
            }
            this.mIntrinsicWidth = bitmap.getWidth();
            this.mIntrinsicHeight = this.mBitmap.getHeight();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.mBitmap == null) {
                return;
            }
            canvas.drawBitmap(this.mBitmap, (canvas.getWidth() - this.mIntrinsicWidth) / 2, (canvas.getHeight() - this.mIntrinsicHeight) / 2, (Paint) null);
        }
    }
}
