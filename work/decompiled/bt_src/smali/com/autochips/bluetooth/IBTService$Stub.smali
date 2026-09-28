.class public abstract Lcom/autochips/bluetooth/IBTService$Stub;
.super Landroid/os/Binder;
.source "IBTService.java"

# interfaces
.implements Lcom/autochips/bluetooth/IBTService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/IBTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/IBTService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autochips.bluetooth.IBTService"

.field static final TRANSACTION_bondDevice:I = 0x12

.field static final TRANSACTION_cancelDiscovery:I = 0x5

.field static final TRANSACTION_closeBT:I = 0x1

.field static final TRANSACTION_connect:I = 0x10

.field static final TRANSACTION_delBondDevice:I = 0x13

.field static final TRANSACTION_disconnect:I = 0x11

.field static final TRANSACTION_getBTState:I = 0x3

.field static final TRANSACTION_getConnectDevice:I = 0x16

.field static final TRANSACTION_getConnectState:I = 0x15

.field static final TRANSACTION_getContactSyncState:I = 0xb

.field static final TRANSACTION_getDeviceName:I = 0x8

.field static final TRANSACTION_getDiscoverDevices:I = 0x9

.field static final TRANSACTION_getPairedDevices:I = 0xa

.field static final TRANSACTION_isAutoAnswer:I = 0xd

.field static final TRANSACTION_isAutoConnect:I = 0x19

.field static final TRANSACTION_isBusying:I = 0x17

.field static final TRANSACTION_isCarPlayAutoConnected:I = 0x1e

.field static final TRANSACTION_isCarPlayConnected:I = 0x1d

.field static final TRANSACTION_isDiscovering:I = 0x6

.field static final TRANSACTION_openBT:I = 0x2

.field static final TRANSACTION_registerNotify:I = 0xf

.field static final TRANSACTION_resumeBTMusic:I = 0x1b

.field static final TRANSACTION_revokeBTMusic:I = 0x1c

.field static final TRANSACTION_sendAVRCPCmd:I = 0x1a

.field static final TRANSACTION_setAutoAnswer:I = 0xe

.field static final TRANSACTION_setAutoConnect:I = 0x18

.field static final TRANSACTION_setDeviceName:I = 0x7

.field static final TRANSACTION_setDisconnectAndConnect:I = 0x14

.field static final TRANSACTION_startDiscovery:I = 0x4

.field static final TRANSACTION_switchSyncContactState:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.autochips.bluetooth.IBTService"

    .line 127
    invoke-virtual {p0, p0, v0}, Lcom/autochips/bluetooth/IBTService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/IBTService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.autochips.bluetooth.IBTService"

    .line 138
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    instance-of v1, v0, Lcom/autochips/bluetooth/IBTService;

    if-eqz v1, :cond_1

    .line 140
    check-cast v0, Lcom/autochips/bluetooth/IBTService;

    return-object v0

    .line 142
    :cond_1
    new-instance v0, Lcom/autochips/bluetooth/IBTService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/IBTService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/autochips/bluetooth/IBTService;
    .locals 1

    .line 1041
    sget-object v0, Lcom/autochips/bluetooth/IBTService$Stub$Proxy;->sDefaultImpl:Lcom/autochips/bluetooth/IBTService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/autochips/bluetooth/IBTService;)Z
    .locals 1

    .line 1034
    sget-object v0, Lcom/autochips/bluetooth/IBTService$Stub$Proxy;->sDefaultImpl:Lcom/autochips/bluetooth/IBTService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1035
    sput-object p0, Lcom/autochips/bluetooth/IBTService$Stub$Proxy;->sDefaultImpl:Lcom/autochips/bluetooth/IBTService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.autochips.bluetooth.IBTService"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 405
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 397
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->isCarPlayAutoConnected()Z

    move-result p1

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 389
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->isCarPlayConnected()Z

    move-result p1

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 382
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->revokeBTMusic()V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 375
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->resumeBTMusic()V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 366
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 369
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/IBTService$Stub;->sendAVRCPCmd(I)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 358
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->isAutoConnect()Z

    move-result p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 349
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 352
    :cond_0
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/IBTService$Stub;->setAutoConnect(Z)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 341
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->isBusying()Z

    move-result p1

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 333
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->getConnectDevice()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 325
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->getConnectState()I

    move-result p1

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 314
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/IBTService$Stub;->setDisconnectAndConnect(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 305
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/IBTService$Stub;->delBondDevice(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 296
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/IBTService$Stub;->bondDevice(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 287
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/IBTService$Stub;->disconnect(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 278
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/IBTService$Stub;->connect(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 269
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/IRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/IRemoteServiceCallback;

    move-result-object p1

    .line 272
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/IBTService$Stub;->registerNotify(Lcom/autochips/bluetooth/IRemoteServiceCallback;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 260
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 263
    :cond_1
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/IBTService$Stub;->setAutoAnswer(Z)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 252
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->isAutoAnswer()Z

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 245
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->switchSyncContactState()V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 237
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->getContactSyncState()I

    move-result p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 229
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->getPairedDevices()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 221
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->getDiscoverDevices()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 213
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 204
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/IBTService$Stub;->setDeviceName(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 196
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->isDiscovering()Z

    move-result p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 189
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->cancelDiscovery()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 182
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->startDiscovery()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 174
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->getBTState()I

    move-result p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 167
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->openBT()V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 160
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/autochips/bluetooth/IBTService$Stub;->closeBT()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 155
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
