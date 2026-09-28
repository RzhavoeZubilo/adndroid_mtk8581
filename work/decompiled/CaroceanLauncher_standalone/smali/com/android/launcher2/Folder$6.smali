.class Lcom/android/launcher2/Folder$6;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher2/Alarm;)V
    .locals 1

    .line 613
    iget-object p1, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {p1}, Lcom/android/launcher2/Folder;->access$400(Lcom/android/launcher2/Folder;)[I

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {p0}, Lcom/android/launcher2/Folder;->access$500(Lcom/android/launcher2/Folder;)[I

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/launcher2/Folder;->access$600(Lcom/android/launcher2/Folder;[I[I)V

    return-void
.end method
