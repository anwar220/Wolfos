# classes.dex

.class public abstract Landroid/debug/IAdbManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/debug/IAdbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/debug/IAdbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/debug/IAdbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_allowDebugging:I = 0x1

.field static final TRANSACTION_allowWirelessDebugging:I = 0x4

.field static final TRANSACTION_clearDebuggingKeys:I = 0x3

.field static final TRANSACTION_denyDebugging:I = 0x2

.field static final TRANSACTION_denyWirelessDebugging:I = 0x5

.field static final TRANSACTION_disablePairing:I = 0xb

.field static final TRANSACTION_enablePairingByPairingCode:I = 0x8

.field static final TRANSACTION_enablePairingByQrCode:I = 0x9

.field static final TRANSACTION_getAdbWirelessPort:I = 0xa

.field static final TRANSACTION_getPairedDevices:I = 0x6

.field static final TRANSACTION_isAdbWifiQrSupported:I = 0xd

.field static final TRANSACTION_isAdbWifiSupported:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0xe

.field static final TRANSACTION_unpairDevice:I = 0x7

.field static final TRANSACTION_unregisterCallback:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.debug.IAdbManager"

    invoke-virtual {p0, p0, v0}, Landroid/debug/IAdbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.debug.IAdbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/debug/IAdbManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/debug/IAdbManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/debug/IAdbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/debug/IAdbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_36

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xf
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    :pswitch_9  #0xe
    const-string/jumbo v0, "registerCallback"

    return-object v0

    :pswitch_d  #0xd
    const-string v0, "isAdbWifiQrSupported"

    return-object v0

    :pswitch_10  #0xc
    const-string v0, "isAdbWifiSupported"

    return-object v0

    :pswitch_13  #0xb
    const-string v0, "disablePairing"

    return-object v0

    :pswitch_16  #0xa
    const-string v0, "getAdbWirelessPort"

    return-object v0

    :pswitch_19  #0x9
    const-string v0, "enablePairingByQrCode"

    return-object v0

    :pswitch_1c  #0x8
    const-string v0, "enablePairingByPairingCode"

    return-object v0

    :pswitch_1f  #0x7
    const-string/jumbo v0, "unpairDevice"

    return-object v0

    :pswitch_23  #0x6
    const-string v0, "getPairedDevices"

    return-object v0

    :pswitch_26  #0x5
    const-string v0, "denyWirelessDebugging"

    return-object v0

    :pswitch_29  #0x4
    const-string v0, "allowWirelessDebugging"

    return-object v0

    :pswitch_2c  #0x3
    const-string v0, "clearDebuggingKeys"

    return-object v0

    :pswitch_2f  #0x2
    const-string v0, "denyDebugging"

    return-object v0

    :pswitch_32  #0x1
    const-string v0, "allowDebugging"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32  #00000001
        :pswitch_2f  #00000002
        :pswitch_2c  #00000003
        :pswitch_29  #00000004
        :pswitch_26  #00000005
        :pswitch_23  #00000006
        :pswitch_1f  #00000007
        :pswitch_1c  #00000008
        :pswitch_19  #00000009
        :pswitch_16  #0000000a
        :pswitch_13  #0000000b
        :pswitch_10  #0000000c
        :pswitch_d  #0000000d
        :pswitch_9  #0000000e
        :pswitch_5  #0000000f
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/debug/IAdbManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.debug.IAdbManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_da

    packed-switch p1, :pswitch_data_e0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/debug/IAdbCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/debug/IAdbManager$Stub;->unregisterCallback(Landroid/debug/IAdbCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d8

    :pswitch_2f  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/debug/IAdbCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/debug/IAdbManager$Stub;->registerCallback(Landroid/debug/IAdbCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d8

    :pswitch_42  #0xd
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->isAdbWifiQrSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_d8

    :pswitch_4e  #0xc
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->isAdbWifiSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_d8

    :pswitch_5a  #0xb
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->disablePairing()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d8

    :pswitch_62  #0xa
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->getAdbWirelessPort()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d8

    :pswitch_6d  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/debug/IAdbManager$Stub;->enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d8

    :pswitch_7f  #0x8
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->enablePairingByPairingCode()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d8

    :pswitch_86  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/debug/IAdbManager$Stub;->unpairDevice(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d8

    :pswitch_94  #0x6
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->getPairedDevices()[Landroid/debug/FingerprintAndPairDevice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_d8

    :pswitch_9f  #0x5
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->denyWirelessDebugging()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d8

    :pswitch_a6  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/debug/IAdbManager$Stub;->allowWirelessDebugging(ZLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d8

    :pswitch_b8  #0x3
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->clearDebuggingKeys()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d8

    :pswitch_bf  #0x2
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->denyDebugging()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d8

    :pswitch_c6  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/debug/IAdbManager$Stub;->allowDebugging(ZLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_d8
    return v1

    nop

    :pswitch_data_da
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_c6  #00000001
        :pswitch_bf  #00000002
        :pswitch_b8  #00000003
        :pswitch_a6  #00000004
        :pswitch_9f  #00000005
        :pswitch_94  #00000006
        :pswitch_86  #00000007
        :pswitch_7f  #00000008
        :pswitch_6d  #00000009
        :pswitch_62  #0000000a
        :pswitch_5a  #0000000b
        :pswitch_4e  #0000000c
        :pswitch_42  #0000000d
        :pswitch_2f  #0000000e
        :pswitch_1c  #0000000f
    .end packed-switch
.end method
