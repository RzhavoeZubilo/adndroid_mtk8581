.class Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;
.super Landroid/os/AsyncTask;
.source "WallpaperChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;)V
    .locals 1

    .line 296
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 297
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 299
    iget-object p0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    const/4 v0, 0x1

    .line 343
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 4

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 306
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    .line 307
    invoke-static {v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$200(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 306
    invoke-static {v0, p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WallpaperLoader decode resource out of memory "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperChooserDialogFragment"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 293
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v0, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$300(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$300(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 328
    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v2, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$302(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 329
    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$400(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {p1, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$302(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 333
    iget-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$400(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {p0, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$502(Lcom/android/launcher2/WallpaperChooserDialogFragment;Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    goto :goto_1

    .line 337
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 293
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
