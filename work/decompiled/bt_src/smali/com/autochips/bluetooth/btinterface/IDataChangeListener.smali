.class public interface abstract Lcom/autochips/bluetooth/btinterface/IDataChangeListener;
.super Ljava/lang/Object;
.source "IDataChangeListener.java"


# static fields
.field public static final FLAG_AUTO_CONNECT_CHANGE:I = 0xc

.field public static final FLAG_BT_AUTO_ANSWER:I = 0x4

.field public static final FLAG_BT_SYNC_CONTACT_SWITCH:I = 0x3

.field public static final FLAG_DEVICE_NAME_CHANGE:I = 0x1

.field public static final FLAG_PBAP_CHANGED_CONNECTED:I = 0x8

.field public static final FLAG_PBAP_CHANGED_CONNECTING:I = 0xa

.field public static final FLAG_PBAP_CHANGED_DISCONNECTED:I = 0x9

.field public static final FLAG_PBAP_CHANGED_DISCONNECTING:I = 0xb


# virtual methods
.method public abstract dataChange(ILjava/lang/String;)V
.end method
