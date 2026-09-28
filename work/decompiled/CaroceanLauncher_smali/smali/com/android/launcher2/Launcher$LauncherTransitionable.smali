.class public interface abstract Lcom/android/launcher2/Launcher$LauncherTransitionable;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LauncherTransitionable"
.end annotation


# virtual methods
.method public abstract getContent()Landroid/view/View;
.end method

.method public abstract onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
.end method

.method public abstract onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
.end method

.method public abstract onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
.end method

.method public abstract onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
.end method
