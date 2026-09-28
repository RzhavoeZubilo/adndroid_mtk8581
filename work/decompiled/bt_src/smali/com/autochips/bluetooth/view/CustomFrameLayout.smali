.class public Lcom/autochips/bluetooth/view/CustomFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CustomFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/view/CustomFrameLayout$dispatchKeyEventListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/autochips/bluetooth/view/CustomFrameLayout$dispatchKeyEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/autochips/bluetooth/view/CustomFrameLayout;->listener:Lcom/autochips/bluetooth/view/CustomFrameLayout$dispatchKeyEventListener;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/view/CustomFrameLayout$dispatchKeyEventListener;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setDispatchKeyEventListener(Lcom/autochips/bluetooth/view/CustomFrameLayout$dispatchKeyEventListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/autochips/bluetooth/view/CustomFrameLayout;->listener:Lcom/autochips/bluetooth/view/CustomFrameLayout$dispatchKeyEventListener;

    return-void
.end method
