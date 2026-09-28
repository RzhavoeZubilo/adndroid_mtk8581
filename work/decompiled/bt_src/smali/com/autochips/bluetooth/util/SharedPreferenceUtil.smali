.class public Lcom/autochips/bluetooth/util/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# static fields
.field private static final AUTO_ANSWER_CALL:Ljava/lang/String; = "AUTO_ANSWER_CALL"

.field private static final AUTO_CONNECT:Ljava/lang/String; = "AUTO_CONNECT"

.field private static final BT_STATE_PERSIST:Ljava/lang/String; = "BT_STATE_PERSIST"

.field private static final LAST_CONNECT_MAC:Ljava/lang/String; = "LAST_CONNECT_MAC"

.field private static final SYNC_CONTACT_STATE:Ljava/lang/String; = "SYNC_CONTACT_STATE"

.field private static final TOP_MAC:Ljava/lang/String; = "TOP_MAC"


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-class v0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getAutoConnect()Z
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTO_CONNECT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBtStatePersist()Z
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "BT_STATE_PERSIST"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastConnectMac()Ljava/lang/String;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "LAST_CONNECT_MAC"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncContactState()I
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SYNC_CONTACT_STATE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTopMac()Ljava/lang/String;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "TOP_MAC"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoAnswer()Z
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTO_ANSWER_CALL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutoAnswer(Z)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AUTO_ANSWER_CALL"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAutoConnect(Z)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AUTO_CONNECT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBtStatePersist(Z)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BT_STATE_PERSIST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastConnectMac(Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_CONNECT_MAC"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSyncContactState(I)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SYNC_CONTACT_STATE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTopMac(Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TOP_MAC"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
