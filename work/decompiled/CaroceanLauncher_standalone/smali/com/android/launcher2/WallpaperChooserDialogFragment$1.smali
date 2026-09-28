.class Lcom/android/launcher2/WallpaperChooserDialogFragment$1;
.super Ljava/lang/Object;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/WallpaperChooserDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

.field final synthetic val$gallery:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;->val$gallery:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    iget-object p0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;->val$gallery:Landroid/widget/Gallery;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$000(Lcom/android/launcher2/WallpaperChooserDialogFragment;I)V

    return-void
.end method
