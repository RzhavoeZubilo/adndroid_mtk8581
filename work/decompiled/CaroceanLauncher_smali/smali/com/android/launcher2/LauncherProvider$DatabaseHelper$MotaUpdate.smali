.class Lcom/android/launcher2/LauncherProvider$DatabaseHelper$MotaUpdate;
.super Ljava/lang/Object;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotaUpdate"
.end annotation


# instance fields
.field mNewComponent:Landroid/content/ComponentName;

.field mOldComponent:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$MotaUpdate;->this$0:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$MotaUpdate;->mOldComponent:Landroid/content/ComponentName;

    .line 292
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$MotaUpdate;->mNewComponent:Landroid/content/ComponentName;

    return-void
.end method
