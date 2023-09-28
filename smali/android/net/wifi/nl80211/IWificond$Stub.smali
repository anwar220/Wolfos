# classes2.dex

.class public abstract Landroid/net/wifi/nl80211/IWificond$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/net/wifi/nl80211/IWificond;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWificond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_GetApInterfaces:I = 0x9

.field static final TRANSACTION_GetClientInterfaces:I = 0x8

.field static final TRANSACTION_RegisterCallback:I = 0xf

.field static final TRANSACTION_UnregisterCallback:I = 0x10

.field static final TRANSACTION_createApInterface:I = 0x1

.field static final TRANSACTION_createClientInterface:I = 0x2

.field static final TRANSACTION_createP2pInterface:I = 0x3

.field static final TRANSACTION_getAvailable2gChannels:I = 0xa

.field static final TRANSACTION_getAvailable5gNonDFSChannels:I = 0xb

.field static final TRANSACTION_getAvailable60gChannels:I = 0xe

.field static final TRANSACTION_getAvailable6gChannels:I = 0xd

.field static final TRANSACTION_getAvailableDFSChannels:I = 0xc

.field static final TRANSACTION_getDeviceWiphyCapabilities:I = 0x13

.field static final TRANSACTION_notifyCountryCodeChanged:I = 0x14

.field static final TRANSACTION_registerWificondEventCallback:I = 0x11

.field static final TRANSACTION_tearDownApInterface:I = 0x4

.field static final TRANSACTION_tearDownClientInterface:I = 0x5

.field static final TRANSACTION_tearDownInterfaces:I = 0x7

.field static final TRANSACTION_tearDownP2pInterface:I = 0x6

.field static final TRANSACTION_unregisterWificondEventCallback:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IWificond$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificond;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.net.wifi.nl80211.IWificond"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IWificond;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IWificond;

    return-object v1

    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_42

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x14
    const-string v0, "notifyCountryCodeChanged"

    return-object v0

    :pswitch_8  #0x13
    const-string v0, "getDeviceWiphyCapabilities"

    return-object v0

    :pswitch_b  #0x12
    const-string v0, "unregisterWificondEventCallback"

    return-object v0

    :pswitch_e  #0x11
    const-string v0, "registerWificondEventCallback"

    return-object v0

    :pswitch_11  #0x10
    const-string v0, "UnregisterCallback"

    return-object v0

    :pswitch_14  #0xf
    const-string v0, "RegisterCallback"

    return-object v0

    :pswitch_17  #0xe
    const-string v0, "getAvailable60gChannels"

    return-object v0

    :pswitch_1a  #0xd
    const-string v0, "getAvailable6gChannels"

    return-object v0

    :pswitch_1d  #0xc
    const-string v0, "getAvailableDFSChannels"

    return-object v0

    :pswitch_20  #0xb
    const-string v0, "getAvailable5gNonDFSChannels"

    return-object v0

    :pswitch_23  #0xa
    const-string v0, "getAvailable2gChannels"

    return-object v0

    :pswitch_26  #0x9
    const-string v0, "GetApInterfaces"

    return-object v0

    :pswitch_29  #0x8
    const-string v0, "GetClientInterfaces"

    return-object v0

    :pswitch_2c  #0x7
    const-string v0, "tearDownInterfaces"

    return-object v0

    :pswitch_2f  #0x6
    const-string v0, "tearDownP2pInterface"

    return-object v0

    :pswitch_32  #0x5
    const-string v0, "tearDownClientInterface"

    return-object v0

    :pswitch_35  #0x4
    const-string v0, "tearDownApInterface"

    return-object v0

    :pswitch_38  #0x3
    const-string v0, "createP2pInterface"

    return-object v0

    :pswitch_3b  #0x2
    const-string v0, "createClientInterface"

    return-object v0

    :pswitch_3e  #0x1
    const-string v0, "createApInterface"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_3b  #00000002
        :pswitch_38  #00000003
        :pswitch_35  #00000004
        :pswitch_32  #00000005
        :pswitch_2f  #00000006
        :pswitch_2c  #00000007
        :pswitch_29  #00000008
        :pswitch_26  #00000009
        :pswitch_23  #0000000a
        :pswitch_20  #0000000b
        :pswitch_1d  #0000000c
        :pswitch_1a  #0000000d
        :pswitch_17  #0000000e
        :pswitch_14  #0000000f
        :pswitch_11  #00000010
        :pswitch_e  #00000011
        :pswitch_b  #00000012
        :pswitch_8  #00000013
        :pswitch_5  #00000014
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x13

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.net.wifi.nl80211.IWificond"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_13c

    packed-switch p1, :pswitch_data_142

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x14
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->notifyCountryCodeChanged()V

    goto/16 :goto_13b

    :pswitch_21  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_13b

    :pswitch_34  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificondEventCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->unregisterWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V

    goto/16 :goto_13b

    :pswitch_44  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificondEventCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->registerWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V

    goto/16 :goto_13b

    :pswitch_54  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->UnregisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V

    goto/16 :goto_13b

    :pswitch_64  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->RegisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V

    goto/16 :goto_13b

    :pswitch_74  #0xe
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable60gChannels()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_13b

    :pswitch_80  #0xd
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable6gChannels()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_13b

    :pswitch_8c  #0xc
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailableDFSChannels()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_13b

    :pswitch_98  #0xb
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable5gNonDFSChannels()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_13b

    :pswitch_a4  #0xa
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable2gChannels()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_13b

    :pswitch_b0  #0x9
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->GetApInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto/16 :goto_13b

    :pswitch_bc  #0x8
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->GetClientInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto/16 :goto_13b

    :pswitch_c8  #0x7
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownInterfaces()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13b

    :pswitch_cf  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownP2pInterface(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_13b

    :pswitch_e1  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_13b

    :pswitch_f3  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownApInterface(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_13b

    :pswitch_105  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->createP2pInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IP2pInterface;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_13b

    :pswitch_117  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_13b

    :pswitch_129  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    nop

    :goto_13b
    return v1

    :pswitch_data_13c
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_129  #00000001
        :pswitch_117  #00000002
        :pswitch_105  #00000003
        :pswitch_f3  #00000004
        :pswitch_e1  #00000005
        :pswitch_cf  #00000006
        :pswitch_c8  #00000007
        :pswitch_bc  #00000008
        :pswitch_b0  #00000009
        :pswitch_a4  #0000000a
        :pswitch_98  #0000000b
        :pswitch_8c  #0000000c
        :pswitch_80  #0000000d
        :pswitch_74  #0000000e
        :pswitch_64  #0000000f
        :pswitch_54  #00000010
        :pswitch_44  #00000011
        :pswitch_34  #00000012
        :pswitch_21  #00000013
        :pswitch_1c  #00000014
    .end packed-switch
.end method
