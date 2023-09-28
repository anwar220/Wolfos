# classes2.dex

.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x17

.field static final TRANSACTION_deviceSupportsNfcSecure:I = 0x1b

.field static final TRANSACTION_disable:I = 0x8

.field static final TRANSACTION_disableNdefPush:I = 0xb

.field static final TRANSACTION_dispatch:I = 0x14

.field static final TRANSACTION_enable:I = 0x9

.field static final TRANSACTION_enableNdefPush:I = 0xa

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x4

.field static final TRANSACTION_getNfcAdapterVendorInterface:I = 0x6

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcDtaInterface:I = 0x5

.field static final TRANSACTION_getNfcFCardEmulationInterface:I = 0x3

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getState:I = 0x7

.field static final TRANSACTION_ignore:I = 0x13

.field static final TRANSACTION_invokeBeam:I = 0x11

.field static final TRANSACTION_invokeBeamInternal:I = 0x12

.field static final TRANSACTION_isControllerAlwaysOn:I = 0x1e

.field static final TRANSACTION_isControllerAlwaysOnSupported:I = 0x1f

.field static final TRANSACTION_isNdefPushEnabled:I = 0xc

.field static final TRANSACTION_isNfcSecureEnabled:I = 0x1a

.field static final TRANSACTION_pausePolling:I = 0xd

.field static final TRANSACTION_registerControllerAlwaysOnListener:I = 0x20

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x18

.field static final TRANSACTION_resumePolling:I = 0xe

.field static final TRANSACTION_setAppCallback:I = 0x10

.field static final TRANSACTION_setControllerAlwaysOn:I = 0x1d

.field static final TRANSACTION_setForegroundDispatch:I = 0xf

.field static final TRANSACTION_setNfcSecure:I = 0x1c

.field static final TRANSACTION_setP2pModes:I = 0x16

.field static final TRANSACTION_setReaderMode:I = 0x15

.field static final TRANSACTION_unregisterControllerAlwaysOnListener:I = 0x21

.field static final TRANSACTION_verifyNfcPermission:I = 0x19


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.nfc.INfcAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcAdapter;

    return-object v1

    :cond_14
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_68

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x21
    const-string v0, "unregisterControllerAlwaysOnListener"

    return-object v0

    :pswitch_8  #0x20
    const-string v0, "registerControllerAlwaysOnListener"

    return-object v0

    :pswitch_b  #0x1f
    const-string v0, "isControllerAlwaysOnSupported"

    return-object v0

    :pswitch_e  #0x1e
    const-string v0, "isControllerAlwaysOn"

    return-object v0

    :pswitch_11  #0x1d
    const-string v0, "setControllerAlwaysOn"

    return-object v0

    :pswitch_14  #0x1c
    const-string v0, "setNfcSecure"

    return-object v0

    :pswitch_17  #0x1b
    const-string v0, "deviceSupportsNfcSecure"

    return-object v0

    :pswitch_1a  #0x1a
    const-string v0, "isNfcSecureEnabled"

    return-object v0

    :pswitch_1d  #0x19
    const-string v0, "verifyNfcPermission"

    return-object v0

    :pswitch_20  #0x18
    const-string v0, "removeNfcUnlockHandler"

    return-object v0

    :pswitch_23  #0x17
    const-string v0, "addNfcUnlockHandler"

    return-object v0

    :pswitch_26  #0x16
    const-string v0, "setP2pModes"

    return-object v0

    :pswitch_29  #0x15
    const-string v0, "setReaderMode"

    return-object v0

    :pswitch_2c  #0x14
    const-string v0, "dispatch"

    return-object v0

    :pswitch_2f  #0x13
    const-string v0, "ignore"

    return-object v0

    :pswitch_32  #0x12
    const-string v0, "invokeBeamInternal"

    return-object v0

    :pswitch_35  #0x11
    const-string v0, "invokeBeam"

    return-object v0

    :pswitch_38  #0x10
    const-string v0, "setAppCallback"

    return-object v0

    :pswitch_3b  #0xf
    const-string v0, "setForegroundDispatch"

    return-object v0

    :pswitch_3e  #0xe
    const-string v0, "resumePolling"

    return-object v0

    :pswitch_41  #0xd
    const-string v0, "pausePolling"

    return-object v0

    :pswitch_44  #0xc
    const-string v0, "isNdefPushEnabled"

    return-object v0

    :pswitch_47  #0xb
    const-string v0, "disableNdefPush"

    return-object v0

    :pswitch_4a  #0xa
    const-string v0, "enableNdefPush"

    return-object v0

    :pswitch_4d  #0x9
    const-string v0, "enable"

    return-object v0

    :pswitch_50  #0x8
    const-string v0, "disable"

    return-object v0

    :pswitch_53  #0x7
    const-string v0, "getState"

    return-object v0

    :pswitch_56  #0x6
    const-string v0, "getNfcAdapterVendorInterface"

    return-object v0

    :pswitch_59  #0x5
    const-string v0, "getNfcDtaInterface"

    return-object v0

    :pswitch_5c  #0x4
    const-string v0, "getNfcAdapterExtrasInterface"

    return-object v0

    :pswitch_5f  #0x3
    const-string v0, "getNfcFCardEmulationInterface"

    return-object v0

    :pswitch_62  #0x2
    const-string v0, "getNfcCardEmulationInterface"

    return-object v0

    :pswitch_65  #0x1
    const-string v0, "getNfcTagInterface"

    return-object v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_65  #00000001
        :pswitch_62  #00000002
        :pswitch_5f  #00000003
        :pswitch_5c  #00000004
        :pswitch_59  #00000005
        :pswitch_56  #00000006
        :pswitch_53  #00000007
        :pswitch_50  #00000008
        :pswitch_4d  #00000009
        :pswitch_4a  #0000000a
        :pswitch_47  #0000000b
        :pswitch_44  #0000000c
        :pswitch_41  #0000000d
        :pswitch_3e  #0000000e
        :pswitch_3b  #0000000f
        :pswitch_38  #00000010
        :pswitch_35  #00000011
        :pswitch_32  #00000012
        :pswitch_2f  #00000013
        :pswitch_2c  #00000014
        :pswitch_29  #00000015
        :pswitch_26  #00000016
        :pswitch_23  #00000017
        :pswitch_20  #00000018
        :pswitch_1d  #00000019
        :pswitch_1a  #0000001a
        :pswitch_17  #0000001b
        :pswitch_14  #0000001c
        :pswitch_11  #0000001d
        :pswitch_e  #0000001e
        :pswitch_b  #0000001f
        :pswitch_8  #00000020
        :pswitch_5  #00000021
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/nfc/INfcAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.nfc.INfcAdapter"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_23a

    packed-switch p1, :pswitch_data_240

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcControllerAlwaysOnListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->unregisterControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_2f  #0x20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcControllerAlwaysOnListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->registerControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_42  #0x1f
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isControllerAlwaysOnSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_4e  #0x1e
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isControllerAlwaysOn()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_5a  #0x1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setControllerAlwaysOn(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_6d  #0x1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setNfcSecure(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_80  #0x1b
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->deviceSupportsNfcSecure()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_8c  #0x1a
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNfcSecureEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_98  #0x19
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_a0  #0x18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_b3  #0x17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_ca  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_dd  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_100  #0x14
    sget-object v2, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_113  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/ITagRemovedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/ITagRemovedCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_132  #0x12
    sget-object v2, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/BeamShareData;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    goto/16 :goto_238

    :pswitch_142  #0x11
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    goto/16 :goto_238

    :pswitch_147  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_15a  #0xf
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    sget-object v4, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/TechListParcel;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_17d  #0xe
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_185  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_238

    :pswitch_194  #0xc
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_1a0  #0xb
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_1ac  #0xa
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_1b8  #0x9
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_238

    :pswitch_1c4  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_238

    :pswitch_1d6  #0x7
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_238

    :pswitch_1e1  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterVendorInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_238

    :pswitch_1f3  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_238

    :pswitch_205  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_238

    :pswitch_217  #0x3
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_238

    :pswitch_222  #0x2
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_238

    :pswitch_22d  #0x1
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    nop

    :goto_238
    return v1

    nop

    :pswitch_data_23a
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_22d  #00000001
        :pswitch_222  #00000002
        :pswitch_217  #00000003
        :pswitch_205  #00000004
        :pswitch_1f3  #00000005
        :pswitch_1e1  #00000006
        :pswitch_1d6  #00000007
        :pswitch_1c4  #00000008
        :pswitch_1b8  #00000009
        :pswitch_1ac  #0000000a
        :pswitch_1a0  #0000000b
        :pswitch_194  #0000000c
        :pswitch_185  #0000000d
        :pswitch_17d  #0000000e
        :pswitch_15a  #0000000f
        :pswitch_147  #00000010
        :pswitch_142  #00000011
        :pswitch_132  #00000012
        :pswitch_113  #00000013
        :pswitch_100  #00000014
        :pswitch_dd  #00000015
        :pswitch_ca  #00000016
        :pswitch_b3  #00000017
        :pswitch_a0  #00000018
        :pswitch_98  #00000019
        :pswitch_8c  #0000001a
        :pswitch_80  #0000001b
        :pswitch_6d  #0000001c
        :pswitch_5a  #0000001d
        :pswitch_4e  #0000001e
        :pswitch_42  #0000001f
        :pswitch_2f  #00000020
        :pswitch_1c  #00000021
    .end packed-switch
.end method
