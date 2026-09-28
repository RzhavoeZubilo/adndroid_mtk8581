.class public Lcom/autochips/bluetooth/BaseFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# instance fields
.field protected mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMMIKeyHelper()Lcom/carocean/navicar/MMIKeyHelper;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/autochips/bluetooth/BaseFragmentActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    return-object v0
.end method
